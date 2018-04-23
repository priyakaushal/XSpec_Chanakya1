<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ci="http://www.lexis-nexis.com/ci" 
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"	
	version="2.0" exclude-result-prefixes="ci dita docinfo case xsi">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Caselaw_Introduction">
		<title>Introduction <lnpid>id-UK02-27235</lnpid></title>

		<body>
			<p>This Conversion Instruction describes the conversion of Rosetta CASEDOC
				DTD to CompositeCase schema in the document.</p>

			<p>The following criteria are used to identify composite cases: <ol>
					<li>The presence of at least 2 instances of this XPath:<ul>
							<li><sourcexml>/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:courtname</sourcexml></li>
						</ul></li>
					<li>The presence of at least 2 instances of <i>either</i> of these
						XPaths: <ul>
							<li><sourcexml>/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml></li>
							<li><sourcexml>/CASEDOC/case:body/case:content/case:judgments/case:dates/case:decisiondate</sourcexml></li>
						</ul></li>
					<li>The value of <sourcexml>docinfo:selector</sourcexml> should be
						CompCase.</li>
				</ol>
			</p>

			<p><sourcexml>CASEDOC</sourcexml> becomes
					<targetxml>compcase:compositecourtcase</targetxml>. It's a root
				element for Composite Cases. The source attribute is:
					<sourcexml>@type</sourcexml>. If present, suppress this attribute and
				its content, because the distinction made by this attribute in source is
				handled by separate schema in NL. </p>

			<pre>

&lt;CASEDOC type="fulltext" ...&gt;
        ...
        ...
&lt;/CASEDOC&gt;
<b>Becomes</b>

&lt;compcase:compositecourtcase&gt;
      
      &lt;compcase:head&gt;...&lt;/compcase:head&gt;
      
      &lt;compcase:body&gt;...&lt;/compcase:body&gt;
      
      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/compcase:compositecourtcase&gt;
</pre>

			<p><targetxml>compcase:head</targetxml>,
					<targetxml>compcase:body</targetxml>, and
					<targetxml>doc:metadata</targetxml> are created as required children
				of <targetxml>compcase:compositecourtcase</targetxml></p>

			<note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed
				from the conversion except citation markup.</note>

			<section>
				<title>Note:</title>
				<p>Source elements and attributes are highlighted like this:
						<sourcexml>SOURCEXML</sourcexml></p>
				<p>Target elements and attributes are highlighted like this:
						<targetxml>TARGETXML</targetxml></p>
				<p>Copy source attributes to target attributes unless otherwise
					specified.</p>
				<p>Every example is represented like "EXAMPLE" in all the dita's and is
					captured under <pre>pre</pre> tag.</p>
			</section>
		</body>

	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\UK02_CompCase_Introduction.dita  -->

	<xsl:template match="CASEDOC">
		<!--  Original Target XPath:  compcase:compositecourtcase   -->
		<compcase:compositecourtcase>
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
					select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:if test="docinfo/docinfo:doc-lang">
				<xsl:call-template name="xml_lang"/>
			</xsl:if>
			<!--<compcase:head>-->
			<xsl:apply-templates select="case:body/case:headnote"/>
			<!--<compcase:body>-->
			<xsl:apply-templates select="@* | node() except (case:body/case:headnote, docinfo)"/>
			<!-- metadata -->
			<xsl:element name="doc:metadata">
				<xsl:if test=".//copyright">
					<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
						<xsl:apply-templates select=".//copyright"/>						
					</pubinfo:pubinfo>
				</xsl:if>
				<xsl:apply-templates select="docinfo"/>
			</xsl:element>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="CASEDOC/@type"/>

	<xsl:template match="CASEDOC/@searchtype"/>
	
	<xsl:template match="case:headnote/case:info/case:casename" mode="dc.metadata" priority="1">
		<xsl:variable name="cite" select="parent::case:info/case:reportercite/ci:cite[@type='cite4thisdoc']/ci:content"/>
		<dc:title>
			<xsl:value-of select="concat(.,' ',$cite)"/>
		</dc:title>
	</xsl:template>

</xsl:stylesheet>
