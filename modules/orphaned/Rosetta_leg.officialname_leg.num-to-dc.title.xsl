<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.content">
	<title><sourcexml>leg:officialname</sourcexml>, <sourcexml>leg:num</sourcexml> to
			<targetxml>dc:title</targetxml>
		<lnpid>id-CA03-13238</lnpid></title>
	<body>
		<section>
			<title>Canada (CA03 Only): Create <targetxml>dc:title</targetxml> from
					<sourcexml>leg:officialname</sourcexml> and
				<sourcexml>leg:num</sourcexml></title>
			<p>When <sourcexml>docinfo:selector</sourcexml> contains ("Statute" or "Statutes" or "Regulation"
				or "Regulations"), case insensitive, use the following instructions to create
					<targetxml>dc:title</targetxml>: <ul>
					<li>When the text in <sourcexml>leg:officialname</sourcexml> is not separated by
						" / ", create one instance of
							<targetxml>dc:title[@xml:lang="en-CA"]</targetxml> with the text from
							<sourcexml>leg:officialname</sourcexml>. Append the text from
							<sourcexml>leg:num</sourcexml> as decribed below: <ul>
							<li>If <sourcexml>leg:num</sourcexml> does not exist, do not append any
								text.</li>
							<li>If the text in <sourcexml>leg:num</sourcexml> is not separated by "
								/ ", concatenate the text as <sourcexml>leg:officialname</sourcexml>
								COMMA SPACE <sourcexml>leg:num</sourcexml>.</li>
							<li>If the text in <sourcexml>leg:num</sourcexml> is separated by " / ",
								add the text before " / " to <sourcexml>leg:officialname</sourcexml>
								COMMA SPACE, and delete the text in <sourcexml>leg:num</sourcexml>
								following " / ".</li>
						</ul></li>
					<li><note>There is one exception to the following instruction. When <sourcexml>leg:juris</sourcexml> equals 'PQ', 
						the French occurs before the " / " and the English after, see Example 4.</note>
					When the text in <sourcexml>leg:officialname</sourcexml> is separated by " / ",
					create two instances of <targetxml>dc:title</targetxml>, the first is
						most often English (with one exception, see previous Note), having attribute:
							<targetxml>@xml:lang="en-CA"</targetxml>, and the second French, having attribute
							<targetxml>@xml:lang="fr-CA"</targetxml>, as follows: <ul>
							<li>If <sourcexml>leg:num</sourcexml> does not exist, do not append any
								text.</li>
							<li>When the text in <sourcexml>leg:num</sourcexml> is not separated by
								" / ", append COMMA SPACE to
									<targetxml>dc:title[@xml:lang="en-CA"]</targetxml>, followed by
								the text in <sourcexml>leg:num</sourcexml>.</li>
							<li>When the text in <sourcexml>leg:num</sourcexml> is separated by " /
								", append COMMA SPACE and the text before " / " to
									<targetxml>dc:title[@xml:lang="en-CA"]</targetxml>, and append
								COMMA SPACE and the text after " / " to
									<targetxml>dc:title[@xml:lang="fr-CA"]</targetxml>.</li>
						</ul></li>
				</ul></p>
		</section>
		<example>
			<title>Example 1: Two <sourcexml>leg:officialname</sourcexml> and no
					<sourcexml>leg:num</sourcexml> value.</title>
			<codeblock>

&lt;docinfo:selector&gt;Statutes&lt;/docinfo:selector&gt;
...
&lt;leg:officialname&gt;CANADA EVIDENCE ACT / PREUVE AU CANADA, LOI SUR LA&lt;/leg:officialname&gt;

	</codeblock>
			<p>becomes</p>
			<codeblock>

&lt;dc:title xml:lang="en-CA"&gt;CANADA EVIDENCE ACT&lt;/dc:title&gt;
&lt;dc:title xml:lang="fr-CA"&gt;PREUVE AU CANADA, LOI SUR LA&lt;/dc:title&gt;

	</codeblock>
		</example>
		<example>
			<title>Example 3: One <sourcexml>leg:officialname</sourcexml> and two <sourcexml>leg:num</sourcexml> values.</title>
			<codeblock>

