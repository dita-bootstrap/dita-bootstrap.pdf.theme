<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Sandstone variables -->
  <xsl:variable name="prismjs.text.color">#393835</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#98978b</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#62615c</xsl:variable>
  <xsl:variable name="prismjs.string.color">#506b29</xsl:variable>
  <xsl:variable name="prismjs.function.color">#c4620a</xsl:variable>
  <xsl:variable name="prismjs.name.color">#325d88</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#953a37</xsl:variable>
  <xsl:variable name="prismjs.url.color">#165d7a</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
