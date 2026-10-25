<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Materia variables -->
  <xsl:variable name="prismjs.text.color">#666666</xsl:variable>
  <xsl:variable name="prismjs.background.color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:variable>
  <xsl:variable name="prismjs.comment.color">#bbb</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#666</xsl:variable>
  <xsl:variable name="prismjs.string.color">#3f9142</xsl:variable>
  <xsl:variable name="prismjs.function.color">#e27d05</xsl:variable>
  <xsl:variable name="prismjs.name.color">#1b7bc8</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#c1171d</xsl:variable>
  <xsl:variable name="prismjs.url.color">#9c27b0</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#189474</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>
</xsl:stylesheet>
