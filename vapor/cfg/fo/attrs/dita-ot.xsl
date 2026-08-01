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

  <!-- Table Styling - VAPOR DEFAULT -->
  <xsl:attribute-set name="thead.row">
    <xsl:attribute name="background-color">#1a0933</xsl:attribute>
    <xsl:attribute name="color">#32fbe2</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry">
    <xsl:attribute name="color">inherit</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry__content">
    <xsl:attribute name="color">inherit</xsl:attribute>
  </xsl:attribute-set>

  <!-- Default Body Rows - VAPOR -->
  <xsl:attribute-set name="tbody.row">
    <xsl:attribute name="background-color">#1a0933</xsl:attribute>
    <xsl:attribute name="color">#32fbe2</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table-striped">
    <xsl:attribute name="background-color">#1a0933</xsl:attribute>
    <xsl:attribute name="color">#32fbe2</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row.entry">
    <xsl:attribute name="color">inherit</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row.entry__content">
    <xsl:attribute name="color">inherit</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__table__primary">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-primary-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-primary-color"/></xsl:attribute>
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
  <xsl:attribute-set name="__table__light">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-light-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-light-color"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__table__inverse">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-badge-inverse-bg"/></xsl:attribute>
    <xsl:attribute name="color"><xsl:value-of select="$bootstrap-badge-inverse-color"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- Background Subtle Variants -->
  <xsl:attribute-set name="__bg__primary-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-primary-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__secondary-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-secondary-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__success-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-success-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__info-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-info-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__warning-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-warning-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__danger-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-danger-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__light-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-light-subtle"/></xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__bg__inverse-subtle">
    <xsl:attribute name="background-color"><xsl:value-of select="$bootstrap-inverse-subtle"/></xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
