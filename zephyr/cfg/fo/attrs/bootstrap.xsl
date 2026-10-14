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

  <!-- Zephyr Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-heading-color" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#495057</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#495057</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#23845e</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#2fb380</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#da292e</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#da292e</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#91713a</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f4bd61</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#287bb5</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#287bb5</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#87418a</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#87418a</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#a6a8a9</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#3459e6</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e1e6fb</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#223a96</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e1e6fb</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#223a96</xsl:variable>

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
  <xsl:variable name="bootstrap-success">#2fb380</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#2fb380</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e0f4ec</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1f7453</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e0f4ec</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#1f7453</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#287bb5</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#287bb5</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#dfebf4</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#1a5076</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#dfebf4</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#1a5076</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f4bd61</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f4bd61</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf5e7</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#896a36</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdf5e7</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#896a36</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#da292e</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#da292e</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f9dfe0</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#8e1b1e</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f9dfe0</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#8e1b1e</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#87418a</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#ede2ed</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#582a5a</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#582a5a</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#212529</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e4e5e5</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#15181b</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e4e5e5</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#15181b</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#495057</xsl:variable>
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
  <xsl:variable name="bootstrap-code-color">#dc1258</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#223a96</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#8e1b1e</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#87418a</xsl:variable>
</xsl:stylesheet>
