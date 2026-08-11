<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Cerulean Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#2fa4e7</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2fa4e7</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2fa4e7</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d5edfa</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#13425c</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d5edfa</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#000</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#767c81</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#e9ecef</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fbfbfc</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#5d5e60</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#fbfbfc</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#495057</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#73a839</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#73a839</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e3eed7</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#2e4317</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e3eed7</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#495057</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#033c73</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#033c73</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#cdd8e3</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#01182e</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#cdd8e3</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#495057</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#dd5600</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#dd5600</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f8ddcc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#582200</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f8ddcc</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#495057</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#c71c22</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#c71c22</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f4d2d3</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#500b0e</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f4d2d3</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#495057</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#c760e7</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f3dffa</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#4f265c</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#495057</xsl:variable>
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
  <xsl:variable name="bootstrap-code-color">#b32361</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
