<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides (using logical names for maximum DITA-OT compatibility) -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Brite Theme Base Colors (overriding dita-bootstrap.pdf variables) -->

  <xsl:variable name="bootstrap-link">#000000</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#a2e436</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#a2e436</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#a2e436</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#ecfad7</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#415b16</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#585c5e</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#666666</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#000</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#68d391</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e1f6e9</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#2a543a</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#68d391</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#68d391</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/> 
  <xsl:variable name="bootstrap-badge-success-color">#000</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#22d2ed</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d3f6fb</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#0e545f</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#22d2ed</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#22d2ed</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#000</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc700</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff4cc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#665000</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffc700</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc700</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#000</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#f56565</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fde0e0</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#622828</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f56565</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#f56565</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#000</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#f5a4c9</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#fdecf4</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#624150</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#000000</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#495057</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#000</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>

  <!-- Layout & Global Variables -->
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-border-width">2pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes (converted from Brite CSS rem values) -->
  <xsl:variable name="bootstrap-h1-font-size">26.25pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">18.375pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">15.75pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">13.125pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">10.5pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff744b</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#be82fa</xsl:variable>
</xsl:stylesheet>
