<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.action-facts-to-LexisAdvance_casedigest.facts">
		<title>dig:action-facts-to-casedigest:facts <lnpid>id-UK03-27440</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>dig:cause-of-action/dig:action-facts</sourcexml> becomes <targetxml>casedigest:facts/casedigest:causeofaction</targetxml>. <note>Please note that in the above NL mapping, <targetxml>casedigest:causeofaction</targetxml> is a
						child of <targetxml>casedigest:facts</targetxml>.</note>
					<note>There may be three different children for <sourcexml>dig:action-facts</sourcexml> - i) <sourcexml>dig:injury</sourcexml> ii) <sourcexml>dig:injury-duration</sourcexml> iii) <sourcexml>bodytext</sourcexml>.</note> The children can
					be converted as follows: </p>
			</section>
			<section>
				<title>Changes</title>
				<p>2017-04-11: <ph id="change_20170411_SS">Deleted the note for special handling of attribute <sourcexml>@display-name</sourcexml> under the <sourcexml>dig:damge</sourcexml>. [VSTS - 243138 ]</ph></p>
				<p>2015-08-12: <ph id="change_20150812_SS">Created.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.action-facts-to-LexisAdvance_casedigest.facts.dita  -->

	<xsl:template match="dig:action-facts">
		<casedigest:facts>
			<xsl:if test="@display-name = 'Duration and Prognosis'">
				<casedigest:causeofaction>
					<classify:classification>
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classname namescheme="injury-type" normval="Duration and Prognosis"/>
							</classify:classitem-identifier>
						</classify:classitem>
					</classify:classification>
				</casedigest:causeofaction>
				<xsl:apply-templates/>
			</xsl:if>

			<xsl:if test="@display-name = 'Facts'">
				<casedigest:causeofaction>
					<classify:classification>
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classname namescheme="injury-type" normval="Facts"/>
							</classify:classitem-identifier>
						</classify:classitem>
					</classify:classification>
				</casedigest:causeofaction>
				<casedigest:factsummary>
					<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates/>
					</bodytext>
				</casedigest:factsummary>
			</xsl:if>

			<xsl:if test="@searchtype = ('MAJOR-INJURY', 'ADDITIONAL-INJURY')">
				<xsl:for-each-group group-starting-with="dig:injury" select="dig:injury|dig:injury-duration">
					<casedigest:causeofaction>
						<xsl:apply-templates select="current-group()"/>
					</casedigest:causeofaction>
				</xsl:for-each-group>
				<xsl:if test="p">
					<casedigest:factsummary>
						<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:apply-templates select="p"/>
						</bodytext>
					</casedigest:factsummary>
				</xsl:if>
			</xsl:if>

			<xsl:if test="@searchtype = ('ADDITIONAL-INJURY-SUMMARY', 'ADDITIONAL-INJURY-SUMMARY')">
				<casedigest:causeofaction>
					<xsl:apply-templates/>
				</casedigest:causeofaction>
			</xsl:if>

			<xsl:if test="@searchtype = ('CLAIM-TYPE')">
				<casedigest:causeofaction>
					<xsl:apply-templates/>
				</casedigest:causeofaction>
			</xsl:if>
		</casedigest:facts>
	</xsl:template>

	<xsl:template match="dig:cause-date">
		<casedigest:causedate>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:causedate>
	</xsl:template>


	<!-- CSN - 2017/10/18 - Removed this template because there is a duplicate in Rosetta_dig.action-party-to-LexisAdvance_casedigest.actionparty.xsl 
	<xsl:template match="dig:action-party">
		<casedigest:actionparty>
			<xsl:attribute name="partyrole" select="'unknown'"/>
			<xsl:apply-templates select="@* | node()"/>
		</casedigest:actionparty>
	</xsl:template>
	-->

	<xsl:template match="gender">
		<person:gender>
			<xsl:apply-templates select="@* | node()"/>
		</person:gender>
	</xsl:template>

	<xsl:template match="dig:age">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="dig:age/@type"/>

	<xsl:template match="age/@normval">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="age[parent::dig:age]">
		<person:age>
			<xsl:attribute name="agedesc" select="parent::dig:age/@type"/>
			<xsl:apply-templates select="@* | node()"/>
		</person:age>
	</xsl:template>

	<!-- CSN - 2017/10/18 - Removed this template becuase there is a duplicate in Rosetta_dig.action-party-to-LexisAdvance_casedigest.actionparty.xsl
	<xsl:template match="occupation">
		<person:occupation>
			<xsl:apply-templates select="@* | node()"/>
		</person:occupation>
	</xsl:template>
	-->

	<xsl:template match="dig:review">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
</xsl:stylesheet>
