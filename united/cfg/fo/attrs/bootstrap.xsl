<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- United Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#e95420</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#e95420</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#e95420</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#fbddd2</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#5d220d</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#fbddd2</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#333</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#666666</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#aea79f</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#efedec</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#464340</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#efedec</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#333</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#38b44a</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#38b44a</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d7f0db</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#16481e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#d7f0db</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#333</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#17a2b8</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#d1ecf1</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#09414a</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#d1ecf1</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#333</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#efb73e</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#efb73e</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fcf1d8</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#604919</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#fcf1d8</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#333</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#df382c</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#df382c</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#f9d7d5</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#591612</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f9d7d5</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#333</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#df46df</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f8daf8</xsl:variable>
    <xsl:variable name="bootstrap-accent-subtle-text">#591c59</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg" select="$bootstrap-accent-subtle"/>
  <xsl:variable name="bootstrap-table-accent-color">#222</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#772953</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#772953</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#772953</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#333333</xsl:variable>
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
  <xsl:variable name="bootstrap-code-color">#ff1f21</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#772953</xsl:variable>
</xsl:stylesheet>
