<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
	<title>case:juris <lnpid>id-CA03-13221</lnpid></title>
	<body>
		<section>
			<p><sourcexml>case:juris</sourcexml> can hold a code representing a province, territory
				or country. </p>
			<sectiondiv>
				<p>The <b>province</b> codes for Canada are:<ul>
						<li>AB (Alberta)</li>
						<li>BC (British Columbia)</li>
						<li>MB (Manitoba)</li>
						<li>NB (New Brunswick)</li>
						<li>NL (Newfoundland and Labrador)</li>
						<li>NS (Nova Scotia)</li>
						<li>ON (Ontario)</li>
						<li>PE (Prince Edward Island)</li>
						<li>QC (Quebec)</li>
						<li>SK (Saskatchewan)</li>
					</ul></p>
				<p>When <sourcexml>case:juris</sourcexml> holds a province code:<note>
						<ul>
							<li>If <sourcexml>case:juris</sourcexml> province code is <i>PQ</i>, replace with <i>QC</i>
								in the output for all target mappings.</li>
							<li>If <sourcexml>case:juris</sourcexml> province code is <i>NF</i>, replace with <i>NL</i>
								in the output for all target mappings.</li>
						</ul>
					</note><ul>
						<li>Map <sourcexml>case:juris</sourcexml> to
								<targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
							<!--<li>If <sourcexml>case:juris</sourcexml> is a descendant of
								<sourcexml>case:headnote</sourcexml>, also map
								<sourcexml>case:juris</sourcexml> to
								<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>
							and set the value of <targetxml>location:state/@codescheme</targetxml>
							to "ISO-3166-2" (don't include quotes).</li>-->
					</ul></p>
			</sectiondiv>
			<sectiondiv>
				<p>The <b>territory</b> codes for Canada are:<ul>
						<li>NT (Northwest Territories)</li>
						<li>NU (Nunavut)</li>
						<li>YT (Yukon)</li>
					</ul></p>
				<p>When <sourcexml>case:juris</sourcexml> holds a territory code:<ul>
						<li>Map <sourcexml>case:juris</sourcexml> to
								<targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
							<!--<li>If <sourcexml>case:juris</sourcexml> is a descendant of
								<sourcexml>case:headnote</sourcexml>, also map
								<sourcexml>case:juris</sourcexml> to
								<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:territory/@territorycode</targetxml>
							and set the value of
								<targetxml>location:territory/@codescheme</targetxml> to
							"ISO-3166-2" (don't include quotes).</li>-->
					</ul></p>
			</sectiondiv>
			<sectiondiv>
				<p>The <b>country</b> code for Canada is:<ul>
						<li>CA (Canada)</li>
					</ul></p>
				<p>When <sourcexml>case:juris</sourcexml> holds a country code:<note>If
							<sourcexml>case:juris</sourcexml> country code is <i>CD</i>, replace
						with <i>CA</i> in the output for all target mappings.</note><ul>
						<li>Map <sourcexml>case:juris</sourcexml> to
								<targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
							<!--<li>If <sourcexml>case:juris</sourcexml> is a descendant of
								<sourcexml>case:headnote</sourcexml>, also place a value of "CA" in
								<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:country/@countrycode</targetxml>
							and the the value of
								<targetxml>location:country/@countrycode</targetxml> to "ISO-3166-1"
							(don't include quotes).</li>-->
					</ul></p>
			</sectiondiv>
		</section>
		<example>
			<title>Mapping of <sourcexml>case:juris</sourcexml> with province code</title>
			<codeblock>

&lt;case:courtinfo&gt;
    &lt;case:juris ln.user-displayed="false"&gt;NS&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;NS&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

           </codeblock>
		</example>
		<example>
			<title>Mapping of <sourcexml>case:juris</sourcexml> with territory code</title>
			<codeblock>

&lt;case:courtinfo&gt;
    &lt;case:juris ln.user-displayed="false"&gt;NT&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;NT&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

           </codeblock>
		</example>
		<example>
			<title>Mapping of <sourcexml>case:juris</sourcexml> with country code</title>
			<codeblock>

&lt;case:courtinfo&gt;
    &lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
			<b>becomes</b>
			<codeblock>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

           </codeblock>
		</example>
		<section>
			<title>Changes</title>
            <p>2014-12-18: <ph id="change_20141218_sep">Remove creation of <targetxml>dc:coverage</targetxml>. R4.5 RFA #2047</ph></p>
			<p>2013-01-29: <ph id="change_20130129_rj">Changed country code from CD to CA.  Added note for
					handling <sourcexml>case:juris</sourcexml> value CD.</ph></p>
			<p>2013-01-23: <ph id="change_20130123_rj">Added notes for handling <sourcexml>case:juris</sourcexml> values PQ and NF.</ph></p>
			<p>2012-11-13: <ph id="change_20121113_bh">Clarified that <targetxml>dc:coverage</targetxml> only needs to be created for <sourcexml>case:headnote/../case:juris</sourcexml>.</ph></p>
			<p>2012-11-07: <ph id="change_20121107_bh">Removed references to AU values and replaced them with CA-specific values.</ph></p>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.juris-to-LxAdv_jurisinfo.system.dita  -->
	<xsl:message>Rosetta_case.juris-to-LxAdv_jurisinfo.system.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:juris">

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:courtinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:headnote/../case:juris">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>