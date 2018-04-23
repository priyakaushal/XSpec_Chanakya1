<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_leg-juris">
 <title>leg:juris <lnpid>id-PH03-34615</lnpid></title>
 <body>
     <p><sourcexml>leg:juris</sourcexml> becomes <targetxml>jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attribute @codescheme="ISO-3166-1" and @countrycode="PH"</p>
  <section>
   <title>Source XML</title>
   <pre>
   
   
    &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;PH&lt;/leg:juris&gt;
   
   
   </pre>
  </section>
  <p>Becomes</p>
  <section>
   <title>Target XML</title>
   <pre>
   
&lt;admindoc:head&gt;
    &lt;jurisinfo:execbodyinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;PH&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;

&lt;! -- and also create dc:metadata/dc:coverage/location:country in doc:metadata --&gt;
&lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="PH"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
   
   
   </pre>
      <note>If in the source documents <sourcexml>leg:juris</sourcexml> have attribute
                    <sourcexml>ln.user-displayed="false"</sourcexml> then map it as usual (as if the
                @ln.user-displayed did not exist). </note>
      <note><sourcexml>@searchtype</sourcexml> will be drop in target.</note>
  </section>
  
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_leg-juris.dita  -->
	<xsl:message>GPL_PH03_leg-juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:execbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:execbodyinfo>

	</xsl:template>

	<xsl:template match="ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>