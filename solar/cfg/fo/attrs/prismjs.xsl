<?xml version="1.0" encoding="UTF-8"?>
<!--
	This file is part of the DITA Bootstrap PDF Themes plug-in for DITA Open Toolkit.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- PrismJS code block styling aligned with Solar variables -->
  <xsl:variable name="prismjs.background.color">#eee8d5</xsl:variable>
  <xsl:variable name="prismjs.text.color">#073642</xsl:variable>
  <xsl:variable name="prismjs.comment.color">#797f84</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#797f84</xsl:variable>
  <xsl:variable name="prismjs.namespace.color">#797f84</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#a22b62</xsl:variable>
  <xsl:variable name="prismjs.string.color">#1d716a</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#7f6000</xsl:variable>
  <xsl:variable name="prismjs.type.color">#94265b</xsl:variable>
  <xsl:variable name="prismjs.regex.color">#a0500d</xsl:variable>
  <xsl:variable name="prismjs.deleted.color">#94265b</xsl:variable>
  <xsl:variable name="prismjs.url.color">#63250b</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>

  <xsl:variable name="prismjs.card.background.color" select="$prismjs.background.color"/>
  <xsl:variable name="prismjs.border.color">#d1ccbb</xsl:variable>

</xsl:stylesheet>
