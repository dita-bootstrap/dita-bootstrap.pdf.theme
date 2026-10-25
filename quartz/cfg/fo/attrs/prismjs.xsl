<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Quartz variables -->
  <xsl:variable name="prismjs.text.color">#242424</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#6c757d</xsl:variable>
  <xsl:variable name="prismjs.string.color">#257a60</xsl:variable>
  <xsl:variable name="prismjs.function.color">#007fb4</xsl:variable>
  <xsl:variable name="prismjs.name.color">#3a8fd9</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#e83283</xsl:variable>
  <xsl:variable name="prismjs.url.color">#39cbfb</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#a6245d</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
