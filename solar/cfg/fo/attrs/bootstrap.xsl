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
  <xsl:variable name="bootstrap-link">#2aa198</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#926f00</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#b58900</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#62777f</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#657b83</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#22827b</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#2aa198</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#d33682</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#d33682</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#cb4b16</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#cb4b16</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#227bba</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#268bd2</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#696ebe</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#6c71c4</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#002b36</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#98a59e</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#b58900</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#b58900</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#f4edd9</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#765900</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#f4edd9</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#765900</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#839496</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#839496</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ecefef</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#556062</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#ecefef</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#556062</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#2aa198</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#2aa198</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#dff1f0</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1b6963</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#dff1f0</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#1b6963</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#268bd2</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#268bd2</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#deeef8</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#195a88</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#deeef8</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#195a88</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#cb4b16</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#cb4b16</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f7e4dc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#84310e</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#f7e4dc</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#84310e</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#d33682</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#d33682</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f8e1ec</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#892355</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f8e1ec</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#892355</xsl:variable>

  <!-- Accent (Solarized violet - see note above) -->
  <xsl:variable name="bootstrap-accent">#6c71c4</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#e9eaf6</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#46497f</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#46497f</xsl:variable>
  <!-- Inverse (Bootswatch "dark", #073642) -->
  <xsl:variable name="bootstrap-inverse">#002b36</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fdf6e3</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#002b36</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fdf6e3</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e0e6e7</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#001a21</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e0e6e7</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#001a21</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#073642</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#002b36</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#839496</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff3553</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>
</xsl:stylesheet>
