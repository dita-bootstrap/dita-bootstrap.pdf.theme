<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Flatly Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#18bc9c</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#fff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#ecf0f1</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#ecf0f1</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#ecf0f1</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#000</xsl:variable>

  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">36pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ed2929</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#08384A</xsl:variable>
</xsl:stylesheet>
