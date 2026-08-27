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

  <!-- Cyborg Theme Base Colors (Adapted for Print/Light Mode) -->

  <xsl:variable name="bootstrap-link">#2a9fd6</xsl:variable>
  <!-- HTML headings are white (dark-mode site); using primary instead, white prints invisible -->
  <xsl:variable name="bootstrap-heading-color" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>
  <xsl:variable name="bootstrap-badge-default-bg">#212529</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d4ecf7</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#114056</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#555555</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#dddddd</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#222222</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#555555</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#fff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e4f0cc</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#304800</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#93c</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ebd6f5</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#3d1452</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f80</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ffe7cc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#663600</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#c00</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f5cccc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#520000</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#cc4fd6</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f6e4f9</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#261227</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#222222</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#2b2b2b</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#cccccc</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#060606</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#555555</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes (Cyborg is known for large headings) -->
  <xsl:variable name="bootstrap-h1-font-size">48pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">36pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#b5024b</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>
</xsl:stylesheet>
