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

  <!-- PrismJS code block styling aligned with Quartz variables -->
  <xsl:variable name="prismjs.background.color">transparent</xsl:variable>
  <xsl:variable name="prismjs.card.background.color" select="$bootstrap-surface-image-color"/>
  <xsl:variable name="prismjs.border.color" select="$bootstrap-surface-image-border"/>
  <xsl:variable name="prismjs.text.color">#ffffff</xsl:variable>
  <xsl:variable name="prismjs.comment.color">#d6dade</xsl:variable>
  <xsl:variable name="prismjs.punctuation.color">#d6dade</xsl:variable>
  <xsl:variable name="prismjs.namespace.color">#d6dade</xsl:variable>
  <xsl:variable name="prismjs.tag.color">#641538</xsl:variable>
  <xsl:variable name="prismjs.string.color">#123b2d</xsl:variable>
  <xsl:variable name="prismjs.keyword.color">#163653</xsl:variable>
  <xsl:variable name="prismjs.type.color">#63142c</xsl:variable>
  <xsl:variable name="prismjs.regex.color">#532907</xsl:variable>
  <xsl:variable name="prismjs.deleted.color">#63142c</xsl:variable>
  <xsl:variable name="prismjs.url.color">#413102</xsl:variable>

  <xsl:variable name="prismjs.font-weight">normal</xsl:variable>

</xsl:stylesheet>
