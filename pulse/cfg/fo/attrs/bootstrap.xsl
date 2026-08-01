<?xml version="1.0" encoding="UTF-8"?>
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

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#593196</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#593196</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#ded6ea</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#24143c</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#ded6ea</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#444</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#a991d4</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#a991d4</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#eee9f6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#443a55</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#eee9f6</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#444</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#13b955</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#13b955</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d0f1dd</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#084a22</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d0f1dd</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#444</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#009cdc</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#009cdc</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#ccebf8</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#003e58</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#ccebf8</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#444</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#efa31d</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#efa31d</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fcedd2</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#60410c</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fcedd2</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#444</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#fc3939</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#fc3939</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fed7d7</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#651717</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#fed7d7</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#444</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#f9f8fc</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#f9f8fc</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#f9f8fc</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#444</xsl:variable>

  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#17141f</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#444444</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#ededed</xsl:variable>
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
