<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_case.juris">
  <title>case:juris <lnpid>id-IN03-39023</lnpid></title>
  <body>
    <section>
      <p>When <sourcexml>case:juris</sourcexml> becomes
          <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and
        create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes
          <targetxml>@codescheme="ISO-3166-1"</targetxml> and <targetxml>@countrycode</targetxml>.
          <targetxml>@countrycode</targetxml> value will be the value of
          <sourcexml>case:juris</sourcexml> element.</p>
      <p>suppressed <sourcexml>ln.user-displayed="false"</sourcexml> attribute.</p>
                    <pre>

&lt;case:juris ln.user-displayed="false"&gt;INJMAD&lt;/case:juris&gt;


<b>Becomes</b>

              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;INJMAD&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:statecode codescheme="ISO-3166-2" countrycode="INJMAD"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

</pre>
            
</section>
      <section>
          <title>Changes</title>
          <p>2016-08-17: <ph id="change_20160817_HP">Created</ph>.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN03_Cases\IN03_Rosetta_case.juris.dita  -->
	<xsl:message>IN03_Rosetta_case.juris.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>