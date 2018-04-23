<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_NZ_Regulatory_leg.juris_ln.user-displayed">
  <title><sourcexml>leg:juris/@ln.user-displayed="false"</sourcexml> <lnpid>id-NZ12-24820</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>If <sourcexml>leg:juris</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as usual (as if the
        <sourcexml>@ln.user-displayed</sourcexml> did not exist).</p>
      
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:info&gt;
 &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;NZ&lt;/leg:juris&gt;
&lt;/leg:info&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;admindoc:head&gt;
	&lt;jurisinfo:execbodyinfo&gt;
		&lt;jurisinfo:jurisdiction&gt;
		 &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
		&lt;/jurisinfo:jurisdiction&gt;
	&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;

  
  &lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
     &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ12_Regulatory_Material_From_Services\Rosetta_NZ_Regulatory_leg.juris_ln.user-displayed.dita  -->
	<xsl:message>NZ12_Regulatory_Material_From_Services_Rosetta_NZ_Regulatory_leg.juris_ln.user-displayed.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:juris/@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>