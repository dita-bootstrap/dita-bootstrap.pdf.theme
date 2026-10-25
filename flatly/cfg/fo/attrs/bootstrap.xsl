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
  <xsl:variable name="bootstrap-table-primary-bg">#dfe2e5</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#1d2834</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#eff2f2</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#616b6c</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dcf5f0</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#107a65</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e1f0fa</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#22638e</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdf0db</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#99620c</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fbe4e2</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#963127</xsl:variable>

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

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>
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

  <xsl:variable name="bootstrap-primary-border">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#3498db</xsl:variable>
</xsl:stylesheet>
