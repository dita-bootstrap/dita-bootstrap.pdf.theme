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

  <!-- Spacelab Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#3399f3</xsl:variable>
  <xsl:variable name="bootstrap-heading-color">#2d2d2d</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#446e9b</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#446e9b</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#737373</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#777777</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#2c8518</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#3cb521</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#cd0200</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#cd0200</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#b16100</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#d47500</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#2878be</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#3399f3</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#88384e</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#88384e</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#333333</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#adadad</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#446e9b</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#446e9b</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e3e9f0</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#2c4765</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e3e9f0</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#2c4765</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#999999</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#999999</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f0f0f0</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#636363</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f0f0f0</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#636363</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#3cb521</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#3cb521</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e2f4de</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#277615</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e2f4de</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#277615</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#3399f3</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#3399f3</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e0f0fd</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#21639e</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e0f0fd</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#21639e</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#d47500</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#d47500</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f9ead9</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8a4c00</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f9ead9</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#8a4c00</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#cd0200</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#cd0200</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f7d9d9</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#850100</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f7d9d9</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#850100</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#88384e</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#ede1e4</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#582433</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#582433</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#333333</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#333333</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e7e7e7</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#212121</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e7e7e7</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#212121</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#777777</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#999999</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#d1002c</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#2c4765</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#850100</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#88384e</xsl:variable>
</xsl:stylesheet>
