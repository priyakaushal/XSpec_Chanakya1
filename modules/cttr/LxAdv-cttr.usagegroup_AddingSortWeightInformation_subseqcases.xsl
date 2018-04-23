<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases">
  <title>Adding Sort Weight Information to cttr:usagegroup (CA03 subseqcases) <lnpid>id-CA03-13241</lnpid></title>
  <body>
    <section>
		<note>This section applies for <sourcexml>cttr:annotations[@annotationtype="subseqcases"]/cttr:annot</sourcexml>.</note>
      <p>Attributes <targetxml>@negativesortweight</targetxml> and
          <targetxml>@positivesortweight</targetxml> are added to the element
          <targetxml>cttr:usagegroup</targetxml> element. The value of each attribute is created by
        prepending a two digit [R] value (determined from the English text (text before the slash, with any trailing spaces stripped) of the
          <sourcexml>cttr:use-group/cttr:use</sourcexml> element, as described below) with an 8 digit integer value calculated from the
          <sourcexml>case:decisiondate</sourcexml> using the equation: 100,000,000 - YYYYMMDD,
        [D].</p>
    </section>
    <section>
      <title>Calculating @negativesortweight, for the "Negative First" sort ordering</title>
      <p>Value for <targetxml>@negativesortweight</targetxml> attribute is the combination of the
        following values:</p>
      <ul id="ul_bqk_tsn_il">
        <li> [R] Rank of the value of <sourcexml>cttr:use-group/cttr:use</sourcexml>
			element.
		<ul id="ul_vqk_tsn_il">
            <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
            <li>01 - Not followed</li>
            <li>02 - Questioned</li>
            <li>03 - [any other @signal="negative" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
            <li>06 - Distinguished</li>
            <li>07 - [any other @signal="cautionary" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
            <li>11 - Followed</li>
            <li>12 - Followed in a minority opinion</li>
            <li>13 - [any other @signal="positive" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
            <li>16 - Explained</li>
            <li>17 - Mentioned</li>
            <li>18 - Cited in dissenting opinion</li>
            <li>19 - Cited</li>
            <li>20 - [any other @signal="neutral" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
            <li>30 - [any other text]</li>
          </ul>
          <note>When cttr:use/@signal="[any other text or blank]" it should be converted to
            cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype is a required
            attribute).</note>
        </li>
        <li> [D] Value of attrubutes @year, @month and @day of
            <sourcexml>case:decisiondate</sourcexml> in ( 100,000,000 - YYYYMMDD ) format. <note>For
            CA and AU citator documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>.
            For UK, and MY documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate </sourcexml></note>
          <p>If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be
            "100000000".</p>
        </li>
      </ul>
      <p>Example <targetxml>@negativesortweight</targetxml> values:</p>
      <p>(in these examples two dates are used: 2005-08-31 and 1920-08-31.
        100,000,000-20050831=79949169 and 100,000,000-19200831=80799169)</p>
      <ul>
        <li>Questioned 2005-08-31: 0279949169</li>
        <li>Followed      1920-08-31: 1180799169</li>
        <li>Followed in a minority opinion  2005-08-31: 1279949169</li>
        <li>Cited in dissenting opinion      1920-08-31: 1880799169</li>
      </ul>
    </section>
    <section>
      <title>Calculating @positivesortweight, for the "Positive First" sort ordering</title>
      <p>Value for <targetxml>@positivesortweight</targetxml> attribute is the combination of the
        following values:</p>
      <ul id="ul_bqk_tsn_il2">
        <li> [R] Rank of the value of <sourcexml>cttr:use-group/cttr:use</sourcexml>
			element.
		<ul id="ul_vqk_tsn_il2">
            <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
            <li>01 - Followed</li>
            <li>02 - Followed in a minority opinion</li>
            <li>03 - [any other @signal="positive" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
            <li>06 - Not followed</li>
            <li>07 - Questioned</li>
            <li>08 - [any other @signal="negative" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
            <li>11 - Distinguished</li>
            <li>12 - [any other @signal="cautionary" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
            <li>16 - Explained</li>
            <li>17 - Mentioned</li>
            <li>18 - Cited in dissenting opinion</li>
            <li>19 - Cited</li>
            <li>20 - [any other @signal="neutral" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
            <li>30 - [any other text]</li>
          </ul>
          <note>When cttr:use/@signal="[any other text or blank]" it should be converted to
            cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype is a required
            attribute).</note>
        </li>
        <li> [D] Value of attrubutes @year, @month and @day of
            <sourcexml>case:decisiondate</sourcexml> in ( 100,000,000 - YYYYMMDD ) format. <note>For
            CA and AU citator documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>.
            For UK, and MY documents, <sourcexml>case:decisiondate</sourcexml> is located in
              <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate </sourcexml></note>
          <p>If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be
            "100000000".</p>
        </li>
      </ul>
      <p>Example <targetxml>@positivesortweight</targetxml> values:</p>
      <p>(in these examples two dates are used: 2005-08-31 and 1920-08-31.
        100,000,000-20050831=79949169 and 100,000,000-19200831=80799169)</p>
      <ul>
        <li>Questioned 2005-08-31: 0779949169</li>
        <li>Followed      1920-08-31: 0180799169</li>
        <li>Followed in a minority opinion  2005-08-31: 0279949169</li>
        <li>Cited in dissenting opinion      1920-08-31: 1880799169</li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-09-25: <ph id="change_20131030_LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases_sep">Created this section. QuickCite RFA #45.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\LxAdv-cttr.usagegroup_AddingSortWeightInformation_subseqcases.dita  -->

<!-- Sudhanshu Srivastava : 6 June 2017. Initially drafted, if changes required then please update accordingly. -->
  
  <xsl:template match="source_cttr:use-group[ancestor::source_cttr:annotations[@annotationtype='subseqcases'] and not(ancestor::source_cttr:body/preceding-sibling::docinfo/docinfo:selector[lower-case(.)=('statute','statutes','regulation','regulations')])]">
    <!--  Original Target XPath:  cttr:usagegroup   -->
    <cttr:usagegroup>
      <xsl:variable name="dateNumber">
        <xsl:for-each select="following-sibling::case:info[1]/case:courtinfo/case:dates/case:decisiondate/date">
          <xsl:value-of select="@year"/>
          <xsl:value-of select="@month"/>
          <xsl:value-of select="@day"/>
        </xsl:for-each>
      </xsl:variable>
      <!-- This condition is checking that generated datenumber having digits or anything else -->
      <xsl:variable name="digit">
        <xsl:choose>
          <xsl:when test="string(number($dateNumber)) != 'NaN'">
            <xsl:value-of select="$dateNumber"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="number(0)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      
      
      <xsl:variable name="resultnum">
        <xsl:value-of select="xs:decimal(100000000) - xs:decimal($digit)"/>
      </xsl:variable>
      
      
      <xsl:attribute name="negativesortweight">
        <xsl:variable name="negUGAttribute">
          <xsl:for-each select="source_cttr:use">
            <xsl:variable name="Attributevalue" select="@signal"/>
            <xsl:variable name="Elementvalue" select="lower-case(.)"/>
            <xsl:choose>
              <xsl:when test="$Attributevalue = 'negative'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('not followed')">01</xsl:when>
                  <xsl:when test="$Elementvalue = ('questioned')">02</xsl:when>
                  <xsl:otherwise>03</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'cautionary'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('distinguished')">06</xsl:when>
                  <xsl:otherwise>07</xsl:otherwise>
                </xsl:choose>
              </xsl:when>					
              <xsl:when test="$Attributevalue = 'positive'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('followed')">11</xsl:when>
                  <xsl:when test="$Elementvalue = ('followed in a minority opinion')">12</xsl:when>
                  <xsl:otherwise>13</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'neutral'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('explained	')">16</xsl:when>
                  <xsl:when test="$Elementvalue = ('mentioned')">17</xsl:when>
                  <xsl:when test="$Elementvalue = ('cited in dissenting opinion')">18</xsl:when>
                  <xsl:when test="$Elementvalue = ('cited')">19</xsl:when>
                  <xsl:otherwise>20</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:otherwise>30</xsl:otherwise>
            </xsl:choose>
            <xsl:if test="following-sibling::source_cttr:use">
              <xsl:text>,</xsl:text>
            </xsl:if>
          </xsl:for-each>
        </xsl:variable>
        
        <xsl:for-each select="tokenize($negUGAttribute, ',')">
          <xsl:sort data-type="number"/>
          <xsl:value-of select="."/>
        </xsl:for-each>
        <xsl:value-of select="$resultnum"/>
      </xsl:attribute>
      <xsl:attribute name="positivesortweight">
        <xsl:variable name="posUGAttribute">
          <xsl:for-each select="source_cttr:use">
            <xsl:variable name="Attributevalue" select="@signal"/>
            <xsl:variable name="Elementvalue" select="lower-case(.)"/>
            <xsl:choose>
              <xsl:when test="$Attributevalue = 'negative'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('not followed')">01</xsl:when>
                  <xsl:when test="$Elementvalue = ('questioned')">02</xsl:when>
                  <xsl:otherwise>03</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'cautionary'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('distinguished')">06</xsl:when>
                  <xsl:otherwise>07</xsl:otherwise>
                </xsl:choose>
              </xsl:when>					
              <xsl:when test="$Attributevalue = 'positive'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('followed')">11</xsl:when>
                  <xsl:when test="$Elementvalue = ('followed in a minority opinion')">12</xsl:when>
                  <xsl:otherwise>13</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'neutral'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('explained	')">16</xsl:when>
                  <xsl:when test="$Elementvalue = ('mentioned')">17</xsl:when>
                  <xsl:when test="$Elementvalue = ('cited in dissenting opinion')">18</xsl:when>
                  <xsl:when test="$Elementvalue = ('cited')">19</xsl:when>
                  <xsl:otherwise>20</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:otherwise>30</xsl:otherwise>
            </xsl:choose>
            <xsl:if test="following-sibling::source_cttr:use">
              <xsl:text>,</xsl:text>
            </xsl:if>
          </xsl:for-each>
        </xsl:variable>
        <!-- Output each value in comma delimated string.  Concat with value of negSortWeight -->
        <xsl:for-each select="tokenize($posUGAttribute, ',')">
          <xsl:sort data-type="number"/>
          <xsl:value-of select="."/>
        </xsl:for-each>
        <xsl:value-of select="$resultnum"/>
      </xsl:attribute>
      <xsl:if test="following-sibling::leg:info/legnum/@normval">
        <xsl:attribute name="pinpointsortweight">
          <xsl:value-of select="following-sibling::leg:info/legnum/@normval"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="@* | node()"/>
    </cttr:usagegroup>
  </xsl:template>
</xsl:stylesheet>