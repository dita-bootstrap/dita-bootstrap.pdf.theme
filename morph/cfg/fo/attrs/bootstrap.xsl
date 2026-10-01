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

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#378dfc</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e1eeff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#296abd</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d7e8fe</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#7b8ab8</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#9ca7ca</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#d9e3f1</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#212529</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f7f9fc</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#7b8ab8</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#43cc29</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e3f7df</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#287a19</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d9f5d4</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#7b8ab8</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5b62f4</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e6e7fd</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#5258dc</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#dee0fd</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#7b8ab8</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff6da</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8c6a04</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fff3cd</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#7b8ab8</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e52527</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fbdedf</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#c31f21</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fad3d4</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#7b8ab8</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#e559fc</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#fbe6ff</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#a03eb0</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#212529</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#dededf</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#212529</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#c9d7e9</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#7b8ab8</xsl:variable>
  <xsl:variable name="bootstrap-border-color">rgba(55, 94, 148, 0.1)</xsl:variable>
  <xsl:variable name="bootstrap-border-width">0pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

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
