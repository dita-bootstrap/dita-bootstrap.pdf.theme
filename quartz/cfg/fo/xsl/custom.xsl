<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="dita-ot xs"
  version="2.0"
>

  <xsl:import href="cfg:fo/xsl/tables.xsl"/>

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

  <xsl:function name="dita-ot:darken" as="xs:string">
    <xsl:param name="hex" as="xs:string"/>
    <xsl:param name="factor" as="xs:double"/>
    <xsl:variable name="h" select="lower-case(replace($hex, '^#', ''))"/>
    <xsl:variable
      name="full"
      select="if (string-length($h) = 3) then string-join(for $c in string-to-codepoints($h) return codepoints-to-string(($c, $c)), '') else $h"
    />
    <xsl:variable name="digits" select="'0123456789abcdef'"/>
    <xsl:sequence
      select="concat('#', string-join(for $i in (0, 2, 4), $v in string-length(substring-before($digits, substring($full, $i + 1, 1))) * 16 + string-length(substring-before($digits, substring($full, $i + 2, 1))) return concat(substring($digits, xs:integer(floor(round($v * $factor) div 16)) + 1, 1), substring($digits, xs:integer(round($v * $factor) mod 16) + 1, 1)), ''))"
    />
  </xsl:function>

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
    <xsl:call-template name="bootstrap.surface.image"/>
    <xsl:variable name="bar">
      <xsl:call-template name="getBootstrapAttrValue">
        <xsl:with-param name="attrSet" select="concat('__bg__', if ($theme != '') then $theme else 'secondary')"/>
        <xsl:with-param name="attrName" select="'background-color'"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:attribute name="border-left-width" select="'6pt'"/>
    <xsl:attribute name="border-left-style">solid</xsl:attribute>
    <xsl:attribute
      name="border-left-color"
      select="dita-ot:darken($bar, xs:double($bootstrap-surface-image-bar-factor))"
    />
  </xsl:template>
</xsl:stylesheet>
