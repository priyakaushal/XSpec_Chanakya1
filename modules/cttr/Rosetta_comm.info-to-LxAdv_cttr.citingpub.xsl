<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm"  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci comm cttr source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg-info">
	<title>comm:info to cttr:citingpub <lnpid>id-CA03-13226</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Create the following elements within the <targetxml>cttr:citingpub</targetxml> created when converting the parent
					<sourcexml>cttr:annot[@annotationtype="secondary-sources"]</sourcexml>.</p>
			<p>There will be two <sourcexml>comm:info</sourcexml> elements in each annotation that contains <sourcexml>comm:citations</sourcexml>. The title is contained
				in the first <sourcexml>comm:info/title</sourcexml>, which occurs before <sourcexml>comm:citations</sourcexml> and becomes
					<targetxml>cttr:citingpub/title</targetxml>. </p>
			<p>Create <targetxml>cttr:citations</targetxml> to contain the <sourcexml>ci:cite</sourcexml> children of
					<sourcexml>comm:citations/comm:citetext</sourcexml>. Do not convert <sourcexml>comm:citetext</sourcexml>; it is a container only and not
				necessary.</p>
			<p>For the second <sourcexml>comm:info</sourcexml>, following <sourcexml>comm:citations</sourcexml>, create
					<targetxml>cttr:citingpub/ref:crossreference/ref:content/lnci:cite/lnci:book/lnci:bookref/lnci:publicationname</targetxml> to contain
					<sourcexml>comm:info/publication</sourcexml>, which occurs in the source after <sourcexml>comm:citations</sourcexml>. The text of
					<sourcexml>publication</sourcexml> is put into <targetxml>lnci:publicationname/@value</targetxml>, and the value of
					<sourcexml>@pubnum</sourcexml> is put into <targetxml>lnci:publicationname/@normpubcode</targetxml>. <sourcexml>@pubnum-protocol</sourcexml>
				is discarded. </p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:annot&gt;
	&lt;comm:info&gt;
		&lt;title&gt;Discrimination -- Practice and Procedure -- Provincial/Territorial Human Rights Enforcement -- Appeals/Judicial Review -- General
			-- Overview&lt;/title&gt;
	&lt;/comm:info&gt;
	&lt;comm:citations&gt;
		&lt;comm:citetext&gt;
			&lt;ci:cite&gt;
				&lt;ci:case&gt;
					&lt;ci:caseref ID="cref00200617" spanref="cspan00200617"&gt;
						&lt;ci:reporter value="HDH"/&gt;
						&lt;ci:refnum num="311"/&gt;
					&lt;/ci:caseref&gt;
				&lt;/ci:case&gt;
				&lt;ci:content&gt;&lt;ci:span spanid="cspan00200617"&gt;HDH-311&lt;/ci:span&gt;&lt;/ci:content&gt;
			&lt;/ci:cite&gt;
		&lt;/comm:citetext&gt;
	&lt;/comm:citations&gt;
	&lt;comm:info&gt;
		&lt;publication pubnum="334485" pubnum-protocol="csi"&gt;Halsbury's Laws of Canada - Discrimination and Human Rights (Ray-Ellis)&lt;/publication&gt;
	&lt;/comm:info&gt;
&lt;/cttr:annot&gt;      </codeblock>
			<title>Target XML</title>
			<codeblock>&lt;cttr:citingpub treatment="unspecified"&gt;
	&lt;title&gt;Discrimination -- Practice and Procedure -- Provincial/Territorial Human Rights Enforcement -- Appeals/Judicial Review -- General
		-- Overview&lt;/title&gt;
	&lt;cttr:citations&gt;
		&lt;lnci:cite&gt;
			&lt;lnci:case&gt;
				&lt;lnci:caseref ID="cref00200617" spanref="cspan00200617"&gt;
					&lt;lnci:reporter value="HDH"/&gt;
					&lt;lnci:refnum num="311"/&gt;
				&lt;/lnci:caseref&gt;
			&lt;/lnci:case&gt;
			&lt;lnci:content&gt;&lt;lnci:span spanid="cspan00200617"&gt;HDH-311&lt;/lnci:span&gt;&lt;/lnci:content&gt;
		&lt;/lnci:cite&gt;
	&lt;/cttr:citations&gt;
	&lt;ref:crossreference&gt;
		&lt;ref:content&gt;
			&lt;lnci:cite&gt;
				&lt;lnci:book&gt;
					&lt;lnci:bookref&gt;
						&lt;lnci:publicationname normpubcode="334485" value="Halsbury's Laws of Canada - Discrimination and Human Rights (Ray-Ellis)"/&gt;
					&lt;/lnci:bookref&gt;
				&lt;/lnci:book&gt;
			&lt;/lnci:cite&gt;
		&lt;/ref:content&gt;
	&lt;/ref:crossreference&gt;
&lt;/cttr:citingpub&gt;</codeblock>
		</example>
	</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_comm.info-to-LxAdv_cttr.citingpub.dita  -->
 
<!-- Sudhanshu Srivastava : Initially drafted on 24-May-2017. If required please update accordingly. -->
	
	<xsl:template match="comm:info">
		<!--  Original Target XPath:  cttr:citingpub/comm.info -->
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
	<xsl:template match="comm:info/publication">
		<!--  Original Target XPath:  lnci:publicationname/@value   -->
		<ref:crossreference>
			<ref:content>
				<lnci:cite>
					<lnci:book>
						<lnci:bookref>
							<lnci:publicationname>
								<xsl:attribute name="normpubcode" select="@pubnum"/>
								<xsl:attribute name="value" select="."/>								
							</lnci:publicationname>
						</lnci:bookref>
					</lnci:book>
				</lnci:cite>
			</ref:content>
		</ref:crossreference>
	</xsl:template>

</xsl:stylesheet>