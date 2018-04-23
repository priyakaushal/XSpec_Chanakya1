<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_document.highlights">
    <title>Document Highlights become doc:overview <lnpid>id-CA10-14621</lnpid></title>
  <body>
    <section>
		<p>Up to 75 words (any PCDATA text separated by space, punctuation, or newline) shall be extracted, to become <targetxml>doc:metadata/doc:docinfo/doc:overview[@type="extracted-overview"]/bodytext/p/text</targetxml>, as follows:</p>

		<p> <b>Scenario 1 - Extract from:</b> center aligned heading titles, i.e. 
			<!--<targetxml>///seclaw:body/seclaw:level leveltype="unclassified"/heading align="center"/title</targetxml>-->
			<sourcexml>heading[align="center"]/title</sourcexml> (any descendant PCDATA).</p>
		<p>	(See related instruction <xref href="../../common_newest/Rosetta_CA_emp-Chof-heading_title-LxAdv-heading_title.dita">here</xref>.)  </p>

		<p> <note>For those documents with multiple heading titles, the results should be concatenated together separated by EM DASH —, up to 75 total words.</note></p>

		<p> OR <b>Scenario 2</b> - For those source documents where there are no 
			<sourcexml>heading[align="center"]/title</sourcexml>:
		</p>

		<p> Then <b>Extract from:</b> unclassified body text, i.e. 
			<!--<targetxml>/legis:body//primlaw:level[@leveltype="unclassified"]/primlaw:bodytext/p/text[1]</targetxml>-->
			<sourcexml>seclaw:bodytext/p/text</sourcexml>.</p>
		<p>(See related instruction <xref href="CA10_bodytext-ChOf-level.dita">here</xref>.)  </p>

		<p> <note>For each individual seclaw:bodytext, if there are multiple <sourcexml>p</sourcexml> elements, only the first one should be used.</note></p>

    </section>
    <example>
            <title>Scenario 1 - Mapping of Document Highlights from heading titles</title>
            <codeblock>

...
&lt;comm:body&gt;

	&lt;level leveltype="1"&gt;&lt;heading align="center"&gt;&lt;title searchtype="CHAPTER-TITLE"&gt;I. INTRODUCTION&lt;/title&gt;&lt;/heading&gt;

	&lt;level leveltype="1"&gt;&lt;heading align="center"&gt;&lt;title&gt;5. &lt;emph typestyle="bf"&gt;Relationship Between the Various Forums for Enforcing Employment Rights&lt;/emph&gt;&lt;/title&gt;&lt;/heading&gt;

	&lt;level leveltype="1"&gt;&lt;heading align="center"&gt;&lt;title&gt;&lt;emph typestyle="bf"&gt;(1) Enforcing Statutory Rights in the Courts&lt;/emph&gt;&lt;/title&gt;&lt;/heading&gt;

	&lt;level leveltype="1"&gt;&lt;heading align="center"&gt;&lt;title&gt;&lt;emph typestyle="bf"&gt;(a) Rights under the Employment Standards Legislation&lt;/emph&gt;&lt;/title&gt;&lt;/heading&gt;
	...

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;doc:metadata&gt;
	...
	&lt;doc:docinfo&gt;
		...
		&lt;doc:overview type="extracted-overview"&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;I. INTRODUCTION — 5. Relationship Between the Various Forums for Enforcing Employment Rights — (1) Enforcing Statutory Rights in the Courts — (a) Rights under the Employment Standards Legislation&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/doc:overview&gt;
		...
	&lt;/doc:docinfo&gt;
	...
&lt;/doc:metadata&gt;


        </codeblock>
        </example>
    <example>
            <title>Scenario 2 - Mapping of Document Highlights from <sourcexml>bodytext</sourcexml></title>
            <codeblock>

 &lt;bodytext searchtype="COMMENTARY"&gt;

		&lt;p&gt;
			&lt;text&gt;&lt;emph typestyle="bf"&gt;14.21. &lt;/emph&gt;The seminal case of
					&lt;emph typestyle="it"&gt;Irwin Toy Ltd. &lt;/emph&gt;confirms that
				there is an implied restriction against assigning bargaining
				unit work to supervisors:&lt;fnr fntoken="fn3651:39"
					fnrtoken="fnr3651:39"&gt;1&lt;/fnr&gt;&lt;/text&gt;
		&lt;/p&gt;

		&lt;blockquote&gt;

			&lt;p&gt;
				&lt;text&gt; We must now decide if the work assignments made by
					the company to its foremen, at a time when bargaining
					unit employees were, and continue to be, on layoff, is
					in violation of the collective agreement. We start by
					observing that the absence of an express restriction
					upon the assignment of bargaining unit work to foremen
					is not dispositive. The language found in most
					collective agreements which sets out the classifications
					covered by the agreement, creates seniority and recall
					rights and establishes job posting procedures, gives
					rise to an implied restriction upon a company's right to
					assign bargaining unit work to supervisors. This implied
					restriction has been universally recognized by
					arbitrators. The recognition of this implied restriction
					forms a part of the arbitral backdrop against which
					collective agreements are negotiated and against which
					they must be interpreted. &lt;/text&gt;
			&lt;/p&gt;
		&lt;/blockquote&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;doc:metadata&gt;
	...
	&lt;doc:docinfo&gt;
		...
		&lt;doc:overview type="extracted-overview"&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;14.21. The seminal case of Irwin Toy Ltd. confirms that
					there is an implied restriction against assigning bargaining unit work to supervisors: 1&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/doc:overview&gt;
		...
	&lt;/doc:docinfo&gt;
	...
&lt;/doc:metadata&gt;

        </codeblock>
        </example>
        <section>
            <title>Changes</title>
			<p>2015-03-25: <ph id="change_20150325_SEP">Provide clarifications for text() PCDATA descendants and multiple child elements. Phase 6 RFA #157.</ph></p>
			<p>2015-03-24: <ph id="change_20150324_SEP">Updated target XPATH to include <targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</ph></p>
            <p>2015-03-12: <ph id="change_20150312_SEP">Created. R4.5 RFA #2220.</ph></p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\document.highlights-to-doc.overview.dita  -->
	<!--<xsl:message>CA10-Treatise_Textbook_Forms_document.highlights-to-doc.overview.xsl requires manual development!</xsl:message> -->

	<xsl:template match="/COMMENTARYDOC/comm:body" mode="overviewmeta">
	<xsl:choose>
		<xsl:when test="//level[@leveltype='1']/heading[@align='center']">
			<doc:overview type="extracted-overview">
				<bodytext>
					<p>
						<text>
							<xsl:variable name="text">
							<xsl:for-each select="//level[@leveltype='1']/heading[@align='center']/title">
								<xsl:value-of select="substring(concat(.,' — '),1,75)"/>
							</xsl:for-each>
							</xsl:variable>
							<!-- Awantika:2017-11-29- Updated for webstar#7047283 -->
							<xsl:variable name="data">
								<xsl:value-of select="replace($text,'\s*-$','')"/>
							</xsl:variable>
							<xsl:value-of select="substring(normalize-space($data),0,string-length(normalize-space($data))-1)"/>
													
						</text>
					</p>
				</bodytext>
			</doc:overview>
		</xsl:when>
		<xsl:when test="not(//level[@leveltype='1']/heading[@align='center']) and //bodytext/p/text">
			<doc:overview type="extracted-overview">
				<bodytext>
					<p>
						<text>
							<xsl:value-of select="//bodytext/p/text"/>
						</text>
					</p>
				</bodytext>
			</doc:overview>
		</xsl:when>
	</xsl:choose>
</xsl:template>
</xsl:stylesheet>