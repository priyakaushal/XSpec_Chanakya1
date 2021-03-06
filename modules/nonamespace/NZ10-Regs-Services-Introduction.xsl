<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="NZ-Regs-Services-Introduction">
		<title>Introduction <lnpid>id-NZ10-24408</lnpid></title>
		<body>
			<p>
				<u>This Conversion Instruction describes the conversion of the <sourcexml>Rosetta
						LEGDOC DTD</sourcexml> to <targetxml>Regulation Schema (Version 8.3_PROD
						)</targetxml>.</u>
			</p>
			<section>
				<title>Root Element</title>

				<ul>
					<li>Identification Criteria for <b>NZ10 Regulation (from Services)</b> content
						stream is <sourcexml>LEGDOC[@legtype="regulations"]</sourcexml> :-</li>
				</ul>

				<p><sourcexml>LEGDOC</sourcexml>
					<b>becomes</b>
					<targetxml>regulation:regulation</targetxml> when the root element
						<sourcexml>LEGDOC</sourcexml> contains
						<sourcexml>@legtype="regulations"</sourcexml>. This is the root element for
					the regulation schema, attributes are populated as follows:</p>
				<p>
					<sourcexml>LEGDOC[@id]</sourcexml>
					<b>becomes</b>
					<targetxml>regulation:regulation[@xml:id]</targetxml> and provides a unique
					identifier for this document.</p>
				<p>Create <targetxml>regulation:regulation[@xml:lang]</targetxml> which is used to
					specify the language that is being used in the content/document. The presence or
					absence of attribute value will not affect delivery product behavior and default
					value is 'none'. <pre>
              <b><i>NZ Regs Example: Source XML 1</i></b>


&lt;LEGDOC legtype="regulations"&gt;
    ...
	&lt;docinfo:doc-lang lang="en"/&gt;
	&lt;docinfo:doc-country iso-cc="NZ"/&gt;
	...
&lt;/LEGDOC&gt;



	</pre>
					<pre>

              <b><i>NZ Regs Example: Target XML 1</i></b>


&lt;regulation:regulation xml:lang="en-NZ"&gt;
    ...
&lt;/regulation:regulation&gt;

                </pre>
				</p>

				<p>
					<targetxml>regulation:head</targetxml>, <targetxml>regulation:body</targetxml>,
					and <targetxml>doc:metadata</targetxml> are created as required children of
						<targetxml>regulation:regulation</targetxml>. </p>

				<p>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion
					except for the citation element.</p>

			</section>

			<section>
				<title>Notes</title>
				<p>The following information is meant to help the user understand the conventions
					used in this document.</p>
				<p>Source elements and attributes are highlighted like this: <sourcexml>XML
						SOURCE</sourcexml></p>
				<p>Target elements and attributes are highlighted like this: <targetxml>XML
						TARGET</targetxml></p>
				<p>Verify content of following target attributes: <ul>
						<li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
							digits in length. Any other lengths, do not output
								<targetxml>@year</targetxml>.</li>
						<li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
							between 01-12. Any numbers outside this range, do not output a
								<targetxml>@month</targetxml>.</li>
						<li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is
							between 01-31. Any numbers outside this range, do not output
								<targetxml>@day</targetxml>.</li>
					</ul>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ10_Regulation_From_Services\NZ-Regs-Services-Introduction.dita  -->
	<!--<xsl:message>NZ-Regs-Services-Introduction.xsl requires manual development!</xsl:message>-->

	<xsl:template match="LEGDOC">

		<!--  Original Target XPath:  regulation:regulation   -->
		<regulation:regulation>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:call-template name="xml_lang"/>

			<regulation:head>
				<xsl:apply-templates select="/LEGDOC/leg:body/leg:info/leg:juris"/>
			</regulation:head>

			<regulation:body>
				<xsl:apply-templates select="leg:body"/>
			</regulation:body>
			<!---->

			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="LEGDOC/@id">
		<!--<!-\\-  Original Target XPath:  regulation:regulation[@xml:id]   -\\->-->
		<xsl:attribute name="xml:id">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	

</xsl:stylesheet>
