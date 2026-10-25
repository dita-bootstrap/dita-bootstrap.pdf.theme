<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Slate Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#898c8f</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#2a2e33</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#9c9fa2</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#7a8288</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#7a8288</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#7a8288</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#33383d</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#bcc0c3</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#304238</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#b0e2b0</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#2f414a</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#ade0ee</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#463b2a</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fcca82</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#453336</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#f6afad</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#e9ecef</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#e9ecef</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#e9ecef</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#000</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#3e444c</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#272b30</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>
  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#e33954</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>

  <xsl:variable name="bootstrap-primary-border">#3a3f44</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#aaaaaa</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#62c462</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#ee5f5b</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f89406</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#5bc0de</xsl:variable>
</xsl:stylesheet>
