<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-courtinfo">
	<title>case:courtinfo to jurisinfo:courtinfo <lnpid>id-CA03-13215</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p><sourcexml>case:courtinfo</sourcexml> becomes <targetxml>jurisinfo:courtinfo</targetxml>, and children are converted as detailed below.</p>
			<p>Suppress <sourcexml>case:courtinfo/@juris-rank</sourcexml> and <sourcexml>case:courtinfo/@court-rank</sourcexml>.</p>
		
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Supreme Court of Canada&lt;/case:courtname&gt;
    &lt;abbrvname ln.user-displayed="false"&gt;CASCC&lt;/abbrvname&gt;
    &lt;case:courtcode ln.user-displayed="false"&gt;CASC&lt;/case:courtcode&gt;
    &lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt;
    &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="24" month="04" year="1985"&gt;1985/4/24&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
&lt;/case:courtinfo&gt;</codeblock>
			<title>Target XML</title>
			<codeblock>&lt;case:caseinfo&gt;
	&lt;jurisinfo:courtinfo&gt;
 	   &lt;jurisinfo:courtname normshortname="CASCC"&gt;Supreme Court of Canada&lt;/jurisinfo:courtname&gt;
  	  &lt;jurisinfo:jurisdiction&gt;
 	       &lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
	    &lt;/jurisinfo:jurisdiction&gt;
	&lt;/jurisinfo:courtinfo&gt;
	&lt;decision:dates&gt;
	    &lt;decision:decisiondate day="24" month="04" year="1985" normdate="1985-04-24"&gt;&lt;date-text&gt;1983/11/2&lt;/date-text&gt;&lt;/decision:decisiondate&gt;
	&lt;/decision:dates&gt;
&lt;/case:caseinfo&gt;</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-02-12: <ph id="change_20140212_brt">Added rule to suppress <sourcexml>case:courtinfo/@juris-rank</sourcexml> and <sourcexml>case:courtinfo/@court-rank</sourcexml>.</ph>.</p>
			<p>2013-01-29: <ph id="change_20130129_rj">Changed target markup to reflect that country
				code "CD" will be converted to "CA" in all instances.</ph>.</p>
			<p>2013-01-17: <ph id="change_20130117_dsf">Updated target example to include
				<targetxml>@normdate</targetxml> in
				<targetxml>decision:decisiondate</targetxml>.</ph></p>
		</section>
	</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.courtinfo-to-LxAdv_jurisinfo.courtinfo.dita  -->
	
	<!-- Sudhanshu Srivastava : Initially drafted on 26 May 2017. If changes required , please update accordingly.-->
	<xsl:template match="case:courtinfo">
		<!--  Original Target XPath:  /caseinfo:caseinfo/jurisinfo:courtinfo   -->
			<xsl:choose>
				<xsl:when test="parent::case:info/parent::source_cttr:annot/parent::source_cttr:annotations/parent::source_cttr:content">
					<jurisinfo:courtinfo>
						<xsl:apply-templates select="case:courtname|case:courtcode|case:juris"/>
					</jurisinfo:courtinfo>
					<xsl:apply-templates select="case:dates"/>
				</xsl:when>
				<xsl:otherwise>
					<jurisinfo:courtinfo>
						<xsl:apply-templates select="abbrvname"/>
						<xsl:apply-templates select="case:courtname|case:courtcode|case:juris"/>
					</jurisinfo:courtinfo>
				</xsl:otherwise>
			</xsl:choose>
	</xsl:template>
</xsl:stylesheet>