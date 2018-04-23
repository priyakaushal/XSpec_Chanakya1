<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
  <title>case:juris <lnpid>id-UK02-27227</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li>
            <sourcexml>case:juris</sourcexml> becomes <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>. 
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
              </li></ul>
          </li></ul>      
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-07-19: <ph id="change_20130719_SSX">Instruction have been added to handle <sourcexml>case:juris</sourcexml>
        according to the jurisdiction value it holds.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.juris.dita  -->

	<xsl:template match="case:juris">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:system>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:system>
	</xsl:template>

	<!-- TODO: ensure these are plugged into metadata template calls -->
	<xsl:template match="case:juris[.='EnglandandWales']" mode="metadata">
	<dc:coverage>
		<location:country codescheme="ISO-3166-2" countrycode="GB-EAW">
			<xsl:apply-templates/>
		</location:country>
	</dc:coverage>
	</xsl:template>

	<xsl:template match="case:juris[.='Scotland']" mode="metadata">
		<dc:coverage>
			<location:country codescheme="ISO-3166-2" countrycode="GB-SCT">
				<xsl:apply-templates/>
			</location:country>
		</dc:coverage>
	</xsl:template>


	<xsl:template match="case:juris[.='NorthernIreland']" mode="metadata">
		<dc:coverage>
			<location:country codescheme="ISO-3166-2" countrycode="GB-NIR">
				<xsl:apply-templates/>
			</location:country>
		</dc:coverage>
	</xsl:template>
	
	<!-- NOTE: this is called from /modules/nonamespace/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl -->
	<xsl:template match="case:juris" mode="metadata">
		<!-- do nothing -->
	</xsl:template>

</xsl:stylesheet>