<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA08_document.highlights">
    <title>Document Highlights become doc:overview <lnpid>id-CA08-14230</lnpid></title>
  <body>
    <section>
		<p>Up to 75 words (any PCDATA text separated by space, punctuation, or newline) shall be extracted, to become <targetxml>doc:metadata/doc:docinfo/doc:overview[@type="extracted-overview"]/bodytext/p/text</targetxml>, as follows:</p>

		<p> <b>Scenario 1 - Extract from:</b> marginal notes, i.e. 
			<!--<targetxml>//marginnote[@notetype="reference"]/bodytext/p/text[1]</targetxml>-->
			<sourcexml>leg:marginal-note</sourcexml> (any descendant PCDATA).</p>
		<p>	(See related instruction <xref href="leg.marginal-note.dita">here</xref>.)  </p>

		<p> <note>For each individual marginal-note, if there are multiple child elements having the same name, only the first one should be used. For those documents with multiple marginal-note, the results should be concatenated together separated by EM DASH —, up to 75 total words.</note></p>

		<p> OR <b>Scenario 2</b> - For those source documents where there are no 
			<!--<targetxml>marginnote[@notetype="reference"]</targetxml>-->
			<sourcexml>leg:marginal-note</sourcexml>:
		</p>

		<p> Then <b>Extract from:</b> leg:longtitle (synopsis body text), i.e. 
			<!--<targetxml>/legis:body/primlaw:prelim/primlaw:synopsis/bodytext/p/text[1]</targetxml>-->
			<sourcexml>leg:info/leg:longtitle/p</sourcexml> (any descendant PCDATA).</p>
		<p>	(See related instruction <xref href="leg.longtitle.dita">here</xref>.)  </p>

		<p> <note>For each individual leg:longtitle, if there are multiple <sourcexml>p</sourcexml> elements, only the first one should be used. The result should be limited to 75 total words.</note></p>

		<p> OR <b>Scenario 3</b> - Where <sourcexml>leg:longtitle</sourcexml> also does not exist:</p>

		<p> Then <b>Extract from:</b> unclassified body text, i.e. 
			<!--<targetxml>/legis:body//primlaw:level[@leveltype="unclassified"]/primlaw:bodytext/p/text[1]</targetxml>-->
			<sourcexml>leg:levelbody/leg:bodytext/p</sourcexml> (any descendant PCDATA).</p>
		<p>(See related instruction <xref href="leg.levelbody.dita">here</xref>.)  </p>

		<p> <note>For each individual leg:bodytext, if there are multiple <sourcexml>p</sourcexml> elements, only the first one should be used.</note></p>

    </section>
    <example>
            <title>Scenario 1 - Mapping of Document Highlights from marginal notes</title>
            <codeblock>

...
&lt;leg:marginal-note&gt;Definitions&lt;/leg:marginal-note&gt;
	...
&lt;leg:marginal-note&gt;"Agency"&lt;/leg:marginal-note&gt;
	...
&lt;leg:marginal-note&gt;"bonded warehouse"&lt;/leg:marginal-note&gt;
	...
&lt;leg:marginal-note&gt;"CCFTA"&lt;/leg:marginal-note&gt;
	...
&lt;leg:marginal-note&gt;"CCRFTA"&lt;/leg:marginal-note&gt;
	...
 &lt;leg:marginal-note&gt;"Certificate of Origin"&lt;/leg:marginal-note&gt;
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
					&lt;text&gt;Definitions — "Agency" — "bonded warehouse" — "CCFTA" — "CCRFTA" — "Certificate of Origin" — "Chile" — "CIFTA" — "Commissioner" — "conveyance" — "Costa Rica" — "courier" — "customs office" — "data" — "designated goods" — "duties" — "duty free shop" — "export" — "forfeit" — "free trade agreement" — "free trade partner" — "goods"
		— "import" — "imported from Israel or another CIFTA beneficiary" — "inland waters" — "Israel or another CIFTA beneficiary" — "licensed user" — "mail" — "Minister" — "NAFTA" — "NAFTA country" — "officer" — "person" — "preferential tariff treatment under CCFTA" — "preferential tariff treatment under CCRFTA" — "preferential tariff treatment under CIFTA" — "preferential tariff&lt;/text&gt;
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
            <title>Scenario 2 - Mapping of Document Highlights from <sourcexml>leg:longtitle</sourcexml> </title>
            <codeblock>

&lt;leg:longtitle&gt;
	&lt;p&gt;
		&lt;text&gt; An Act relating to the accounting of certain payments for the servicing and reduction of the debt of Canada&lt;/text&gt;
	&lt;/p&gt;
