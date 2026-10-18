<?xml version="1.0" encoding="UTF-8"?>
<!--
	This file is part of the DITA Bootstrap PDF plug-in for DITA Open Toolkit.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <xsl:param name="css-card" select="''"/>
  <xsl:param name="css-codeblock" select="''"/>
  <xsl:param name="css-example" select="''"/>
  <xsl:param name="css-figure" select="''"/>
  <xsl:param name="css-figure-caption" select="''"/>
  <xsl:param name="css-figure-image" select="''"/>
  <xsl:param name="css-section-title" select="''"/>
  <xsl:param name="css-shortdesc" select="''"/>
  <xsl:param name="css-table" select="''"/>
  <xsl:param name="css-thead" select="''"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[@class]">
    <xsl:variable name="extra" as="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xsl:variable name="class" select="string(@class)"/>
      <xsl:variable name="parent" select="string(parent::*/@class)"/>
      <xsl:variable name="tokens" select="tokenize(@outputclass, '\s+')"/>
      <xsl:sequence
        select="
        if (contains($class, ' pr-d/codeblock ')) then $css-codeblock
        else if (contains($class, ' topic/shortdesc ')) then $css-shortdesc
        else if (contains($class, ' topic/example ')) then $css-example
        else if (contains($class, ' topic/fig ')) then $css-figure
        else if (contains($class, ' topic/title ') and contains($parent, ' topic/fig ')) then $css-figure-caption
        else if (contains($class, ' topic/title ') and contains($parent, ' topic/section ')) then $css-section-title
        else if (contains($class, ' topic/image ') and contains($parent, ' topic/fig ')) then $css-figure-image
        else if (contains($class, ' topic/table ')) then $css-table
        else if (contains($class, ' topic/thead ')) then $css-thead
        else if (contains($class, ' bootstrap-d/card ') or $tokens = 'card') then $css-card
        else ''"
      />
    </xsl:variable>
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:if test="normalize-space($extra) != ''">
        <xsl:attribute name="outputclass" select="normalize-space(concat($extra, ' ', @outputclass))"/>
      </xsl:if>
      <xsl:apply-templates select="node()"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
