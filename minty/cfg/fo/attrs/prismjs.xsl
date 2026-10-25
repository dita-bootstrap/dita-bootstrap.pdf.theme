<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Minty variables -->
  <xsl:variable name="prismjs.text.color">#613c3e</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#888</xsl:variable>
  <xsl:variable name="prismjs.string.color">#43a07b</xsl:variable>
  <xsl:variable name="prismjs.function.color">#e49a38</xsl:variable>
  <xsl:variable name="prismjs.name.color">#3689d0</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#de544c</xsl:variable>
  <xsl:variable name="prismjs.url.color">#58abc7</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#48ab8d</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
