<?xml version="1.0" encoding="UTF-8"?>
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

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e4f3ef</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#304e45</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#78c2ad</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#fff</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#f3969a</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg">#f3969a</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#fdeaeb</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#613c3e</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#f3969a</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#fff</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#56cc9d</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#56cc9d</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#ddf5eb</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#22523f</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#56cc9d</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#fff</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#6cc3d5</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#6cc3d5</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e2f3f7</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#2b4e55</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#6cc3d5</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#fff</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#ffce67</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#ffce67</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fff5e1</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#665229</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#ffce67</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#fff</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#ff7851</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#ff7851</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#ffe4dc</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#663020</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#ff7851</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#fff</xsl:variable>

  <!-- Light -->
  <xsl:variable name="bootstrap-light">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-badge-light-bg" select="$bootstrap-light"/>
  <xsl:variable name="bootstrap-badge-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-bg">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-btn-light-color">#000</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle">#fefefe</xsl:variable>
  <xsl:variable name="bootstrap-light-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-light-bg">#f8f9fa</xsl:variable>
  <xsl:variable name="bootstrap-table-light-color">#888</xsl:variable>

  <!-- Dark -->
  <xsl:variable name="bootstrap-dark">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-badge-dark-bg" select="$bootstrap-dark"/>
  <xsl:variable name="bootstrap-badge-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-btn-dark-color">#fff</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle">#ced4da</xsl:variable>
  <xsl:variable name="bootstrap-dark-subtle-text">#141619</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-bg">#343a40</xsl:variable>
  <xsl:variable name="bootstrap-table-dark-color">#fff</xsl:variable>
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
  <xsl:variable name="bootstrap-code-color">#e83e8c</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
</xsl:stylesheet>
