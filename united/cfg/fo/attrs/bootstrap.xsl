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

  <!-- United Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#e95420</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#ce4a1c</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#e95420</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#333333</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#333333</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#298537</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#38b44a</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#d8362b</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#df382c</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#937026</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#efb73e</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#127f90</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8761be</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#986ed7</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#772953</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#c9a9ba</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#e95420</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#e95420</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#fce5de</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#973715</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#fce5de</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#973715</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#aea79f</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#aea79f</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f3f2f1</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#716d67</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f3f2f1</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#716d67</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#38b44a</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#38b44a</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e1f4e4</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#247530</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e1f4e4</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#247530</xsl:variable>

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
  <xsl:variable name="bootstrap-warning">#efb73e</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#efb73e</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf4e2</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#896923</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdf4e2</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#896923</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#df382c</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#df382c</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fae1df</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#91241d</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fae1df</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#91241d</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#986ed7</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f0e9f9</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#63478c</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#63478c</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#772953</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#772953</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#efe5ea</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#4d1b36</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#efe5ea</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#4d1b36</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#333333</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#aea79f</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff1f21</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#973715</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#91241d</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#8761be</xsl:variable>
</xsl:stylesheet>
