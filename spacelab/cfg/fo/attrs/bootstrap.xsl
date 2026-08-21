<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Spacelab Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#3399f3</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#446e9b</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#446e9b</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#dae2eb</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#1b2c3e</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#dae2eb</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#777</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#999999</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#999</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ebebeb</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#3d3d3d</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#ebebeb</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#777</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#3cb521</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#3cb521</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d8f0d3</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#18480d</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d8f0d3</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#777</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#3399f3</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#3399f3</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d6ebfd</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#143d61</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d6ebfd</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#777</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#d47500</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#d47500</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f6e3cc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#552f00</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f6e3cc</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#777</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#cd0200</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#cd0200</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f5cccc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#520100</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f5cccc</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#777</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#cd389b</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f5d7eb</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#52163e</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#333333</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#333</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#333</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#777777</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#999999</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#d1002c</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
