<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Pulse variables -->
  <xsl:variable name="prismjs.text.color">#443a55</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#666a70</xsl:variable>
  <xsl:variable name="prismjs.string.color">#119745</xsl:variable>
  <xsl:variable name="prismjs.function.color">#d98213</xsl:variable>
  <xsl:variable name="prismjs.name.color">#2c4ea5</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#dd3530</xsl:variable>
  <xsl:variable name="prismjs.url.color">#008dc8</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
