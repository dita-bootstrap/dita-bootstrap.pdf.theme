<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Sandstone Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#93c54b</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#325d88</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#325d88</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d6dfe7</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#142536</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d6dfe7</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#3e3f3a</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#8e8c84</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#8e8c84</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#e8e8e6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#393835</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#e8e8e6</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#3e3f3a</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#93c54b</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#93c54b</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e9f3db</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#3b4f1e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e9f3db</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#3e3f3a</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#29abe0</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#29abe0</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d4eef9</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#10445a</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d4eef9</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#3e3f3a</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f47c3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f47c3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fde5d8</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#623218</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fde5d8</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#3e3f3a</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f7dddc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#572120</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f7dddc</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#3e3f3a</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#d95888</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f7dde7</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#562336</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dfd7ca</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#bc3867</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
