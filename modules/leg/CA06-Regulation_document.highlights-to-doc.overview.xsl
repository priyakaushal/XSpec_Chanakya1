<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA06_document.highlights">
		<title>Document Highlights become doc:overview <lnpid>id-CA06-13834</lnpid></title>
		<body>
			<section>
				<p>Up to 75 words (any PCDATA text separated by space, punctuation, or newline)
					shall be extracted, to become
						<targetxml>doc:metadata/doc:docinfo/doc:overview[@type="extracted-overview"]/bodytext/p/text</targetxml>,
					as follows:</p>

				<p>
					<b>Scenario 1 - Extract from:</b> marginal notes, i.e. <!--<targetxml>//marginnote[@notetype="reference"]/bodytext/p/text[1]</targetxml>-->
					<sourcexml>leg:marginal-note</sourcexml> (any descendant PCDATA).</p>
				<p> (See related instruction <xref href="leg.marginal-note.dita">here</xref>.) </p>

				<p>
					<note>For those documents with multiple marginal-note, the results should be
						concatenated together separated by EM DASH —, up to 75 total words.</note>
				</p>

				<p> OR <b>Scenario 2</b> - Where <sourcexml>leg:marginal-note</sourcexml>does not
					exist:</p>

				<p> Then <b>Extract from:</b> unclassified body text, i.e. <!--<targetxml>/regulation:body//primlaw:level[@leveltype="unclassified"]/primlaw:bodytext/p/text[1]</targetxml>-->
					<sourcexml>leg:levelbody/leg:bodytext/p</sourcexml> (any descendant PCDATA)
					.</p>
				<p>(See related instruction <xref href="leg.levelbody.dita">here</xref>.) </p>


				<p>
					<note>For each individual leg:bodytext, if there are multiple
							<sourcexml>p</sourcexml> elements, only the first one should be
						used.</note>
				</p>

			</section>
			<example>
				<title>Scenario 1 - Mapping of Document Highlights from marginal notes</title>
				<codeblock> ... &lt;leg:marginal-note&gt;Assistance at major
					operations&lt;/leg:marginal-note&gt; ...
					&lt;leg:marginal-note&gt;"Agency"&lt;/leg:marginal-note&gt; ... </codeblock>
				<b>becomes</b>
				<codeblock> &lt;doc:metadata&gt; ... &lt;doc:docinfo&gt; ... &lt;doc:overview
					type="extracted-overview"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Assistance
					at major operations — "Agency"&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
					&lt;/doc:overview&gt; ... &lt;/doc:docinfo&gt; ... &lt;/doc:metadata&gt;
				</codeblock>
			</example>
			<example>
				<title>Scenario 2 - Mapping of Document Highlights from
						<sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
				<codeblock> &lt;leg:level-vrnt leveltype="2" searchtype="LEGISLATION"&gt;
					&lt;leg:heading align="center"&gt; &lt;title align="center"&gt;PART
					1&lt;/title&gt; &lt;/leg:heading&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt;
					&lt;p&gt; &lt;text&gt;The wildlife management units described in this Part do
					not include any lands described as wildlife management units in Part 2 of this
					Schedule.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;1 Pakowki Wildlife
					Management Unit (102)&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Commencing
					at the junction of highway 61 and secondary road 885 at Etzikom; thence easterly
					and southerly along highway 61 to secondary road 889; thence southerly along
					secondary road 889 to secondary road 501 (Red Coat trail); thence easterly along
					secondary road 501 to the Alberta-Saskatchewan boundary; thence southerly along
					the Alberta-Saskatchewan boundary to the Alberta-Montana boundary; thence
					westerly along the Alberta-Montana boundary to secondary road 880; thence
					northerly along secondary road 880 to secondary road 501; thence easterly along
					secondary road 501 to secondary road 885; thence northerly along secondary road
					885 to the point of commencement.&lt;/text&gt; &lt;/p&gt; ... </codeblock>
				<b>becomes</b>
				<codeblock> &lt;doc:metadata&gt; ... &lt;doc:docinfo&gt; ... &lt;doc:overview
					type="extracted-overview"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;The
					wildlife management units described in this Part do not include any lands
					described as wildlife management units in Part 2 of this Schedule.&lt;/text&gt;
					&lt;/p&gt; &lt;/bodytext&gt; &lt;/doc:overview&gt; ... &lt;/doc:docinfo&gt; ...
					&lt;/doc:metadata&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-03-25: <ph id="change_20150325_SEP">Provide clarifications for text() PCDATA
						descendants and multiple child elements. Phase 5 RFA #204.</ph></p>
				<p>2015-03-24: <ph id="change_20150324_SEP">Updated target XPATH to include
							<targetxml>bodytext/p/text</targetxml>. R4.5 RFA #2220.</ph></p>
				<p>2015-03-18: <ph id="change_20150318_SEP">Created. R4.5 RFA #2220.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\document.highlights-to-doc.overview.dita  -->
	<!--<xsl:message>CA06-Regulation_document.highlights-to-doc.overview.xsl requires manual development!</xsl:message> -->

	<!--<xsl:template match="leg:marginal-note" mode="metadata">

		<xsl:value-of select="concat(.,' - ')"/>

	</xsl:template>-->


	<xsl:template match="leg:body[child::leg:level]" mode="metadata">

		<doc:overview type="extracted-overview">
			<bodytext>
				<p>
					<text>
						<!--<xsl:variable name="note">-->
						<xsl:choose>
							<xsl:when test="descendant::leg:marginal-note">
								<xsl:variable name="Concat_text">
									<xsl:for-each select="descendant::leg:marginal-note">
										<xsl:value-of select="./text()"/>
										<xsl:text>— </xsl:text>
									</xsl:for-each>
								</xsl:variable>
								<xsl:variable name="concat_string_list" select="tokenize(normalize-space($Concat_text), ' ')"/>
								
								<xsl:for-each select="$concat_string_list">
									<xsl:if test="position() &lt; 79">
										<xsl:value-of select="replace(concat(., ' '),'\s*-$','')"/>
									</xsl:if>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<xsl:choose>
									<xsl:when test="descendant::leg:bodytext[1]/p[1]">
										<xsl:value-of select="descendant::leg:bodytext[1]/p[1]"/>										
									</xsl:when>
									<xsl:otherwise>
										<xsl:comment>No direct para markup comes under leg:bodytext in source.</xsl:comment>
									</xsl:otherwise>
								</xsl:choose>

							</xsl:otherwise>
						</xsl:choose>
					</text>
				</p>
			</bodytext>
		</doc:overview>


	</xsl:template>
	
	<xsl:template match="docinfo:custom-metafield[@name = 'act-id']" mode="membership">
		<doc:membership>
			<ref:groupid group-type="leg-id-1">
				<ref:resourceid>
					<xsl:attribute name="ref:resourcekey">
						<xsl:text>urn:leg-id-1:</xsl:text>
						<xsl:choose>
							<xsl:when test="contains(.,',')"/>
							<xsl:otherwise>
								<xsl:value-of select="."/>
							</xsl:otherwise>
						</xsl:choose>						
					</xsl:attribute>
				</ref:resourceid>
			</ref:groupid>
		</doc:membership>
	</xsl:template>
	
<!--	<xsl:template match="leg:marginal-note" mode="upto_75_words">
		
		<xsl:variable name="stringList" select="tokenize(normalize-space(.), ' ')"/>
		
		<xsl:for-each select="$stringList">
			<xsl:if test="position() &lt; 76">
				
				<xsl:value-of select="concat(., ' ')"/>
				
			</xsl:if>
		</xsl:for-each>
		
	</xsl:template>-->
	

</xsl:stylesheet>
