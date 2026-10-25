<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Litera variables -->
  <xsl:variable name="prismjs.text.color">#2f3133</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#adb5bd</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#585e63</xsl:variable>
  <xsl:variable name="prismjs.string.color">#059f65</xsl:variable>
  <xsl:variable name="prismjs.function.color">#db882c</xsl:variable>
  <xsl:variable name="prismjs.name.color">#3972d4</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#be4541</xsl:variable>
  <xsl:variable name="prismjs.url.color">#148ea2</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#18af82</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
