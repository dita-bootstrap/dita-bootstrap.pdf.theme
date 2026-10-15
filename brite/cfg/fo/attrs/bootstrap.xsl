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

  <!-- Typography Overrides (using logical names for maximum DITA-OT compatibility) -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Brite Theme Base Colors (overriding dita-bootstrap.pdf variables) -->

  <xsl:variable name="bootstrap-link">#000000</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#5b801e</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#9ddd34</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#408259</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#68d391</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#c04f4f</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#f56565</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#8f7000</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f7c100</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#158192</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#22d2ed</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8e7236</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#cca44e</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#000000</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#999999</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#a2e436</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#a2e436</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#f1fbe1</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#577b1d</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#f1fbe1</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#577b1d</xsl:variable>

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
  <xsl:variable name="bootstrap-success">#68d391</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e8f8ee</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#3c7953</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e8f8ee</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#3c7953</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#68d391</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/> 
  <xsl:variable name="bootstrap-badge-success-color">#000000</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#22d2ed</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#def8fc</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#137888</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#def8fc</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#137888</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#22d2ed</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#000000</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc700</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff7d9</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8a6b00</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fff7d9</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#8a6b00</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc700</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#000000</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#f56565</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fee8e8</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#9f4242</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fee8e8</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#9f4242</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#f56565</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#000000</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#cca44e</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f7f1e4</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#816831</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#816831</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#000000</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e0e0e0</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#000000</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e0e0e0</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>

  <!-- Layout & Global Variables -->
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-border-width">2pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes (converted from Brite CSS rem values) -->
  <xsl:variable name="bootstrap-h1-font-size">26.25pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">18.375pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">15.75pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">13.125pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">10.5pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff744b</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#577b1d</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#9f4242</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#8e7236</xsl:variable>

  <xsl:variable name="bootstrap-accordion-active-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-accordion-active-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-fs-base">10.5pt</xsl:variable>
</xsl:stylesheet>
