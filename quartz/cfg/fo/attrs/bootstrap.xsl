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

  <!-- Quartz Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#f184b5</xsl:variable>
  <xsl:variable name="bootstrap-badge-default-bg">#575bab</xsl:variable>


  <xsl:variable name="bootstrap-primary-fg">#d42e78</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#e83283</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#747474</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#c8c8c8</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#288467</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#41d7a7</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#b55a0e</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#fd7e14</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#937004</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#237d9a</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#39cbfb</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#9762a7</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#da8df1</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#000000</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#000000</xsl:variable>
  <xsl:variable
    name="bootstrap-surface-image"
    select="resolve-uri('../images/quartz-gradient.png', base-uri(document('cfg:fo/attrs/custom.xsl')))"
  />
  <xsl:variable name="bootstrap-surface-image-color">#e35996</xsl:variable>
  <xsl:variable name="bootstrap-surface-image-border">#b4b6dc</xsl:variable>
  <xsl:variable name="bootstrap-surface-image-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-surface-image-bar-factor" select="0.72"/>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#e83283</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#e83283</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#fce0ec</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#972155</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#8e5bb0</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fef2f7</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#9ea9c2</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#6d6d6d</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#9599d5</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#ffffff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#41d7a7</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#41d7a7</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e2f9f2</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#257c60</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#5c8dbb</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#feffff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#39cbfb</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#39cbfb</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e1f7fe</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#217590</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#5a89d4</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#feffff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff6da</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#8f6b04</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#95868b</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fffffe</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#fd7e14</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#fd7e14</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffecdc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#a4520d</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#95728e</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fffffe</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#da8df1</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f9eefd</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#8a5998</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#ffffff</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#686dc3</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#747474</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#686dc3</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#5a5fac</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#b4b6dc</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#7277c7</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#6c757d</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff4e10</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#686dc3</xsl:variable>
</xsl:stylesheet>
