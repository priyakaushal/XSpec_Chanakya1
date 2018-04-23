<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.juris">
    <title>leg:juris <lnpid>id-ST03-26632</lnpid></title>
    <body>
        <p><sourcexml>leg:juris</sourcexml> contains a code representing a Province, State/Territory or Country.</p> 
        <section>
            <sectiondiv>
                <ul>
                    <li><u><b>First Scenario:</b></u> When <sourcexml>leg:juris</sourcexml> markup
                        holds a province code then it will be mapped with following items: <ul>
                            <li>Map <sourcexml>leg:juris</sourcexml> to
                                    <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
                            <li>Also map <sourcexml>leg:juris</sourcexml> to
                                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>
                                and attribute <targetxml>@codescheme</targetxml> will be set to ISO
                                standard codes (published by the International Organization for
                                Standardization (ISO), to represent countries, dependent
                                territories, province means special areas of geographical interest)
                                OR on the basis of Local Business Unit requirements<b> i.e.</b>
                                'ISO-3166-2' (don't include quotes).</li>
                        </ul>
                        <note>The translations should be applied to both targets:
                                <targetxml>jurisinfo:system</targetxml> and the location element
                                (<targetxml>location:country</targetxml> or
                                <targetxml>location:state</targetxml>).</note>
                        <note>If <b>leg:juris</b> has an old province, state and country code, then
                            this will be converted from old to new ISO code on the basis of Local
                            Business Unit requirements.</note>
                        <p>Please refer the below listed <b>Province</b> codes from different LBU's
                            content for reference: <ol>
                                <li><b>CANADA</b> content stream which is converted from old to new
                                        <b>ISO</b> codes: <ul>
                                        <li>For Canada: if input document contains
                                                <sourcexml>CD</sourcexml> within
                                                <sourcexml>leg:juris</sourcexml>, then convert it to
                                                <targetxml>CA</targetxml>.</li>
                                        <li>For Newfoundland and Labrador: if input document
                                            contains <sourcexml>NF</sourcexml> within
                                                <sourcexml>leg:juris</sourcexml>, then convert it to
                                                <targetxml>NL</targetxml>.</li>
                                        <li>For Quebec: if input document contains
                                                <sourcexml>PQ</sourcexml> within
                                                <sourcexml>leg:juris</sourcexml>, then convert it to
                                                <targetxml>QC</targetxml>. </li>
                                    </ul>
                                </li>
                                <li>The <b>province</b> codes for Canada are: <ul>
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
                                    </ul>
                                </li>
                            </ol>
                        </p>
                    </li>
                </ul>
            </sectiondiv>
        </section>
      <example>
          <title>CANADA SOURCE XML 1: Mapping of <sourcexml>leg:juris</sourcexml> with province code</title>
          <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris ln.user-displayed="false"&gt;BC&lt;/leg:juris&gt;
&lt;/leg:info&gt;

          </codeblock>
          <b>Becomes</b>
          <title>CANADA TARGET XML 1: Mapping of <sourcexml>leg:juris</sourcexml> with province code</title>
          <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
 &lt;jurisinfo:jurisdiction&gt;
  &lt;jurisinfo:system&gt;BC&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;!-- ETC. --&gt;
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="CA"&gt;
  &lt;!-- ETC. --&gt;
  &lt;dc:coverage&gt;
   &lt;location:state codescheme="ISO-3166-2" statecode="BC"/&gt;
  &lt;/dc:coverage&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
      </example>
        <section>
            <sectiondiv>
                <ul>
                    <li><u><b>Second Scenario:</b></u> When <sourcexml>leg:juris</sourcexml> markup
                        contains a <b>Territory/State</b> code then it will be mapped with following
                        items: <ul>
                            <li>Map <sourcexml>leg:juris</sourcexml> to
                                    <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
                            <li>Also map <sourcexml>leg:juris</sourcexml> to
                                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>
                                and attribute <targetxml>@codescheme</targetxml> will be set to ISO
                                standard codes (which is published by the International Organization
                                for Standardization (ISO), to represent countries, dependent
                                territories, province means special areas of geographical interest)
                                OR on the basis of Local Business Unit requirements i.e.
                                'ISO-3166-2' (don't include quotes).</li>
                        </ul>
                        <p>Please refer the below listed <b>State/Territory</b> codes having from
                            different LBU's content for reference: <ol>
                                <li><b>CANADA</b>
                                    <ul>
                                        <li>NT (Northwest Territories)</li>
                                        <li>NU (Nunavut)</li>
                                        <li>YT (Yukon)</li>
                                    </ul>
                                </li>
                                <li><b>AUSTRALIA</b>
                                    <ul>
                                        <li> AU-NS : New South Wales (NSW) </li>
                                        <li> AU-QL : Queensland (QLD) </li>
                                        <li> AU-SA : South Australia (SA) </li>
                                        <li> AU-TS : Tasmania (TAS) </li>
                                        <li> AU-VI : Victoria (VIC) </li>
                                        <li> AU-WA : Western Australia (WA) </li>
                                        <li> AU-CT : Australian Capital Territory (ACT) </li>
                                        <li> AU-NT : Northern Territory (NT) </li>
                                    </ul>
                                </li>
                            </ol>
                        </p>
                    </li>
                </ul>
            </sectiondiv>
        </section>
      <example>
          <title>CANADA SOURCE XML 1: Mapping of <sourcexml>leg:juris</sourcexml> with territory code</title>
          <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris ln.user-displayed="false"&gt;NT&lt;/leg:juris&gt;
&lt;/leg:info&gt;

          </codeblock>
          <b>Becomes</b>
          <title>CANADA TARGET XML 1: Mapping of <sourcexml>leg:juris</sourcexml> with territory code</title>
          <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
 &lt;jurisinfo:jurisdiction&gt;
  &lt;jurisinfo:system&gt;NT&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;!-- ETC. --&gt;
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="CA"&gt;
  &lt;!-- ETC. --&gt;
  &lt;dc:coverage&gt;
   &lt;location:territory codescheme="ISO-3166-2" territorycode="NT"/&gt;
  &lt;/dc:coverage&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
      </example>
      <example>
          <title>AUSTRALIA SOURCE XML 2: Mapping of <sourcexml>leg:juris</sourcexml> with territory code</title>
          <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris&gt;NSW&lt;/leg:juris&gt;
&lt;/leg:info&gt;

          </codeblock>
          <b>Becomes</b>
          <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>leg:juris</sourcexml> with territory code</title>
          <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
 &lt;jurisinfo:jurisdiction&gt;
  &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;!-- ETC. --&gt;
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="AU"&gt;
  &lt;!-- ETC. --&gt;
  &lt;dc:coverage&gt;
   &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"/&gt;
  &lt;/dc:coverage&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
      </example>
      <section>
          <sectiondiv>
              <ul>
                  <li><u><b>Third Scenario:</b></u> When <sourcexml>leg:juris</sourcexml> markup
                        contains a <b>Country</b> code then it will be mapped with following items: <ul>
                            <li>Map <sourcexml>leg:juris</sourcexml> to
                                    <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
                            <li>Also place a value of country code (i.e. 'CA' for Canada) in
                                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:country/@countrycode</targetxml>
                                and attribute <targetxml>@codescheme</targetxml> will be set to ISO
                                standard codes (which is published by the International Organization
                                for Standardization (ISO), to represent countries, dependent
                                territories, provience means special areas of geographical interest)
                                OR on the basis of Local Business Unit requirements i.e.
                                'ISO-3166-1' (don't include quotes).</li>
                        </ul>
                        <p>Please refer the below listed <b>Country</b> codes from different LBU's
                            content for reference: <ol>
                                <li><b>CANADA</b>
                                    <ul>
                                        <li>CA</li>
                                    </ul>
                                </li>
                                <li><b>AUSTRALIA</b>
                                    <ul>
                                        <li>AU</li>
                                    </ul>
                                </li>
                                <li><b>New Zealand</b>
                                    <ul>
                                        <li>NZ</li>
                                    </ul>
                                </li>
                            </ol>
                        </p>
                    </li>
              </ul>
          </sectiondiv>
      </section>
      <example>
          <title>CANADA SOURCE XML 1: Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
          <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
&lt;/leg:info&gt;

          </codeblock>
          <b>Becomes</b>
          <title>CANADA TARGET XML 1: Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
          <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
 &lt;jurisinfo:jurisdiction&gt;
  &lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;!-- ETC. --&gt;
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="CA"&gt;
  &lt;!-- ETC. --&gt;
  &lt;dc:coverage&gt;
   &lt;location:country codescheme="ISO-3166-1" countrycode="CA"/&gt;
  &lt;/dc:coverage&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
      </example>
      <example>
          <title>AUSTRALIA SOURCE XML 2: Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
          <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris&gt;CTH&lt;/leg:juris&gt;
&lt;/leg:info&gt;

          </codeblock>
          <b>Becomes</b>
          <title>AUSTRALIA TARGET XML 2: Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
          <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
 &lt;jurisinfo:jurisdiction&gt;
  &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;!-- ETC. --&gt;
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="AU"&gt;
  &lt;!-- ETC. --&gt;
  &lt;dc:coverage&gt;
   &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
  &lt;/dc:coverage&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
      </example>
      <example>
          <title>NEW ZEALAND SOURCE XML 3: Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
          <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris ln.user-displayed="false"&gt;NZ&lt;/leg:juris&gt;
&lt;/leg:info&gt;

          </codeblock>
          <b>Becomes</b>
          <title>NEW ZEALAND SOURCE XML 3: Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
          <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
 &lt;jurisinfo:jurisdiction&gt;
  &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
 &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;!-- ETC. --&gt;
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="NZ"&gt;
  &lt;!-- ETC. --&gt;
  &lt;dc:coverage&gt;
   &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
  &lt;/dc:coverage&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
      </example>
      <note>The above listed Province, State/Territory or Country codes are based on used cases of different countries content streams. The CIs will be updated for any additional country specific codes.</note>
      <section>
          <title>Changes</title>
          <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
          
          <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.juris.dita  -->
	<xsl:message>legis-leg.juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:legisbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:legisbodyinfo>

	</xsl:template>

	<xsl:template match="CD">

		<!--  Original Target XPath:  CA   -->
		<CA>
			<xsl:apply-templates select="@* | node()"/>
		</CA>

	</xsl:template>

	<xsl:template match="NF">

		<!--  Original Target XPath:  NL   -->
		<NL>
			<xsl:apply-templates select="@* | node()"/>
		</NL>

	</xsl:template>

	<xsl:template match="PQ">

		<!--  Original Target XPath:  QC   -->
		<QC>
			<xsl:apply-templates select="@* | node()"/>
		</QC>

	</xsl:template>

</xsl:stylesheet>