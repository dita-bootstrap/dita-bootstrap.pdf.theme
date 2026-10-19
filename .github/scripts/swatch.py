#!/usr/bin/env python3
"""Builds per-theme swatch inputs and merges the per-theme PDFs into swatches.pdf."""
import io
import json
import re
import shutil
import sys
import urllib.request
from pathlib import Path

THEMES = (
    "brite cerulean cosmo cyborg darkly default flatly journal litera lumen lux materia minty morph none pulse "
    "quartz sandstone simplex sketchy slate solar spacelab superhero united vapor yeti zephyr"
).split()
FALLBACK = {"default": "Bootstrap defaults", "none": "Unthemed Bootstrap"}
CODE = "borders/frame-attribute-support.cpp"


def descriptions():
    try:
        with urllib.request.urlopen("https://bootswatch.com/api/5.json", timeout=30) as r:
            api = {t["name"].lower(): t["description"] for t in json.load(r)["themes"]}
    except OSError:
        api = {}
    return {t: FALLBACK.get(t) or api.get(t, "") for t in THEMES}


def prepare(theme, pdf_dir, spec_dir, work):
    work = Path(work)
    desc = descriptions()[theme]
    topic = (Path(pdf_dir) / "docsrc/swatch.dita").read_text()
    topic = topic.replace("<title>Swatch</title>", f"<title>{theme.capitalize()}</title>", 1)
    topic = re.sub(r"<shortdesc>.*?</shortdesc>", f"<shortdesc>{desc}</shortdesc>", topic, count=1, flags=re.S)
    code = work / "code/specialization" / CODE
    code.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy(Path(spec_dir) / "sample/code" / CODE, code)
    (work / "swatch.dita").write_text(topic)
    (work / "swatch.ditamap").write_text(
        '<?xml version="1.0" encoding="UTF-8"?>\n'
        '<!DOCTYPE map PUBLIC "-//OASIS//DTD DITA Map//EN" "map.dtd">\n'
        '<map><title>Swatch</title><topicref href="swatch.dita"/></map>\n'
    )
    (work / "project.xml").write_text(
        f"""<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="https://www.dita-ot.org/project">
  <context id="pdf" name="PDF">
    <input href="swatch.ditamap"/>
  </context>
  <deliverable name="PDF" id="pdf">
    <context idref="pdf"/>
    <output href="pdf"/>
    <publication transtype="pdf-bootstrap">
      <param name="args.rellinks" value="none"/>
      <param name="bootstrap.css.figure" value="p-3"/>
      <param name="bootstrap.theme" value="{theme}"/>
      <param name="outputFile.base" value="swatch"/>
    </publication>
  </deliverable>
</project>
"""
    )


def merge(parts, out):
    from pypdf import PdfReader, PdfWriter
    from pypdf.annotations import Link
    from reportlab.lib.colors import HexColor
    from reportlab.pdfgen import canvas

    parts = Path(parts)
    desc = descriptions()
    # Each theme build starts with a cover and a contents page; only the topic pages are kept.
    readers = {t: PdfReader(parts / f"swatch-{t}" / "swatch.pdf") for t in THEMES}
    pages = {t: list(r.pages)[2:] for t, r in readers.items()}
    size = pages[THEMES[0]][0].mediabox
    width, height = float(size.width), float(size.height)

    rows_per_page = int((height - 160) // 18)
    toc_pages = -(-len(THEMES) // rows_per_page)
    start, nxt = {}, toc_pages + 1
    for t in THEMES:
        start[t] = nxt
        nxt += len(pages[t])

    buf = io.BytesIO()
    c = canvas.Canvas(buf, pagesize=(width, height))
    rects = []
    for i, t in enumerate(THEMES):
        row = i % rows_per_page
        if i and row == 0:
            c.showPage()
        if row == 0:
            c.setFont("Helvetica-Bold", 22)
            c.drawString(56, height - 80, "Swatches")
            c.setFont("Helvetica-Bold", 9)
            c.setFillColor(HexColor("#6c757d"))
            c.drawString(56, height - 112, "THEME")
            c.drawString(170, height - 112, "DESCRIPTION")
            c.drawRightString(width - 56, height - 112, "PAGE")
        y = height - 134 - row * 18
        c.setFillColor(HexColor("#0d6efd"))
        c.setFont("Helvetica", 10)
        c.drawString(56, y, t.capitalize())
        c.setFillColor(HexColor("#212529"))
        c.drawString(170, y, desc[t])
        c.drawRightString(width - 56, y, str(start[t]))
        rects.append((i // rows_per_page, (56, y - 4, width - 56, y + 12), t))
    c.showPage()
    c.save()

    writer = PdfWriter()
    for p in PdfReader(buf).pages:
        writer.add_page(p)
    for t in THEMES:
        for p in pages[t]:
            writer.add_page(p)
    for page_no, rect, t in rects:
        writer.add_annotation(page_no, Link(rect=rect, target_page_index=start[t] - 1, border=[0, 0, 0]))
    writer.add_outline_item("Swatches", 0)
    for t in THEMES:
        writer.add_outline_item(t.capitalize(), start[t] - 1)
    writer.add_metadata({"/Title": "DITA Bootstrap PDF theme swatches"})
    with open(out, "wb") as f:
        writer.write(f)


if __name__ == "__main__":
    cmd, *args = sys.argv[1:]
    {"prepare": prepare, "merge": merge}[cmd](*args)
