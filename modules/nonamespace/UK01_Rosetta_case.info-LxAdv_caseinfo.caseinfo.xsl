<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	
	version="2.0" exclude-result-prefixes="case ci dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.info-LxAdv_caseinfo.caseinfo">
		<title>case:info <lnpid>id-UK01-27031</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita#Rosetta_case.info-LxAdv_caseinfo.caseinfo/mapping"/>
			<example>
				<codeblock> &lt;case:info&gt; &lt;case:casename&gt;Kamasinksi v Austria&lt;/case:casename&gt; &lt;/case:info&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;caseinfo:caseinfo&gt; &lt;caseinfo:casename&gt; &lt;caseinfo:fullcasename&gt;Kamasinksi v
					Austria&lt;/caseinfo:fullcasename&gt; &lt;/caseinfo:casename&gt; &lt;/caseinfo:caseinfo&gt; </codeblock>
			</example>
			<!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita#Rosetta_case.info-LxAdv_caseinfo.caseinfo/changes"/>-->
			<!--<section>
      <title>Changes Specific to UK01</title>
      </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.info-LxAdv_caseinfo.caseinfo.dita  -->
	<!-- text of conref'ed section:
	case:info becomes caseinfo:caseinfo.
Note: Conversion should not create consecutive caseinfo:caseinfo elements. When 2 or more consecutive sibling source elements map to
caseinfo:caseinfo, data should be merged to a single caseinfo:caseinfo element unless this would hamper content ordering.
	-->
	<xsl:template match="case:info">
		<caseinfo:caseinfo>
		  <!-- JD: 2017-10-16: VSTS Bug 379082.  First output reportercite, then a single caseinfo:casename with combined siblings -->
      <xsl:apply-templates select="case:reportercite"/>
		  <xsl:if test="case:casename or case:litigants">
		    <caseinfo:casename>
		      <xsl:apply-templates select="case:casename | case:litigants"/>
		    </caseinfo:casename>
		  </xsl:if>		  
			<!-- JD: attempt to match input order while following rules about not creating duplicate containers -->
		  <xsl:for-each-group select="node() except(case:casename,case:litigants,case:reportercite)" 
		    group-adjacent="if(self::case:courtinfo) then 1 else 0">
				<xsl:for-each select="current-group()">
					<xsl:choose>
						<xsl:when test="current-grouping-key()">
							<xsl:apply-templates select="./case:courtnum"/>					
							<xsl:if test="case:courtcode or case:courtname or case:juris or case:courtloc">
								<jurisinfo:courtinfo>
									<xsl:apply-templates select="./case:courtcode,./case:courtname,./case:juris"/>
								  <!-- JD: only apply templates for first case:courtloc; that template consolidates multiple case:courtloc siblings -->
								  <!-- JD: 2017-10-23: move jurisinfo:jurisdiction wrapper creation here to make module
								  /case/UK01_Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location.xsl
								  reusable for other UK streams
								  -->
								  <xsl:if test="./case:courtloc">
								    <jurisinfo:jurisdiction>
  								    <xsl:apply-templates select="./case:courtloc[1]"/>
								    </jurisinfo:jurisdiction>
								  </xsl:if>
								</jurisinfo:courtinfo>
							</xsl:if>
							<xsl:apply-templates select="./case:dates,./case:judges"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:apply-templates select="."/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>				
			</xsl:for-each-group>
			<xsl:apply-templates select="/*/docinfo/docinfo:normcite" mode="normcite"/>			
			<xsl:apply-templates select="following-sibling::catchwordgrp"/>
		  <xsl:apply-templates select="following-sibling::case:subject"/>
		</caseinfo:caseinfo>
	</xsl:template>
	
	<!--<xsl:template match="case:courtinfo/case:dates">
		<xsl:apply-templates select="."/>
	</xsl:template>-->
	
	<xsl:template match="case:courtinfo">
		<!--  Original Target XPath:  /caseinfo:caseinfo/jurisinfo:courtinfo   -->
		<!-- NOTE: grouping performed and wrapper created in /nonamespace/UK01_Rosetta_case.info-LxAdv_caseinfo.caseinfo.xsl -->
		<!--<jurisinfo:courtinfo>-->
		<xsl:apply-templates select="case:courtcode"/>
		<xsl:apply-templates select="case:courtname"/>
		<xsl:apply-templates select="case:juris"/>
		<!--<xsl:apply-templates select="@* | node() except case:judges[ancestor::case:headnote] except case:dates except case:judges[ancestor::case:content]"/>-->
		<!--</jurisinfo:courtinfo>-->
	</xsl:template>

</xsl:stylesheet>
