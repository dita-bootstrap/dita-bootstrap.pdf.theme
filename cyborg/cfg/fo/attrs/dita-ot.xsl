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

  <!-- Global Font Overrides -->
  <xsl:attribute-set name="__fo__root">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="base-font">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="common.title">
    <xsl:attribute name="font-family"><xsl:value-of select="$default-font-family"/></xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="pre">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="codeblock" use-attribute-sets="pre">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="background-color"><xsl:value-of select="$prismjs.background.color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="codeph">
    <xsl:attribute name="font-family"><xsl:value-of select="$monospaced-font-family"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row">
    <xsl:attribute name="background-color">#060606</xsl:attribute>
    <xsl:attribute name="color">#adafae</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry">
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry__content">
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row">
    <xsl:attribute name="background-color">#060606</xsl:attribute>
    <xsl:attribute name="color">#adafae</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="tbody.row.entry">
  </xsl:attribute-set>
  <xsl:attribute-set name="tbody.row.entry__content">
  </xsl:attribute-set>

  <!-- 1. Suppress Outer Table Frame Entirely -->
  <xsl:attribute-set name="table.tgroup">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-width">0pt</xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-top-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-bottom-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-left-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-right-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__all">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table__tableframe__topbot">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table__tableframe__sides">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table__tableframe__top">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table__tableframe__bottom">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table__tableframe__left">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="table__tableframe__right">
    <xsl:attribute name="border-style">none</xsl:attribute>
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- 2. Force Internal Dividers to Theme Color -->
  <xsl:attribute-set name="thead.row.entry">
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-top-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-bottom-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-left-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-right-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row.entry">
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-top-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-bottom-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-left-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-right-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- Side-specific frame attribute sets (used by generateTableEntryBorder) -->
  <xsl:attribute-set name="__tableframe__top">
    <xsl:attribute name="border-before-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-top-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-before-style">solid</xsl:attribute>
    <xsl:attribute name="border-top-style">solid</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__tableframe__bottom">
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-bottom-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-style">solid</xsl:attribute>
    <xsl:attribute name="border-bottom-style">solid</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__tableframe__left">
    <xsl:attribute name="border-start-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-left-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-start-style">solid</xsl:attribute>
    <xsl:attribute name="border-left-style">solid</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__tableframe__right">
    <xsl:attribute name="border-end-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-right-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-end-style">solid</xsl:attribute>
    <xsl:attribute name="border-right-style">solid</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead__tableframe__bottom">
    <xsl:attribute name="border-after-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-bottom-color"><xsl:value-of select="$bootstrap-border-color"/></xsl:attribute>
    <xsl:attribute name="border-after-style">solid</xsl:attribute>
    <xsl:attribute name="border-after-width">1pt</xsl:attribute>
  </xsl:attribute-set>

  <!-- Cyborg Themed Table Overrides -->
  <xsl:attribute-set name="__table__primary">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-primary-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-primary-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__accent">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-accent-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-accent-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__secondary">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-secondary-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-secondary-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__success">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-success-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-success-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__info">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-info-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-info-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__warning">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-warning-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-warning-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__danger">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-danger-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-danger-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__inverse">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-inverse-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-inverse-color"/></xsl:attribute>
  </xsl:attribute-set>
</xsl:stylesheet>
