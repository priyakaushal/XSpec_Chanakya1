<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
  <title>case:juris <lnpid>id-ST01-26217</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:juris</sourcexml> can hold a code representing a province, territory,
        state, or country. The processing of these codes is specific to each country, state, province, etc., so this topic is divided by country:
      <ul><li>Canada</li>
      <li>United Kingdom</li>
      <li>Australia</li>
        <li>New Zealand</li></ul></p>
      </section>
    <section>
      <title>Canada</title><sectiondiv>
        <p>The <b>province</b> codes for Canada are:<ul>
            <li>AB (Alberta)</li>
            <li>BC (British Columbia)</li>
            <li>MB (Manitoba)</li>
            <li>NB (New Brunswick)</li>
            <li>NF (Newfoundland and Labrador)</li>
            <li>NS (Nova Scotia)</li>
            <li>ON (Ontario)</li>
            <li>PE (Prince Edward Island)</li>
            <li>PQ (Quebec)</li>
            <li>SK (Saskatchewan) </li>
          </ul></p>
        <p>When <sourcexml>case:juris</sourcexml> holds a province code:<ul>
            <li>If the code is "NF" (Newfoundland and Labrador), then: <ul>
                <li>Place "NL" (don't include quotes) in
                    <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
                <li>Place "NL" (don't include quotes) in
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>.</li>
                <li>Place "ISO-3166-2" (don't include quotes) in
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@codescheme</targetxml>.</li>
              </ul></li>
            <li>If the code is "PQ" (Quebec), then:<ul>
                <li>Place "QC" (don't include quotes) in
                    <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
                <li>Place "QC" (don't include quotes) in
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>.</li>
                <li>Place "ISO-3166-2" (don't include quotes) in
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@codescheme</targetxml>.</li>
              </ul></li>
            <li>For any other province code: <ul>
                <li>Place the content of <sourcexml>case:juris</sourcexml> in
                    <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
                <li>Place the content of <sourcexml>case:juris</sourcexml> in
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@statecode</targetxml>
                  and </li>
                <li>Place "ISO-3166-2" (don't include quotes) in
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:state/@codescheme</targetxml>.</li>
              </ul></li>
          </ul></p>
      </sectiondiv><p>The <b>territory</b> codes for Canada are:<ul id="ul_csd_dg1_wn">
          <li>NT (Northwest Territories)</li>
          <li>NU (Nunavut)</li>
          <li>YT (Yukon)</li>
        </ul></p><p>When <sourcexml>case:juris</sourcexml> holds a territory code:<ul id="ul_dzd_dg1_wn">
          <li>Map <sourcexml>case:juris</sourcexml> to
              <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
          <li>Also map <sourcexml>case:juris</sourcexml> to
              <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:territory/@territorycode</targetxml>
            and set the value of <targetxml>location:territory/@codescheme</targetxml> to
            "ISO-3166-2" (don't include quotes).</li>
        </ul></p>
      <sectiondiv>
        <p>The <b>country</b> code for Canada is:<ul>
            <li>CD (Canada)</li>
          </ul></p>
        <p>When <sourcexml>case:juris</sourcexml> holds a country code:<ul>
            <li>Place "CA" (don't include quotes) in
                <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.</li>
            <li>Place "CA" (don't include quotes) in
                <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:country/@countrycode</targetxml>.</li>
            <li>Place "ISO-3166-1" (don't include quotes) in
                <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:country/@codescheme</targetxml>.
            </li>
          </ul></p>
      </sectiondiv></section>
    <example>
      <title>Mapping of <sourcexml>case:juris</sourcexml> with province code</title>
      <codeblock>
&lt;case:courtinfo&gt;
  &lt;case:juris ln.user-displayed="false"&gt;PQ&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;QC&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
...
&lt;doc:metadata&gt;
  &lt;doc:docinfo doc-content-country="CA"&gt;
    ...
    &lt;dc:coverage&gt;
      &lt;location:state codescheme="ISO-3166-2" statecode="QC"/&gt;
    &lt;/dc:coverage&gt;
  &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
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
...
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
...
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
        <title>United Kingdom</title>
      <p>
        <ul>
          <li>
            <sourcexml>case:juris</sourcexml> becomes
            <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.
            The element <sourcexml>case:juris</sourcexml> is omitted if it has the value
            <b>"255"</b>. <ul>
              <li> If the value of <sourcexml>case:juris</sourcexml> has any one of these three
                values 'EnglandandWales', 'Scotland' or 'NorthernIreland', then a new element
                  <targetxml>dc:metadata/dc:coverage/location:country</targetxml> is created, with
                attributes <targetxml>@codescheme="ISO-3166-2"</targetxml> and
                  <targetxml>@countrycode</targetxml>. The value of this new element will be the
                value of <sourcexml>case:juris</sourcexml>. <note> Value of attribute
                    <targetxml>dc:metadata/dc:coverage/location:country/@countrycode</targetxml> is
                  determined by the value of source path <sourcexml>case:juris</sourcexml>, as
                  listed below. <ul>
                    <li>If the value is <sourcexml>EnglandandWales</sourcexml> then attribute value
                      will be <targetxml>@countrycode="GB-EAW"</targetxml>,</li>
                    <li>if <sourcexml>Scotland</sourcexml> then
                        <targetxml>@countrycode="GB-SCT"</targetxml>, and</li>
                    <li>if <sourcexml>NorthernIreland</sourcexml> then
                        <targetxml>@countrycode="GB-NIR"</targetxml>.</li>
                  </ul>
                </note>
                <pre>

&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;Scotland&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;Scotland&lt;/jurisinfo:system&gt;
&lt;/jurisinfo:jurisdiction&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-2" countrycode="GB-SCT"&gt;Scotland&lt;/location:country&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
                
</pre>
              </li>
              <li> If the value of <sourcexml>case:juris</sourcexml> is 'EnglandandWales, Scotland,
                NorthernIreland', then 3 separate <targetxml>location:country</targetxml> elements
                are created within <targetxml>dc:metadata/dc:coverage</targetxml>. The following set
                of values and attributes are added to <targetxml>location:country</targetxml>
                elements, <ul>
                  <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="GB-EAW"</targetxml> and value 'EnglandandWales'</li>
                  <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="GB-SCT"</targetxml> and value 'Scotland'</li>
                  <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="GB-NIR"</targetxml> and value 'NorthernIreland'</li>
                </ul>
              </li>
              <li>If the value of <sourcexml>case:juris</sourcexml> is 'European', then a new
                element <targetxml>dc:metadata/dc:coverage/location:region</targetxml> is created
                with attribute <targetxml>@regioncode='EU'</targetxml> and value 'Europe'. <pre>
                
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;European&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>
                
&lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;European&lt;/jurisinfo:system&gt;
&lt;/jurisinfo:jurisdiction&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:region regioncode="EU"&gt;Europe&lt;/location:region&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

</pre>
              </li>
            </ul>
          </li>
        </ul>
      </p>
      
      </section>
  <section>
    <title>Australia</title>
    <ul>
      <li>
        <sourcexml>case:juris</sourcexml> can have State/Territory code or Country code. <ol>
          <li> When <sourcexml>case:juris</sourcexml> has State/Territory code:
            <sourcexml>case:juris</sourcexml> becomes
            <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
            and create <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with
            attributes @codescheme="ISO-3166-2" and @statecode, value for this attribute will be
            picked from the below mentioned pick list: <ol>
              <li> AU-NS : New South Wales (NSW) </li>
              <li> AU-QL : Queensland (QLD) </li>
              <li> AU-SA : South Australia (SA) </li>
              <li> AU-TS : Tasmania (TAS) </li>
              <li> AU-VI : Victoria (VIC) </li>
              <li> AU-WA : Western Australia (WA) </li>
              <li> AU-CT : Australian Capital Territory (ACT) </li>
              <li> AU-NT : Northern Territory (NT) </li>
            </ol> and the value for
            <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
            will be picked up from
            <sourcexml>case:courtcode</sourcexml>.<pre xml:space="preserve">

&lt;case:courtinfo&gt;
  ...
  &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;
  ...
  &lt;case:juris&gt;nsw&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;
<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="NSWSC" /&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;nsw&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

</pre>
          </li>
          <li> When <sourcexml>case:juris</sourcexml> has Country code: <note>If value for
            <sourcexml>case:juris</sourcexml> is "CTH" then <sourcexml>case:juris</sourcexml>
            will become
            <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
            and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
            attributes @codescheme="ISO-3166-1" and @countrycode="AU". </note>
            <pre xml:space="preserve">
&lt;case:juris&gt;CTH&lt;/case:juris&gt;

<b>Becomes</b>
              
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
</pre>
            <note>The ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml> and
              <targetxml>jurisinfo:jurisdiction\jurisinfo:system</targetxml> is not significant
              in terms of display.</note>
          </li>
        </ol>
      </li>
    </ul>
    
  </section>
 <section>
   <title>New Zealand</title>
   <ul>
     <li>
       <sourcexml>case:juris</sourcexml> becomes
       <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and
       create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes
       <targetxml>@codescheme="ISO-3166-1"</targetxml> and
       <targetxml>@countrycode="NZ"</targetxml>. And the value for
       <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
       will be picked up from <sourcexml>case:courtcode</sourcexml>.<pre xml:space="preserve">

&lt;case:courtinfo&gt;
  ...
  &lt;case:courtcode&gt;NZCA&lt;/case:courtcode&gt;
  ...
  &lt;case:juris&gt;NZ&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZCA" /&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:coverage&gt;
  &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
&lt;/dc:coverage&gt;

</pre>
       <note>The ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml> and
         <targetxml>jurisinfo:jurisdiction\jurisinfo:system</targetxml> is not significant in
         terms of display.</note>
     </li>
   </ul>
   
 </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.juris-jursinfo.system.dita  -->
	<xsl:message>case.juris-jursinfo.system.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="EnglandandWales">

		<!--  Original Target XPath:  @countrycode="GB-EAW"   -->
		<xsl:attribute name="countrycode">
			<xsl:text>GB-EAW</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="Scotland">

		<!--  Original Target XPath:  @countrycode="GB-SCT"   -->
		<xsl:attribute name="countrycode">
			<xsl:text>GB-SCT</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="NorthernIreland">

		<!--  Original Target XPath:  @countrycode="GB-NIR"   -->
		<xsl:attribute name="countrycode">
			<xsl:text>GB-NIR</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="case:courtcode">

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:courtinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:courtinfo>

	</xsl:template>

</xsl:stylesheet>