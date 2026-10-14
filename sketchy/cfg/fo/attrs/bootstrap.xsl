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

  <!-- Sketchy Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#333333</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#333333</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#333333</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#208738</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#28a745</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#dc3545</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#dc3545</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#937004</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#127f90</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#3f3488</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#3f3488</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#555555</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#bbbbbb</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#333333</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#333333</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e0e0e0</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#212121</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e0e0e0</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#212121</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#555555</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#555555</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#e6e6e6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#373737</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#e6e6e6</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#373737</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#28a745</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#28a745</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dff2e3</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1a6d2d</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dff2e3</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#1a6d2d</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#dcf1f4</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#0f6978</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#dcf1f4</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#0f6978</xsl:variable>

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
  <xsl:variable name="bootstrap-danger">#dc3545</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#dc3545</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fae1e3</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#8f222d</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fae1e3</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#8f222d</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#3f3488</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#e2e1ed</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#292258</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#292258</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#555555</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#555555</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ebebeb</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#373737</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#ebebeb</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#373737</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#333333</xsl:variable>
  <xsl:variable name="bootstrap-border-width">2pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">25px</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#e01441</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#212121</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#8f222d</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#3f3488</xsl:variable>
</xsl:stylesheet>
