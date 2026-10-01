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

  <!-- Brite Theme: Suppress @outline for buttons - Always render as solid buttons -->
  <xsl:template
    match="*[contains(@class, ' bootstrap-d/button ') or exists(tokenize(@outputclass, ' ')[starts-with(., 'btn-')])]"
    mode="bootstrapDecoration"
    priority="20"
  >
    <xsl:variable name="token" select="tokenize(@outputclass, ' ')[starts-with(., 'btn-')][1]"/>
    <xsl:variable name="theme">
      <xsl:choose>
        <xsl:when test="starts-with($token, 'btn-outline-')">
          <xsl:value-of select="substring-after($token, 'btn-outline-')"/>
        </xsl:when>
        <xsl:when test="starts-with($token, 'btn-')">
          <xsl:value-of select="substring-after($token, 'btn-')"/>
        </xsl:when>
        <xsl:otherwise>primary</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:call-template name="processBootstrapAttrSetReflection">
      <xsl:with-param name="attrSet" select="concat('__btn__', $theme)"/>
    </xsl:call-template>
    <!-- Chain to the base Brite decorator for shadows -->
    <xsl:next-match/>
  </xsl:template>

</xsl:stylesheet>
