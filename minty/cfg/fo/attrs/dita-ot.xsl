<?xml version="1.0" encoding="UTF-8"?>
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
    <xsl:attribute name="color">#5a5a5a</xsl:attribute>
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
    <xsl:attribute name="background-color">#f8f9fa</xsl:attribute>
    <xsl:attribute name="color">#888888</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry">
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry__content">
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row">
    <xsl:attribute name="background-color">#ffffff</xsl:attribute>
    <xsl:attribute name="color">#888888</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="tbody.row.entry">
  </xsl:attribute-set>
  <xsl:attribute-set name="tbody.row.entry__content">
  </xsl:attribute-set>

  <!-- Minty Themed Table Overrides -->
  <xsl:attribute-set name="__table__primary">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-primary-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-primary-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__light">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-table-light-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-table-light-color"/></xsl:attribute>
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
