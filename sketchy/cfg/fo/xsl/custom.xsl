<?xml version="1.0" encoding="UTF-8"?>
<!--
	This file is part of the DITA Bootstrap PDF Themes plug-in for DITA Open Toolkit.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
  version="2.0"
>
  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:call-template name="bootstrap.decoration"/>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <!-- Apply hand-drawn aesthetic to all Bootstrap components in Sketchy theme -->
  <xsl:template
    match="*[contains(@class, ' topic/note ') or contains(@class, ' bootstrap-d/alert ') or contains(@class, ' topic/pre ') or exists(tokenize(@outputclass, ' ')[starts-with(., 'alert-')])]"
    mode="bootstrapDecoration"
    priority="10"
  >
    <xsl:param name="variant" select="''"/>
    <xsl:param name="theme" select="''"/>
    <xsl:param name="prefix" select="''"/>
    <xsl:param name="defaultRounded" select="false()"/>
    <xsl:attribute name="fox:border-radius">35pt 8pt 30pt 8pt</xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-width"><xsl:value-of select="$bootstrap-border-width"/></xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:next-match>
      <xsl:with-param name="variant" select="$variant"/>
      <xsl:with-param name="theme" select="$theme"/>
      <xsl:with-param name="prefix" select="$prefix"/>
      <xsl:with-param name="defaultRounded" select="$defaultRounded"/>
    </xsl:next-match>
  </xsl:template>

  <!-- Sketchy Theme specific override for pre and example -->
  <xsl:template match="*[contains(@class, ' topic/pre ') or contains(@class, ' topic/example ')]" priority="10">
    <fo:block xsl:use-attribute-sets="pre">
      <xsl:call-template name="commonattributes"/>
      
      <!-- Hard-coded asymmetric radius (35pt top-left, 30pt bottom-right) -->
      <xsl:attribute name="fox:border-radius">35pt 8pt 30pt 8pt</xsl:attribute>
      
      <xsl:call-template name="processBootstrapSpacing">
        <xsl:with-param name="attrValue" select="(@padding, '3')[1]"/>
        <xsl:with-param name="prefix" select="'p'"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapSpacing">
        <xsl:with-param name="attrValue" select="@margin"/>
        <xsl:with-param name="prefix" select="'m'"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapBorder">
        <xsl:with-param name="attrValue" select="@border"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapWidth">
        <xsl:with-param name="attrValue" select="@width"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapBorderColor">
        <xsl:with-param name="attrValue" select="@bordercolor"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapRounded">
        <xsl:with-param name="attrValue" select="'no'"/> <!-- Disable standard rounding to prevent conflict -->
      </xsl:call-template>
      <xsl:call-template name="processBootstrapOutputClass">
        <xsl:with-param name="attrValue" select="@outputclass"/>
      </xsl:call-template>
      <xsl:call-template name="processBootstrapDirection"/>
      <xsl:call-template name="bootstrap.decoration"/>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>
  <xsl:template name="get-accordion-radius">
    <xsl:param name="node" select="."/>
  </xsl:template>
</xsl:stylesheet>
