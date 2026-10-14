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

  <!-- Journal Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#eb6864</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#be5451</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#eb6864</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#1a873a</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#22b24c</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#ba5d00</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#f57a00</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#7d7613</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#d9cc21</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#336699</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#336699</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#a6599d</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#b05fa7</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#222222</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#a7a7a7</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#eb6864</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#eb6864</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#fce8e8</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#994441</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#fce8e8</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#994441</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#aaaaaa</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#aaaaaa</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#f2f2f2</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#6e6e6e</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f2f2f2</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#6e6e6e</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#22b24c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#22b24c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#def3e4</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#167431</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#def3e4</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#167431</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#336699</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#336699</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e0e8f0</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#214263</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e0e8f0</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#214263</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f5e625</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f5e625</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fefbde</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#7d7613</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fefbde</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#7d7613</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#f57a00</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#f57a00</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#feebd9</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#9f4f00</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#feebd9</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#9f4f00</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#b05fa7</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f3e7f2</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#723e6d</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#723e6d</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#222222</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#222222</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#e4e4e4</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#161616</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#e4e4e4</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#161616</xsl:variable>
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
  <xsl:variable name="bootstrap-code-color">#ff680c</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#994441</xsl:variable>
  <xsl:variable name="bootstrap-dita-maroon">#9f4f00</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#a6599d</xsl:variable>
</xsl:stylesheet>
