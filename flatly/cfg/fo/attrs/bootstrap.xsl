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

  <!-- Flatly Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#dfe2e5</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#2c3e50</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#585c5e</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#eff2f2</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#616b6c</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#95a5a6</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#fff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dcf5f0</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#107a65</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#18bc9c</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e1f0fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#246a99</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf0db</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#925e0b</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fbe4e2</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#b93d30</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#e745af</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#fbe3f3</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#ad3483</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ebedee</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#5c6868</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#7b8a8b</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">36pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ed2929</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#08384A</xsl:variable>
</xsl:stylesheet>
