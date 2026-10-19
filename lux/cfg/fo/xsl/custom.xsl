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

  <!-- Lux Theme Customizations -->

  <xsl:import href="./tables.xsl"/>


  <xsl:template match="*" mode="bootstrapDecoration" priority="10">
    <xsl:param name="variant" select="''"/>
    <xsl:param name="theme" select="''"/>
    <xsl:param name="prefix" select="''"/>
    <xsl:param name="defaultRounded" select="false()"/>
    <xsl:call-template name="bootstrapBorderless"/>
    <xsl:next-match>
      <xsl:with-param name="variant" select="$variant"/>
      <xsl:with-param name="theme" select="$theme"/>
      <xsl:with-param name="prefix" select="$prefix"/>
      <xsl:with-param name="defaultRounded" select="$defaultRounded"/>
    </xsl:next-match>
  </xsl:template>

  <xsl:template match="@*|node()" mode="lux-caps">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" mode="lux-caps"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="text()" mode="lux-caps" priority="1">
    <xsl:value-of select="upper-case(.)"/>
  </xsl:template>

  <xsl:template
    match="*[contains(@class, ' bootstrap-d/button ') or (exists(tokenize(@outputclass, ' ')[starts-with(., 'btn')]) and (contains(@class, ' topic/xref ') or contains(@class, ' topic/ph ')))]"
    priority="25"
  >
    <xsl:variable name="result">
      <xsl:next-match/>
    </xsl:variable>
    <xsl:apply-templates select="$result" mode="lux-caps"/>
  </xsl:template>
</xsl:stylesheet>
