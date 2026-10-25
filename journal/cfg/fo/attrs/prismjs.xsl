<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Journal variables -->
  <xsl:variable name="prismjs.text.color">#444444</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#777</xsl:variable>
  <xsl:variable name="prismjs.string.color">#1b8e3d</xsl:variable>
  <xsl:variable name="prismjs.function.color">#dc6e05</xsl:variable>
  <xsl:variable name="prismjs.name.color">#b04340</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#a69a19</xsl:variable>
  <xsl:variable name="prismjs.url.color">#336699</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#1c9c7f</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
