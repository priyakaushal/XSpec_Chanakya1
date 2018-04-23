<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci cttr jrnl source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg-info">
	<title>jrnl:info to cttr:citingpub <lnpid>id-CA03-13233</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Create the following elements within the <targetxml>cttr:citingpub</targetxml> created when converting the parent
					<sourcexml>cttr:annot[@annotationtype="secondary-sources"]</sourcexml>.</p>
			<p>There will be two <sourcexml>jrnl:info</sourcexml> elements in each annotation that contains <sourcexml>jrnl:citations</sourcexml>. The title is contained
				in the first <sourcexml>jrnl:info/title</sourcexml>, which occurs before <sourcexml>jrnl:citations</sourcexml> and becomes
					<targetxml>cttr:citingpub/title</targetxml>. </p>
			<p>Create <targetxml>cttr:citations</targetxml> to contain the <sourcexml>ci:cite</sourcexml> children of
				<sourcexml>jrnl:citations/jrnl:citetext</sourcexml>. Do not convert <sourcexml>jrnl:citetext</sourcexml>; it is a container only and not
				necessary.</p>
			<p>For the second <sourcexml>jrnl:info</sourcexml>, following <sourcexml>jrnl:citations</sourcexml>, create
					<targetxml>ref:crossreference/ref:content/lnci:cite/lnci:periodical/lnci:periodicalref/lnci:periodicallocator/lnci:publicationname</targetxml>
				to contain <sourcexml>jrnl:info/publication</sourcexml>, which occurs in the source after <sourcexml>jrnl:citations</sourcexml>. The text of
					<sourcexml>publication</sourcexml> is put into <targetxml>lnci:publicationname/@value</targetxml>, and the value of
					<sourcexml>@pubnum</sourcexml> is put into <targetxml>lnci:publicationname/@normpubcode</targetxml>. <sourcexml>@pubnum-protocol</sourcexml>
				is discarded. </p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;cttr:annot&gt;
	&lt;jrnl:info&gt;
		&lt;title&gt;A Just Measure of Pain?: Determining Quantum of Punishment in the Charter Era&lt;/title&gt;
	&lt;/jrnl:info&gt;
	&lt;jrnl:citations&gt;
		&lt;jrnl:citetext&gt;
			&lt;ci:cite&gt;
				&lt;ci:lawrev&gt;
					&lt;ci:lawrevref ID="cref00200629" spanref="cspan00200629"&gt;
						&lt;ci:lawrevlocator&gt;
							&lt;ci:publicationname normpubcode="UTFLR"/&gt;
							&lt;ci:volume num="55"/&gt;
							&lt;ci:page num="269"/&gt;
						&lt;/ci:lawrevlocator&gt;
					&lt;/ci:lawrevref&gt;
				&lt;/ci:lawrev&gt;
				&lt;ci:content&gt;
					&lt;ci:span spanid="cspan00200629"&gt;(1997) 55 U.T. Fac. L. Rev 269&lt;/ci:span&gt;
				&lt;/ci:content&gt;
			&lt;/ci:cite&gt;
		&lt;/jrnl:citetext&gt;
	&lt;/jrnl:citations&gt;
	&lt;jrnl:info&gt;
		&lt;publication pubnum="281536" pubnum-protocol="csi"&gt;University of Toronto Faculty of Law Review&lt;/publication&gt;
	&lt;/jrnl:info&gt;
&lt;/cttr:annot&gt;      </codeblock>
			<title>Target XML</title>
			<codeblock>&lt;cttr:refitem&gt;
	&lt;cttr:citingpub treatment="unspecified"&gt;
		&lt;title&gt;A Just Measure of Pain?: Determining Quantum of Punishment in the Charter Era&lt;/title&gt;
		&lt;cttr:citations&gt;
			&lt;lnci:cite&gt;
				&lt;lnci:lawrev&gt;
					&lt;lnci:lawrevref ID="cref00200629" spanref="cspan00200629"&gt;
						&lt;lnci:lawrevlocator&gt;
							&lt;lnci:publicationname normpubcode="UTFLR"/&gt;
							&lt;lnci:volume num="55"/&gt;
							&lt;lnci:page num="269"/&gt;
						&lt;/lnci:lawrevlocator&gt;
					&lt;/lnci:lawrevref&gt;
				&lt;/lnci:lawrev&gt;
				&lt;lnci:content&gt;(1997) 55 U.T. Fac. L. Rev 269&lt;/lnci:content&gt;
			&lt;/lnci:cite&gt;
		&lt;/cttr:citations&gt;
		&lt;ref:crossreference&gt;
			&lt;ref:content&gt;
				&lt;lnci:cite&gt;
					&lt;lnci:periodical&gt;
						&lt;lnci:periodicalref&gt;
							&lt;lnci:periodicallocator&gt;
								&lt;lnci:publicationname normpubcode="281536" value="University of Toronto Faculty of Law Review"/&gt;
							&lt;/lnci:periodicallocator&gt;
						&lt;/lnci:periodicalref&gt;
					&lt;/lnci:periodical&gt;
				&lt;/lnci:cite&gt;
			&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
	&lt;/cttr:citingpub&gt;
&lt;/cttr:refitem&gt;</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2012-11-13: <ph id="change_20121113_bh">Removed <targetxml>lnci:span</targetxml> as per general <sourcexml>ci:cite</sourcexml> instructions.</ph></p>
		</section>
	</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_jrnl.info-to-LxAdv_cttr.citingpub.dita  -->

<!-- Sudhanshu Srivastava : Initially drafted this module on 25-May-2017. If required please change accordingly. -->
		<xsl:template match="jrnl:info">
			<xsl:apply-templates select="@*|node()"/>
		</xsl:template>

		<xsl:template match="jrnl:info/publication">
		<ref:crossreference>
			<ref:content>
				<lnci:cite>
					<lnci:periodical>
						<lnci:periodicalref>
							<lnci:periodicallocator>
								<lnci:publicationname normpubcode="{@pubnum}"
									value="{.}"/>
							</lnci:periodicallocator>
						</lnci:periodicalref>
					</lnci:periodical>
				</lnci:cite>
			</ref:content>
		</ref:crossreference>
	</xsl:template>
</xsl:stylesheet>