&lt;/leg:longtitle&gt;

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
					&lt;text&gt;An Act relating to the accounting of certain payments for the servicing and reduction of the debt of Canada&lt;/text&gt;
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
            <title>Scenario 3 - Mapping of Document Highlights from <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
            <codeblock>

&lt;leg:level-vrnt leveltype="2" searchtype="LEGISLATION"&gt;
   &lt;leg:levelbody&gt;
		&lt;leg:bodytext&gt;
			 &lt;p&gt;
				  &lt;text&gt;
				  &lt;verbatim verbatimclass="verbatim"&gt;CHAPTER
				  I&lt;nl/&gt;&lt;nl/&gt; MEASURES COVERED BY THIS
				  SCHEDULE&lt;nl/&gt;&lt;nl/&gt; 1.1. Investissement Québec
				  administers the sectoral parameters of the&lt;nl/&gt;
				  following fiscal measures:&lt;nl/&gt;&lt;nl/&gt; (1) the
				  deduction in respect of a foreign specialist
				  working in the Montréal&lt;nl/&gt; international trade
				  zone at Mirabel provided for in sections 737.18.6
				  to&lt;nl/&gt; 737.18.7.3, 737.18.9 to 737.18.10.1 and
				  737.18.13 of the Taxation Act (chapter&lt;nl/&gt;
				  I-3);&lt;nl/&gt;&lt;nl/&gt; (2) the deduction in respect of
				  manufacturing or processing businesses in the&lt;nl/&gt;
				  resource regions provided for in sections
				  737.18.18 to 737.18.26 and 1138.2.3&lt;nl/&gt; of the
				  Taxation Act and sections 33, 34 and 34.1.0.1 of
				  the Act respecting the&lt;nl/&gt; Régie de l'assurance
				  maladie du Québec (chapter R-5);&lt;nl/&gt;&lt;nl/&gt; (3) the
				  deduction in respect of a foreign specialist in
				  respect of the new&lt;nl/&gt; economy provided for in
				  sections 737.22.0.1 to 737.22.0.4 of the Taxation
				  Act;&lt;nl/&gt;&lt;nl/&gt; (4) the tax credit for multimedia
				  titles (general) provided for in sections&lt;nl/&gt;
				  1029.8.36.0.3.8 to 1029.8.36.0.3.17 of the
				  Taxation Act;&lt;nl/&gt;&lt;nl/&gt; (5) the tax credit for
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
					&lt;text&gt;CHAPTER I MEASURES COVERED BY THIS SCHEDULE 1.1. Investissement Québec administers the sectoral parameters of the following fiscal measures: (1) the deduction in respect of a foreign specialist working in the Montréal international trade zone at Mirabel provided for in sections 737.18.6 to 737.18.7.3, 737.18.9 to 737.18.10.1 and 737.18.13 of the Taxation Act (chapter I-3); (2) the deduction in respect of manufacturing or processing businesses in the resource regions provided for in sections 737.18.18 to&lt;/text&gt;
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
			<p>2015-03-25: <ph id="change_20150325_SEP">Provide clarifications for text() PCDATA descendants and multiple child elements. Phase 5 RFA #204.</ph></p>
			<p>2015-03-24: <ph id="change_20150324_SEP">Updated target XPATH to include <targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</ph></p>
            <p>2015-03-12: <ph id="change_20150312_SEP">Created. R4.5 RFA #2220.</ph></p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\document.highlights-to-doc.overview.dita  -->
<!--	<xsl:message>CA08-Constitutions_document.highlights-to-doc.overview.xsl requires manual development!</xsl:message> 
-->
	
	<xsl:template match="leg:body" mode="metadata">
		
		<doc:overview type="extracted-overview">
			<bodytext>
				<p>
					<text>
						<!--<xsl:variable name="note">-->
						<xsl:choose>
							<xsl:when test="descendant::leg:marginal-note">
								<xsl:for-each select="descendant::leg:marginal-note">
									<xsl:apply-templates select="leg:marginal-note" mode="upto_75_words"/>
									<xsl:value-of select="concat(., ' - ')"/>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="descendant::leg:bodytext[1]/p[1]"/>
							</xsl:otherwise>
						</xsl:choose>
					</text>
				</p>
			</bodytext>
		</doc:overview>
		
		
	</xsl:template>
	
	<xsl:template match="leg:marginal-note" mode="upto_75_words">
		
		<xsl:variable name="stringList" select="tokenize(normalize-space(.), ' ')"/>
		
		<xsl:for-each select="$stringList">
			<xsl:if test="position() &lt; 76">
				
				<xsl:value-of select="concat(., ' ')"/>
				
			</xsl:if>
		</xsl:for-each>
		
	</xsl:template>
	
	
</xsl:stylesheet>