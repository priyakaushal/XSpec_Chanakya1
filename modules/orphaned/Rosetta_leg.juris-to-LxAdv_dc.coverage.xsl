<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.juris">
	<title>leg:juris <lnpid>id-CA03-13245</lnpid></title>
	<body>
		<section>
			<p>The following instructions apply when <sourcexml>docinfo:selector</sourcexml> has a
				value of 'STATUTE' or 'REGULATION'. </p>
			<p><sourcexml>leg:juris</sourcexml> is converted to <targetxml>dc:coverage</targetxml>.
				The target markup depends on on the value of the code, which can represent a
				province, territory or country. </p>
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
				<p>When <sourcexml>leg:juris</sourcexml> holds a province code:
						
					<ul>
						<li><sourcexml>leg:juris</sourcexml> becomes
								<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>
							and the value of <targetxml>location:state/@codescheme</targetxml> is
							set to "ISO-3166-2" (don't include quotes).</li>
					</ul>
					<note><ul>
						<li>If <sourcexml>leg:juris</sourcexml> province code is <i>PQ</i>,
							replace with <i>QC</i> in the output for all target mappings.</li>
						<li>If <sourcexml>leg:juris</sourcexml> province code is <i>NF</i>,
							replace with <i>NL</i> in the output for all target mappings.</li>
					</ul></note></p>
			</sectiondiv>
			<sectiondiv>
				<p>The <b>territory</b> codes for Canada are:<ul>
						<li>NT (Northwest Territories)</li>
						<li>NU (Nunavut)</li>
						<li>YT (Yukon)</li>
					</ul></p>
				<p>When <sourcexml>leg:juris</sourcexml> holds a territory code:<ul>
						<li><sourcexml>leg:juris</sourcexml> becomes
								<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:territory/@territorycode</targetxml>
							and the value of <targetxml>location:territory/@codescheme</targetxml>
							is set to "ISO-3166-2" (don't include quotes).</li>
					</ul></p>
			</sectiondiv><sectiondiv>
				<p>The <b>country</b> code for Canada is:<ul>
						<li>CA (Canada)</li>
					</ul></p>
				<p>When <sourcexml>leg:juris</sourcexml> holds a country code:<ul>
						<li><sourcexml>leg:juris</sourcexml> becomes
								<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:country/@countrycode="CA"</targetxml>
							and the value of <targetxml>location:country/@codescheme</targetxml> is
							set to "ISO-3166-1" (don't include quotes).</li>
					
					</ul><note>If <sourcexml>leg:juris</sourcexml> country code is <i>CD</i>, replace with
						<i>CA</i> in the output for all target mappings.</note></p>
			</sectiondiv>
		</section>
		<example>
			<title>Mapping of <sourcexml>leg:juris</sourcexml> with province code</title>
			<codeblock>

&lt;case:courtinfo&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;NS&lt;/leg:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
			<b>becomes</b>
			<codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        ...
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="NS"/&gt;
        &lt;/dc:coverage&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;


           </codeblock>
		</example>
		<example>
			<title>Mapping of <sourcexml>leg:juris</sourcexml> with territory code</title>
			<codeblock>

&lt;case:courtinfo&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;NT&lt;/leg:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
			<b>becomes</b>
			<codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        ...
        &lt;dc:coverage&gt;
            &lt;location:territory codescheme="ISO-3166-2" territorycode="NT"/&gt;
        &lt;/dc:coverage&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;


           </codeblock>
		</example>
		<example>
			<title>Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
			<codeblock>
&lt;case:courtinfo&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
			<b>becomes</b>
			<codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        ...
        &lt;dc:coverage&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="CA"/&gt;
        &lt;/dc:coverage&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

           </codeblock>
		</example>
		<section>
			<title>Changes</title>
            <p>2014-12-18: <ph id="change_20141218_sep">Remove creation of <targetxml>dc:coverage</targetxml>. R4.5 RFA #2047</ph></p>
			<p>2014-10-14: <ph id="change_20141014_brt">Created topic.  Addresses R4.5 RFA #1982.</ph></p>
				</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_leg.juris-to-LxAdv_dc.coverage.dita  -->
	<xsl:message>Rosetta_leg.juris-to-LxAdv_dc.coverage.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  dc:coverage   -->
		<dc:coverage>
			<xsl:apply-templates select="@* | node()"/>
		</dc:coverage>

	</xsl:template>

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  dc:coverage   -->
		<dc:coverage>
			<xsl:apply-templates select="@* | node()"/>
		</dc:coverage>

	</xsl:template>

</xsl:stylesheet>