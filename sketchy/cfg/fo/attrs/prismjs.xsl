<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Sketchy variables -->
  <xsl:variable name="prismjs.text.color">#222222</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#aaa</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#666a70</xsl:variable>
  <xsl:variable name="prismjs.string.color">#1e7832</xsl:variable>
  <xsl:variable name="prismjs.function.color">#c4620a</xsl:variable>
  <xsl:variable name="prismjs.name.color">#0050a6</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#dc3545</xsl:variable>
  <xsl:variable name="prismjs.url.color">#107282</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
