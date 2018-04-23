<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="us_landingpgs-leg.juris">
  <title><sourcexml>leg:info/leg:juris</sourcexml> <lnpid>id-MY08-17617</lnpid></title>
  <body>
    <p>The element <sourcexml>leg:juris</sourcexml> can contain only the value "MY" or a value that
      starts with "MY" followed by additional letters. In either case, the element
        <targetxml>doc:metadata/dc:metadata/dc:coverage/location:country</targetxml> is created. The source
      attributes of <sourcexml>leg:juris</sourcexml> are dropped, and the target attributes
        <targetxml>location:country/@codescheme="IS-3166-1"</targetxml> and
      <targetxml>location:country/@countrycode="MY"</targetxml> are set. The content of <targetxml>location:country</targetxml> is always set to "MY".</p>
    <p>If the content of <sourcexml>leg:juris</sourcexml> starts with "MY" and contains addtional
      PCDATA characters, a second element is also created as a sibling of
        <targetxml>location:country</targetxml>. This element is either
        <targetxml>location:state[@codescheme="ISO-3166-2"]</targetxml> or
        <targetxml>location:territory[@codescheme="ISO-3166-2"]</targetxml>, depending on the
      content of <sourcexml>leg:juris</sourcexml>. The content of these two elements is the
      additional PCDATA characters of <sourcexml>leg:juris</sourcexml> that follow "MY". These two
      elements also specify the additional attribute
        <targetxml>location:state[@statecode]</targetxml> or
        <targetxml>location:territory[@territorycode]</targetxml> respectively. Which element (and
      additional attribute and its value) is used depends on the content of
        <sourcexml>leg:juris</sourcexml> according to the following table.</p>
    <table rowsep="1">
      <tgroup cols="2">
        <thead>
          <row>
            <entry>content of <sourcexml>leg:juris</sourcexml></entry><entry>target element, additional attribute, and value</entry>
          </row>
        </thead>
        <tbody>
          <row>
            <entry>MYJHR</entry><entry><targetxml>location:state[@statecode="MY-01"]</targetxml></entry>
          </row>
          <row>
            <entry>MYKDH</entry><entry><targetxml>location:state[@statecode="MY-02"]</targetxml></entry>
          </row>
          <row>
            <entry>MYKTN</entry><entry><targetxml>location:state[@statecode="MY-03"]</targetxml></entry>
          </row>
          <row>
            <entry>MYMEL</entry><entry><targetxml>location:state[@statecode="MY-04"]</targetxml></entry>
          </row>
          <row>
            <entry>MYNSN</entry><entry><targetxml>location:state[@statecode="MY-05"]</targetxml></entry>
          </row>
          <row>
            <entry>MYPHG</entry><entry><targetxml>location:state[@statecode="MY-06"]</targetxml></entry>
          </row>
          <row>
            <entry>MYPEN</entry><entry><targetxml>location:state[@statecode="MY-07"]</targetxml></entry>
          </row>
          <row>
            <entry>MYPRK</entry><entry><targetxml>location:state[@statecode="MY-08"]</targetxml></entry>
          </row>
          <row>
            <entry>MYPLS</entry><entry><targetxml>location:state[@statecode="MY-09"]</targetxml></entry>
          </row>
          <row>
            <entry>MYSEL</entry><entry><targetxml>location:state[@statecode="MY-10"]</targetxml></entry>
          </row>
          <row>
            <entry>MYTRG</entry><entry><targetxml>location:state[@statecode="MY-11"]</targetxml></entry>
          </row>
          <row>
            <entry>MYSBH</entry><entry><targetxml>location:state[@statecode="MY-12"]</targetxml></entry>
          </row>
          <row>
            <entry>MYSWK</entry><entry><targetxml>location:state[@statecode="MY-13"]</targetxml></entry>
          </row>
          <row>
            <entry>MYKUL</entry><entry><targetxml>location:territory[@territorycode="MY-14"]</targetxml></entry>
          </row>
          <row>
            <entry>MYLBN</entry><entry><targetxml>location:territory[@territorycode="MY-15"]</targetxml></entry>
          </row>                
          <row>
            <entry>MYPJY</entry><entry><targetxml>location:territory[@territorycode="MY-16"]</targetxml></entry>
          </row>                
        </tbody>
      </tgroup>
    </table>
    <!--
        Reference showing how ISO codes map to actual official abbreviations and subdivision names.
        Most names (1 to 13) are states.
        Names with Wilayah Persekutuan (14, 15 and 16) are territories.
        
         ISO Code  	Abbreviation	Subdivision name
          MY-01 	   JHR	           Johor                               
          MY-02 	   KDH	           Kedah                               
          MY-03 	   KTN	           Kelantan                            
          MY-04 	   MLK	           Melaka                              
          MY-05 	   NSN	           Negeri Sembilan                     
          MY-06 	   PHG	           Pahang                              
          MY-07 	   PNG	           Pulau Pinang                        
          MY-08 	   PRK	           Perak                               
          MY-09 	   PLS	           Perlis                              
          MY-10 	   SGR	           Selangor                            
          MY-11 	   TRG	           Terengganu                          
          MY-12 	   SBH	           Sabah                               
          MY-13 	   SRW	           Sarawak                             
          MY-14 	   KUL	           Kuala Lumpur (Wilayah Persekutuan)
          MY-15 	   LBN	           Labuan (Wilayah Persekutuan)
          MY-16 	   PJY	           Putrajaya (Wilayah Persekutuan)
    -->
    <note>The element <sourcexml>leg:juris</sourcexml> currently <b><u>must</u></b> contain either
      only the value "MY", or start with "MY" followed by additional characters as listed in the
      table above. If any other value is present, the conversion must fail and signal an alert so
      that the new values are analysed and proper instructions are added to this CI document.</note>
    <section>
      <title>Source XML showing <sourcexml>leg:info</sourcexml> and child elements</title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;Subsidiary Legislation&lt;/leg:officialname&gt;
  &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1966&lt;/leg:year&gt;
  &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;MY&lt;/leg:juris&gt;
