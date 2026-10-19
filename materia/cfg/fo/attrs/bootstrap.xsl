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

  <!-- Materia Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#2196f3</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#1b79c4</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#2196f3</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#444444</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#444444</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#3a853d</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#4caf50</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#e51c23</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#e51c23</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#ac6600</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ff9800</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#9c27b0</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#9c27b0</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8b5959</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#8b5959</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#222222</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#a7a7a7</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2196f3</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2196f3</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#deeffd</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#15629e</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#deeffd</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#15629e</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#737373</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#737373</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#4caf50</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#4caf50</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e4f3e5</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#317234</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e4f3e5</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#317234</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9c27b0</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#9c27b0</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#f0dff3</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#651972</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#f0dff3</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#651972</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff9800</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ff9800</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff0d9</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#9c5d00</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fff0d9</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#9c5d00</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e51c23</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e51c23</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fbddde</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#951217</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fbddde</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#951217</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#8b5959</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#eee6e6</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#5a3a3a</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#5a3a3a</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#222222</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#222222</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e4e4e4</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#161616</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e4e4e4</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#161616</xsl:variable>
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
  <xsl:variable name="bootstrap-dita-prussian-blue">#15629e</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#951217</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#8b5959</xsl:variable>
</xsl:stylesheet>