&lt;docinfo:selector&gt;STATUTE&lt;/docinfo:selector&gt;
...
&lt;leg:officialname&gt;CANADA EVIDENCE ACT&lt;/leg:officialname&gt;
&lt;leg:num&gt;s. 10 / art. 10&lt;/leg:num&gt;

	</codeblock>
			<p>becomes</p>
			<codeblock>

&lt;dc:title xml:lang="en-CA"&gt;CANADA EVIDENCE ACT, s. 10&lt;/dc:title&gt;


	</codeblock>
		</example>
		
		<example>
			<title>Example 3: Two <sourcexml>leg:officialname</sourcexml> and two <sourcexml>leg:num</sourcexml> values.</title>
			<codeblock>

&lt;docinfo:selector&gt;STATUTE&lt;/docinfo:selector&gt;
...
&lt;leg:officialname&gt;CANADA EVIDENCE ACT / PREUVE AU CANADA, LOI SUR LA&lt;/leg:officialname&gt;
&lt;leg:num&gt;s. 10 / art. 10&lt;/leg:num&gt;

	</codeblock>
			<p>becomes</p>
			<codeblock>

&lt;dc:title xml:lang="en-CA"&gt;CANADA EVIDENCE ACT, s. 10&lt;/dc:title&gt;
&lt;dc:title xml:lang="fr-CA"&gt;PREUVE AU CANADA, LOI SUR LA, art. 10&lt;/dc:title&gt;

	</codeblock>
		</example>
		<example>
			<title>Example 4: 'PQ' jurisdiction where French appears before English.</title>
			<codeblock>

&lt;leg:juris ln.user-displayed="false"&gt;PQ&lt;/leg:juris&gt;
&lt;leg:officialname&gt;CODE CIVIL DU QUÉBEC / CIVIL CODE OF QUÉBEC&lt;/leg:officialname&gt;
&lt;leg:num&gt;art. 2684 / s. 2684&lt;/leg:num&gt;

	</codeblock>
			<p>becomes</p>
			<codeblock>

&lt;dc:title xml:lang="en-CA"&gt;CIVIL CODE OF QUÉBEC, s. 2684&lt;/dc:title&gt;
&lt;dc:title xml:lang="fr-CA"&gt;CODE CIVIL DU QUÉBEC, art. 2684&lt;/dc:title&gt;

	</codeblock>
		</example>
		<section id="changes">
			<title>CA03 Changes</title>
			<p>2015-02-05: <ph id="change_20150205_sep">Add note and example for 'PQ' jurisdiction where French appears before English. Addresses R4.5 RFA 2168.</ph></p>
			<p>2014-12-31: <ph id="change_20141231_brt">Clarify 'Statutes' / 'Regulations' search to be singular or plural. Addresses 4B item 396.</ph></p>
			<p>2014-12-18: <ph id="change_20141218_sep">Clarify Statutes / Regulation search to be case insensitive. Addresses 4B item 396.</ph></p>
			<p>2014-12-05: <ph id="change_20141205_brt">Modified the instructions to accomodate instances where <sourcexml>leg:num</sourcexml> is not present or has only one value, and instances where <sourcexml>leg:officialname</sourcexml> has only one value. Addresses R4.5 RFA #1832.</ph></p>
			<p>2014-08-26: <ph id="change_20140826_sep">Created the CA03 specific part of this
					instruction, which can also take <targetxml>dc:title</targetxml> from
						<sourcexml>leg:officialname</sourcexml>, <sourcexml>leg:num</sourcexml> when
						<sourcexml>docinfo:selector</sourcexml> contains ("STATUTE" or
					"REGULATION"). Addresses R4.5 RFA #1832.</ph></p>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_leg.officialname_leg.num-to-dc.title.dita  -->
	<xsl:message>Rosetta_leg.officialname_leg.num-to-dc.title.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:  dc:title   -->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="leg:num">

		<!--  Original Target XPath:  dc:title   -->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  dc:title   -->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  dc:title   -->
		<dc:title>
			<xsl:apply-templates select="@* | node()"/>
		</dc:title>

	</xsl:template>

</xsl:stylesheet>