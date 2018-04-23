<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	exclude-result-prefixes="case ci dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_introduction">
		<title>Introduction <lnpid>id-UK01-27014</lnpid></title>

		<body>
			<p>This Conversion Instruction describes the conversion of Rosetta CASEDOC DTD to CourtCase schema in the
				document.</p>

			<p>UK cases are identified using the root element <sourcexml>CASEDOC</sourcexml> with attribute
					<sourcexml>@type=”fulltext”</sourcexml>, <sourcexml>docinfo:doc-country/@iso-cc=”GB”</sourcexml> and the value
				of <sourcexml>docinfo:selector</sourcexml> should be LawReport or StyledJudgment or RawTranscript or RawJudgment
				or EUCases-JUD or EUCases-AGO or EUCases-ORD or JudgmentPlaceHolder or StyledTranscript.</p>

			<p>UK Transcripts are identified using the root element <sourcexml>CASEDOC</sourcexml> with attribute
					<sourcexml>@type=”fulltext”</sourcexml>, <sourcexml>docinfo:doc-country/@iso-cc=”GB”</sourcexml> and the value
				of <sourcexml>docinfo:selector</sourcexml> should be Transcript.</p>

			<p><sourcexml>CASEDOC</sourcexml> becomes <targetxml>courtcase:courtcase</targetxml>. It's a root element for
				CaseLaw. The source attribute is: <sourcexml>@type</sourcexml>. If present, suppress this attribute and its
				content, because the distinction made by this attribute in source is handled by separate schema in NL. </p>

			<note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation
				markup.</note>

			<pre>

&lt;CASEDOC type="fulltext" ...&gt;
        ...
        ...
&lt;/CASEDOC&gt;
<b>Becomes</b>

&lt;courtcase:courtcase&gt;
      
      &lt;courtcase:head&gt;...&lt;/courtcase:head&gt;

      &lt;courtcase:body&gt;...&lt;/courtcase:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/courtcase:courtcase&gt;
</pre>

			<p><targetxml>courtcase:head</targetxml>, <targetxml>courtcase:body</targetxml>, and
					<targetxml>doc:metadata</targetxml> are created as required children of
					<targetxml>courtcase:courtcase</targetxml></p>

			<section>
				<title>Note:</title>
				<p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
				<p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
				<p>Copy source attributes to target attributes unless otherwise specified.</p>
				<p>Every example is represented like "EXAMPLE" in all the dita's and is captured under <pre>pre</pre> tag.</p>
			</section>
			<section>
				<title>Changes:</title>
				<p>2013-11-15 <ph id="change_20131115_SSX">Added value for doninfo:selector Webteam # 239816</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_introduction.dita  -->

	<xsl:template match="CASEDOC">
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<courtcase:courtcase>
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>			
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:if test="docinfo/docinfo:doc-lang">
				<xsl:call-template name="xml_lang"/>
			</xsl:if>
			<!-- head -->
			<xsl:apply-templates select="case:body/case:headnote"/>
			
			<!-- body -->
			<xsl:apply-templates select="case:body"/>
			
			<!-- metadata -->
			<xsl:element name="doc:metadata">
				<xsl:apply-templates select="docinfo"/>
			</xsl:element>
		</courtcase:courtcase>
	</xsl:template>
	
	
	<!-- Suppress @type per instruction above. -->
	<xsl:template match="CASEDOC/@type"/>
	
	<!-- No mention in CI, but suppress. -->
	<xsl:template match="CASEDOC/@version | CASEDOC/@versionminor"/>
  
  <!-- workaround for data error (?) -->
  <xsl:template match="remotelink[parent::ci:content]" priority="2">
    <xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>
