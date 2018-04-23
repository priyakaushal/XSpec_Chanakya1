<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LxAdv-cttr.usagegroup_AddingSortWeightInformation_appealproc">
  <title>Adding Sort Weight Information to cttr:usagegroup (CA03 appealproc) <lnpid>id-CA03-13240</lnpid></title>
  <body>
    <section>
		<note>This section applies for <sourcexml>cttr:annotations[@annotationtype="appealproc"]/cttr:annot</sourcexml>.</note>
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
            <li>01 - "Judicial Review Allowed" or "Allowing judicial review of"</li>
            <li>02 - "Reconsideration Allowed" or "Allowing reconsideration of"</li>
            <li>03 - "Reversed" or "Reversing"</li>
            <li>04 - "Quashed" or "Quashing"</li>
            <li>05 - "Varied" or "Varying"</li>
            <li>06 - [any other @signal="negative" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
            <li>11 - [any @signal="cautionary" text]</li>
            <li><b><sourcexml>cttr:use/@signal="positive"</sourcexml></b>:</li>
            <li>20 - "Affirmed" or "Affirming"</li>
            <li>21 - "Judicial Review Denied" or "Denying judicial review of"</li>
            <li>22 - "Leave to Appeal Refused" or "Refusing leave to appeal"</li>
            <li>23 - [any other @signal="positive" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
            <li>30 - "Abandoned " or "Dismissing as abandoned"</li>
            <li>31 - "Abated" or "Dismissing as abated"</li>
            <li>32 - "Leave to Appeal granted" or "Refusing leave to appeal"</li>
            <li>33 - "Reconsideration Denied" or "Denying reconsideration of"</li>
            <li>34 - "Related Proceeding" or "Related proceeding"</li>
            <li>35 - "Same Case"</li>
            <li>36 - "Supplementary Reasons" or "Original Reasons"</li>
            <li>37 - [any other @signal="neutral" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
            <li>40 - [any other text]</li>
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
        <li>Reversing 2005-08-31: 0379949169</li>
        <li>Dismissing as abated      1920-08-31: 3180799169</li>
        <li>Abandoned  2005-08-31: 3079949169</li>
        <li>Same Case      1920-08-31: 3580799169</li>
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
            <li>01 - "Affirmed" or "Affirming"</li>
            <li>02 - "Judicial Review Denied" or "Denying judicial review of"</li>
            <li>03 - "Leave to Appeal Refused" or "Refusing leave to appeal"</li>
            <li>04 - [any other @signal="positive" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="negative"</sourcexml></b>:</li>
            <li>11 - "Judicial Review Allowed" or "Allowing judicial review of"</li>
            <li>12 - "Reconsideration Allowed" or "Allowing reconsideration of"</li>
            <li>13 - "Reversed" or "Reversing"</li>
            <li>14 - "Quashed" or "Quashing"</li>
            <li>15 - "Varied" or "Varying"</li>
            <li>16 - [any other @signal="negative" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="cautionary"</sourcexml></b>:</li>
            <li>20 - [any @signal="cautionary" text]</li>
            <li><b><sourcexml>cttr:use/@signal="neutral"</sourcexml></b>:</li>
            <li>30 - "Abandoned " or "Dismissing as abandoned"</li>
            <li>31 - "Abated" or "Dismissing as abated"</li>
            <li>32 - "Leave to Appeal granted" or "Refusing leave to appeal"</li>
            <li>33 - "Reconsideration Denied" or "Denying reconsideration of"</li>
            <li>34 - "Related Proceeding" or "Related proceeding"</li>
            <li>35 - "Same Case"</li>
            <li>36 - "Supplementary Reasons" or "Original Reasons"</li>
            <li>37 - [any other @signal="neutral" text that doesn't match the given set]</li>
            <li><b><sourcexml>cttr:use/@signal="[any other text or blank]"</sourcexml></b>:</li>
            <li>40 - [any other text]</li>
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
        <li>Reversing 2005-08-31: 1379949169</li>
        <li>Dismissing as abated      1920-08-31: 3180799169</li>
        <li>Abandoned  2005-08-31: 3079949169</li>
        <li>Affirmed      1920-08-31: 0180799169</li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-09-25: <ph id="change_20131030_LxAdv-cttr.usagegroup_AddingSortWeightInformation_appealproc_sep">Created this section. QuickCite RFA #45.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\LxAdv-cttr.usagegroup_AddingSortWeightInformation_appealproc.dita  -->

<!-- Sudhanshu Srivastava: 6 June 2017 , Initially drafted this module , if changes required then please update accordingly. -->

  <xsl:template match="source_cttr:use-group[ancestor::source_cttr:annotations[@annotationtype='appealproc']]">
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
                  <xsl:when test="$Elementvalue = ('judicial review allowed','allowing judicial review of')">01</xsl:when>
                  <xsl:when test="$Elementvalue = ('reconsideration allowed','allowing reconsideration of')">02</xsl:when>
                  <xsl:when test="$Elementvalue = ('reversed','reversing')">03</xsl:when>
                  <xsl:when test="$Elementvalue = ('quashed','quashing')">04</xsl:when>
                  <xsl:when test="$Elementvalue = ('varied','varying')">05</xsl:when>
                  <xsl:otherwise>06</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'cautionary'">11</xsl:when>					
              <xsl:when test="$Attributevalue = 'positive'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('affirmed','affirming')">20</xsl:when>
                  <xsl:when test="$Elementvalue = ('judicial review denied','denying judicial review of')">21</xsl:when>
                  <xsl:when test="$Elementvalue = ('leave to appeal refused','refusing leave to appeal')">22</xsl:when>
                  <xsl:otherwise>23</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'neutral'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('abandoned','dismissing as abandoned')">30</xsl:when>
                  <xsl:when test="$Elementvalue = ('abated','dismissing as abated')">31</xsl:when>
                  <xsl:when test="$Elementvalue = ('leave to appeal granted','refusing leave to appeal')">32</xsl:when>
                  <xsl:when test="$Elementvalue = ('reconsideration denied','denying reconsideration of')">33</xsl:when>
                  <xsl:when test="$Elementvalue = ('related proceeding','related proceeding')">34</xsl:when>
                  <xsl:when test="$Elementvalue = 'same case'">35</xsl:when>
                  <xsl:when test="$Elementvalue = ('supplementary reasons','original reasons')">36</xsl:when>
                  <xsl:otherwise>37</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:otherwise>40</xsl:otherwise>
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
                  <xsl:when test="$Elementvalue = ('judicial review allowed','allowing judicial review of')">01</xsl:when>
                  <xsl:when test="$Elementvalue = ('reconsideration allowed','allowing reconsideration of')">02</xsl:when>
                  <xsl:when test="$Elementvalue = ('reversed','reversing')">03</xsl:when>
                  <xsl:when test="$Elementvalue = ('quashed','quashing')">04</xsl:when>
                  <xsl:when test="$Elementvalue = ('varied','varying')">05</xsl:when>
                  <xsl:otherwise>06</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'cautionary'">11</xsl:when>					
              <xsl:when test="$Attributevalue = 'positive'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('affirmed','affirming')">20</xsl:when>
                  <xsl:when test="$Elementvalue = ('judicial review denied','denying judicial review of')">21</xsl:when>
                  <xsl:when test="$Elementvalue = ('leave to appeal refused','refusing leave to appeal')">22</xsl:when>
                  <xsl:otherwise>23</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="$Attributevalue = 'neutral'">
                <xsl:choose>
                  <xsl:when test="$Elementvalue = ('abandoned','dismissing as abandoned')">30</xsl:when>
                  <xsl:when test="$Elementvalue = ('abated','dismissing as abated')">31</xsl:when>
                  <xsl:when test="$Elementvalue = ('leave to appeal granted','refusing leave to appeal')">32</xsl:when>
                  <xsl:when test="$Elementvalue = ('reconsideration denied','denying reconsideration of')">33</xsl:when>
                  <xsl:when test="$Elementvalue = ('related proceeding','related proceeding')">34</xsl:when>
                  <xsl:when test="$Elementvalue = 'same case'">35</xsl:when>
                  <xsl:when test="$Elementvalue = ('supplementary reasons','original reasons')">36</xsl:when>
                  <xsl:otherwise>37</xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:otherwise>40</xsl:otherwise>
            </xsl:choose>
            <xsl:if test="following-sibling::source_cttr:use">
              <xsl:text>,</xsl:text>
            </xsl:if>
          </xsl:for-each>
        </xsl:variable>
        
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