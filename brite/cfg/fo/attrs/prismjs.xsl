<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Brite variables -->
  <xsl:variable name="prismjs.text.color">#666666</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#666a70</xsl:variable>
  <xsl:variable name="prismjs.string.color">#458c60</xsl:variable>
  <xsl:variable name="prismjs.function.color">#8c6d00</xsl:variable>
  <xsl:variable name="prismjs.name.color">#127382</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#a34343</xsl:variable>
  <xsl:variable name="prismjs.url.color">#127382</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#6c9824</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
