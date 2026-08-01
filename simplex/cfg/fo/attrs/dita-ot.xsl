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
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-primary"/></xsl:attribute>
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
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-primary"/></xsl:attribute>
    <xsl:attribute name="color">#ffffff</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry">
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry__content">
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row">
    <xsl:attribute name="background-color">#fcfcfc</xsl:attribute>
    <xsl:attribute name="color">#212529</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="tbody.row.entry">
  </xsl:attribute-set>
  <xsl:attribute-set name="tbody.row.entry__content">
  </xsl:attribute-set>

  <!-- Simplex Themed Table Overrides (Following Button Colors) -->
  <xsl:attribute-set name="__table__primary">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-primary-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-primary-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__light">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-light-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-light-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__secondary">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-secondary-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-secondary-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__success">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-success-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-success-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__info">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-info-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-info-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__warning">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-warning-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-warning-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__danger">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-danger-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-danger-color"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__inverse">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-inverse-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-inverse-color"/></xsl:attribute>
  </xsl:attribute-set>
</xsl:stylesheet>
