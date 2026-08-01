<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Yeti Theme Base Colors -->

  <xsl:variable name="bootstrap-link">#008cba</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#cce8f1</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#00384a</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#008cba</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#eee</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fcfcfc</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#5f5f5f</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#222</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#43ac6a</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#43ac6a</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d9eee1</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#1b452a</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#43ac6a</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#def2f8</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#244d59</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#e99002</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#e99002</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fbe9cc</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#5d3a01</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#e99002</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#f04124</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#f04124</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fcd9d3</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#601a0e</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#f04124</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#eeeeee</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#eee</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#eee</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#222</xsl:variable>

  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#333333</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#333</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#333</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#da3e45</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
