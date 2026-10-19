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

  <!-- Lumen Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#158cba</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#137ca5</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#158cba</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#1d8620</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#28b62c</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#db382e</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#ff4136</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#b65f13</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ff851b</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#487c90</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#75caeb</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#99466f</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#99466f</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#555555</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#bbbbbb</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#158cba</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#158cba</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#dceef5</xsl:variable>
  <xsl:variable name="bootstrap-primary-alert-border">#137ea7</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#0e5b79</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#dceef5</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#0e5b79</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#f0f0f0</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#f0f0f0</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fdfdfd</xsl:variable>
  <xsl:variable name="bootstrap-secondary-alert-border">#d8d8d8</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#737373</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#fdfdfd</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#737373</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#28b62c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#28b62c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dff4df</xsl:variable>
  <xsl:variable name="bootstrap-success-alert-border">#24a428</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1a761d</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dff4df</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#1a761d</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#75caeb</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#75caeb</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#eaf7fc</xsl:variable>
  <xsl:variable name="bootstrap-info-alert-border">#69b6d4</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#437487</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#eaf7fc</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#437487</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff851b</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ff851b</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ffeddd</xsl:variable>
  <xsl:variable name="bootstrap-warning-alert-border">#e67818</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#a65612</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffeddd</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#a65612</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ff4136</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ff4136</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffe2e1</xsl:variable>
  <xsl:variable name="bootstrap-danger-alert-border">#e63b31</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#a62a23</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ffe2e1</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#a62a23</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#99466f</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f0e3e9</xsl:variable>
    <xsl:variable name="bootstrap-accent-alert-border">#e65ca7</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#632d48</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#632d48</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#555555</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#555555</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ebebeb</xsl:variable>
  <xsl:variable name="bootstrap-inverse-alert-border">#4d4d4d</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#373737</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#ebebeb</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#373737</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#f83b69</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#08384A</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#a62a23</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#99466f</xsl:variable>
  <xsl:variable name="bootstrap-btn-font-weight">700</xsl:variable>
</xsl:stylesheet>
