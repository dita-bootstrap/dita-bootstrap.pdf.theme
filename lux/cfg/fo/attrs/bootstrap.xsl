<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Lux Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#1a1a1a</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d1d1d1</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#0a0a0a</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d1d1d1</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#55595c</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#666666</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">white</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#55595c</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#4bbf73</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#4bbf73</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dbf2e3</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1e4c2e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dbf2e3</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#55595c</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#1f9bcf</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#1f9bcf</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d2ebf5</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#0c3e53</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d2ebf5</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#55595c</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fcefdc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#60451f</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fcefdc</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#55595c</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f7dddc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#572120</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f7dddc</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#55595c</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#f0f1f2</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#f0f1f2</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#f0f1f2</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#55595c</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#55595c</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#e0e1e2</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">12pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">10pt</xsl:variable>
  
  <xsl:variable name="prismjs.border.width">0pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#c92235</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
