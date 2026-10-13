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

  <!-- Yeti Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">300</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#0080aa</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#338351</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#43ac6a</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#d43a20</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#f04124</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#a76701</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#e99002</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#3b7d91</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8a5cc8</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#8a5cc8</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#2c2d2d</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#ababab</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#d9eef5</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#005b79</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#d9eef5</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#005b79</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fcfcfc</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#727272</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#fcfcfc</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#727272</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#43ac6a</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#43ac6a</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e3f3e9</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#2c7045</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e3f3e9</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#2c7045</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e6f6fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#387687</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e6f6fa</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#387687</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#e99002</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#e99002</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fceed9</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#975e01</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fceed9</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#975e01</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#f04124</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#f04124</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fde2de</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#9c2a17</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fde2de</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#9c2a17</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#8a5cc8</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#ede7f7</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#5a3c82</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#5a3c82</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#2c2d2d</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#2c2d2d</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e6e6e6</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#1d1d1d</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e6e6e6</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#1d1d1d</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#da3e45</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
