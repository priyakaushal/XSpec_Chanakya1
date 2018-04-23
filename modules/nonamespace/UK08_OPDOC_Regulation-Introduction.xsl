<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"

	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"
	xmlns:op="http://www.lexis-nexis.com/glp/op"	
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	version="2.0" exclude-result-prefixes="ci dita docinfo leg op">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_Introduction">
		<title>Introduction <lnpid>id-UK08OR-28809</lnpid></title>
		<shortdesc>This Conversion Instructions describes the conversion of the
			Rosetta OPDOC DTD to <b>Regulation Schema Version
			9.1_PROD</b>.</shortdesc>
		<body>

			<p>UK08 Quasi OpDoc samples are identified using the root element
					<sourcexml>OPDOC</sourcexml> along with element
					<sourcexml>docinfo:selector</sourcexml> which contain values
					<sourcexml>PracticeDirection</sourcexml>, or
					<sourcexml>CodeOfPractice</sourcexml>, or
					<sourcexml>RegulatoryGuidance</sourcexml>.</p>

			<section> Root element <sourcexml>OPDOC</sourcexml> becomes
					<targetxml>regulation:regulation</targetxml> which is the root element
				of Regulation Schema. The source attribute
					<sourcexml>@xml:lang</sourcexml>, if present, can be dropped, as a
				separate rule has been defined to populate
					<targetxml>regulation:regulation/@xml:lang</targetxml>.</section>
			<section>
				<note>The attribute <sourcexml>@searchtype</sourcexml> will be
					suppressed from the conversion except citation markup.</note>
				<pre>

&lt;OPDOC&gt;
  ...
  &lt;docinfo:doc-lang lang="en"/&gt;
  &lt;docinfo:doc-country iso-cc="GB"/&gt;
  ...          
&lt;/OPDOC&gt;


<b>Becomes</b>


&lt;regulation:regulation xml:lang="en-GB"&gt;
  ...
&lt;/regulation:regulation&gt;

      </pre>

				<note>Elements <targetxml>regulation:head</targetxml>,
						<targetxml>regulation:body</targetxml> and
						<targetxml>doc:metadata</targetxml> are created as required children
					of root element <targetxml>regulation:regulation</targetxml> during
					conversion.</note>

				<p>
					<b>Note:</b>
				</p>
				<p>Source elements and attributes are highlighted like this:
						<sourcexml>SOURCEXML</sourcexml></p>
				<p>Target elements and attributes are highlighted like this:
						<targetxml>TARGETXML</targetxml></p>
				<p>Copy source attributes to target attributes unless otherwise
					specified.</p>
				<p>Every example is represented like EXAMPLE in all the Conversion
					Instructions and is captured under 'pre' tag.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-Introduction.dita  -->

	<xsl:param name="outputSchemaLoc"
		select="'urn:x-lexisnexis:content:regulation:sharedservices:1 sch_regulation.xsd'"/>
	

	<xsl:template match="OPDOC">
		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<!--  JD:  output the LA namespace nodes onto the root element.  -->
			<xsl:call-template name="generateNSGlobalBindings"/>
			
			<!-- JD:  Create @xsi:schemaLocation based on the global parameter. -->
			<xsl:attribute name="xsi:schemaLocation" select=" $outputSchemaLoc "/>
			
			<!-- JD:  Create @xml:lang -->
			<xsl:call-template name="xml_lang"/>
			
			<!-- JD:  Process attributes of root element. -->
			<xsl:apply-templates select="@*"/>
			<!-- head -->
			<regulation:head>
				<xsl:apply-templates select="./docinfo/docinfo:normcite/ci:cite/ci:content" mode="ref.citations"/>
			</regulation:head>
			
			<!-- body -->
			<xsl:apply-templates select="op:body"/>
			
			<!-- metadata -->
			<doc:metadata>
				<!-- output pubinfo:pubinfo before doc:docinfo -->
				<xsl:apply-templates select="op:body/op:header" mode="metadata"/>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</regulation:regulation>
	</xsl:template>


	<xsl:template match="@searchtype"/>

</xsl:stylesheet>
