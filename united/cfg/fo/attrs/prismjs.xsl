<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with United variables -->
  <xsl:variable name="prismjs.text.color">#464340</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#aea79f</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#666a70</xsl:variable>
  <xsl:variable name="prismjs.string.color">#257a31</xsl:variable>
  <xsl:variable name="prismjs.function.color">#e95420</xsl:variable>
  <xsl:variable name="prismjs.name.color">#0050a6</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#df382c</xsl:variable>
  <xsl:variable name="prismjs.url.color">#107282</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
