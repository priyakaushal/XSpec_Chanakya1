<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU-REGULATORY-MATERIAL_leg.officialname_ln.user-displayed-to-LexisAdvance_admindoc.officialtitle">
  <title>(AU &amp; NZ Regulatory Material) <sourcexml>leg:officialname/@ln.user-displayed</sourcexml> to <targetxml>admindoc:officialtitle</targetxml> <lnpid>id-CCCC-10227</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p><b>For AU Regulatory Material:</b> If <sourcexml>leg:officialname</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> becomes
        <targetxml>admindoc:officialtitle</targetxml> with attribute <targetxml>source="editoriallyassigned"</targetxml>          
        <note>In order to enable searching and indexing while retaining the display integrity of the information. The @source
          attribute will be populated with "editoriallyassigned" indicating these fields were assigned their value.
          The viewspec will utilize the @source attribute to choose whether to display this information
          differently or not at all depending on the needs of the LBU users.</note> 
      </p>
      
    </section>  
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:officialname searchtype="LEGISLATION" ln.user-displayed="false"&gt;SUPREME COURT (FOREIGN JUDGMENTS) RULES 1993&lt;/leg:officialname&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;admindoc:info&gt;
&lt;admindoc:officialtitle source="editoriallyassigned"&gt;SUPREME COURT (FOREIGN JUDGMENTS) RULES 1993&lt;/admindoc:officialtitle&gt;
&lt;/admindoc:info&gt;

            </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2012-10-29: Instruction update for NZ Regulatory Material.</p>
    </section>
  </body>
	</dita:topic>

<!-- handled in AU15_Regulatory_materials_leg.info.xsl -->
  <!--<xsl:template match="leg:officialname[@ln.user-displayed='false']">

		<!-\-  Original Target XPath:  admindoc:officialtitle   -\->
    <admindoc:officialtitle source='editoriallyassigned'>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:officialtitle>

	</xsl:template>-->
  
  <xsl:template match="leg:officialname/@ln.user-displayed"/>

</xsl:stylesheet>