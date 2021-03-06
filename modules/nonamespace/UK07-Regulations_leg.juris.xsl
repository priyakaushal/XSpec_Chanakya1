<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.juris">
  <title>leg:juris <lnpid>id-UK07-28241</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:juris/location/country</sourcexml> becomes <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes @codescheme="ISO-3166-1" and @countrycode="GB".</p>
      <p>And populated as below:</p>
      <codeblock><b>Source XML</b>

&lt;leg:body&gt;
    &lt;leg:info&gt;
        &lt;!-- ETC. --&gt;
        &lt;leg:juris&gt;
            &lt;location&gt;
                &lt;country iso-cc="GB-ENG"&gt;England&lt;/country&gt;
            &lt;/location&gt;
        &lt;/leg:juris&gt; 
    &lt;/leg:info&gt;
    &lt;!-- ETC. --&gt;
&lt;/leg:body&gt;        
        

 <b>Target XML</b>


&lt;legis:head&gt;
    &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;England&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:legisbodyinfo&gt;
    &lt;!-- ETC. --&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
    &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;
&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;!-- ETC. --&gt;
        &lt;dc:metadata&gt;
            &lt;dc:coverage&gt;
                &lt;location:country codescheme="ISO-3166-1" countrycode="GB"/&gt;
            &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
      </codeblock>

    </section>
    <section>
      <title>Changes</title>
      <p>2016-12-05 <ph id="change_20161205_AS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.juris.dita  -->
    <xsl:template match="leg:juris">
        <!--  Original Target XPath:  jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
        <jurisinfo:legisbodyinfo>
            <jurisinfo:jurisdiction>
                <jurisinfo:system>
                    <xsl:apply-templates select="location/country"/>
                </jurisinfo:system>
            </jurisinfo:jurisdiction>
            <xsl:apply-templates select="following-sibling::leg:govoffice"/>
        </jurisinfo:legisbodyinfo>
    </xsl:template>
    <xsl:template match="location/country" priority="2">
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>