<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Zephyr Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#3459e6</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d6defa</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#15245c</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d6defa</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#495057</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#767c81</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#666666</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">white</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#495057</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#2fb380</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#2fb380</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d5f0e6</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#134833</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d5f0e6</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#495057</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#287bb5</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#287bb5</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d4e5f0</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#103148</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d4e5f0</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#495057</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f4bd61</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f4bd61</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf2df</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#624c27</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdf2df</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#495057</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#da292e</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#da292e</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f8d4d5</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#571012</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f8d4d5</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#495057</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#da41e6</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f7d9fa</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#571a5c</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#212529</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#212529</xsl:variable>
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
  <xsl:variable name="bootstrap-code-color">#dc1258</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
