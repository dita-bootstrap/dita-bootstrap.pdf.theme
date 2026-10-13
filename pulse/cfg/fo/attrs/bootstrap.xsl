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

  <!-- Pulse Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#593196</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#593196</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#593196</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#444444</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#444444</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#0e883f</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#13b955</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#df3232</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#fc3939</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#9c6a13</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#efa31d</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#007eb2</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#009cdc</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#aa3568</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#aa3568</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#a2a1a5</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#593196</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#593196</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e6e0ef</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#3a2062</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e6e0ef</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#3a2062</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#a991d4</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#a991d4</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f2eef9</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#6e5e8a</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f2eef9</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#6e5e8a</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#13b955</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#13b955</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dcf5e6</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#0c7837</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dcf5e6</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#0c7837</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#009cdc</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#009cdc</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d9f0fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#00658f</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d9f0fa</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#00658f</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#efa31d</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#efa31d</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf1dd</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#926412</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdf1dd</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#926412</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#fc3939</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#fc3939</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffe1e1</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#a42525</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ffe1e1</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#a42525</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#aa3568</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f2e1e8</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#6e2244</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#6e2244</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e3e3e4</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#0f0d14</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e3e3e4</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#0f0d14</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#444444</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#ededed</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#a991d4</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff1253</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#593196</xsl:variable>
</xsl:stylesheet>
