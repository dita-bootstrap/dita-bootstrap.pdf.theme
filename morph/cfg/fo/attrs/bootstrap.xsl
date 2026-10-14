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

  <!-- Morph Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#485785</xsl:variable>
  <xsl:variable name="bootstrap-heading-color">#485785</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#2e75d2</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#667399</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#7b8ab8</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#2c851b</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#937004</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8e5992</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#8e5992</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#8f97a1</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e1eeff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#245ca4</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e1eeff</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#245ca4</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f9fbfd</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#6f747b</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f9fbfd</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#6f747b</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e3f7df</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#297d19</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e3f7df</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#297d19</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e6e7fd</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#3b409f</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e6e7fd</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#3b409f</xsl:variable>

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
  <xsl:variable name="bootstrap-danger">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fbdedf</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#951819</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fbdedf</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#951819</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#8e5992</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#eee6ef</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#5c3a5f</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#5c3a5f</xsl:variable>
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
  <xsl:variable name="bootstrap-table-striped-color">#c9d7e9</xsl:variable>
  <xsl:variable name="bootstrap-glow-color">#6d7279</xsl:variable>
  <xsl:variable name="bootstrap-glow-scope">surface</xsl:variable>
  <xsl:variable name="bootstrap-card-fill">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#7b8ab8</xsl:variable>
  <xsl:variable name="bootstrap-border-color">rgba(55, 94, 148, 0.1)</xsl:variable>
  <xsl:variable name="bootstrap-border-width">0pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>
  <xsl:variable name="bootstrap-btn-rounded">100pt</xsl:variable>
  <xsl:variable name="bootstrap-btn-rounded-lg">100pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#e21973</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#08384A</xsl:variable>
</xsl:stylesheet>
