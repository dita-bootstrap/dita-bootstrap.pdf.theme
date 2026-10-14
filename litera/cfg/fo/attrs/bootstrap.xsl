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

  <!-- Litera Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#4582ec</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#3d73d1</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#4582ec</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#018856</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#02b875</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#c64c48</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#986e31</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#127f90</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8b6799</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#8f6a9e</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#aeb0b3</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#4582ec</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#4582ec</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e3ecfc</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#2d5599</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#e3ecfc</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#2d5599</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#adb5bd</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#adb5bd</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f3f4f5</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#696f74</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f3f4f5</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#696f74</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#02b875</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#02b875</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d9f4ea</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#01784c</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d9f4ea</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#01784c</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#dcf1f4</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#0f6978</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#dcf1f4</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#0f6978</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf3e4</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8e662f</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fdf3e4</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#8e662f</xsl:variable>

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
  <xsl:variable name="bootstrap-accent">#8f6a9e</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#eee9f0</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#5d4567</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#5d4567</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e7e7e8</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#22262a</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e7e7e8</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#22262a</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dddddd</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>
  <xsl:variable name="bootstrap-btn-rounded">12pt</xsl:variable>
  <xsl:variable name="bootstrap-btn-rounded-lg">12pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">33pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">26.5pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">23pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">20pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">16.5pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">13pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ee487e</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#08384A</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#8d3633</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#8b6799</xsl:variable>
</xsl:stylesheet>
