<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="2.0"
>

  <xsl:template match="*" mode="prismDecoration" priority="10">
    <xsl:attribute name="color"><xsl:value-of select="$prismjs.text.color"/></xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-top-width">1pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0.75pt</xsl:attribute>
    <xsl:attribute name="border-bottom-width">3pt</xsl:attribute>
    <xsl:attribute name="border-left-width">0.75pt</xsl:attribute>
    <xsl:attribute name="border-color"><xsl:value-of select="$bootstrap-card-border-color"/></xsl:attribute>
    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    <xsl:attribute name="padding"><xsl:value-of select="$bootstrap-spacing-1"/></xsl:attribute>
  </xsl:template>

  <xsl:template
    match="*[contains(@class, ' topic/note ') or contains(@class, ' bootstrap-d/alert ') or contains(@class, ' topic/pre ') or contains(@class, ' bootstrap-d/button ') or exists(tokenize(@outputclass, ' ')[starts-with(., 'alert-') or starts-with(., 'btn-')])]"
    mode="bootstrapDecoration"
    priority="10"
  >
    <xsl:param name="variant" select="''"/>
    <xsl:param name="theme" select="''"/>
    <xsl:param name="prefix" select="''"/>
    <xsl:param name="defaultRounded" select="false()"/>
    
    <xsl:next-match>
      <xsl:with-param name="variant" select="$variant"/>
      <xsl:with-param name="theme" select="$theme"/>
      <xsl:with-param name="prefix" select="$prefix"/>
      <xsl:with-param name="defaultRounded" select="$defaultRounded"/>
    </xsl:next-match>

    <xsl:variable name="theme-color">
      <xsl:choose>
        <!-- Honor a theme already resolved upstream (e.g. getNoteTheme, @theme)
             instead of re-deriving it here and risking a different answer. -->
        <xsl:when test="$theme != ''"><xsl:value-of select="$theme"/></xsl:when>
        <!-- Buttons handling: extract theme from btn-* or default to primary -->
        <xsl:when
          test="contains(@class, ' bootstrap-d/button ') or exists(tokenize(@outputclass, ' ')[starts-with(., 'btn-')])"
        >
          <xsl:variable
            name="token"
            select="tokenize(@outputclass, ' ')[starts-with(., 'btn-') and not(. = ('btn-lg', 'btn-sm', 'btn-toolbar', 'btn-group', 'btn-floating'))][1]"
          />
          <xsl:value-of select="if ($token) then substring-after($token, 'btn-') else 'primary'"/>
        </xsl:when>
        <!-- Notes use @type -->
        <xsl:when test="@type='danger'">danger</xsl:when>
        <xsl:when
          test="@type='warning' or @type='caution' or @type='restriction' or @type='attention' or @type='trouble'"
        >warning</xsl:when>
        <xsl:when test="@type='important'">primary</xsl:when>
        <xsl:when
          test="@type='note' or @type='notice' or @type='tip' or @type='fastpath' or @type='remember'"
        >info</xsl:when>
        <!-- Outputclass fallback for alerts -->
        <xsl:when test="contains(@outputclass, 'alert-primary')">primary</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-secondary')">secondary</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-success')">success</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-info')">info</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-warning')">warning</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-danger')">danger</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-accent')">accent</xsl:when>
        <xsl:when test="contains(@outputclass, 'alert-inverse')">inverse</xsl:when>
        <xsl:otherwise>secondary</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="theme-border-color">
      <xsl:choose>
        <xsl:when test="$theme-color = 'primary'"><xsl:value-of select="$bootstrap-primary-alert-border"/></xsl:when>
        <xsl:when test="$theme-color = 'secondary'"><xsl:value-of
            select="$bootstrap-secondary-alert-border"
          /></xsl:when>
        <xsl:when test="$theme-color = 'success'"><xsl:value-of select="$bootstrap-success-alert-border"/></xsl:when>
        <xsl:when test="$theme-color = 'info'"><xsl:value-of select="$bootstrap-info-alert-border"/></xsl:when>
        <xsl:when test="$theme-color = 'warning'"><xsl:value-of select="$bootstrap-warning-alert-border"/></xsl:when>
        <xsl:when test="$theme-color = 'danger'"><xsl:value-of select="$bootstrap-danger-alert-border"/></xsl:when>
        <xsl:when test="$theme-color = 'accent'"><xsl:value-of select="$bootstrap-accent-alert-border"/></xsl:when>
        <xsl:when test="$theme-color = 'inverse'"><xsl:value-of select="$bootstrap-inverse-alert-border"/></xsl:when>
        <xsl:otherwise><xsl:value-of select="$bootstrap-secondary-alert-border"/></xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:attribute name="border-color" select="$theme-border-color"/>
    <xsl:attribute name="border-style">solid</xsl:attribute>

    <xsl:attribute name="border-top-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0.75pt</xsl:attribute>
    <xsl:attribute name="border-bottom-width">3pt</xsl:attribute>
    <xsl:attribute name="border-left-width">0.75pt</xsl:attribute>

    <xsl:call-template name="processBootstrapRounded">
      <xsl:with-param name="attrValue" select="(@rounded, 'yes')[1]"/>
    </xsl:call-template>
    
    <xsl:if test="not(@padding) or tokenize(@padding, ' ') = '0'">
      <xsl:call-template name="processBootstrapSpacing">
        <xsl:with-param name="attrValue" select="'1'"/>
        <xsl:with-param name="prefix" select="'p'"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/pre ') and not(contains(@class, ' pr-d/codeblock '))]" priority="5">
    <fo:block xsl:use-attribute-sets="pre">
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="bootstrap.decoration"/>
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>
</xsl:stylesheet>
