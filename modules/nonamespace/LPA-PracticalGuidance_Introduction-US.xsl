<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="LPA-PracticalGuidance-Body">
		<title>Introduction <lnpid>id-USPA-31028</lnpid></title>
		<body>
			<section>
				<title>This Conversion Instruction describes the conversion of Practical Guidance
					documents using commentarydoc standard DTD format to the current version of the
					Seclaw Production schema in the document.</title>
				<p>2012-05-11 - MLV - modified note below describing handling for id attributes in
					NL.</p>

			</section>

			<section>
				<title>The following is a top level mapping description of the three required child
					elements of the seclaw:seclaw root element.</title>

				<p>
					<sourcexml>/COMMENTARYDOC</sourcexml> becomes
						<targetxml>/seclaw:seclaw</targetxml> is a root element for Commentary, Form
					and Precedent. And attributes are populated as follows: <ul>
						<li>Create <targetxml>/seclaw:seclaw[@seclawtype]</targetxml> and values are
							tokenized for attribute <targetxml>@seclawtype</targetxml>.
								<note>seclaw:seclaw[@seclawtype] corresponding attribute value is
								not used in Rosetta markup, the LBU recommend that the CI instruct
								conversion to look for the first level@leveltype and map that value.
								If the value is "form*" or "prec*" then output the @seclawtype type
								as "form" or "precedent" respectively. Any other value should
								default to "commentary".</note> For US data: rules are listed below
							to define <targetxml>seclaw:seclaw[@seclawtype]</targetxml> in NewLexis
							conversion: <ul>
								<li>If first <sourcexml>level[@leveltype="prec"]</sourcexml> or
										<sourcexml>level[@leveltype="prec.grp"]</sourcexml> then
									create
										<targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>.</li>
								<li>If first <sourcexml>level[@leveltype="comm.chap"]</sourcexml>
									and nested level is
										<sourcexml>level[@leveltype="prec"]</sourcexml> or
										<sourcexml>level[@leveltype="prec.grp"]</sourcexml> then
									create
										<targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>.</li>
								<li>If first <sourcexml>level[@leveltype="form"]</sourcexml> or
										<sourcexml>level[@leveltype="form.grp"]</sourcexml> then
									create
									<targetxml>seclaw:seclaw[@seclawtype="form"]</targetxml>.</li>
								<li>If rule 1-3 in listed above are not true then create
										<targetxml>seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
							</ul>
						</li>
					</ul>
				</p>

				<p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
						<targetxml>doc:metadata</targetxml> are created as require children of
						<targetxml>seclaw:seclaw</targetxml>
				</p>
				<note><sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion
					in NewLexis expect for JCITE markup.</note>

				<note>NewLexis schema does not allow white space in attribute values that provide a
					unique identifier for that element. If white space is encountered in the source
					attribute value then it should be replaced with an underscore character(_). The
					attribute value must also be unique in a document.</note>

			</section>

			<section>
				<title>Notes</title>
				<p>Source elements and attributes are highlighted like this:
						<sourcexml>sourcexml</sourcexml></p>
				<p>Target elements and attributes are highlighted like this:
						<targetxml>targetxml</targetxml></p>
				<p>Verify content of following target attributes: <ul>
						<li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
							between 01-12. Any numbers outside this range, do not output a
								<targetxml>@month</targetxml>.</li>
						<li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is
							between 01-31. Any numbers outside this range, do not output
								<targetxml>@day</targetxml>.</li>
						<li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
							digits in length. Any other lengths, do not output
								<targetxml>@year</targetxml>.</li>
					</ul>
					<note>If a day or month is only one digit, it should be padded with a leading 0
						to make it two digits.</note>
				</p>
			</section>
		</body>


	</dita:topic>

	<!--<xsl:param name="outputSchemaLoc"
		select="'urn:x-lexisnexis:content:seclaw:sharedservices:1 sch_seclaw.xsd'"/>-->

	<xsl:template match="/COMMENTARYDOC">

		<!--  Original Target XPath:  /seclaw:seclaw   -->
		<seclaw:seclaw>
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
					select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>
			<xsl:call-template name="xml_lang"/>
			<!--<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>-->
			<xsl:attribute name="seclawtype">
				
				<xsl:choose>
					<!-- landing page -->
					<!--<xsl:when test="comm:body/level[@leveltype = 'landingpage']">
						<xsl:value-of select="'practicalguidance'"/>
					</xsl:when>-->
					<!-- precedent -->
					<xsl:when
						test="contains(descendant::level[1]/@leveltype, 'prec') or contains(descendant::level[1]/@leveltype, 'prec.grp') or descendant::level[1][@leveltype = 'comm.chap']/descendant::level[@leveltype = 'prec' or @leveltype = 'prec.grp']">
						<xsl:value-of select="'precedent'"/>
					</xsl:when>
					<!-- form -->
					<xsl:when
						test="contains(descendant::level[1]/@leveltype, 'form') or contains(descendant::level[1]/@leveltype, 'form.grp')">
						<xsl:value-of select="'form'"/>
					</xsl:when>
					<xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[starts-with(.,'FormsAndPrecedents - Forms')]">
						<xsl:value-of select="'form'"/>
					</xsl:when>
					<xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[starts-with(.,'FormsAndPrecedents - FormAnnotation')]">
						<xsl:value-of select="'form'"/>
					</xsl:when>
					<xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[starts-with(.,'FormsAndPrecedents - DraftingNote')]">
						<xsl:value-of select="'form'"/>
					</xsl:when>
					<xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[starts-with(.,'FormsAndPrecedents - Precedent')]">
						<xsl:value-of select="'precedent'"/>
					</xsl:when>
					<xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[contains(.,'LandingPage') or contains(.,'PracticeNote') or contains(.,'CheckList') or contains(.,'PamDocument')]">
						<xsl:value-of select="'practicalguidance'"/>
					</xsl:when>
					<!-- default -->
					<xsl:otherwise>
						<xsl:value-of select="'commentary'"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>

			<seclaw:head/>

			<xsl:apply-templates select="comm:body"/>

			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</seclaw:seclaw>

	</xsl:template>

</xsl:stylesheet>
