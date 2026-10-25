<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Cerulean variables -->
  <xsl:variable name="prismjs.text.color">#5d5e60</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#5a6167</xsl:variable>
  <xsl:variable name="prismjs.string.color">#679733</xsl:variable>
  <xsl:variable name="prismjs.function.color">#d05c00</xsl:variable>
  <xsl:variable name="prismjs.name.color">#1a71a1</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#c71c22</xsl:variable>
  <xsl:variable name="prismjs.url.color">#033c73</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#19aa80</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
