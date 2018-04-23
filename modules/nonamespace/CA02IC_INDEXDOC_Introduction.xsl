<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

						xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
		<title>Introduction <lnpid>id-CA02IC-13008</lnpid></title>
		<shortdesc>This Conversion Instructions describes the conversion of the Rosetta INDEXDOC DTD to <b>casedigest V7.5_PROD</b> schema.</shortdesc>
		<body>

			<p>CA Case Summaries(INDEXDOC) samples are identified using the root element <sourcexml>INDEXDOC</sourcexml>.</p>

			<section>
				<sourcexml>INDEXDOC</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml> which is a root element of casedigest schema. The source attribute
				<sourcexml>@xml:lang</sourcexml>, if present, can be dropped, as a separate rule has been defined to populate <targetxml>casedigest:casedigest/@xml:lang</targetxml>. <note>The
					attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>
				<pre>   
          &lt;INDEXDOC&gt;
                      ...
                      &lt;docinfo:doc-lang lang="en"/&gt;
                      &lt;docinfo:doc-country iso-cc="CA"/&gt;
                      ...          
           &lt;/INDEXDOC&gt;

<b>Becomes</b>

              &lt;casedigest:casedigest xml:lang="en-CA"&gt;
                        ...
               &lt;/casedigest:casedigest&gt;
</pre>
				<note>Elements <targetxml>casedigest:head</targetxml>, <targetxml>casedigest:body</targetxml> and <targetxml>doc:metadata</targetxml> are created as required children of root element
						<targetxml>casedigest:casedigest</targetxml> during conversion</note>
				<p><b>Note:</b></p><p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p><p>Target elements and attributes are highlighted like this:
						<targetxml>TARGETXML</targetxml></p><p>Copy source attributes to target attributes unless otherwise specified.</p><p>Every example is represented like EXAMPLE in all the
					Conversion Instructions and is captured under <pre>pre</pre> tag.</p>
			</section>
		</body>

	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02IC_INDEXDOC\Introduction.dita  -->

	<xsl:template match="INDEXDOC">
		<!-- WPK: this template has been worked and is good -->
		<!--  Original Target XPath:  casedigest:casedigest   -->
		<casedigest:casedigest>

			<!--  @SBy:  output the LA namespace nodes onto the root element, and also schemaloc  -->
			<xsl:for-each select=" $lexisAdvNamespaces/* ">
				<xsl:sort/>
				<xsl:namespace name="{ substring-after( substring-before( . , '=' ) , ':' ) }" select="substring-after( translate( . , '&#034;' , '' ) , '=' )"/>
			</xsl:for-each>

			<!-- can reliably create xml:lang as doc-lang and doc-country are required in dtd -->
			<!--  @SBy:  change to call template defined in another module  -->
			<xsl:call-template name="xml_lang"/>
			<xsl:apply-templates select="@*"/>
			<xsl:attribute name="xsi:schemaLocation" select=" $outputSchemaLoc "/>

			<casedigest:head/>

			<xsl:apply-templates select="node() except docinfo"/>

			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>

		</casedigest:casedigest>

	</xsl:template>

	<!-- suppressed.  separate rule for xmllang on root  -->
	<!-- WPK: this template has been worked and is good -->
	<xsl:template match="INDEXDOC/@xml:lang"/>


	<!-- suppressed "except citation" -->
	<!-- WPK: this template has been worked and is good -->
	<xsl:template match="@searchtype"/>


</xsl:stylesheet>