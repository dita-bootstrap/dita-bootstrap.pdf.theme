<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Spacelab variables -->
  <xsl:variable name="prismjs.text.color">#3d3d3d</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#999</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#777</xsl:variable>
  <xsl:variable name="prismjs.string.color">#287816</xsl:variable>
  <xsl:variable name="prismjs.function.color">#c4620a</xsl:variable>
  <xsl:variable name="prismjs.name.color">#446e9b</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#cd0200</xsl:variable>
  <xsl:variable name="prismjs.url.color">#2368a5</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
