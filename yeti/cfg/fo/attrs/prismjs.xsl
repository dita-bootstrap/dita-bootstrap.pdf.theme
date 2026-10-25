<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Yeti variables -->
  <xsl:variable name="prismjs.text.color">#5f5f5f</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#888</xsl:variable>
  <xsl:variable name="prismjs.string.color">#2d7347</xsl:variable>
  <xsl:variable name="prismjs.function.color">#c4620a</xsl:variable>
  <xsl:variable name="prismjs.name.color">#008cba</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#f04124</xsl:variable>
  <xsl:variable name="prismjs.url.color">#3c8094</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
