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

  <!-- Vapor Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#04c1aa</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#cf32a3</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#228848</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#38e479</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#d0454e</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#e44c55</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#937004</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#157bbb</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#1ba2f6</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8f3c75</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#8f3c75</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#3e7f73</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#426b7b</xsl:variable>
  <xsl:variable name="bootstrap-surface-bg">#391047</xsl:variable>
  <xsl:variable name="bootstrap-surface-header-bg">#391e50</xsl:variable>
  <xsl:variable name="bootstrap-surface-text">#32fbe2</xsl:variable>
  <xsl:variable name="bootstrap-surface-border">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-surface-primary-bg">#271248</xsl:variable>
  <xsl:variable name="bootstrap-surface-primary-color">#b7a0e0</xsl:variable>
  <xsl:variable name="bootstrap-surface-secondary-bg">#391047</xsl:variable>
  <xsl:variable name="bootstrap-surface-secondary-color">#f49cdc</xsl:variable>
  <xsl:variable name="bootstrap-surface-success-bg">#1f2c3f</xsl:variable>
  <xsl:variable name="bootstrap-surface-success-color">#9ef8c0</xsl:variable>
  <xsl:variable name="bootstrap-surface-info-bg">#1a2050</xsl:variable>
  <xsl:variable name="bootstrap-surface-info-color">#8dd0fb</xsl:variable>
  <xsl:variable name="bootstrap-surface-warning-bg">#3c252c</xsl:variable>
  <xsl:variable name="bootstrap-surface-warning-color">#ffe083</xsl:variable>
  <xsl:variable name="bootstrap-surface-danger-bg">#381338</xsl:variable>
  <xsl:variable name="bootstrap-surface-danger-color">#f2a6aa</xsl:variable>
  <xsl:variable name="bootstrap-surface-accent-bg">#2c113d</xsl:variable>
  <xsl:variable name="bootstrap-surface-accent-color">#c79eba</xsl:variable>
  <xsl:variable name="bootstrap-surface-inverse-bg">#292e4e</xsl:variable>
  <xsl:variable name="bootstrap-surface-inverse-color">#befff3</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e9e3f6</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#482b7d</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#271248</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#b7a0e0</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fce1f4</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#982578</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#391047</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#f49cdc</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#3cf281</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#3cf281</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e2fdec</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#207f44</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#1f2c3f</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#9ef8c0</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#1ba2f6</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#1ba2f6</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ddf1fe</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#1269a0</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#1a2050</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#8dd0fb</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff6da</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8f6b04</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#3c252c</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#ffe083</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e44c55</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e44c55</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fbe4e6</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#943137</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#381338</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#f2a6aa</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#8f3c75</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#eee2ea</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#5d274c</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#c79eba</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#7dffe7</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#7dffe7</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#effffc</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#527b73</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#effffc</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#527b73</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#170229</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#391047</xsl:variable>
  <xsl:variable name="bootstrap-border-width">1pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#f71a71</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>
</xsl:stylesheet>
