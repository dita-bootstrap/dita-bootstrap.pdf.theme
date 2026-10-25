<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Lux variables -->
  <xsl:variable name="prismjs.text.color">#666666</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#777b7e</xsl:variable>
  <xsl:variable name="prismjs.string.color">#3e9e60</xsl:variable>
  <xsl:variable name="prismjs.function.color">#d7882c</xsl:variable>
  <xsl:variable name="prismjs.name.color">#007bff</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#b74744</xsl:variable>
  <xsl:variable name="prismjs.url.color">#1a80ab</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
