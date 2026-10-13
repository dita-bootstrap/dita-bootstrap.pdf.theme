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

  <!-- Lux Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-heading-color">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">600</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#55595c</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#55595c</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#348550</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#4bbf73</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#c64c48</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#986e31</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#197da7</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#1f9bcf</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#7a3479</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#7a3479</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#aeb0b3</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#dddddd</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#111111</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#dddddd</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#111111</xsl:variable>

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
  <xsl:variable name="bootstrap-success">#4bbf73</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#4bbf73</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e4f5ea</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#317c4b</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e4f5ea</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#317c4b</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#1f9bcf</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#1f9bcf</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ddf0f8</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#146587</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#ddf0f8</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#146587</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#000000</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f0ad4e</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#000000</xsl:variable>
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
  <xsl:variable name="bootstrap-accent">#7a3479</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#ebe1eb</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#4f224f</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#4f224f</xsl:variable>
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
  <xsl:variable name="bootstrap-body-color">#55595c</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#e0e1e2</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">12pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">9pt</xsl:variable>
  
  <xsl:variable name="prismjs.border.width">0pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#c92235</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
