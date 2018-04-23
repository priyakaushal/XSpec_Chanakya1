<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0"
	exclude-result-prefixes="xsl dita docinfo leg doc legis">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA_legis-Introduction">
		<title>Introduction <lnpid>id-CA05-13607</lnpid></title>


		<body>
			<p>This Conversion Instruction describes the conversion to legis 9.7 PROD schema in the
				document. </p>

			<p>CA Acts and Bills are identified using the root element <sourcexml>LEGDOC</sourcexml>
				with <sourcexml>docinfo:selector</sourcexml> value being set to "act".</p>

			<p><sourcexml>LEGDOC</sourcexml> becomes <targetxml>legis:legis</targetxml>. Its a root
				element for Legislation.</p>

			<note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the
				conversion except citation markup.</note>

			<pre>

&lt;LEGDOC&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="CA"/&gt;
        ...
&lt;/LEGDOC&gt;
<b>Becomes</b>

&lt;legis:legis xml:lang="en-CA"&gt;
      
      &lt;legis:head&gt;...&lt;/legis:head&gt;

      &lt;legis:body&gt;...&lt;/legis:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/legis:legis&gt;
</pre>

			<p><targetxml>legis:head</targetxml>, <targetxml>legis:body</targetxml>, and
					<targetxml>doc:metadata</targetxml> are created as required children of
					<targetxml>legis:legis</targetxml></p>

			<section>
				<title>Note:</title>
				<p>Source elements and attributes are highlighted like this:
						<sourcexml>SOURCEXML</sourcexml></p>
				<p>Target elements and attributes are highlighted like this:
						<targetxml>TARGETXML</targetxml></p>
				<p>Copy source attributes to target attributes unless otherwise specified.</p>
				<p>Every example is represented like "EXAMPLE" in all the dita's and is captured
					under <pre>pre</pre> tag.</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\CA_Legis-Introduction.dita  -->
	<!--<xsl:message>CA_Legis-Introduction.xsl requires manual development!</xsl:message>-->

	<xsl:template match="LEGDOC">
		<!--  Original Target XPath:  legis:legis   -->
		<legis:legis>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:call-template name="xml_lang"/>
			
			<xsl:apply-templates select="leg:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</legis:legis>



	</xsl:template>

	<!--<xsl:template match="docinfo:selector">

		<!-\-  Original Target XPath:  legis:legis   -\->
		<legis:legis>
			<xsl:apply-templates select="@* | node()"/>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!-\-  Original Target XPath:  legis:head   -\->
		<legis:head>
			<xsl:apply-templates select="@* | node()"/>
		</legis:head>

	</xsl:template>

	<xsl:template match="SOURCEXML">

		<!-\-  Original Target XPath:  TARGETXML   -\->
		<TARGETXML>
			<xsl:apply-templates select="@* | node()"/>
		</TARGETXML>

	</xsl:template>-->

</xsl:stylesheet>
