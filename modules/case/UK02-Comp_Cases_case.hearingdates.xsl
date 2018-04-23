<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.hearingdates">
		<title>case:hearingdates <lnpid>id-UK02-27221</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:hearingdates</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>decision:dates/decision:argueddate/date-text</targetxml>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:dates&gt; &lt;case:hearingdates&gt;23, 24 JULY
					1936&lt;/case:hearingdates&gt; &lt;/case:dates&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;decision:dates&gt; &lt;decision:argueddate&gt;
					&lt;date-text&gt;23, 24 JULY 1936&lt;date-text&gt;
					&lt;/decision:argueddate&gt; &lt;/decision:dates&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.hearingdates.dita  -->

	<!-- JD: 2017-07-13: The CI only accounts for text() within <case:hearingdates>; creating additional templates for when <date> children are present -->
	<xsl:template match="case:hearingdates[not(date)]">
		<!--  Original Target XPath:  decision:dates/decision:argueddate/date-text   -->
		<decision:argueddate>
		  <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			</date-text>
		</decision:argueddate>
	</xsl:template>

	<xsl:template match="case:hearingdates[count(date) = 1]">
		<!--  Original Target XPath:  decision:dates/decision:argueddate/date-text   -->
		<decision:argueddate>
			<xsl:apply-templates select="date/@*"/>
			<date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="node()"/>
			</date-text>
		</decision:argueddate>
	</xsl:template>


	<!-- 
		<case:hearingdates>
			<date day="02" month="12" year="2014"/>
			<date day="03" month="12" year="2014"/>
			<date day="04" month="12" year="2014">2, 3, 4 DECEMBER 2014</date>
			<date day="04" month="03" year="2015">4 MARCH 2015</date>
		</case:hearingdates>
	-->

	<xsl:template match="case:hearingdates[count(date) > 1]">
		<!--  Original Target XPath:  decision:dates/decision:argueddate/date-text   -->
		<decision:argueddate>
			<date-text
				xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:for-each select="date">
					<date>
						<xsl:apply-templates select="@* | node()"/>
					</date>
				</xsl:for-each>
			</date-text>
		</decision:argueddate>
	</xsl:template>

	<xsl:template match="@day">
		<xsl:attribute name="day" select="."/>
	</xsl:template>

  <xsl:template match="@day[.='00']">
    <xsl:attribute name="day" select="'01'"/>
  </xsl:template>
  
  <xsl:template match="@month">
		<xsl:attribute name="month" select="."/>
	</xsl:template>

	<xsl:template match="@year">
		<xsl:attribute name="year" select="."/>
	  <xsl:choose>
	    <xsl:when test="parent::date/@day[.='00'] and parent::date/@month">
	      <xsl:attribute name="normdate"
	        select="concat(., '-', parent::date/@month, '-', '01')"/>
	    </xsl:when>
	    <xsl:otherwise>
	      <xsl:attribute name="normdate"
	        select="concat(., '-', parent::date/@month, '-', parent::date/@day)"/>
	    </xsl:otherwise>
	  </xsl:choose>
	</xsl:template>



</xsl:stylesheet>
