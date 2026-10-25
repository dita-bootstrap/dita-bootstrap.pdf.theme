<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Lumen variables -->
  <xsl:variable name="prismjs.text.color">#606060</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#777777</xsl:variable>
  <xsl:variable name="prismjs.string.color">#19a143</xsl:variable>
  <xsl:variable name="prismjs.function.color">#e17312</xsl:variable>
  <xsl:variable name="prismjs.name.color">#1378b6</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#e53a37</xsl:variable>
  <xsl:variable name="prismjs.url.color">#1378b6</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#18af82</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
