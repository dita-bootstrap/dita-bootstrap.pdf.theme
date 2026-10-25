<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Cosmo variables -->
  <xsl:variable name="prismjs.text.color">#161718</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#495057</xsl:variable>
  <xsl:variable name="prismjs.string.color">#2f8c12</xsl:variable>
  <xsl:variable name="prismjs.function.color">#c5670b</xsl:variable>
  <xsl:variable name="prismjs.name.color">#1b599f</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#b20028</xsl:variable>
  <xsl:variable name="prismjs.url.color">#6b3b83</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
