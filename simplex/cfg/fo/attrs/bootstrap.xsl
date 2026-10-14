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

  <!-- Simplex Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#3e8307</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#469408</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#9b479f</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#9b479f</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#aa6718</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#d9831f</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#027ca7</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#029acf</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#676ac6</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#6d71d2</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#adaeaf</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#d9230f</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#f9dedb</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#8d170a</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#f9dedb</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#8d170a</xsl:variable>

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
  <xsl:variable name="bootstrap-success">#469408</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#469408</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e3efda</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#2d6005</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e3efda</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#2d6005</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#029acf</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#029acf</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d9f0f8</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#016487</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d9f0f8</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#016487</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#d9831f</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#d9831f</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f9ecdd</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8d5514</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f9ecdd</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#8d5514</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#9b479f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#9b479f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f0e3f1</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#652e67</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f0e3f1</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#652e67</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#6d71d2</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#e9eaf8</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#474988</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#474988</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#373a3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e7e7e8</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#242627</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e7e7e8</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#242627</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#fcfcfc</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#ccc</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#d026a0</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#8d170a</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#652e67</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#676ac6</xsl:variable>
</xsl:stylesheet>
