<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
xmlns:leg="http://www.lexis-nexis.com/glp/leg"
xmlns:dc="http://purl.org/dc/elements/1.1/"
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"

xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo cttr case leg source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Introduction">
	<title>Introduction <lnpid>id-CA03-13207</lnpid></title>
	<prolog><metadata><prodinfo>
		<prodname>CA03 - CA Citator</prodname>
		<vrmlist>
			<vrm version=""/>
		</vrmlist>
	</prodinfo></metadata></prolog>
	<body>
		<p>This Conversion Instruction describes the conversion of Rosetta CITATORDOC XML to the
			LexisAdvance Citator schema version 1.11 PROD.</p>
		<section>
			<title>Note:</title>
			<p>Source elements and attributes are italicized and highlighted in BLUE like this: <sourcexml>XML SOURCE</sourcexml></p>
			<p>Target elements and attributes are bold and highlighted in GREEN like this: <targetxml>XML TARGET</targetxml></p>
			<p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
			<p>Every example is represented like <pre>EXAMPLE</pre> in all the dita CIs.</p>
		</section>
		<section>
			<title>Changes</title>
			<p>2014-12-09: <ph id="change_20141209_brt">Updated schema version to 1.5 PROD.</ph></p>
			<p>2014-08-29: <ph id="change_20140829_brt">Updated schema version to 1.0 PROD.</ph></p>
			<p>2014-07-10: <ph id="change_20140710_brt">Updated schema version to 3.11 ALPHA.</ph></p>
			<p>2014-04-17: <ph id="change_20140417_brt">Updated schema version to 3.8 ALPHA.</ph></p>
			<p>2013-10-03: <ph id="change_20131003_rj">Added updated schema version to 3.5 ALPHA.</ph></p>
			<p>2013-09-05: <ph id="change_20130905_rj">Added updated schema version to 3.3 ALPHA.</ph></p>
			<p>2013-07-19: <ph id="change_20130719_rj">Added updated schema version to 3.2 ALPHA.</ph></p>
			<p>2013-05-13: <ph id="change_20130513_rj">Added updated schema version to 3.0 ALPHA.</ph></p>
			<p>2013-01-05: <ph id="change_20130105_rj">Added updated schema version to 2.18 ALPHA.</ph></p>
		</section>
	</body>
	</dita:topic>


	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Citator_Introduction.dita  -->
	 
<!-- Sudhanshu Srivastava -: 
	Edited on :- 23-May-2017
	Template to match root element 'CITATORDOC' and converting to 'cttr:citator' root element to match target schema.
	-->
	<xsl:template match="CITATORDOC">
		<!--  Original Target XPath:  XMLTARGET   -->
		<cttr:citator>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<!--<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>-->
			<xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang,'-',docinfo/docinfo:doc-country/@iso-cc)"/>
			<xsl:attribute name="treatment" select="if(@signal='statute-cited') then 'leg-citator-available' else @signal"/>
			<!-- court:casehead -->
			<xsl:apply-templates select="source_cttr:body/(case:headnote|leg:info)"/>
			<!-- courtcase:body -->
			<xsl:apply-templates select="source_cttr:body"/>
			<!-- doc:metadata   -->
			<xsl:element name="doc:metadata">
				<xsl:choose>
					<xsl:when test="docinfo/docinfo:selector">
						<xsl:apply-templates select="docinfo/docinfo:selector" mode="pubinfo"/>		
					</xsl:when>
					<xsl:otherwise>
						<pubinfo:pubinfo>
							<pubinfo:publicationname>
								<emph typestyle="it">Quick</emph>
								<xsl:text>CITE</xsl:text>
								<sup>&#174;</sup>
								<xsl:text>Case Citator</xsl:text>
							</pubinfo:publicationname>
						</pubinfo:pubinfo>
					</xsl:otherwise>
				</xsl:choose>
				
				<xsl:apply-templates select="docinfo"/>
			</xsl:element>
		</cttr:citator>
	</xsl:template>
</xsl:stylesheet>