<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_edpnum_ln.user-displayed">
  <title><sourcexml>edpnum/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10309</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>If <sourcexml>edpnum</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then map to <targetxml>desig</targetxml> or
        <targetxml>altdesig</targetxml> as usual but no element content carried forward. Only the attribute @value is populated.</p>          
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;edpnum ln.user-displayed="false"&gt;2343&lt;/edpnum&gt;

</codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;desig value="2343"/&gt;

            </codeblock>
    </example>
    
    
    
  </body>
	</dita:topic>

        <!-- CSN: Created pednum when @ln.user-displayed='false' -->
        <xsl:template match="epdnum[@ln.user-displayed='false']">
          <xsl:element name="desig">
            <xsl:attribute name="value">
              <xsl:value-of select="."/>
            </xsl:attribute>
          </xsl:element>
        </xsl:template>
      
</xsl:stylesheet>