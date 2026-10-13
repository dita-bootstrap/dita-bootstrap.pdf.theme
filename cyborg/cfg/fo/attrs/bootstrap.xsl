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

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#217da8</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#747675</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#558000</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#b15e00</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#9d4d2a</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#9d4d2a</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#747675</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#494a49</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#dff1f9</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#1b678b</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#dff1f9</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#1b678b</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#555555</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#e6e6e6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#373737</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#e6e6e6</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#373737</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#ebf4d9</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#4d7400</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#ebf4d9</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#4d7400</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#f0e0f7</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#632185</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#f0e0f7</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#632185</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ffedd9</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#a65800</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffedd9</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#a65800</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f7d9d9</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#850000</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f7d9d9</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#850000</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#9d4d2a</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f0e4df</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#66321b</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#66321b</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#f5f5f5</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#6e6e6e</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#f5f5f5</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#6e6e6e</xsl:variable>
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
