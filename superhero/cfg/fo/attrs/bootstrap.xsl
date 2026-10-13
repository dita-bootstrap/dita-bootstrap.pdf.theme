<?xml version="1.0" encoding="UTF-8"?>
<!--
	This file is part of the DITA Bootstrap PDF Themes plug-in for DITA Open Toolkit.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Superhero Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#ba5715</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#757575</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#cacaca</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#428442</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#5cb85c</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#c64c48</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#937004</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#3b7d91</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8768b0</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#ac85e0</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#70777f</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#4d5f6f</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#fae9dd</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#914410</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#fae9dd</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#914410</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#4e5d6c</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#e4e7e9</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#333c46</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#e4e7e9</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#333c46</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#5cb85c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#5cb85c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e7f4e7</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#3c783c</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e7f4e7</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#3c783c</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e6f6fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#387687</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e6f6fa</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#387687</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff6da</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8f6b04</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fff6da</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#8f6b04</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f9e5e5</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#8d3633</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f9e5e5</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#8d3633</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#ac85e0</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f3edfa</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#705692</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#705692</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#abb6c2</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#abb6c2</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#f5f6f8</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#6d7175</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#f5f6f8</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#6d7175</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#20374c</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#0f2537</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#4e5d6c</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff403b</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>
</xsl:stylesheet>
