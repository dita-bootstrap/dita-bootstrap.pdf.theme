<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  exclude-result-prefixes="xs dita-ot"
  version="2.0"
>

  <!-- Helper to apply Lux table theme colors directly -->
  <xsl:template name="applyLuxTableTheme">
    <xsl:param name="theme"/>
    <xsl:param name="isHeader" select="false()"/>
    
    <!-- Header uses vibrant 'btn' colors, Body uses subtle 'table' colors -->
    <xsl:variable name="type" select="if ($isHeader) then 'btn' else 'table'"/>
    
    <xsl:variable name="bg">
      <xsl:call-template name="getBootstrapSetting">
        <xsl:with-param name="name" select="concat('bootstrap-', $type, '-', $theme, '-bg')"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="color">
      <xsl:call-template name="getBootstrapSetting">
        <xsl:with-param name="name" select="concat('bootstrap-', $type, '-', $theme, '-color')"/>
      </xsl:call-template>
    </xsl:variable>

    <xsl:if test="$bg != ''">
      <xsl:attribute name="background-color"><xsl:value-of select="$bg"/></xsl:attribute>
    </xsl:if>
    <xsl:if test="$color != ''">
      <xsl:attribute name="color"><xsl:value-of select="$color"/></xsl:attribute>
    </xsl:if>
  </xsl:template>

  <!-- Table Header Row Styling - LUX OVERRIDE -->
  <xsl:template match="*[contains(@class, ' topic/thead ')]/*[contains(@class, ' topic/row ')]" priority="10">
    <fo:table-row xsl:use-attribute-sets="thead.row">
      <xsl:call-template name="commonattributes"/>

      <xsl:variable name="table" select="ancestor::*[contains(@class, ' topic/table ')][1]"/>
      <xsl:variable name="tableTheme" select="$table/@theme"/>
      <xsl:variable name="thead" select="parent::*"/>
      
      <!-- Better detection for themed thead (via @theme or outputclass) -->
      <xsl:variable name="theadColor" select="$thead/@theme"/>
      <xsl:variable name="theadClass" select="tokenize($thead/@outputclass, '\s+')[starts-with(., 'table-')][1]"/>
      <xsl:variable
        name="theadTheme"
        select="if ($theadColor != '') then $theadColor else substring-after($theadClass, 'table-')"
      />

      <xsl:choose>
        <xsl:when test="$theadTheme != ''">
           <xsl:call-template name="applyLuxTableTheme">
             <xsl:with-param name="theme" select="$theadTheme"/>
             <xsl:with-param name="isHeader" select="true()"/>
           </xsl:call-template>
        </xsl:when>
        <xsl:when test="$tableTheme">
          <xsl:call-template name="applyLuxTableTheme">
            <xsl:with-param name="theme" select="$tableTheme"/>
            <xsl:with-param name="isHeader" select="true()"/>
          </xsl:call-template>
        </xsl:when>
      </xsl:choose>

      <xsl:apply-templates/>
    </fo:table-row>
  </xsl:template>

  <!-- Table Body Row Styling - LUX OVERRIDE -->
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
        <!-- Row-specific color -->
        <xsl:when test="$rowTheme">
          <xsl:call-template name="applyLuxTableTheme">
            <xsl:with-param name="theme" select="$rowTheme"/>
            <xsl:with-param name="isHeader" select="false()"/>
          </xsl:call-template>
        </xsl:when>
        <!-- Table-level color or row-striping -->
        <xsl:when test="$isColoredRow">
          <xsl:choose>
            <xsl:when test="$tableTheme">
              <xsl:call-template name="applyLuxTableTheme">
                <xsl:with-param name="theme" select="$tableTheme"/>
                <xsl:with-param name="isHeader" select="false()"/>
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

  <!-- Entry styling - LUX OVERRIDE for striped columns -->
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
      
      <xsl:if test="$table/@compact = 'yes' or contains($table/@outputclass, 'compact')">
        <xsl:attribute name="padding">9pt</xsl:attribute>
      </xsl:if>

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
      
      <!-- Better detection for themed thead (via @theme or outputclass) -->
      <xsl:variable name="thead" select="ancestor::*[contains(@class, ' topic/thead ')][1]"/>
      <xsl:variable name="theadColor" select="$thead/@theme"/>
      <xsl:variable name="theadClass" select="tokenize($thead/@outputclass, '\s+')[starts-with(., 'table-')][1]"/>
      <xsl:variable
        name="theadTheme"
        select="if ($theadColor != '') then $theadColor else substring-after($theadClass, 'table-')"
      />

      <xsl:choose>
        <xsl:when test="@theme">
          <xsl:call-template name="applyLuxTableTheme">
            <xsl:with-param name="theme" select="@theme"/>
            <xsl:with-param name="isHeader" select="$isHeader"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="$isHeader and $theadTheme != ''">
          <xsl:call-template name="applyLuxTableTheme">
            <xsl:with-param name="theme" select="$theadTheme"/>
            <xsl:with-param name="isHeader" select="true()"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="$isHeader and $tableTheme">
          <xsl:call-template name="applyLuxTableTheme">
            <xsl:with-param name="theme" select="$tableTheme"/>
            <xsl:with-param name="isHeader" select="true()"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="$isColoredCol">
           <xsl:choose>
            <xsl:when test="$tableTheme">
              <xsl:call-template name="applyLuxTableTheme">
                <xsl:with-param name="theme" select="$tableTheme"/>
                <xsl:with-param name="isHeader" select="false()"/>
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
