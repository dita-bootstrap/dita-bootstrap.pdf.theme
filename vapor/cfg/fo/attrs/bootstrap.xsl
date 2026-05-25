<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Vapor Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#04c1aa</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e2d9f3</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#2c1a4d</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fbd7f1</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#5e174a</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#fff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#3cf281</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#3cf281</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d8fce6</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#186134</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#3cf281</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#1ba2f6</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#1ba2f6</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d1ecfd</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#0b4162</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#1ba2f6</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff3cd</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#664d03</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e44c55</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e44c55</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fadbdd</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#5b1e22</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#e44c55</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#44d9e8</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#44d9e8</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#44d9e8</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#fff</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#170229</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#170229</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#170229</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#170229</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-border-width">0pt</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#ea39b8</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
