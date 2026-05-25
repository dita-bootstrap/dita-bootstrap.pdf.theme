<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <!-- Typography Overrides -->
  <xsl:variable name="default-font-family">sans-serif</xsl:variable>
  <xsl:variable name="monospaced-font-family">monospace</xsl:variable>

  <!-- Superhero Theme Base Colors (Adapted for light mode print) -->

  <xsl:variable name="bootstrap-link">#df6919</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#faece3</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#6a320c</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#df6919</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#4e5d6c</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#4e5d6c</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#eaedf0</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#272e36</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#4e5d6c</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#fff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#5cb85c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#5cb85c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#eef7ee</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#2e5c2e</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#5cb85c</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#eef8fb</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#2d606f</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#5bc0de</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff9e6</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#806104</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffc107</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#faeeed</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#6d2a28</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#d9534f</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#abb6c2</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#abb6c2</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#abb6c2</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#fff</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#20374c</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#20374c</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#20374c</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#20374c</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-rounded">0pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">21pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#e83e8c</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
