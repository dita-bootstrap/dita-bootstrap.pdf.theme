<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Cyborg Theme Base Colors (Adapted for Print/Light Mode) -->

  <xsl:variable name="bootstrap-link">#2a9fd6</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#0b1d25</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#94cfeb</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#555555</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#555</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#555555</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#121212</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#aaaaaa</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#172005</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#bbd980</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#93c</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#9933cc</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#1c0d24</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#cc99e6</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f80</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#2b1a05</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#ffc380</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#c00</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#240505</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#e68080</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#222222</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#222</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#222</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#fff</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#1a1a1a</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes (Cyborg is known for large headings) -->
  <!-- HTML headings are white (dark-mode site); using primary instead, white prints invisible -->
  <xsl:variable name="bootstrap-heading-color" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>
  <xsl:variable name="bootstrap-h1-font-size">48pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">36pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#b5024b</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>

  <xsl:variable name="bootstrap-primary-border">#2a9fd6</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#adafae</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#77b300</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#cc0000</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#ff8800</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#9933cc</xsl:variable>
</xsl:stylesheet>
