<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Cosmo Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#2780e3</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2780e3</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2780e3</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d4e6f9</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#10335b</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d4e6f9</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#373a3c</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#d7d8d8</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#161718</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#d7d8d8</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#373a3c</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#3fb618</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#3fb618</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d9f0d1</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#19490a</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d9f0d1</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#373a3c</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9954bb</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#9954bb</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ebddf1</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#3d224b</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#ebddf1</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#373a3c</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff7518</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ff7518</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ffe3d1</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#662f0a</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffe3d1</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#373a3c</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ff0039</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ff0039</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffccd7</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#660017</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ffccd7</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#373a3c</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#373a3c</xsl:variable>

  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#f70081</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#613d7c</xsl:variable>
</xsl:stylesheet>
