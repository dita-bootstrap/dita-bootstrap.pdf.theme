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

  <!-- Slate Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#898c8f</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#767676</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#aaaaaa</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#428442</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#c64f4c</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#a76404</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#3b7d91</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#884f94</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#884f94</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#747577</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#75787c</xsl:variable>
  <xsl:variable name="bootstrap-surface-bg">#33383d</xsl:variable>
  <xsl:variable name="bootstrap-surface-header-bg">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-surface-text">#aaaaaa</xsl:variable>
  <xsl:variable name="bootstrap-surface-border">#7a8288</xsl:variable>
  <xsl:variable name="bootstrap-surface-primary-bg">#2a2e33</xsl:variable>
  <xsl:variable name="bootstrap-surface-primary-color">#9c9fa2</xsl:variable>
  <xsl:variable name="bootstrap-surface-secondary-bg">#33383d</xsl:variable>
  <xsl:variable name="bootstrap-surface-secondary-color">#bcc0c3</xsl:variable>
  <xsl:variable name="bootstrap-surface-success-bg">#304238</xsl:variable>
  <xsl:variable name="bootstrap-surface-success-color">#b0e2b0</xsl:variable>
  <xsl:variable name="bootstrap-surface-info-bg">#2f414a</xsl:variable>
  <xsl:variable name="bootstrap-surface-info-color">#ade0ee</xsl:variable>
  <xsl:variable name="bootstrap-surface-warning-bg">#463b2a</xsl:variable>
  <xsl:variable name="bootstrap-surface-warning-color">#fcca82</xsl:variable>
  <xsl:variable name="bootstrap-surface-danger-bg">#453336</xsl:variable>
  <xsl:variable name="bootstrap-surface-danger-color">#f6afad</xsl:variable>
  <xsl:variable name="bootstrap-surface-accent-bg">#36303f</xsl:variable>
  <xsl:variable name="bootstrap-surface-accent-color">#c3a7ca</xsl:variable>
  <xsl:variable name="bootstrap-surface-inverse-bg">#44484d</xsl:variable>
  <xsl:variable name="bootstrap-surface-inverse-color">#f4f6f7</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e1e2e3</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#26292c</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#2a2e33</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#9c9fa2</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#7a8288</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ebeced</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#4f5558</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#33383d</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#bcc0c3</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e7f6e7</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#3e7b3e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#304238</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#b0e2b0</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e6f6fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#387687</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#2f414a</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#ade0ee</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#feefda</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#9c5d04</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#463b2a</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fcca82</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fce7e6</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#9b3e3b</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#453336</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#f6afad</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#884f94</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#ede5ef</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#583360</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#c3a7ca</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#e9ecef</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#e9ecef</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#fcfdfd</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#747576</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#fcfdfd</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#747576</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#3e444c</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#33383d</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#7a8288</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#e33954</xsl:variable>
  <xsl:variable name="bootstrap-surface-code-color">#f098a6</xsl:variable>
  <xsl:variable name="bootstrap-surface-xml-color">#bda8e2</xsl:variable>
  <xsl:variable name="bootstrap-surface-cmd-color">#9ab4de</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#9b3e3b</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#884f94</xsl:variable>

  <xsl:variable name="bootstrap-surface-accordion-header-color">#ffffff</xsl:variable>
</xsl:stylesheet>
