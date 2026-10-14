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

  <!-- Sandstone Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#93c54b</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">400</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#325d88</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#325d88</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#608131</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#93c54b</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#c64c48</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#b45b2c</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f47c3c</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#1e7ea5</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#29abe0</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#86586c</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#86586c</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#b2b2b0</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#325d88</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#325d88</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e0e7ed</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#213c58</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e0e7ed</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#213c58</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#8e8c84</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#8e8c84</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#eeeeed</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#5c5b56</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#eeeeed</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#5c5b56</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#93c54b</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#93c54b</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#eff6e4</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#5a782e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#eff6e4</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#5a782e</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#29abe0</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#29abe0</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#dff2fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#1b6f92</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#dff2fa</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#1b6f92</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f47c3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f47c3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdebe2</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#9f5127</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdebe2</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#9f5127</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f9e5e5</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#8d3633</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f9e5e5</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#8d3633</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#86586c</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#ede6e9</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#573946</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#573946</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e8e8e7</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#282926</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e8e8e7</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#282926</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#3e3f3a</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dfd7ca</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#8e8c84</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#bc3867</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#213c58</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#8d3633</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#86586c</xsl:variable>
</xsl:stylesheet>
