<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
	exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance-Introduction">
		<title>Introduction <lnpid>id-CCCC-10185</lnpid></title>
		<body>
			<section>
				<title>This Conversion Instruction describes the conversion of Practical Guidance documents using commentarydoc standard DTD format to the current version of the Seclaw Production
					schema in the document.</title>
			</section>

			<section>
				<title>The following is a top level mapping description of the three required child elements of the seclaw:seclaw root element.</title>

				<p>
					<sourcexml>/COMMENTARYDOC</sourcexml> becomes <targetxml>/seclaw:seclaw</targetxml> is a root element for Commentary, Form and Precedent. And attributes are populated as follows: <ul>
						<li>Create <targetxml>/seclaw:seclaw[@seclawtype]</targetxml> and values are tokenized for attribute <targetxml>@seclawtype</targetxml>. <note>seclaw:seclaw[@seclawtype]
								corresponding attribute value is not used in Rosetta markup, the LBU recommend that the CI instruct conversion to look for the first level@leveltype and map that value.
								If the value is "form*" or "prec*" then output the @seclawtype type as "form" or "precedent" respectively. Any other value should default to "commentary".</note> For AU
							data: rules are listed below to define <targetxml>seclaw:seclaw[@seclawtype]</targetxml> in NewLexis conversion: <ul>
								<li>If first <sourcexml>level[@leveltype="prec"]</sourcexml> or <sourcexml>level[@leveltype="prec.grp"]</sourcexml> then create
										<targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>.</li>
								<li>If first <sourcexml>level[@leveltype="comm.chap"]</sourcexml> and nested level is <sourcexml>level[@leveltype="prec"]</sourcexml> or
										<sourcexml>level[@leveltype="prec.grp"]</sourcexml> then create <targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>.</li>
								<li>If first <sourcexml>level[@leveltype="form"]</sourcexml> or <sourcexml>level[@leveltype="form.grp"]</sourcexml> then create
										<targetxml>seclaw:seclaw[@seclawtype="form"]</targetxml>.</li>
								<li>If rule 1-3 in listed above are not true then create <targetxml>seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
							</ul>
						</li>
					</ul>
				</p>

				<p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as require children of
						<targetxml>seclaw:seclaw</targetxml>
				</p>
				<note><sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion in NewLexis expect for JCITE markup.</note>

				<note>NewLexis schema does not allow white space in attribute values that provide a unique identifier for that element. If white space is encountered in the source attribute value then
					it should be replaced with an underscore character(_). The attribute value must also be unique in a document.</note>

			</section>

			<section>
				<title>Notes</title>
				<p>Source elements and attributes are highlighted like this: <sourcexml>sourcexml</sourcexml></p>
				<p>Target elements and attributes are highlighted like this: <targetxml>targetxml</targetxml></p>
				<p>Verify content of following target attributes: <ul>
						<li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
								<li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>
								<li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
					</ul>
					<note>If a day or month is only one digit, it should be padded with a leading 0 to make it two digits.</note>
				</p>
			</section>
		</body>


	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LPA-PracticalGuidance_Introduction.dita  -->

	<xsl:variable name="firstLevelLevelType" select="/COMMENTARYDOC/comm:body/level[1]/@leveltype"/>
	<xsl:variable name="selectortype" select="/COMMENTARYDOC/docinfo/docinfo:selector"/>

	<xsl:template match="/COMMENTARYDOC/@version"/>
	
	<xsl:template match="/COMMENTARYDOC">

<!--		<xsl:comment> *************** need to remove this, for validation onnly 
            </xsl:comment>
		<xsl:text disable-output-escaping="yes"><![CDATA[	<?xml-model href="../../../../../../../Cortez/schema_modeling/sharedservices/lexisadvance/rootschemas/seclaw/sch_seclaw.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
]]></xsl:text>
-->

		<!--  Original Target XPath:  /seclaw:seclaw   -->
		<seclaw:seclaw>
			<xsl:call-template name="generateNSGlobalBindings"/>
<!--			<xsl:for-each select="in-scope-prefixes($lexisAdvanceNamespaces)">
				<xsl:namespace name="{ . }" select="namespace-uri-for-prefix(., $lexisAdvanceNamespaces)"/>
			</xsl:for-each>
-->			<!--
		    <xsl:attribute name="xsi:schemaLocation" select="'http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/ sch_courtrule.xsd'"
		        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
		        -->
			<xsl:apply-templates select="@*"/>
			<xsl:call-template name="xml_lang"/>
			<xsl:call-template name="seclawtype"/>

			<seclaw:head>
				<ref:citations>
					<ref:cite4thisresource>
						<lnci:cite type="book">
							<lnci:content>Citation TBD</lnci:content>
						</lnci:cite>
					</ref:cite4thisresource>
				</ref:citations>
			</seclaw:head>
			<xsl:apply-templates select="comm:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</seclaw:seclaw>

	</xsl:template>


	<xsl:template match="COMMENTARYDOC/@id">

		<!--  Original Target XPath:  courtrule:courtrule[@xml:id]   -->
		<xsl:attribute name="xml:id" select="."/>

	</xsl:template>

	<xsl:template match="COMMENTARYDOC/@searchtype"/>

	<!--	<xsl:template match="LEGDOC[not(@legtype)]|LEGDOC[not(@legtype='court-rules') and not(@legtype='regulations')]">
		<xsl:call-template name="outputErrorMessage">
			<xsl:with-param name="messageText">no @legtype or @legtype value not 'court-rules' nor 'regulations': <xsl:value-of select="name(.)"/></xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="LEGDOC/@legtype"/>
-->


	<xsl:template name="seclawtype">
		<xsl:attribute name="seclawtype">
			<xsl:choose>
				<xsl:when test="$firstLevelLevelType = 'landingpage'">practicalguidance</xsl:when>
				<xsl:when test="$firstLevelLevelType = 'prec' or $firstLevelLevelType = 'prec.grp'">precedent</xsl:when>
<!--				<xsl:when test="$firstLevelLevelType = 'comm.chap' and parent::level[level[@leveltype='prec'] or level[@leveltype='prec.grp']]">precedent</xsl:when>
-->				<xsl:when test="$firstLevelLevelType = 'form' or $firstLevelLevelType = 'form.grp'">form</xsl:when>
				<xsl:when test="$selectortype='COMMENTARY' or $selectortype='Excerpts' or $selectortype='Guidance' or $selectortype='Overview' or $selectortype='Checklist'">practicalguidance</xsl:when>
				<xsl:when test="$selectortype='Forms'">form</xsl:when>
				<xsl:when test="$selectortype='FormsAndPrecedents - Precedent'">precedent</xsl:when>
				<xsl:when test="$selectortype='FormsAndPrecedents - DraftingNote'">form</xsl:when>
				<xsl:when test="$selectortype='TopicTree - LandingPage'">practicalguidance</xsl:when>
				<xsl:otherwise>commentary</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>
	<xsl:template match="@searchtype"/>


	
	<!-- WPK added 2017-10-24.  unhandled xpath.  -->

	<xsl:template match="remotelink/@text"/>
	
</xsl:stylesheet>
