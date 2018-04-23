<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
						xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"

						xmlns:dc="http://purl.org/dc/elements/1.1/"

						exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.load-date_date-to-LexisAdvance_dc.date_lnmeta.datetype_load-date-scheme">
		<title><sourcexml>docinfo:load-date/date</sourcexml> to
				<targetxml>dc:date[@lnmeta:datetype="load-date"]</targetxml> <lnpid>id-CCCC-10274</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>docinfo:load-date/date</sourcexml> becomes
						<targetxml>dc:metadata/dc:date[@lnmeta:datetype="load-date"]</targetxml>.</p>
				<note>The format of the content of all <targetxml>dc:date</targetxml> elements must be
					in 'YYYY-MM-DD'.</note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock>

&lt;docinfo:load-date&gt;
&lt;date day="01" month="01" year="2006"&gt;01 January 2006&lt;/date&gt;
&lt;/docinfo:load-date&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>

&lt;dc:date lnmeta:datetype="load-date"&gt;2006-01-01&lt;/dc:date&gt;

		</codeblock>
			</example>
			<note><p>The below example encountered in CANADA contents which contains "00" value in
						<sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml>
					attributes.</p>
				<p><b>Per LBU-</b> This was the format used for historical data in which only the year was given. We will remediate the content to have a valid month/day and will send the remediated data in a subsequent reload.</p></note>
			<example>
				<codeblock>

&lt;docinfo:load-date&gt;
    &lt;date year="1959" month="00" day="00"&gt;19590000&lt;/date&gt;
&lt;/docinfo:load-date&gt;
                
				</codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2014-01-07: <ph id="change_20140107_PY"> Added a note along with example which contains "00" value in <sourcexml>@day="00"</sourcexml> and <sourcexml>@month="00"</sourcexml> attributes encountered in CANADA contents.</ph></p>
				<p>2013-08-07: <ph id="change_20130807_raj">Removed instructions for creating
							<targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>.</ph></p>
				<p>2012-08-30: Created.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_date-Chof-docinfo.load-date-LxAdv-dc.date_lnmeta.datetype_load-date-scheme.dita  -->

	<xsl:template match="docinfo:load-date">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="docinfo:load-date/date">
		<dc:date lnmeta:datetype="load-date">
			<xsl:value-of select="@year"/>
			<xsl:text>-</xsl:text>
			<xsl:value-of select="@month"/>
			<xsl:text>-</xsl:text>
			<xsl:value-of select="@day"/>
		</dc:date>

	</xsl:template>

</xsl:stylesheet>