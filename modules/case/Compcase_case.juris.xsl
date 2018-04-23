<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
  <title>case:juris <lnpid>id-ST05-28434</lnpid></title>
  <body>
    <section>
      <ul>
        <li><b><u>FOR AU</u></b>: <sourcexml>case:juris</sourcexml> can have State/Territory code or
          Country code. <ol>
            <li> When <sourcexml>case:juris</sourcexml> has State/Territory code:
                <sourcexml>case:juris</sourcexml> becomes <targetxml>
                /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
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
              will be picked up from <sourcexml>case:courtcode</sourcexml>.</li>
          </ol>
        </li>
        </ul>
    </section>   
    
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>

&lt;case:courtinfo&gt;
  ...
  &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;
  ...
  &lt;case:juris&gt;nsw&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

       </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

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

       </codeblock>
     </example>
     <section>
     <ul>
            <li> When <sourcexml>case:juris</sourcexml> has Country code:
              <note>If value for
                  <sourcexml>case:juris</sourcexml> is "CTH" or "NZ" then
                  <sourcexml>case:juris</sourcexml> will become <targetxml>/compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
                attributes @codescheme="ISO-3166-1" and @countrycode="AU" or @countrycode="NZ".</note>
            </li>
       </ul>
            </section>  
    <example>
      <title>Source XML based on AU content</title>
      <codeblock>

&lt;case:juris&gt;CTH&lt;/case:juris&gt;

OR

&lt;case:juris&gt;NZ&lt;/case:juris&gt;

       </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

              
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

OR

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

       </codeblock>
     </example>

    <note><targetxml>dc:coverage</targetxml> should only be created once for each value of
          <sourcexml>case:juris</sourcexml> in the source. There is no need to create multiple
          <targetxml>dc:coverage</targetxml> elements that hold the same value.</note>
    <section>
      <ul>
        <li><b><u>FOR UK</u></b>:<sourcexml>case:juris</sourcexml> becomes <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>. 
          The element <sourcexml>case:juris</sourcexml> is omitted if it has the value <b>"255"</b>.
          <ul>
            <li>
              If the value of <sourcexml>case:juris</sourcexml> has any one of these three values 'EnglandandWales', 'Scotland' or 'NorthernIreland', then 
              a new element <targetxml>dc:metadata/dc:coverage/location:country</targetxml> is created, with attributes
              <targetxml>@codescheme="ISO-3166-2"</targetxml> and
              <targetxml>@countrycode</targetxml>. The value of this new element will be the value of <sourcexml>case:juris</sourcexml>.
              <note>
                Value of attribute <targetxml>dc:metadata/dc:coverage/location:country/@countrycode</targetxml> is determined by the value of source path 
                <sourcexml>case:juris</sourcexml>, as listed below.
                <ul>
                  <li>If the value is <sourcexml>EnglandandWales</sourcexml> then attribute value will be <targetxml>@countrycode="GB-EAW"</targetxml>,</li>
                  <li>if <sourcexml>Scotland</sourcexml> then <targetxml>@countrycode="GB-SCT"</targetxml>, and</li>
                  <li>if <sourcexml>NorthernIreland</sourcexml> then <targetxml>@countrycode="GB-NIR"</targetxml>.</li>
                </ul>
              </note>
              
              <pre>
<b>Source XML based on UK content</b>

&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;Scotland&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;


<b>Target XML</b>
                

&lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;Scotland&lt;/jurisinfo:system&gt;
&lt;/jurisinfo:jurisdiction&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-2" countrycode="GB-SCT"&gt;Scotland&lt;/location:city&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
                
</pre>
            </li>
            <li>
              If the value of <sourcexml>case:juris</sourcexml> is 'EnglandandWales, Scotland, NorthernIreland', then 
              3 separate <targetxml>location:country</targetxml> elements are created within <targetxml>dc:metadata/dc:coverage</targetxml>.
              The following set of values and attributes are added to <targetxml>location:country</targetxml> elements,
              <ul>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>, <targetxml>@countrycode="GB-EAW"</targetxml> and value 'EnglandandWales'</li>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>, <targetxml>@countrycode="GB-SCT"</targetxml> and value 'Scotland'</li>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>, <targetxml>@countrycode="GB-NIR"</targetxml> and value 'NorthernIreland'</li>
              </ul>
            </li>
            <li>If the value of
              <sourcexml>case:juris</sourcexml> is 'European', then a new element
              <targetxml>dc:metadata/dc:coverage/location:region</targetxml> is created with attribute
              <targetxml>@regioncode='EU'</targetxml> and value 'Europe'.
              
              <pre>
<b>Source XML based on UK content</b>
                
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;European&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;


<b>Target XML</b>

                
&lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;European&lt;/jurisinfo:system&gt;
&lt;/jurisinfo:jurisdiction&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:region regioncode="EU"&gt;Europe&lt;/location:region&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

</pre>
            </li></ul>
        </li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.juris.dita  -->
	<xsl:message>Compcase_case.juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:juris">

		<!--  Original Target XPath:  /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<compcase:head xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:caseinstanceinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</compcase:caseinstanceinfo>
		</compcase:head>

	</xsl:template>

	<xsl:template match="case:courtcode">

		<!--  Original Target XPath:  /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<compcase:head xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:caseinstanceinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</compcase:caseinstanceinfo>
		</compcase:head>

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

</xsl:stylesheet>