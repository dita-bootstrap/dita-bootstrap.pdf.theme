<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  exclude-result-prefixes="xs dita-ot"
  version="2.0"
>

  <!-- Table Header Row Styling - CYBORG OVERRIDE -->
  <xsl:template match="*[contains(@class, ' topic/thead ')]/*[contains(@class, ' topic/row ')]" priority="10">
    <fo:table-row xsl:use-attribute-sets="thead.row">
      <xsl:call-template name="commonattributes"/>

      <xsl:variable
        name="theme"
        select="(@theme, parent::*/@theme, ancestor::*[contains(@class, ' topic/table ')][1]/@theme)[1]"
      />

      <xsl:if test="$theme">
        <xsl:call-template name="processBootstrapAttrSetReflection">
          <xsl:with-param name="attrSet" select="concat('__table__', $theme)"/>
        </xsl:call-template>
      </xsl:if>

      <xsl:apply-templates/>
    </fo:table-row>
  </xsl:template>

  <!-- Table Body Row Styling - CYBORG OVERRIDE -->
  <xsl:template match="*[contains(@class, ' topic/tbody ')]/*[contains(@class, ' topic/row ')]" priority="10">
    <fo:table-row xsl:use-attribute-sets="tbody.row">
      <xsl:call-template name="commonattributes"/>

      <xsl:variable name="rowTheme" select="@theme"/>
      <xsl:variable name="table" select="ancestor::*[contains(@class, ' topic/table ')][1]"/>
      <xsl:variable name="tableTheme" select="$table/@theme"/>
      <xsl:variable name="striped" select="$table/@striped = 'yes'"/>
      
      <xsl:variable name="rowIndex" select="count(preceding-sibling::*[contains(@class, ' topic/row ')]) + 1"/>
      <xsl:variable name="isColoredRow" select="not($striped) or ($rowIndex mod 2 = 0)"/>
      
      <xsl:choose>
        <!-- Row-specific color always wins -->
        <xsl:when test="$rowTheme">
          <xsl:call-template name="processBootstrapAttrSetReflection">
            <xsl:with-param name="attrSet" select="concat('__table__', $rowTheme)"/>
          </xsl:call-template>
        </xsl:when>
        <!-- Table-level color or row-striping -->
        <xsl:when test="$isColoredRow">
          <xsl:choose>
            <xsl:when test="$tableTheme">
              <xsl:call-template name="processBootstrapAttrSetReflection">
                <xsl:with-param name="attrSet" select="concat('__table__', $tableTheme)"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:when test="$striped">
              <xsl:call-template name="processBootstrapAttrSetReflection">
                <xsl:with-param name="attrSet" select="'table-striped'"/>
              </xsl:call-template>
            </xsl:when>
          </xsl:choose>
        </xsl:when>
      </xsl:choose>

      <xsl:apply-templates/>
    </fo:table-row>
  </xsl:template>

  <!-- Entry styling - CYBORG OVERRIDE for striped columns -->
  <xsl:template match="*[contains(@class, ' topic/entry ')]" priority="10">
    <xsl:variable
      name="isHeader"
      select="parent::*[contains(@class, ' topic/row ')]/parent::*[contains(@class, ' topic/thead ')]"
    />
    <xsl:variable
      name="isFooter"
      select="parent::*[contains(@class, ' topic/row ')]/parent::*[contains(@class, ' topic/tfoot ')]"
    />
    <xsl:variable name="table" select="ancestor::*[contains(@class, ' topic/table ')][1]"/>
    <xsl:variable name="tableTheme" select="$table/@theme"/>
    <xsl:variable name="stripedCols" select="$table/@striped-columns = 'yes'"/>
    
    <xsl:variable name="colIndex">
        <xsl:choose>
            <xsl:when test="@dita-ot:x"><xsl:value-of select="xs:integer(@dita-ot:x)"/></xsl:when>
            <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    
    <xsl:variable
      name="isColoredCol"
      select="$stripedCols and ($colIndex mod 2 = 0) and not($isHeader) and not($isFooter)"
    />
    
    <xsl:variable
      name="isGroupDivider"
      select="$table/@divider = 'yes' and not(parent::*/preceding-sibling::*[contains(@class, ' topic/row ')]) and (parent::*/parent::*[contains(@class, ' topic/tbody ')] or parent::*/parent::*[contains(@class, ' topic/tfoot ')])"
    />

    <fo:table-cell>
      <xsl:call-template name="commonattributes"/>
      
      <!-- Standard PDF2 sets -->
      <xsl:choose>
        <xsl:when test="$isHeader">
          <xsl:call-template name="get-attributes">
            <xsl:with-param name="element" as="element()">
              <placeholder xsl:use-attribute-sets="thead.row.entry"/>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="$table/@rowheader = 'firstcol' and @dita-ot:x = '1'">
              <xsl:call-template name="get-attributes">
                <xsl:with-param name="element" as="element()">
                  <placeholder xsl:use-attribute-sets="tbody.row.entry__firstcol"/>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="get-attributes">
                <xsl:with-param name="element" as="element()">
                  <placeholder xsl:use-attribute-sets="tbody.row.entry"/>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
      
      <xsl:call-template name="applySpansAttrs"/>
      <xsl:call-template name="applyAlignAttrs"/>
      <xsl:call-template name="generateTableEntryBorder"/>
      
      <!-- Theme Border Color -->
      <xsl:if test="$tableTheme">
        <xsl:call-template name="processBootstrapAttrSetReflection">
          <xsl:with-param name="attrSet" select="concat('border-', $tableTheme)"/>
        </xsl:call-template>
      </xsl:if>
      
      <!-- Group Divider -->
      <xsl:if test="$isGroupDivider">
        <xsl:attribute name="border-top-width">2pt</xsl:attribute>
      </xsl:if>
      
      <!-- Cell-level themed color or striping -->
      <xsl:choose>
        <xsl:when test="@theme">
           <xsl:call-template name="processBootstrapAttrSetReflection">
             <xsl:with-param name="attrSet" select="concat('__table__', @theme)"/>
           </xsl:call-template>
        </xsl:when>
        <xsl:when test="$isColoredCol">
           <xsl:choose>
            <xsl:when test="$tableTheme">
              <xsl:call-template name="processBootstrapAttrSetReflection">
                <xsl:with-param name="attrSet" select="concat('__table__', $tableTheme)"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="processBootstrapAttrSetReflection">
                <xsl:with-param name="attrSet" select="'table-striped'"/>
              </xsl:call-template>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
      </xsl:choose>
      
      <!-- Content -->
      <fo:block>
        <xsl:call-template name="get-attributes">
          <xsl:with-param name="element" as="element()">
            <xsl:choose>
              <xsl:when test="$isHeader"><placeholder xsl:use-attribute-sets="thead.row.entry__content"/></xsl:when>
              <xsl:otherwise><placeholder xsl:use-attribute-sets="tbody.row.entry__content"/></xsl:otherwise>
            </xsl:choose>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="processEntryContent"/>
      </fo:block>

    </fo:table-cell>
  </xsl:template>

</xsl:stylesheet>