&lt;/leg:info&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <p>Note how <sourcexml>leg:officialname</sourcexml> and <sourcexml>leg:year</sourcexml> are
        suppressed and only <sourcexml>leg:juris</sourcexml> is converted to the target
        document.</p>
      <codeblock>

&lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
    &lt;!--...--&gt;
    &lt;dc:metadata&gt;
      &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="MY"&gt;MY&lt;/location:country&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>leg:info/leg:juris</sourcexml> that contains additional characters following "MY" that map to a state</title>
      <codeblock>
        
&lt;leg:info&gt;
  &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;Amendment Acts&lt;/leg:officialname&gt;
  &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1966&lt;/leg:year&gt;
  &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;MYPEN&lt;/leg:juris&gt;
&lt;/leg:info&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>
        
&lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
    &lt;!--...--&gt;
    &lt;dc:metadata&gt;
      &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="MY"&gt;MY&lt;/location:country&gt;
        &lt;location:state codescheme="ISO-3166-2" statecode="MY-07"&gt;PEN&lt;/location:state&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;

      </codeblock>
    </section>
    <section>
      <title>Source XML showing <sourcexml>leg:info/leg:juris</sourcexml> that contains additional characters following "MY" that map to a territory</title>
      <codeblock>
        
&lt;leg:info&gt;
  &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;Bills&lt;/leg:officialname&gt;
  &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1966&lt;/leg:year&gt;
  &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;MYKUL&lt;/leg:juris&gt;
&lt;/leg:info&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>
        
&lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
    &lt;!--...--&gt;
    &lt;dc:metadata&gt;
      &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="MY"&gt;MY&lt;/location:country&gt;
        &lt;location:territory codescheme="ISO-3166-2" territorycode="MY-14"&gt;KUL&lt;/location:territory&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;

      </codeblock>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\leg.juris.dita  -->
	<xsl:message>MY08_navaid_leg.juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:juris">

		<!--  Original Target XPath:  doc:metadata/dc:metadata/dc:coverage/location:country   -->
		<doc:metadata>
			<dc:metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
				<dc:coverage>
					<location:country>
						<xsl:apply-templates select="@* | node()"/>
					</location:country>
				</dc:coverage>
			</dc:metadata>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  doc:metadata/dc:metadata/dc:coverage/location:country   -->
		<doc:metadata>
			<dc:metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
				<dc:coverage>
					<location:country>
						<xsl:apply-templates select="@* | node()"/>
					</location:country>
				</dc:coverage>
			</dc:metadata>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:year">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>