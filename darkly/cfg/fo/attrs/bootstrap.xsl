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

  <!-- Darkly Theme Base Colors (Adapted for Print/Light Mode). Base/subtle/text-emphasis
       values for the six contextual roles below are taken directly from bootswatch.com/darkly's
       compiled bootstrap.min.css light-mode root block - the previous subtle/text pairs here
       were dark-mode-style (dark bg, bright text), wrong for a light print page. -->

  <xsl:variable name="bootstrap-link">#00bc8c</xsl:variable>
  <xsl:variable name="bootstrap-heading-font-weight">500</xsl:variable>

  <xsl:variable name="bootstrap-alert-solid" select="true()"/>

  <xsl:variable name="bootstrap-primary-fg">#375a7f</xsl:variable>
  <xsl:variable name="bootstrap-primary-border">#375a7f</xsl:variable>
  <xsl:variable name="bootstrap-secondary-fg">#747474</xsl:variable>
  <xsl:variable name="bootstrap-secondary-border">#c8c8c8</xsl:variable>
  <xsl:variable name="bootstrap-success-fg">#008664</xsl:variable>
  <xsl:variable name="bootstrap-success-border">#00bc8c</xsl:variable>
  <xsl:variable name="bootstrap-danger-fg">#cd4335</xsl:variable>
  <xsl:variable name="bootstrap-danger-border">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-warning-fg">#a4690c</xsl:variable>
  <xsl:variable name="bootstrap-warning-border">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-info-fg">#2a7bb1</xsl:variable>
  <xsl:variable name="bootstrap-info-border">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-accent-fg">#993685</xsl:variable>
  <xsl:variable name="bootstrap-accent-border">#993685</xsl:variable>
  <xsl:variable name="bootstrap-inverse-fg">#71767b</xsl:variable>
  <xsl:variable name="bootstrap-inverse-border">#5a5d60</xsl:variable>
  <xsl:variable name="bootstrap-surface-bg">#272727</xsl:variable>
  <xsl:variable name="bootstrap-surface-header-bg">#343434</xsl:variable>
  <xsl:variable name="bootstrap-surface-text">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-surface-border">#444444</xsl:variable>
  <xsl:variable name="bootstrap-surface-primary-bg">#252a30</xsl:variable>
  <xsl:variable name="bootstrap-surface-primary-color">#9bacbf</xsl:variable>
  <xsl:variable name="bootstrap-surface-secondary-bg">#272727</xsl:variable>
  <xsl:variable name="bootstrap-surface-secondary-color">#a2a2a2</xsl:variable>
  <xsl:variable name="bootstrap-surface-success-bg">#1d3932</xsl:variable>
  <xsl:variable name="bootstrap-surface-success-color">#80dec6</xsl:variable>
  <xsl:variable name="bootstrap-surface-info-bg">#25343e</xsl:variable>
  <xsl:variable name="bootstrap-surface-info-color">#9acced</xsl:variable>
  <xsl:variable name="bootstrap-surface-warning-bg">#413420</xsl:variable>
  <xsl:variable name="bootstrap-surface-warning-color">#f9ce88</xsl:variable>
  <xsl:variable name="bootstrap-surface-danger-bg">#402826</xsl:variable>
  <xsl:variable name="bootstrap-surface-danger-color">#f3a69e</xsl:variable>
  <xsl:variable name="bootstrap-surface-accent-bg">#342531</xsl:variable>
  <xsl:variable name="bootstrap-surface-accent-color">#cc9ac2</xsl:variable>
  <xsl:variable name="bootstrap-surface-inverse-bg">#373839</xsl:variable>
  <xsl:variable name="bootstrap-surface-inverse-color">#d6dade</xsl:variable>

  <!-- Primary -->
  <xsl:variable name="bootstrap-primary">#375a7f</xsl:variable>
  <xsl:variable name="bootstrap-badge-primary-bg" select="$bootstrap-primary"/>
  <xsl:variable name="bootstrap-badge-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-bg">#375a7f</xsl:variable>
  <xsl:variable name="bootstrap-btn-primary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle">#e1e6ec</xsl:variable>
  <xsl:variable name="bootstrap-primary-subtle-text">#243b53</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-bg">#262d35</xsl:variable>
  <xsl:variable name="bootstrap-table-primary-color">#9bacbf</xsl:variable>

  <!-- Secondary -->
  <xsl:variable name="bootstrap-secondary">#444444</xsl:variable>
  <xsl:variable name="bootstrap-badge-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-badge-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-secondary-bg" select="$bootstrap-secondary"/>
  <xsl:variable name="bootstrap-btn-secondary-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle">#e3e3e3</xsl:variable>
  <xsl:variable name="bootstrap-secondary-subtle-text">#2c2c2c</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-bg">#292929</xsl:variable>
  <xsl:variable name="bootstrap-table-secondary-color">#a2a2a2</xsl:variable>

  <!-- Success -->
  <xsl:variable name="bootstrap-success">#00bc8c</xsl:variable>
  <xsl:variable name="bootstrap-badge-success-bg" select="$bootstrap-success"/>
  <xsl:variable name="bootstrap-badge-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-bg">#00bc8c</xsl:variable>
  <xsl:variable name="bootstrap-btn-success-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle">#d9f5ee</xsl:variable>
  <xsl:variable name="bootstrap-success-subtle-text">#007a5b</xsl:variable>
  <xsl:variable name="bootstrap-table-success-bg">#1b4137</xsl:variable>
  <xsl:variable name="bootstrap-table-success-color">#80dec6</xsl:variable>

  <!-- Info -->
  <xsl:variable name="bootstrap-info">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-badge-info-bg" select="$bootstrap-info"/>
  <xsl:variable name="bootstrap-badge-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-bg">#3498db</xsl:variable>
  <xsl:variable name="bootstrap-btn-info-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle">#e1f0fa</xsl:variable>
  <xsl:variable name="bootstrap-info-subtle-text">#22638e</xsl:variable>
  <xsl:variable name="bootstrap-table-info-bg">#263a47</xsl:variable>
  <xsl:variable name="bootstrap-table-info-color">#9acced</xsl:variable>

  <!-- Warning -->
  <xsl:variable name="bootstrap-warning">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-badge-warning-bg" select="$bootstrap-warning"/>
  <xsl:variable name="bootstrap-badge-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-bg">#f39c12</xsl:variable>
  <xsl:variable name="bootstrap-btn-warning-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle">#fdf0db</xsl:variable>
  <xsl:variable name="bootstrap-warning-subtle-text">#99620c</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-bg">#4c3a1f</xsl:variable>
  <xsl:variable name="bootstrap-table-warning-color">#f9ce88</xsl:variable>

  <!-- Danger -->
  <xsl:variable name="bootstrap-danger">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-badge-danger-bg" select="$bootstrap-danger"/>
  <xsl:variable name="bootstrap-badge-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-bg">#e74c3c</xsl:variable>
  <xsl:variable name="bootstrap-btn-danger-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle">#fbe4e2</xsl:variable>
  <xsl:variable name="bootstrap-danger-subtle-text">#963127</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-bg">#492a27</xsl:variable>
  <xsl:variable name="bootstrap-table-danger-color">#f3a69e</xsl:variable>

  <!-- Accent -->
  <xsl:variable name="bootstrap-accent">#993685</xsl:variable>
  <xsl:variable name="bootstrap-badge-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-badge-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-btn-accent-bg" select="$bootstrap-accent"/>
  <xsl:variable name="bootstrap-btn-accent-color">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle">#f0e1ed</xsl:variable>
  <xsl:variable name="bootstrap-accent-subtle-text">#632356</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-bg">#3a2636</xsl:variable>
  <xsl:variable name="bootstrap-table-accent-color">#cc9ac2</xsl:variable>
  <!-- Inverse -->
  <xsl:variable name="bootstrap-inverse">#adb5bd</xsl:variable>
  <xsl:variable name="bootstrap-badge-inverse-bg" select="$bootstrap-inverse"/>
  <xsl:variable name="bootstrap-badge-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-bg">#adb5bd</xsl:variable>
  <xsl:variable name="bootstrap-btn-inverse-color">#212529</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle">#f5f6f7</xsl:variable>
  <xsl:variable name="bootstrap-inverse-subtle-text">#6e7173</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-bg">#3e3f41</xsl:variable>
  <xsl:variable name="bootstrap-table-inverse-color">#d6dade</xsl:variable>
  <xsl:variable name="bootstrap-table-striped-color">#2c2c2c</xsl:variable>
  <xsl:variable name="bootstrap-body-bg">#ffffff</xsl:variable>
  <xsl:variable name="bootstrap-body-color">#222222</xsl:variable>
  <xsl:variable name="bootstrap-border-color">#dee2e6</xsl:variable>
  <xsl:variable name="bootstrap-card-background-color">#272727</xsl:variable>
  <xsl:variable name="bootstrap-card-border-color">#444444</xsl:variable>
  <xsl:variable name="bootstrap-rounded">6pt</xsl:variable>

  <!-- Heading Font Sizes -->
  <xsl:variable name="bootstrap-h1-font-size">36pt</xsl:variable>
  <xsl:variable name="bootstrap-h2-font-size">30pt</xsl:variable>
  <xsl:variable name="bootstrap-h3-font-size">24pt</xsl:variable>
  <xsl:variable name="bootstrap-h4-font-size">18pt</xsl:variable>
  <xsl:variable name="bootstrap-h5-font-size">15pt</xsl:variable>
  <xsl:variable name="bootstrap-h6-font-size">12pt</xsl:variable>


  <!-- Code colors -->
  <xsl:variable name="bootstrap-code-color">#f8323e</xsl:variable>
  <xsl:variable name="bootstrap-dita-violet">#6f42c1</xsl:variable>
  <xsl:variable name="bootstrap-surface-code-color">#fa747c</xsl:variable>
  <xsl:variable name="bootstrap-surface-xml-color">#ab91db</xsl:variable>
  <xsl:variable name="bootstrap-surface-cmd-color">#7fa0d6</xsl:variable>
  <xsl:variable name="bootstrap-dita-prussian-blue">#6a91cf</xsl:variable>
</xsl:stylesheet>
