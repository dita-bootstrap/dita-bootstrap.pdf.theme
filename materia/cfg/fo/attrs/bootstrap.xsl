<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Materia Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#2196f3</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2196f3</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2196f3</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d3eafd</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#0d3c61</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d3eafd</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#444</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#737373</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#666666</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">white</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#444</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#4caf50</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#4caf50</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dbefdc</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1e4620</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dbefdc</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#444</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9c27b0</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#9c27b0</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ebd4ef</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#3e1046</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#ebd4ef</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#444</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff9800</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ff9800</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ffeacc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#663d00</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffeacc</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#444</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e51c23</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e51c23</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fad2d3</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#5c0b0e</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fad2d3</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#444</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#e559f3</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f9ddfc</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#5b2361</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
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
  <xsl:variable name="bootstrap-body-color">#444444</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#d71c60</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
