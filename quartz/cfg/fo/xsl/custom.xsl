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

  <xsl:import href="cfg:fo/xsl/tables.xsl"/>

  <xsl:template
    match="*[contains(@class, ' bootstrap-d/badge ') or (contains(@class,' topic/ph ') and contains(@outputclass, 'badge'))]"
    priority="10"
  >
    <xsl:variable
      name="themeValue"
      select="(@theme, substring-after(tokenize(@outputclass, ' ')[starts-with(., 'theme-')][1], 'theme-'))[1]"
    />
    <xsl:variable
      name="style"
      select="(@style,
        if (ends-with($themeValue, '-outline')) then 'outline'
        else if (ends-with($themeValue, '-subtle')) then 'subtle'
        else (),
        if (exists(tokenize(@outputclass, ' ')[. = 'badge-outline'])) then 'outline'
        else if (exists(tokenize(@outputclass, ' ')[. = 'badge-subtle'])) then 'subtle'
        else (),
        'solid')[1]"
    />
    <xsl:variable
      name="explicitTheme"
      select="(
        if ($themeValue != '') then (if (contains($themeValue, '-')) then substring-before($themeValue, '-') else $themeValue) else (),
        substring-after(tokenize(@outputclass, ' ')[starts-with(., 'bg-')][1], 'bg-'),
        substring-after(tokenize(@outputclass, ' ')[starts-with(., 'text-bg-')][1], 'text-bg-'))[1]"
    />
    <xsl:choose>
      <xsl:when test="$explicitTheme = '' and $style = 'solid'">
        <fo:inline color="white">
          <xsl:next-match/>
        </fo:inline>
      </xsl:when>
      <xsl:otherwise>
        <xsl:next-match/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-width"><xsl:value-of select="$bootstrap-border-width"/></xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-card-border-color"/></xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>
</xsl:stylesheet>
