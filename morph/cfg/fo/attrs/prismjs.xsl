<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Morph variables -->
  <xsl:variable name="prismjs.text.color">#575b60</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#626a75</xsl:variable>
  <xsl:variable name="prismjs.string.color">#36a421</xsl:variable>
  <xsl:variable name="prismjs.function.color">#e2720d</xsl:variable>
  <xsl:variable name="prismjs.name.color">#2c73cd</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#c1171d</xsl:variable>
  <xsl:variable name="prismjs.url.color">#0caccb</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#20c997</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
