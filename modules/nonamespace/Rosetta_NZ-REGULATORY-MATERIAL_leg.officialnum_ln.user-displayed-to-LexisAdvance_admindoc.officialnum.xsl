<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_NZ-REGULATORY-MATERIAL_leg.officialnum_ln.user-displayed-to-LexisAdvance_admindoc.officialnum">
  <title>(NZ Regulatory Material) <sourcexml>leg:officialnum/@ln.user-displayed</sourcexml> to <targetxml>admindoc:officialtitle</targetxml> <lnpid>id-CCCC-10410</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p><b>For NZ Regulatory Material:</b> If <sourcexml>leg:officialnum</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> becomes
        <targetxml>admindoc:officialnum</targetxml> with attribute <targetxml>source="editoriallyassigned"</targetxml>          
        <note>In order to enable searching and indexing while retaining the display integrity of the information. The @source
          attribute will be populated with "editoriallyassigned" indicating these fields were assigned their value.
          The viewspec will utilize the @source attribute to choose whether to display this information
          differently or not at all depending on the needs of the LBU users.</note> 
      </p>
      
    </section>  
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:info&gt;
 &lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;Act No. 210, 2005&lt;/leg:officialnum&gt;
&lt;/leg:info&gt;
            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;admindoc:info&gt;
 &lt;admindoc:officialnum source="editoriallyassigned"&gt;Act No. 210, 2005&lt;/admindoc:officialnum&gt;
&lt;/admindoc:info&gt;

            </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>First Draft</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_NZ-REGULATORY-MATERIAL_leg.officialnum_ln.user-displayed-to-LexisAdvance_admindoc.officialnum.dita  -->
	<xsl:message>Rosetta_NZ-REGULATORY-MATERIAL_leg.officialnum_ln.user-displayed-to-LexisAdvance_admindoc.officialnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialnum/@ln.user-displayed">

		<!--  Original Target XPath:  admindoc:officialtitle   -->
		<admindoc:officialtitle>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:officialtitle>

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:  admindoc:officialnum   -->
		<admindoc:officialnum>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:officialnum>

	</xsl:template>

	<xsl:template match="leg:officialnum">

		<!--  Original Target XPath:  admindoc:officialnum   -->
		<admindoc:officialnum>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:officialnum>

	</xsl:template>

</xsl:stylesheet>