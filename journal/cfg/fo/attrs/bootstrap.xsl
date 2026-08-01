<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Journal Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#eb6864</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#eb6864</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#eb6864</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#fbe1e0</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#5e2a28</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#fbe1e0</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#000</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#aaaaaa</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#aaa</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#444444</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#222</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#22b24c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#22b24c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d3f0db</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#0e471e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d3f0db</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#222</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#336699</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#369</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d6e0eb</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#14293d</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d6e0eb</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#222</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f5e625</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f5e625</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdfad3</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#625c0f</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdfad3</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#222</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#f57a00</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#f57a00</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fde4cc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#623100</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fde4cc</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#222</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#222</xsl:variable>

  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#222222</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#222</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#222</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff680c</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
