<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Simplex Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#d9230f</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#f7d3cf</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#570e06</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#f7d3cf</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#212529</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#666666</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">white</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#212529</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#469408</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#469408</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#daeace</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1c3b03</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#daeace</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#212529</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#029acf</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#029acf</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ccebf5</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#013e53</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#ccebf5</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#212529</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#d9831f</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#d9831f</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f7e6d2</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#57340c</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f7e6d2</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#212529</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#9b479f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#9b479f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ebdaec</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#3e1c40</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ebdaec</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#212529</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#fff</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#212529</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#fcfcfc</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#ccc</xsl:variable>
  <xsl:variable name="bootstrap-rounded">4pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#d026a0</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#9b479f</xsl:variable>
</xsl:stylesheet>
