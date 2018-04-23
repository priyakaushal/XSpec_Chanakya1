<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_docinfo.hier-to-LexisAdvance_doc.hier">
		<title><sourcexml>docinfo:hier</sourcexml> to <targetxml>doc:hier</targetxml>
			<lnpid>id-CCCC-10297</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>docinfo:hier</sourcexml> becomes <targetxml>doc:hier</targetxml>, with
					these children: <ul>
						<li><sourcexml>docinfo:hier/docinfo:hierlev</sourcexml> becomes
								<targetxml>doc:hier/doc:hierlev</targetxml>. </li>
						<li><sourcexml>docinfo:hier/docinfo:hierlev/heading</sourcexml> becomes
								<targetxml>doc:hier/doc:hierlev/heading</targetxml>
						</li>
						<li><sourcexml>docinfo:hier/docinfo:hierlev/heading/title</sourcexml>
							becomes <targetxml>doc:hier/doc:hierlev/heading/title</targetxml>
						</li>
					</ul>
					<note>The attribute <sourcexml>@role</sourcexml> is suppressed. The nesting
						level of a <targetxml>doc:hierlev</targetxml> determines its role in the
						hierarchy.</note>
					<note>if <sourcexml>nl</sourcexml> is coming as child of
							<sourcexml>docinfo:hierlev/heading/title</sourcexml> then it should be
						replaced by a white space in the target -<b> Applicable for CA06-CA07 </b>
					</note>
					<note><b> Applicable for CA05-CA08: </b> Attribute
							<sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
						should be converted into attribute
							<targetxml>doc:hier/@includeintoc="false"</targetxml>.</note>
					<note><b>Applicable for CA09:</b>
						<sourcexml>title</sourcexml> may contain <sourcexml>num</sourcexml>.
						Suppress <sourcexml>num</sourcexml> tag but output content. For example:
							<sourcexml>&lt;docinfo:hier&gt;&lt;docinfo:hierlev&gt;&lt;heading&gt;&lt;title&gt;&lt;num&gt;</sourcexml>6F1<sourcexml>&lt;/num&gt;</sourcexml>
						Appellant Form
							(A1)<sourcexml>&lt;/title&gt;&lt;/heading&gt;&lt;/docinfo:hierlev&gt;&lt;/docinfo:hier&gt;</sourcexml>
						becomes
							<targetxml>&lt;doc:hier&gt;&lt;doc:hierlev&gt;&lt;heading&gt;&lt;title&gt;</targetxml>6F1
						Appellant Form
							(A1)<targetxml>&lt;/title&gt;&lt;/heading&gt;&lt;/doc:hierlev&gt;&lt;/doc:hier&gt;</targetxml>
					</note>
					<note>Suppress <sourcexml>inlineobject</sourcexml> if it's found within
							<sourcexml>docinfo:hierlev</sourcexml> element. i.e,
							<sourcexml>/docinfo/docinfo:hier/docinfo:hierlev/docinfo:hierlev/docinfo:hierlev/heading/inlineobject</sourcexml>,
							<sourcexml>/docinfo/docinfo:hier/docinfo:hierlev/docinfo:hierlev/docinfo:hierlev/heading/subtitle/inlineobject</sourcexml>
						and
							<sourcexml>/docinfo/docinfo:hier/docinfo:hierlev/docinfo:hierlev/docinfo:hierlev/heading/title/inlineobject</sourcexml>.</note>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;docinfo:hier&gt; &lt;docinfo:hierlev role="ancestor"&gt;
					&lt;heading&gt; &lt;title&gt;Victoria Acts&lt;/title&gt; &lt;/heading&gt;
					&lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;E&lt;/title&gt; &lt;/heading&gt; &lt;docinfo:hierlev
					role="ancestor"&gt; &lt;heading&gt; &lt;title&gt;EL&lt;/title&gt;
					&lt;/heading&gt; &lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;ELECTRICITY SAFETY ACT 1998&lt;/title&gt; &lt;/heading&gt;
					&lt;docinfo:hierlev role="me"&gt; &lt;heading&gt; &lt;title&gt;ELECTRICITY
					SAFETY ACT 1998�&lt;/title&gt; &lt;/heading&gt; &lt;/docinfo:hierlev&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hier&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;doc:hier&gt; &lt;doc:hierlev&gt; &lt;heading&gt;
					&lt;title&gt;Victoria Acts&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;E&lt;/title&gt; &lt;/heading&gt;
					&lt;doc:hierlev&gt; &lt;heading&gt; &lt;title&gt;EL&lt;/title&gt;
					&lt;/heading&gt; &lt;doc:hierlev&gt; &lt;heading&gt; &lt;title&gt;ELECTRICITY
					SAFETY ACT 1998&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;ELECTRICITY SAFETY ACT 1998�&lt;/title&gt;
					&lt;/heading&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt;
					&lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; &lt;/doc:hier&gt; </codeblock>
			</example>

			<example>
				<title>Source XML <sourcexml>nl</sourcexml> as child of
						<sourcexml>docinfo:hierlev/heading/title</sourcexml></title>
				<codeblock> &lt;docinfo:hier&gt; &lt;docinfo:hierlev role="ancestor"&gt;
					&lt;heading&gt; &lt;title&gt;Young Offenders Act (Canada)&lt;/title&gt;
					&lt;/heading&gt; &lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;RULES OF YOUTH COURT REGULATION&lt;/title&gt; &lt;/heading&gt;
					&lt;docinfo:hierlev role="ancestor"&gt; &lt;heading&gt;
					&lt;title&gt;SCHEDULE&lt;/title&gt; &lt;/heading&gt; &lt;docinfo:hierlev
					role="me"&gt; &lt;heading&gt; &lt;title&gt;ROVINCIAL COURT OF
					ALBERTA&lt;nl/&gt;FORM 100&lt;nl/&gt;IN THE YOUTH DIVISION OF THE PROVINCIAL
					COURT OF ALBERTA&lt;nl/&gt;NOTICE OF APPLICATION &lt;/title&gt; &lt;/heading&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt; &lt;/docinfo:hierlev&gt;
					&lt;/docinfo:hierlev&gt; &lt;/docinfo:hier&gt; </codeblock>
			</example>
			<example>
				<title><b>Target XML</b>
					<sourcexml>nl</sourcexml> as child of
						<sourcexml>docinfo:hierlev/heading/title</sourcexml></title>
				<codeblock> &lt;doc:hier&gt; &lt;doc:hierlev&gt; &lt;heading&gt; &lt;title&gt;Young
					Offenders Act (Canada)&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;RULES OF YOUTH COURT REGULATION&lt;/title&gt;
					&lt;/heading&gt; &lt;doc:hierlev&gt; &lt;heading&gt;
					&lt;title&gt;SCHEDULE&lt;/title&gt; &lt;/heading&gt; &lt;doc:hierlev&gt;
					&lt;heading&gt; &lt;title&gt;ROVINCIAL COURT OF ALBERTA FORM 100 IN THE YOUTH
					DIVISION OF THE PROVINCIAL COURT OF ALBERTA NOTICE OF APPLICATION &lt;/title&gt;
					&lt;/heading&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt;
					&lt;/doc:hierlev&gt; &lt;/doc:hierlev&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-03-25: <ph id="change_20150325_jm">Added note with rule for
							<sourcexml>title/num</sourcexml>. Suppress <sourcexml>num</sourcexml>
						tag but output content. Applicable for CA09 only. RFA 2249.</ph></p>
				<p>2015-01-23: <ph id="change_20150123_SEP">Added note to convert
							<sourcexml>docinfo:hierlev/@exclude-from-displayunits="true"</sourcexml>
						into <targetxml>doc:hier/@includeintoc="false"</targetxml>.</ph> Applicable
					for CA05-CA08, RFA #2141</p>
				<p>2015-01-13: <ph id="change_20150113_SSX">Added a note to repalce
							<sourcexml>nl</sourcexml> to a white space when
							<sourcexml>nl</sourcexml> is coming as child of
							<sourcexml>docinfo:hierlev/heading/title</sourcexml></ph> Applicable for
					CA06-CA07 , RFA #2108</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.hier-LxAdv-doc.hier.dita  -->
	<xsl:variable name="Title_Dpsi_Code_CA05">
		<codes>
			<code key="0U95" value="Statutes"/>
			<code key="0U9A" value="Former Statutes"/>
			<code key="0U9S" value="Statutes"/>
			<code key="0U9V" value="Statutes"/>
			<code key="0U9X" value="Former Statutes"/>
			<code key="0UA4" value="Statutes"/>
			<code key="0UA6" value="Former Statutes"/>
			<code key="0UAN" value="Statutes"/>
			<code key="0UAP" value="Former Statutes"/>
			<code key="0UCM" value="Statutes"/>
			<code key="0UCO" value="Former Statutes"/>
			<code key="0UCV" value="Statutes"/>
			<code key="0UCX" value="Former Statutes"/>
			<code key="0UD9" value="Statutes"/>
			<code key="0UDB" value="Former Statutes"/>
			<code key="0UDF" value="Employment Insurance Statutes"/>
			<code key="0UDL" value="Statutes"/>
			<code key="0UDM" value="Statutes"/>
			<code key="0UDT" value="Employment Standards Statutes"/>
			<code key="0UDV" value="Employment Standards Former Statutes"/>
			<code key="0UEE" value="Statutes"/>
			<code key="0UEF" value="Former Statutes"/>
			<code key="0UFB" value="Human Rights/Equity Issues"/> Statutes"/>
			<code key="0UFD" value="Human Rights/Equity Issues"/> Former Statutes"/>
			<code key="0UFT" value="Statutes"/>
			<code key="0UHJ" value="Statutes"/>
			<code key="0UHL" value="Former Statutes"/>
			<code key="0UI1" value="Labour Relations Statutes"/>
			<code key="0UI3" value="Labour Relations Former Statutes"/>
			<code key="0UJ2" value="Statutes"/>
			<code key="0UJ3" value="Former Statutes"/>
			<code key="0UJ8" value="Statutes"/>
			<code key="0UJ9" value="Former Statutes"/>
			<code key="0UN0" value="Lois"/>
			<code key="0UN5" value="Lois"/>
			<code key="0UNO" value="Lois"/>
			<code key="0UNZ" value="Lois"/>
			<code key="0UOD" value="Lois"/>
			<code key="0UOJ" value="Lois"/>
			<code key="0UOS" value="Lois"/>
			<code key="0UPV" value="Statutes"/>
			<code key="0UPX" value="Former Statutes"/>
			<code key="0US1" value="Former Statutes"/>
			<code key="0US6" value="Lois"/>
			<code key="0USC" value="Archives - Lois"/>
			<code key="0UTB" value="Lois"/>
			<code key="0UVY" value="Acts"/>
			<code key="0USN" value="Former Acts"/>
		</codes>
	</xsl:variable>
	
	<xsl:variable name="Title_Dpsi_Code_CA10">
		<codes>
			<code key="0U91" value="Commentary"/>
			<code key="0U9L" value="Commentary"/>
			<code key="0U9M" value="Commentary"/>
			<code key="0UA0" value="Commentary"/>
			<code key="0UAK" value="Commentary"/>
			<code key="0UB1" value="Employment Insurance Commentary"/>
			<code key="0UCG" value="Commentary"/>
			<code key="0UCI" value="Commentary"/>
			<code key="0UCS" value="Commentary"/>
			<code key="0UDE" value="Editorial Board &amp; Case Comments"/>
			<code key="0UDJ" value="Commentary"/>
			<code key="0UDQ" value="Topical Index to Summaries"/>
			<code key="0UEB" value="Commentary"/>
			<code key="0UFA" value="Human Rights/Equity Issues Commentary"/>
			<code key="0UFQ" value="Commentary"/>
			<code key="0UHE" value="Commentary"/>
			<code key="0UHG" value="Bulletins and Social Security Agreements"/>
			<code key="0UHU" value="Employment Standards Commentary"/>
			<code key="0UHZ" value="Labour Relations Commentary"/>
			<code key="0UJ0" value="Commentary"/>
			<code key="0UJ4" value="Commentary"/>
			<code key="0UMX" value="Commentaires, Index et Abréviations"/>
			<code key="0UN3" value="Commentaires, Index et Abréviations"/>
			<code key="0UNN" value="Commentaires, bibliographies et index"/>
			<code key="0UNY" value="Commentaires, Index et Abréviations"/>
			<code key="0UO5" value="Commentaires, Index et Tables"/>
			<code key="0UOI" value="Commentaires, Index et Abréviations"/>
			<code key="0UOM" value="Modèles de procédures"/>
			<code key="0UOR" value="Commentaires, Index, Abréviations et Adresses"/>
			<code key="0UPT" value="Commentary"/>
			<code key="0US5" value="Équipe de rédaction, tables, grilles et index"/>
			<code key="0USQ" value="Jurisprudence - Annotations de Dubois et Schneider"/>
			<code key="0UTA" value="Commentaires et Indexes"/>
			<code key="0V21" value="MFDA Staff Notices"/>
			<code key="0V2H" value="Montreal Stock Exchange Charter &amp; List of Fees"/>
			<code key="0V5X" value="Quantum of Damages Table"/>
			<code key="0V5Y" value="Code Citator"/>
			<code key="0VNX" value="Securities Commissions"/>
		</codes>
	</xsl:variable>
	
	<xsl:variable name="Title_Dpsi_Code">
		<codes>
			<code key="0U96" value="Regulations"/>
			<code key="0U9B" value="Former Regulations"/>
			<code key="0U9T" value="Regulations"/>
			<code key="0U9W" value="Regulations"/>
			<code key="0U9Y" value="Former Regulations"/>
			<code key="0UA5" value="Regulations"/>
			<code key="0UA7" value="Former Regulations"/>
			<code key="0UAO" value="Regulations"/>
			<code key="0UAQ" value="Former Regulations"/>
			<code key="0UCN" value="Regulations"/>
			<code key="0UCP" value="Former Regulations"/>
			<code key="0UCW" value="Regulations"/>
			<code key="0UCY" value="Former Regulations"/>
			<code key="0UDA" value="Regulations"/>
			<code key="0UDC" value="Former Regulations"/>
			<code key="0UDG" value="Employment Insurance Regulations"/>
			<code key="0UDN" value="Regulations"/>
			<code key="0UDO" value="Regulations"/>
			<code key="0UDU" value="Employment Standards Regulations"/>
			<code key="0UEG" value="Regulations"/>
			<code key="0UEJ" value="Employment Standards Former Regulations"/>
			<code key="0UFC" value="Human Rights/Equity Issues Regulations"/>
			<code key="0UFE" value="Human Rights/Equity Issues Former Regulations"/>
			<code key="0UFU" value="Regulations"/>
			<code key="0UHK" value="Regulations"/>
			<code key="0UHM" value="Former Regulations"/>
			<code key="0UI2" value="Labour Relations Regulations"/>
			<code key="0UI4" value="Labour Relations Former Regulations"/>
			<code key="0UJA" value="Regulations"/>
			<code key="0UJB" value="Former Regulations"/>
			<code key="0UN6" value="Règlements"/>
			<code key="0UNP" value="Règlements"/>
			<code key="0UOE" value="Règlements"/>
			<code key="0UOK" value="Règlements"/>
			<code key="0UOT" value="Règlements"/>
			<code key="0UOV" value="Archives - Règlements"/>
			<code key="0UPW" value="Regulations"/>
			<code key="0UPY" value="Former Regulations"/>
			<code key="0US7" value="Règlements"/>
			<code key="0USD" value="Archives - Règlements"/>
			<code key="0USP" value="Former Regulations"/>
			<code key="0UTC" value="Règlements"/>
			<code key="0UVZ" value="Regulations"/>
			<code key="0VNX" value="Securities Commissions"/>
			<code key="0U98" value="CSA Regulatory Documents"/>
			<code key="0USA" value="Règles de pratique"/>
			<code key="0UW1" value="Codes of Practice"/>
			<code key="0V1Y" value="Universal Market Integrity Rules and Policies"/>
			<code key="0V22" value="MFDA By-laws, Rules and Policies"/>
			<code key="0V24" value="ICE Futures Canada Inc. Rules"/>
			<code key="0V26" value="NASDAQ Marketplace Rules"/>
			<code key="0V28" value="CNSX Rules, Policies and Notices"/>
			<code key="0V2A" value="TSX Rule Book and Policies"/>
			<code key="0V2B" value="TSX Venture Exchange Rules and Policies"/>
			<code key="0V2F" value="NEX Policies"/>
			<code key="0V2I" value="Montreal Stock Exchange Rules, Policies, Guidelines and Fees"/>
			<code key="0U9C" value="Forms"/>
			<code key="0U9R" value="Forms"/>
			<code key="0UAR" value="Forms"/>
			<code key="0UCU" value="Forms"/>
			<code key="0UCZ" value="Forms &amp; Precedents"/>
			<code key="0UDS" value="Employment Standards Forms"/>
			<code key="0UDW" value="Government and Agency Documents"/>
			<code key="0UEH" value="Forms"/>
			<code key="0UHF" value="Government and Agency Documents"/>
			<code key="0UI0" value="Labour Relations Forms"/>
			<code key="0UJC" value="Forms"/>
			<code key="0UOA" value="Formulaires"/>
			<code key="0UQ0" value="Forms"/>
			<code key="0USW" value="Formulaires"/>
			<code key="0V20" value="IIROC &amp; Market Integrity Notices, Guides, and Updates"/>
			<code key="0V23" value="MFDA Forms"/>
			<code key="0V25" value="ICE Futures Canada Inc. Annexes"/>
			<code key="0V29" value="CNSX Forms"/>
			<code key="0V2D"
				value="TSX Venture Exchange Corporate Finance Manual Appendices and Forms"/>
			<code key="0V2G" value="NEX Forms and Appendices"/>
			<code key="0V2J" value="Montreal Stock Exchange Forms"/>
			<!-- CA01 Start		-->
			<code key="0UW2" value="Cases"/>
			<code key="0UXQ" value="Cases"/>
			<code key="0UXS" value="Cases"/>
			<code key="0UXT" value="Summaries (Appeals &amp; Cases)"/>
			<code key="0UXU" value="Cases"/>
			<code key="0UXV" value="Cases"/>
			<code key="0UXW" value="Cases"/>
			<code key="0UXX" value="Cases"/>
			<code key="0UXZ" value="Cases"/>
			<code key="0UY0" value="Cases"/>
			<code key="0UY1" value="Cases"/>
			<code key="0UY3" value="Cases"/>
			<code key="0UY4" value="Jurisprudence - Texte intégraux et résumés archivés"/>
			<code key="0UY6" value="Jurisprudence"/>
			<code key="0UY7" value="Résumés de jurisprudence"/>
			<code key="0UY8" value="Jurisprudence sélectionnée"/>
			<code key="0UY9" value="Jurisprudence - Textes intégraux"/>
			<code key="0UYC" value="Cases"/>
			<code key="0V45" value="Cases"/>
			<code key="0V47" value="Cases"/>
			<code key="0V48" value="Cases"/>
			<code key="0V49" value="Cases"/>
			<!-- CA01 End		-->
		</codes>
	</xsl:variable>

	<xsl:key name="dpsititle" match="*:code" use="string(@key)"/>

	<xsl:template match="docinfo:hier">

		<!--  Original Target XPath:  doc:hier   -->
		<doc:hier>
			<xsl:if test="$streamID = ('CA05', 'CA06', 'CA07', 'CA08')">
				<xsl:if test="child::docinfo:hierlev/@exclude-from-displayunits = 'true'">
					<xsl:attribute name="includeintoc">
						<xsl:text>false</xsl:text>
					</xsl:attribute>
				</xsl:if>
			</xsl:if>
			<!--  @SBy:  process the first descendant docinfo:hierlev/@exclude-from-displayunits where that attribute is true.  So if this attribute appears on any docinfo:hierlev and is true, then @includeintoc will be set to false  -->
			<!-- UK06 Requires indicators of first and last  -->
			<xsl:if test="$streamID = ('UK06','UK07')">
				<proc:processinginfo>
					<xsl:attribute name="process">LAToCBuilder</xsl:attribute>
					<xsl:choose>
						<xsl:when test="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='is-first-document-in-enactment'] = 'true'">
							<proc:param name="firstLegisItem" value="true"/>
						</xsl:when>
						<xsl:otherwise>
							<proc:param name="firstLegisItem" value="false"/>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:choose>
						<xsl:when test="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='is-last-document-in-enactment'] = 'true'">
							<proc:param name="lastLegisItem" value="true"/>
						</xsl:when>
						<xsl:otherwise>
							<proc:param name="lastLegisItem" value="false"/>
						</xsl:otherwise>
					</xsl:choose>
				</proc:processinginfo>
			</xsl:if>
			<!--			<xsl:if test=" $streamID = ( 'CA06' , 'CA07' , 'CA08' ) ">
				<xsl:apply-templates select="descendant::docinfo:hierlev[ @exclude-from-displayunits = 'true' ][1]/@exclude-from-displayunits"/>
			</xsl:if>-->
			
			<xsl:apply-templates select="@* | node()"/>
		</doc:hier>

	</xsl:template>

	<!-- @Vikas Gupta: Template to match the docinfo:hier for the $streamID ='CA06','CA07','CA08' 	-->
	<xsl:template match="docinfo:hier[$streamID = ('CA05','CA06', 'CA07', 'CA08', 'CA10')]">
		<!--  Original Target XPath:  doc:hier   -->
		<xsl:variable name="dpsi_value">
			<xsl:value-of select="//docinfo:custom-metafield[@name = 'dpsi']"/>
		</xsl:variable>
		<xsl:variable name="dpsi_value_CA10">
			<xsl:value-of select="substring(/COMMENTARYDOC/docinfo/docinfo:doc-id,1,4)"/>
		</xsl:variable>
		<doc:hier>
			<!--  @SBy:  process the first descendant docinfo:hierlev/@exclude-from-displayunits where that attribute is true.  So if this attribute appears on any docinfo:hierlev and is true, then @includeintoc will be set to false  -->
			<xsl:choose>
				<xsl:when test="($dpsi_value = $Title_Dpsi_Code//@key) and $streamID!=('CA06', 'CA07', 'CA08')">
					<doc:hierlev>
						<heading>
							<title>
								<xsl:value-of
									select="key('dpsititle', //docinfo:custom-metafield[@name = 'dpsi'], $Title_Dpsi_Code)/@value"
								/>
							</title>
						</heading>
						<xsl:apply-templates
							select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
						<xsl:apply-templates select="@* | node()"/>
					</doc:hierlev>
				</xsl:when>
				<xsl:when test="($dpsi_value = $Title_Dpsi_Code_CA05//@key) and $streamID='CA05'">
					<doc:hierlev>
						<heading>
							<title>
								<xsl:value-of
									select="key('dpsititle', //docinfo:custom-metafield[@name = 'dpsi'], $Title_Dpsi_Code_CA05)/@value"
								/>
							</title>
						</heading>
						<xsl:apply-templates
							select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
						<xsl:apply-templates select="@* | node()"/>
					</doc:hierlev>
				</xsl:when>
				<xsl:when test="($dpsi_value = $Title_Dpsi_Code_CA10//@key or $dpsi_value_CA10=$Title_Dpsi_Code_CA10//@key) and $streamID='CA10'">
					<doc:hierlev>
						<heading>
							<title>
								<xsl:value-of
									select="key('dpsititle', substring(/COMMENTARYDOC/docinfo/docinfo:doc-id,1,4), $Title_Dpsi_Code_CA10)/@value"
								/>
							</title>
						</heading>
						<xsl:apply-templates
							select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
						<xsl:apply-templates select="@* | node()"/>
					</doc:hierlev>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates
						select="descendant::docinfo:hierlev[@exclude-from-displayunits = 'true'][1]/@exclude-from-displayunits"/>
					<xsl:apply-templates select="@* | node()"/>
				</xsl:otherwise>
			</xsl:choose>
		</doc:hier>
	</xsl:template>

	<!-- @Vikas Rohilla: Template to match the docinfo:hier for the $streamID ='CA01' 	-->
	<xsl:template match="docinfo:hier[$streamID = 'CA01']">
		<xsl:variable name="dpsi_value">
			<xsl:value-of select="$dpsi"/>
		</xsl:variable>
		<doc:hier>
			<xsl:choose>
				<xsl:when test="$dpsi_value = $Title_Dpsi_Code//@key">
					<doc:hierlev>
						<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<title>
								<xsl:value-of
									select="key('dpsititle', $dpsi_value, $Title_Dpsi_Code)/@value"
								/>
							</title>
						</heading>
						<xsl:apply-templates select="node() | @*"/>
					</doc:hierlev>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="node() | @*"/>
				</xsl:otherwise>
			</xsl:choose>
		</doc:hier>
	</xsl:template>

	<xsl:template match="docinfo:hier[$streamID = 'CA09']">
		<xsl:variable name="dpsi_value">
			<xsl:value-of select="$dpsi"/>
		</xsl:variable>
		<doc:hier>
			<xsl:choose>
				<xsl:when test="$dpsi_value = $Title_Dpsi_Code//@key">
					<doc:hierlev>
						<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<title>
								<xsl:value-of
									select="key('dpsititle', $dpsi_value, $Title_Dpsi_Code)/@value"
								/>
							</title>
						</heading>
						<xsl:apply-templates select="@* | node()"/>
					</doc:hierlev>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="@* | node()"/>
				</xsl:otherwise>
			</xsl:choose>
		</doc:hier>
	</xsl:template>

	<xsl:template match="docinfo:hierlev">

		<!--  Original Target XPath:  doc:hier/doc:hierlev   -->
		<doc:hierlev>
			<!--  @SBy:  @exclude-from-displayunits already taken care of in creating doc:hier/@includeintoc   -->
			<xsl:apply-templates select="@* except @exclude-from-displayunits"/>
			<xsl:apply-templates select="node()"/>
			<xsl:apply-templates select="following-sibling::*[1][self::docinfo:hierlev]" mode="hierlevSibling"/>
		</doc:hierlev>

	</xsl:template>
	
	<xsl:template match="docinfo:hierlev[preceding-sibling::docinfo:hierlev]" mode="hierlevSibling">
		<doc:hierlev>
			<xsl:apply-templates select="@* except @exclude-from-displayunits"/>
			<xsl:apply-templates select="node()"/>
			<xsl:apply-templates select="*[1][self::docinfo:hierlev]" mode="hierlevSibling"/>
		</doc:hierlev>
	</xsl:template>
	
	<xsl:template match="docinfo:hierlev[preceding-sibling::docinfo:hierlev]"/>

	<!-- Sudhanshu Srivastava : Handling attribute @display-name for UK06 -->

	<xsl:template match="docinfo:hierlev/@display-name[$streamID = ('UK06','UK07')]">
		<xsl:if test=". = 'act'">
			<xsl:attribute name="leveltype" select="'act'"/>
		</xsl:if>
		<xsl:if test=". = 'SI'">
			<xsl:attribute name="leveltype" select="'instrument'"/>
		</xsl:if>
		<xsl:if test=". = 'measure'">
			<xsl:attribute name="leveltype" select="'measure'"/>
		</xsl:if>
	</xsl:template>



	<!--			***		@SBy:  These requirements are covered via other modules:      ***

			<li><sourcexml>docinfo:hier/docinfo:hierlev/heading</sourcexml> becomes
					<targetxml>doc:hier/doc:hierlev/heading</targetxml>
			</li>
			<li><sourcexml>docinfo:hier/docinfo:hierlev/heading/title</sourcexml> becomes
					<targetxml>doc:hier/doc:hierlev/heading/title</targetxml>
			</li>  
	-->

	<xsl:template match="docinfo:hierlev/@role"/>

	<xsl:template match="docinfo:hierlev/heading/title/nl[$streamID = ('CA06', 'CA07')]">
		<!--  @SBy:  note that otherwise nl will become proc:nl which is permitted within title   -->

		<xsl:text> </xsl:text>

	</xsl:template>

	<xsl:template match="docinfo:hierlev/@exclude-from-displayunits[. = 'true']">

		<!--  Original Target XPath:  doc:hier/@includeintoc="false"   -->
		<xsl:attribute name="includeintoc" select="'false'"/>

	</xsl:template>
	<!--xsl:template match="docinfo:hierlev/@exclude-from-displayunits[ . != 'true' ]"/-->

	<xsl:template match="docinfo:hierlev/heading/title/num[$streamID = 'CA09']">
		<!--  @SBy:  note that otherwise num will become num which is permitted within title   -->

		<!--  Original Target XPath:  doc:hierdoc:hierlevheadingtitle   -->
		<xsl:apply-templates select="@* | node()"/>

	</xsl:template>

	<!-- Sudhanshu Srivastava: create template for handling docinfo:hierlev for CA13. -->
	<xsl:template match="docinfo:hierlev[$streamID = 'CA13']/heading">
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</heading>
	</xsl:template>
	<xsl:template match="docinfo:hierlev[$streamID = 'CA13']/heading/title">
		<title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</title>
	</xsl:template>

	<xsl:template match="inlineobject[ancestor::docinfo:hierlev]"/>

</xsl:stylesheet>
