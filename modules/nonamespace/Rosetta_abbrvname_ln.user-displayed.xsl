<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_abbrvname_ln.user-displayed">
  <title><sourcexml>abbrvname/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10220</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>When <sourcexml>abbrvname</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> (i.e. <sourcexml>abbrvname/@ln.user-displayed="false"</sourcexml>),
      that element is translated into the target but with the element content omitted. Only the attributes are populated. So there is no displayable content.</p>
      
    </section> 
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;abbrvname ln.user-displayed="false"&gt;CALabArb&lt;/abbrvname&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;jurisinfo:courtname normshortname="CALabArb"/&gt;

            </codeblock>
    </example>   
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_abbrvname_ln.user-displayed.dita  -->

	<xsl:template match="abbrvname[@ln.user-displayed='false']" priority="25">
		<xsl:apply-templates/>
	</xsl:template>
		
</xsl:stylesheet>