<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_refnum_ln.user-displayed">
  <title><sourcexml>refnum/@ln.user-displayed</sourcexml> <lnpid>id-CCCC-10440</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>When <sourcexml>refnum</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> (i.e. <sourcexml>refnum/@ln.user-displayed="false"</sourcexml>),
      that element is translated into the target but with the element content omitted. Only the attributes are populated. So there is no displayable content.</p>
      
    </section>  
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;refnum refnumtype="UCN" ln.user-displayed="false"&gt;00836591&lt;/refnum&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;refnum refnumscheme="UCN" num="00836591"/&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_refnum_ln.user-displayed.dita  -->
	
	<xsl:template match="refnum[@ln.user-displayed='false']">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			
		<!--  Could not determine target element or attribute name:  </>  -->
	  <refnum>
			<xsl:attribute name="refnumscheme">UCN</xsl:attribute>
			<xsl:attribute name="num" select="node()"/>			
			
		</refnum>

	</xsl:template>

	<xsl:template match="refnum/@ln.user-displayed"/>
	

</xsl:stylesheet>