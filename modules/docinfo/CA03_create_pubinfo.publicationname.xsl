<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo-to-LexisAdvance_doc.metadata_doc.docinfo">
    <title>Create <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml> <lnpid>id-CA03-13250</lnpid></title>
    <body>
        <section>
			<title>CA03 Only: Create <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml></title>
            <p><targetxml>pubinfo:publicationname</targetxml> element shall be created for CA03 documents.
                <ul>
					<li>For Case Citator documents,
						(when <sourcexml>docinfo:selector</sourcexml> does not contain ("Statute" or "Statutes" or "Regulation"
				or "Regulations"), case insensitive),
						target becomes <targetxml>pubinfo:publicationname</targetxml> element containing 
						"Quick" within <targetxml>emph typestyle="it"</targetxml> element, 
						"CITE" text, 
						"®" within <targetxml>sup</targetxml> element, 
						and " Case Citator" text, see first Example.</li>
					<li>For Legislation Citator documents,
						(when <sourcexml>docinfo:selector</sourcexml> contains ("Statute" or "Statutes" or "Regulation"
				or "Regulations"), case insensitive),
				target becomes <targetxml>pubinfo:publicationname</targetxml> element containing 
				"Quick" within <targetxml>emph typestyle="it"</targetxml> element, 
						"CITE" text, 
						"®" within <targetxml>sup</targetxml> element, 
						and " Legislation Citator" text, see second Example.</li>
                </ul>
            </p>
        </section>

        <example>
            <title>Case Citator Sample Source XML</title>
            <codeblock>

&lt;docinfo:selector&gt;xxxx&lt;/docinfo:selector&gt;

	</codeblock>
            <title>Case Citator Sample Target XML</title>
            <codeblock>

&lt;doc:metadata&gt;
	...
	&lt;pubinfo:pubinfo&gt;
		&lt;pubinfo:publicationname&gt;&lt;emph typestyle="it"&gt;Quick&lt;/emph&gt;CITE&lt;sup&gt;&amp;#174;&lt;/sup&gt; Case Citator&lt;/pubinfo:publicationname&gt;
	&lt;/pubinfo:pubinfo&gt;
	...
&lt;/doc:metadata&gt;

	</codeblock>
        </example>
        <example>
            <title>Legislation Citator Sample Source XML</title>
            <codeblock>

&lt;docinfo:selector&gt;Statutes&lt;/docinfo:selector&gt;

	</codeblock>
            <title>Legislation Citator Sample Target XML</title>
            <codeblock>

&lt;doc:metadata&gt;
	...
	&lt;pubinfo:pubinfo&gt;
		&lt;pubinfo:publicationname&gt;&lt;emph typestyle="it"&gt;Quick&lt;/emph&gt;CITE&lt;sup&gt;&amp;#174;&lt;/sup&gt; Legislation Citator&lt;/pubinfo:publicationname&gt;
	&lt;/pubinfo:pubinfo&gt;
	...
&lt;/doc:metadata&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
			<p>2015-08-20: <ph id="change_20150820_SEP">Surround the Registered Trademark symbol within a superscript. Canada CR 508/WT 305155.</ph></p>
			<p>2015-08-19: <ph id="change_20150819_SEP">Created this section. Canada CR 508/WT 305155.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\CA03_create_pubinfo.publicationname.dita  -->
	 
<!-- Sudhanshu Srivastava : Initially drafted on 25 May 2017. If changes required , please update accordingly. -->
	<xsl:template match="docinfo:selector" mode="pubinfo">
		<!--  Original Target XPath:  pubinfo:publicationname   -->
		<xsl:choose>
			<xsl:when test=". = ('Statute','Statutes','Regulation','Regulations')">
				<pubinfo:pubinfo>
					<pubinfo:publicationname>
						<emph typestyle="it">Quick</emph>
						<xsl:text>CITE</xsl:text>
						<sup>&#174;</sup>
						<xsl:text>Legislation Citator</xsl:text>
					</pubinfo:publicationname>
				</pubinfo:pubinfo>	
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
	</xsl:template>
</xsl:stylesheet>