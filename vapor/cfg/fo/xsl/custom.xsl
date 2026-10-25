<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>
  <xsl:import href="tables.xsl"/>

  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="background-color"><xsl:value-of select="$prismjs.background.color"/></xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-width"><xsl:value-of select="$bootstrap-border-width"/></xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-secondary"/></xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <xsl:template
    match="*[contains(@class, ' topic/note ') or contains(@class, ' bootstrap-d/alert ') or exists(tokenize(@outputclass, ' ')[starts-with(., 'alert-')])]"
    mode="bootstrapDecoration"
    priority="30"
  >
    <xsl:param name="variant" select="''"/>
    <xsl:param name="theme" select="''"/>
    <xsl:param name="prefix" select="''"/>
    <xsl:param name="defaultRounded" select="false()"/>
    <xsl:next-match>
      <xsl:with-param name="variant" select="''"/>
      <xsl:with-param name="theme" select="$theme"/>
      <xsl:with-param name="prefix" select="$prefix"/>
      <xsl:with-param name="defaultRounded" select="$defaultRounded"/>
    </xsl:next-match>
  </xsl:template>
</xsl:stylesheet>
