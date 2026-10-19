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

  <!-- Cosmo Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#2780e3</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">400</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#2475cf</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#2780e3</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#2e8612</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#3fb618</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#e90034</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#ff0039</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#bc5612</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ff7518</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#9954bb</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#9954bb</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#9b582a</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#9b582a</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#afb0b1</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2780e3</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2780e3</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#dfecfb</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#195394</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#dfecfb</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#195394</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#e1e1e2</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#242627</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#e1e1e2</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#242627</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#3fb618</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#3fb618</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e2f4dc</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#297610</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e2f4dc</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#297610</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9954bb</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#9954bb</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#f0e5f5</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#63377a</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#f0e5f5</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#63377a</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff7518</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ff7518</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ffeadc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#a64c10</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffeadc</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#a64c10</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ff0039</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ff0039</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffd9e1</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#a60025</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ffd9e1</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#a60025</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#9b582a</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f0e6df</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#65391b</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#65391b</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e7e7e8</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#242627</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e7e7e8</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#242627</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#f70081</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#195394</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#a60025</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#9b582a</xsl:variable>
</xsl:stylesheet>
