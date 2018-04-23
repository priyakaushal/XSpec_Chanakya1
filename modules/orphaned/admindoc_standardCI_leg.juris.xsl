<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.juris">
  <title>leg:juris <lnpid>id-ST08-31618</lnpid></title>
    <body>
        <section><p><sourcexml>leg:juris</sourcexml> contains a code representing a country,
                state/province, or territory. Individual Conversion Instructions will specify the
                codes for the jurisdiction (the LBU).</p></section>
        <section><p>The <sourcexml>leg:juris</sourcexml> code converts to two places:</p><ul>
                <li><targetxml>admindoc:head/jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml></li>
                <li><targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage</targetxml> with
                    code mapped to applicable child as follows:<ul>
                        <li><targetxml>location:country[@codescheme="ISO-3166-1"
                                @countrycode=""]</targetxml></li>
                        <li><targetxml>location:state[@codescheme="ISO-3166-2"
                                @statecode=""]</targetxml> (used for state or province)</li>
                        <li><targetxml>location:territory[@codescheme="ISO-3166-2"
                                @territorycode=""]</targetxml><note>The
                                    <targetxml>@codescheme</targetxml> value is
                                    <targetxml>"ISO-3166-1"</targetxml> for country code and
                                    <targetxml>"ISO-3166-2"</targetxml> for subnational code. The
                                schemes are published by the International Organization for
                                Standardization (ISO). The "<targetxml>location:</targetxml>"
                                element is attributes only, no pcdata.</note></li>
                    </ul></li>
            </ul></section>
        <section><p>The examples below illustrate conversion using Canada data.</p></section>

        <example>
            <title>SOURCE XML 1: Country code</title>
            <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris&gt;CA&lt;/leg:juris&gt;   &lt;!-- the code for Canada --&gt;
&lt;/leg:info&gt;

          </codeblock>
            <title>TARGET XML 1: Country code</title>
            <codeblock>

&lt;admindoc:head&gt;
  &lt;jurisinfo:execbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;
&lt;!-- and also --&gt;
&lt;doc:metadata&gt;
  &lt;doc:docinfo doc-content-country="CA"&gt;
    &lt;dc:coverage&gt;
      &lt;location:country codescheme="ISO-3166-1" countrycode="CA"/&gt;
    &lt;/dc:coverage&gt;
  &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
        </example>

        <example>
            <title>SOURCE XML 2: State/Province code</title>
            <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris&gt;AB&lt;/leg:juris&gt;   &lt;!-- the code for Alberta --&gt;
&lt;/leg:info&gt;

          </codeblock>
            <title>TARGET XML 2: State/Province code</title>
            <codeblock>

&lt;admindoc:head&gt;
  &lt;jurisinfo:execbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;AB&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;
&lt;!-- and also --&gt;
&lt;doc:metadata&gt;
  &lt;doc:docinfo doc-content-country="CA"&gt;
    &lt;dc:coverage&gt;
      &lt;location:state codescheme="ISO-3166-2" statecode="AB"/&gt;
    &lt;/dc:coverage&gt;
  &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
        </example>

        <example>
            <title>SOURCE XML 3: Territory code</title>
            <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris&gt;NT&lt;/leg:juris&gt;   &lt;!-- the code for Northwest Territories --&gt;
&lt;/leg:info&gt;

          </codeblock>
            <title>TARGET XML 3: Territory code</title>
            <codeblock>

&lt;admindoc:head&gt;
  &lt;jurisinfo:execbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;NT&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;
&lt;!-- and also --&gt;
&lt;doc:metadata&gt;
  &lt;doc:docinfo doc-content-country="CA"&gt;
    &lt;dc:coverage&gt;
      &lt;location:territory codescheme="ISO-3166-2" territorycode="NT"/&gt;
    &lt;/dc:coverage&gt;
  &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

          </codeblock>
        </example>

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.juris.dita  -->
	<xsl:message>admindoc_standardCI_leg.juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  admindoc:head/jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<admindoc:head>
			<jurisinfo:execbodyinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
				<jurisinfo:jurisdiction>
					<jurisinfo:system>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:system>
				</jurisinfo:jurisdiction>
			</jurisinfo:execbodyinfo>
		</admindoc:head>

	</xsl:template>

</xsl:stylesheet>