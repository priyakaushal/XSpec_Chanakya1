<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" exclude-result-prefixes="dita case docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.content">
   <title><sourcexml>case:casename</sourcexml> or <sourcexml>leg:officialname</sourcexml>, <sourcexml>leg:num</sourcexml> to <targetxml>dc:title</targetxml> <lnpid>id-CA03-13239</lnpid></title>
   <body>
      <section>
		  <note>Target element <targetxml>dc:title</targetxml> can come from <sourcexml>case:casename</sourcexml> (for Case Citator) or <sourcexml>leg:officialname</sourcexml> and <sourcexml>leg:num</sourcexml> (for Legislation Citator), depending on <sourcexml>docinfo:selector</sourcexml>. The first part of this section describes the <sourcexml>case:casename</sourcexml> situation and the remaining part describes the <sourcexml>leg:officialname</sourcexml>, <sourcexml>leg:num</sourcexml> situation.</note>
      </section>
      <section>
         <title>Changes</title>
         <p>2015-02-26: <ph id="change_20150226_sep">The <targetxml>dc:title</targetxml> should only ever be created from case:casename for Case Citator. Addresses 4B item 410.</ph></p>
         <p>2014-12-31: <ph id="change_20141231_brt">Clarify 'Statutes' / 'Regulations' search to be singular or plural. Addresses 4B item 396.</ph></p>
         </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_leg.officialname_leg.num-to-dc.title_wrapper.dita  -->
	
	<!-- Sudhanshu Srivastava : Initially drafted on 30 May 2017, if changes required, please update accordingly.-->
	<!-- Awantika: 2018-01-08- Added space and normalized space in leg:num value. Webstar# 7081810 -->
	<xsl:template match="leg:officialname">
		<xsl:variable name="legnum" select="following-sibling::leg:num"/>
		<!--  Original Target XPath:  dc:title   -->
		<xsl:for-each select="tokenize(.,'/')">
			<dc:title>
				<xsl:attribute name="xml:lang" select="if(position()=1) then 'en-CA' else 'fr-CA'"/>
				<xsl:value-of select="."/>
				<xsl:text>, </xsl:text>
				<xsl:value-of select="normalize-space(if(position()=1) then substring-before($legnum,'/') else substring-after($legnum,'/'))"/>
			</dc:title>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>