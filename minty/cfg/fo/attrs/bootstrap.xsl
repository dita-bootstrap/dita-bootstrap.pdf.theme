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

  <!-- Minty Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-heading-color">#5a5a5a</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-primary-fg">#4e7f71</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#757575</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#888888</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#368163</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#56cc9d</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#bc583c</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#ff7851</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#8b7038</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f0c261</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#447b87</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#6cc3d5</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#8569a6</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#c097ef</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#aeb0b3</xsl:variable>
  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#ebf6f3</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#497769</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#ebf6f3</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#497769</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#f3969a</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#f3969a</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fdeff0</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#995f61</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#fdeff0</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#995f61</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#56cc9d</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#56cc9d</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#e6f7f0</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#33795d</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#e6f7f0</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#33795d</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#6cc3d5</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#6cc3d5</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e9f6f9</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#427782</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#e9f6f9</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#427782</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffce67</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffce67</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff8e8</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#866c36</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fff8e8</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#866c36</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ff7851</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ff7851</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffebe5</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#a64e35</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ffebe5</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#a64e35</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#c097ef</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f6effd</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#7d629b</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#7d629b</xsl:variable>
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
  <xsl:variable name="bootstrap-body-color">#888888</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#eceeef</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ff7e5e</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
