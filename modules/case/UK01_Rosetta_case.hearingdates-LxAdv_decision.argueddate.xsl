<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" 
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="dita case xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.hearingdates-LxAdv_decision.argueddate">
		<title>case:hearingdates <lnpid>id-UK01-27030</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>case:hearingdates</sourcexml> becomes <targetxml>
						/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate/date-text</targetxml>
				</p>
			</section>

			<note>This likely not a complete date. Do not attempt to place a complete date if there is not sufficient content
				in source (year, month and day with <sourcexml>date</sourcexml> element). It should remain PCDATA.</note>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:dates&gt; &lt;case:hearingdates&gt;DATE: 26 JUNE 2002&lt;/case:hearingdates&gt;
					&lt;/case:dates&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;decision:dates&gt; &lt;decision:argueddate&gt; &lt;date-text&gt;DATE: 26 JUNE
					2002&lt;/date-text&gt; &lt;/decision:argueddate&gt; &lt;/decision:dates&gt; </codeblock>
			</example>

			<section>
				<p>When element <sourcexml>date</sourcexml> occurs within <sourcexml>case:hearingdates</sourcexml>.</p>
				<p>
					<sourcexml>case:hearingdates</sourcexml> becomes <targetxml>
						/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate</targetxml>
					populated with below mentioned attributes: <sourcexml>case:hearingdates/date/@day</sourcexml> becomes
						<targetxml>decision:argueddate/@day</targetxml>, <sourcexml>case:hearingdates/date/@month</sourcexml>
					becomes <targetxml>decision:argueddate/@month</targetxml> and
						<sourcexml>case:hearingdates/date/@year</sourcexml> becomes
					<targetxml>decision:argueddate/@year</targetxml>. </p>
			  <note>If <sourcexml>date/@day</sourcexml> is '00', set the <targetxml>@day</targetxml>value to '01'.</note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:dates&gt; &lt;case:hearingdates&gt; &lt;date day="23" month="07" year="1999"&gt;23 July
					1999&lt;/date&gt; &lt;/case:hearingdates&gt; &lt;/case:dates&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;decision:dates&gt; &lt;decision:argueddate day="23" month="07" year="1999"&gt;
					&lt;date-text&gt;23 July 1999&lt;/date-text&gt; &lt;/decision:argueddate&gt; &lt;/decision:dates&gt;
				</codeblock>
			</example>

			<section>
				<p>If <sourcexml>emph</sourcexml> occurs as child of <sourcexml>case:hearingdates</sourcexml> then
						<sourcexml>emph</sourcexml> should be suppressed from conversion.</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:hearingdates&gt; &lt;emph typestyle="caps"&gt;3 OCTOBER, 14 NOVEMBER 1960&lt;/emph&gt;
					&lt;/case:hearingdates&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;decision:argueddate&gt; &lt;date-text&gt;3 OCTOBER, 14 NOVEMBER 1960&lt;/date-text&gt;
					&lt;/decision:argueddate&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.hearingdates-LxAdv_decision.argueddate.dita  -->

	<xsl:template match="case:hearingdates">
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate/date-text   -->
		<decision:argueddate>
      <xsl:apply-templates select="./date/@*"/>
			<xsl:apply-templates/>
		</decision:argueddate>
	</xsl:template>

	<xd:doc>
		<xd:desc>
			<xd:p>When text() in case:hearingdates has no element siblings (i.e., no 'date' element) wrap in date-text.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="text()[parent::case:hearingdates and not(preceding-sibling::* or following-sibling::*)]">
		<date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:value-of select="."/>
		</date-text>
	</xsl:template>

  <xd:doc>
    <xd:desc>
      <xd:p>When @day is invalid, suppress</xd:p>
    </xd:desc>
  </xd:doc>
	<!-- CSN - 2017-11-24 - Webstar 7055395 - Added case:hearingdates/date/ before @day because this rule was bleeding over to all @day attributes and causing ambiguous templates. -->
	<xsl:template match="case:hearingdates/date/@day[not(matches(.,'^(0[1-9]|[12][0-9]|3[01])$'))]"/>
  
  <!--
	    Handle this scenario, where multiple dates are included BUT the last doesn't have valid @day, @month, @year
     <case:hearingdates>DATE: 
        <date day="29" month="11" year="1999"/>
        <date day="30" month="11" year="1999">29, 30 November 1999</date>
        1, <date day="02" month="12" year="1999"/>
        <date day="03" month="12" year="1999">
        2, 3 December 1999</date>
        31 <date day="00" month="01" year="2000">January 2000</date>
        1,2,3,4 February 2000</case:hearingdates>
        
        DT output is 
        <decision:argueddate day="3" month="01" year="2000">DATE:
           <date-text>29, 30 November 1999</date-text>1, 
           <date-text>2, 3 December 1999</date-text>31 
           <date-text>January 2000</date-text>1,2,3,4 February 2000
        </decision:argueddate>
        
        Per SME (Amini, Ghazal (LNG-LON)), just cast "00" to "01"
-->
  
  <xsl:template match="case:hearingdates/date/@day[.='00']" priority="1">
    <!--  Original Target XPath:  decision:argueddate/@day   -->
    <xsl:attribute name="day">
      <xsl:value-of select="'01'"/>
    </xsl:attribute>
  </xsl:template>  

  <xsl:template match="case:hearingdates/date/@day[matches(.,'^(0[1-9]|[12][0-9]|3[01])$')]">
		<!--  Original Target XPath:  decision:argueddate/@day   -->
		<xsl:attribute name="day">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
  
  <xsl:template match="case:hearingdates/date/@month">
		<!--  Original Target XPath:  decision:argueddate/@month   -->
		<xsl:attribute name="month">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:hearingdates/date/@year">
		<!--  Original Target XPath:  decision:argueddate/@year   -->
		<xsl:attribute name="year">
			<xsl:value-of select="."/>
		</xsl:attribute>
		<!-- if @day and @month are also present create @normdate -->
	  <xsl:choose>
	    <xsl:when test="parent::date/@day[.='00'] and parent::date/@month">
	      <xsl:attribute name="normdate">
	        <xsl:value-of select="concat(.,'-',parent::date/@month,'-','01')"/>
	      </xsl:attribute>
	    </xsl:when>	    
	    <xsl:when test="parent::date/@day[matches(.,'^(0[1-9]|[12][0-9]|3[01])$')] and parent::date/@month">
	      <xsl:attribute name="normdate">
	        <xsl:value-of select="concat(.,'-',parent::date/@month,'-',parent::date/@day)"/>
	      </xsl:attribute>
	    </xsl:when>	    
	  </xsl:choose>
	</xsl:template>

	<xsl:template match="emph[parent::case:hearingdates]">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

</xsl:stylesheet>