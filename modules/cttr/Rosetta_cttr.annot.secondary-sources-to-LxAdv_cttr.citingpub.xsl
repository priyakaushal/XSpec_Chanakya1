<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci comm cttr jrnl source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-annot-secondary-sources">
	<title>[@annotationtype="secondary-sources"]/cttr:annot to cttr:citingpub <lnpid>id-CA03-13228</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Each occurence of
					<sourcexml>cttr:annotations[@annotationtype="secondary-sources"]/cttr:annot</sourcexml>
				becomes a <targetxml>cttr:refitem/cttr:citingpub</targetxml>. </p>
			<p>
				<ul>
					<li>If <sourcexml>@id</sourcexml> exists, it becomes
							<targetxml>@xml:id</targetxml>. </li>
					<li>If <sourcexml>@signal</sourcexml> exists, it becomes
							<targetxml>@treatment</targetxml>, otherwise set
							<targetxml>@treatment="unspecified"</targetxml>.</li>
				</ul>
			</p>
			<p><ul>
					<li><sourcexml>comm:info</sourcexml> is converted as detailed below.</li>
					<li><sourcexml>jrnl:info</sourcexml> is converted as detailed below. </li>
					<li><sourcexml>comm:citations</sourcexml> and
							<sourcexml>jrnl:citations</sourcexml> become
							<targetxml>cttr:citingpub/cttr:citations</targetxml>;
							<sourcexml>comm:citetext</sourcexml> and
							<sourcexml>jrnl:citetext</sourcexml> are discarded but all the
							<sourcexml>ci:cite</sourcexml> elements within them are converted to
							<targetxml>lnci:cite</targetxml>.</li>
				</ul>. </p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:annot&gt;
   ...
&lt;/cttr:annot&gt;      </codeblock>
		</example>
		<example>
			<title>Target XML</title>
			<codeblock>
&lt;cttr:refitem&gt;
   ...
&lt;/cttr:refitem&gt;
      </codeblock>
		</example>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_cttr.annot.secondary-sources-to-LxAdv_cttr.citingpub.dita  -->
	 
<!-- Sudhanshu Srivastava : Initially drafted on 24-May-2017 . if required , please update accordingly. -->
	<xsl:template match="source_cttr:annotations[@annotationtype='secondary-sources']/source_cttr:annot">
		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub   -->
		<cttr:refitem>	
			<cttr:citingpub>
				<xsl:attribute name="treatment" select="if(@signal) then @signal else 'unspecified'"/>
					<xsl:apply-templates select="@* | node()"/>
			</cttr:citingpub>
		</cttr:refitem>
	</xsl:template>

	<xsl:template match="source_cttr:annot/@id">
		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id" select="."/>
	</xsl:template>

	<xsl:template match="comm:citations">
		<!--  Original Target XPath:  cttr:citingpub/cttr:citations   -->
			<cttr:citations>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
	</xsl:template>

	<xsl:template match="jrnl:citations">
		<!--  Original Target XPath:  cttr:citingpub/cttr:citations   -->
			<cttr:citations>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
	</xsl:template>

	<xsl:template match="comm:citetext">
		<!--  Original Target XPath:  lnci:cite   -->
			<xsl:apply-templates select="@*|node()"/>
	</xsl:template>

	<xsl:template match="jrnl:citetext">
		<!--  Original Target XPath:  lnci:cite   -->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
</xsl:stylesheet>