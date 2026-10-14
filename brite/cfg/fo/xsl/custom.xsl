<?xml version="1.0" encoding="UTF-8"?>
<!--
	This file is part of the DITA Bootstrap PDF Themes plug-in for DITA Open Toolkit.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
  exclude-result-prefixes="fox"
  version="2.0"
>

  <!-- Custom XSL overrides for the Brite theme -->
  
  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <xsl:attribute name="border-width"><xsl:value-of select="$bootstrap-border-width"/></xsl:attribute>
    <xsl:attribute name="border-bottom-width">4.25pt</xsl:attribute>
    <xsl:attribute name="border-right-width">4.25pt</xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <xsl:template
    match="*[contains(@class, ' topic/note ') or contains(@class, ' bootstrap-d/alert ') or contains(@class, ' topic/pre ') or exists(tokenize(@outputclass, ' ')[starts-with(., 'alert-')])]"
    mode="bootstrapDecoration"
    priority="10"
  >
    <xsl:param name="variant" select="''"/>
    <xsl:param name="theme" select="''"/>
    <xsl:param name="prefix" select="''"/>
    <xsl:param name="defaultRounded" select="false()"/>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-color">#000000</xsl:attribute>
    <xsl:attribute name="border-bottom-width">4.25pt</xsl:attribute>
    <xsl:attribute name="border-right-width">4.25pt</xsl:attribute>
    <!-- Neo-Brutalist Hard Shadow Simulation via Thick Black Borders (3px offset) -->
    <!-- 2pt base + 2.25pt (3px) = 4.25pt -->
    <xsl:next-match>
      <xsl:with-param name="variant" select="$variant"/>
      <xsl:with-param name="theme" select="$theme"/>
      <xsl:with-param name="prefix" select="$prefix"/>
      <xsl:with-param name="defaultRounded" select="$defaultRounded"/>
    </xsl:next-match>
  </xsl:template>

  <!-- Brite buttons: black border with hard shadow; outline renders as filled -->
  <xsl:template
    match="*[contains(@class, ' bootstrap-d/button ') or (exists(tokenize(@outputclass, ' ')[starts-with(., 'btn')]) and (contains(@class, ' topic/xref ') or contains(@class, ' topic/ph ')))]"
    priority="25"
  >
    <xsl:variable
      name="raw"
      select="(@theme, substring-after(tokenize(@outputclass, ' ')[starts-with(., 'theme-')][1], 'theme-'), 'primary')[. != ''][1]"
    />
    <xsl:variable
      name="filled"
      select="ends-with($raw, '-outline') or exists(tokenize(@outputclass, ' ')[. = 'btn-outline' or starts-with(., 'btn-outline-')]) or @style = 'outline'"
    />
    <xsl:variable name="base" select="replace($raw, '-.*$', '')"/>
    <xsl:variable name="result">
      <xsl:next-match/>
    </xsl:variable>
    <xsl:apply-templates select="$result" mode="brite-button">
      <xsl:with-param name="filled" select="$filled"/>
      <xsl:with-param name="base" select="$base"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="@*|node()" mode="brite-button">
    <xsl:param name="filled"/>
    <xsl:param name="base"/>
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" mode="brite-button">
        <xsl:with-param name="filled" select="$filled"/>
        <xsl:with-param name="base" select="$base"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="fo:inline[@border-style = 'solid']" mode="brite-button">
    <xsl:param name="filled"/>
    <xsl:param name="base"/>
    <xsl:copy>
      <xsl:apply-templates select="@*" mode="brite-button"/>
      <xsl:if test="$filled">
        <xsl:attribute name="background-color">
          <xsl:call-template name="getBootstrapSetting">
            <xsl:with-param name="name" select="concat('bootstrap-btn-', $base, '-bg')"/>
          </xsl:call-template>
        </xsl:attribute>
        <xsl:attribute name="color">
          <xsl:call-template name="getBootstrapSetting">
            <xsl:with-param name="name" select="concat('bootstrap-btn-', $base, '-color')"/>
          </xsl:call-template>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="border-color">#000000</xsl:attribute>
      <xsl:attribute name="border-bottom-width">4.25pt</xsl:attribute>
      <xsl:attribute name="border-right-width">4.25pt</xsl:attribute>
      <xsl:apply-templates select="node()" mode="brite-button"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
