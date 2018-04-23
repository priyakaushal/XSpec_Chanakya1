<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
	version="2.0" exclude-result-prefixes="dita case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-courtinfo">
		<title>case:courtname to jurisinfo:courtname <lnpid>id-CA03-13216</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p><sourcexml>case:courtname</sourcexml> becomes <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>. </p>
				<p><sourcexml>case:courtinfo/abbrvname</sourcexml> becomes <targetxml>jurisinfo:courtname/@normshortname</targetxml> if it is present.</p>
				<p>The value that populates <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> depends on its location in the target document: <ul>
						<li>In the document head, <sourcexml>case:headnote/case:info/case:courtinfo/abbrvname</sourcexml> becomes
								<targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>. See Example 1.</li>
						<li>In the document body, <sourcexml>cttr:annotations/cttr:annot/case:info/case:courtinfo/case:courtname</sourcexml> becomes
								<targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</li>
					</ul></p>

				<p>Using the "Known Bad Values" table: If the jurisdiction is a known bad value, i.e. the two characters in <sourcexml>case:juris</sourcexml> are listed in the first column of the
					"Known Bad Values" table, then compare the correct value from column two, "Corrected Substitution", with the first two characters of
						<sourcexml>case:courtinfo/case:courtname</sourcexml> and if they do not match, then copy the "Corrected Substitution" characters into
						<targetxml>jurisinfo:system/@normshortname</targetxml>, see Example 2.</p>
				<table>
					<tgroup cols="2">
						<thead>
							<row>
								<entry>Known Bad Values</entry>
								<entry>Corrected Substitution</entry>
							</row>
						</thead>
						<tbody>
							<row>
								<entry>CD</entry>
								<entry>CA</entry>
							</row>
							<row>
								<entry>NF</entry>
								<entry>NL</entry>
							</row>
							<row>
								<entry>PQ</entry>
								<entry>QC</entry>
							</row>
						</tbody>
					</tgroup>
				</table>
				<p>Using the "Jurisdiction Name" table: If the two letters in <sourcexml>case:juris</sourcexml> are NOT present in the second column of the "Jurisdiction Name" table, do nothing.
					However, if they are present, and first two characters of <sourcexml>case:courtname</sourcexml> do not match <sourcexml>case:juris</sourcexml>, then copy
						<sourcexml>case:juris</sourcexml> to <targetxml>jurisinfo:system/@normshortname</targetxml>, see Example 3.</p>
				<table>
					<tgroup cols="2">
						<thead>
							<row>
								<entry>Jurisdiction Name</entry>
								<entry>Jurisdiction Abbreviation to Display</entry>
							</row>
						</thead>
						<tbody>
							<row>
								<entry>Federal</entry>
								<entry>CA</entry>
							</row>
							<row>
								<entry>Alberta</entry>
								<entry>AB</entry>
							</row>
							<row>
								<entry>British Columbia</entry>
								<entry>BC</entry>
							</row>
							<row>
								<entry>Manitoba</entry>
								<entry>MB</entry>
							</row>
							<row>
								<entry>New Brunswick</entry>
								<entry>NB</entry>
							</row>
							<row>
								<entry>Newfoundland and Labrador</entry>
								<entry>NL</entry>
							</row>
							<row>
								<entry>Northwest Territories</entry>
								<entry>NT</entry>
							</row>
							<row>
								<entry>Nova Scotia</entry>
								<entry>NS</entry>
							</row>
							<row>
								<entry>Nunavut</entry>
								<entry>NU</entry>
							</row>
							<row>
								<entry>Ontario</entry>
								<entry>ON</entry>
							</row>
							<row>
								<entry>Prince Edward Island</entry>
								<entry>PE</entry>
							</row>
							<row>
								<entry>Quebec</entry>
								<entry>QC</entry>
							</row>
							<row>
								<entry>Saskatchewan</entry>
								<entry>SK</entry>
							</row>
							<row>
								<entry>Yukon</entry>
								<entry>YT</entry>
							</row>
						</tbody>
					</tgroup>
				</table>
				<note>In target final markup the <targetxml>jurisinfo:system/@normshortname</targetxml>, if present, should never match the first two characters of
						<targetxml>jurisinfo:courtname</targetxml>. The purpose of <targetxml>jurisinfo:system/@normshortname</targetxml> is to be populated when it does NOT match. See Example
					4.</note>
			</section>
			<example>
				<title>Example 1: Source XML</title>
				<codeblock>&lt;case:courtinfo&gt; &lt;case:courtname&gt;Supreme Court of Canada&lt;/case:courtname&gt; &lt;abbrvname ln.user-displayed="false"&gt;CASCC&lt;/abbrvname&gt;
					&lt;case:courtcode ln.user-displayed="false"&gt;CASC&lt;/case:courtcode&gt; &lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt; &lt;case:dates&gt;
					&lt;case:decisiondate&gt; &lt;date day="24" month="04" year="1985"&gt;1985/4/24&lt;/date&gt; &lt;/case:decisiondate&gt; &lt;/case:dates&gt; &lt;/case:courtinfo&gt;</codeblock>
				<title>Target XML</title>
				<codeblock>&lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:alternatecourtcode alternatecourtcode="CASCC"/&gt; &lt;jurisinfo:courtname normshortname="CASCC"&gt;Supreme Court of
					Canada&lt;/jurisinfo:courtname&gt; ... &lt;/jurisinfo:courtinfo&gt;</codeblock>
			</example>
			<example>
				<title>Example 2: Using "Known Bad Values" table to create <targetxml>jurisinfo:system/@normshortname</targetxml></title>
				<codeblock> &lt;case:courtinfo&gt; &lt;case:courtname&gt;NFCA&lt;/case:courtname&gt; &lt;case:courtcode ln.user-displayed="false"&gt; &lt;process-ignore
					process="kwd"&gt;NFCA&lt;/process-ignore&gt; &lt;/case:courtcode&gt; &lt;case:juris ln.user-displayed="false"&gt;NF&lt;/case:juris&gt; ... &lt;/case:courtinfo&gt; </codeblock>
				<p>becomes:</p>
				<codeblock> &lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:alternatecourtcode alternatecourtcode="NFCA"/&gt; &lt;jurisinfo:courtname&gt;NFCA&lt;/jurisinfo:courtname&gt;
					&lt;jurisinfo:jurisdiction&gt; &lt;jurisinfo:system normshortname="NL"&gt;NL&lt;/jurisinfo:system&gt; &lt;/jurisinfo:jurisdiction&gt; &lt;/jurisinfo:courtinfo&gt; </codeblock>
			</example>
			<example>
				<title>Example 3: Using "Jurisdiction Name" table to create <targetxml>jurisinfo:system/@normshortname</targetxml></title>
				<codeblock> &lt;case:courtinfo&gt; &lt;case:courtname&gt;NFCA&lt;/case:courtname&gt; &lt;case:courtcode ln.user-displayed="false"&gt; &lt;process-ignore
					process="kwd"&gt;NFCA&lt;/process-ignore&gt; &lt;/case:courtcode&gt; &lt;case:juris ln.user-displayed="false"&gt;NL&lt;/case:juris&gt; ... &lt;/case:courtinfo&gt; </codeblock>
				<p>becomes:</p>
				<codeblock> &lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:alternatecourtcode alternatecourtcode="NFCA"/&gt; &lt;jurisinfo:courtname&gt;NFCA&lt;/jurisinfo:courtname&gt;
					&lt;jurisinfo:jurisdiction&gt; &lt;jurisinfo:system normshortname="NL"&gt;NL&lt;/jurisinfo:system&gt; &lt;/jurisinfo:jurisdiction&gt; &lt;/jurisinfo:courtinfo&gt; </codeblock>
			</example>
			<example>
				<title>Example 4: <targetxml>jurisinfo:system/@normshortname</targetxml> not created due to matching after substitution</title>
				<codeblock> &lt;case:casename&gt;CANADA (CONSEIL DES PORTS NAT) v. LANGELIER&lt;/case:casename&gt; &lt;case:courtinfo court-rank="033" juris-rank="120"&gt;
					&lt;case:courtname&gt;QCBancReine&lt;/case:courtname&gt; &lt;case:courtcode ln.user-displayed="false"&gt; &lt;process-ignore process="kwd"&gt;PQSC&lt;/process-ignore&gt;
					&lt;/case:courtcode&gt; &lt;case:juris ln.user-displayed="false"&gt;PQ&lt;/case:juris&gt; &lt;case:dates&gt; &lt;case:decisiondate&gt; &lt;date day="01" month="01"
					year="1967"&gt;1967&lt;/date&gt; &lt;/case:decisiondate&gt; &lt;/case:dates&gt; &lt;/case:courtinfo&gt; </codeblock>
				<p>becomes:</p>
				<codeblock> &lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:alternatecourtcode alternatecourtcode="QCBancReine"&gt;&lt;/jurisinfo:alternatecourtcode&gt;
					&lt;jurisinfo:courtname&gt;QCBancReine&lt;/jurisinfo:courtname&gt; &lt;jurisinfo:jurisdiction&gt; &lt;jurisinfo:system&gt; &lt;globalentity:entity&gt;
					&lt;globalentity:content&gt;QC&lt;/globalentity:content&gt; &lt;globalentity:entityReference guid:guid="urn:entity:geob-100432051" role="urn:contentType:geography"/&gt;
					&lt;/globalentity:entity&gt; &lt;/jurisinfo:system&gt; &lt;/jurisinfo:jurisdiction&gt; &lt;/jurisinfo:courtinfo&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-02-24: <ph id="change_20150224_sep">As <sourcexml>case:courtname</sourcexml> is what is shown to the user, use it to compare to <sourcexml>case:juris</sourcexml> when deciding
						whether to create <targetxml>jurisinfo:system@normshortname</targetxml>. Add note and Example 4. R4.5 RFAs #2133 and 2184.</ph></p>
				<p>2014-10-17: <ph id="change_20141017_brt">Added instruction to convert <sourcexml>abbrvname</sourcexml> to <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> for
						markup in the document head, and <sourcexml>case:courtname</sourcexml> to <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> for markup in the document
						body. </ph></p>
				<p>2014-10-02: <ph id="change_20141002_sep">Only substitute for known bad values and place them into <targetxml>jurisinfo:system/@normshortname</targetxml>. QuickCite RFA #78.</ph></p>
				<p>2014-10-01: <ph id="change_20141001_sep">Remove long courtname table for <targetxml>jurisinfo:system/@normshortname</targetxml> and instead use short Jurisdiction Abbreviation
						table. QuickCite RFA #78.</ph></p>
				<p>2014-09-24: <ph id="change_20140924_sep">Add instruction and example for using table to create <targetxml>jurisinfo:system/@normshortname</targetxml>. QuickCite RFA #78.</ph></p>
			</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.courtname-to-LxAdv_jurisinfo.courtname.dita  -->

	<!-- Sudhanshu Srivastava : Initially drafted this module on 26 May 2017 . If changes required , please update accordingly. -->
	<xsl:template match="case:courtname">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
		<xsl:choose>
			<xsl:when test="ancestor::source_cttr:annotations">
				<jurisinfo:alternatecourtcode>
					<xsl:attribute name="alternatecourtcode">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</jurisinfo:alternatecourtcode>
			</xsl:when>
			<xsl:otherwise>
				<jurisinfo:courtname>
					<xsl:if test="following-sibling::abbrvname">
						<xsl:attribute name="normshortname">
							<xsl:value-of select="following-sibling::abbrvname"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="preceding-sibling::abbrvname">
						<xsl:attribute name="normshortname">
							<xsl:value-of select="preceding-sibling::abbrvname"/>
						</xsl:attribute>
					</xsl:if>

					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:courtname>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

	<xsl:template match="abbrvname">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:alternatecourtcode>
			<xsl:attribute name="alternatecourtcode">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</jurisinfo:alternatecourtcode>

	</xsl:template>

</xsl:stylesheet>
