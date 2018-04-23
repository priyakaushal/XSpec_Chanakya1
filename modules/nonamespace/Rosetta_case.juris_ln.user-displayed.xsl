<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.juris_ln.user-displayed">
  <title><sourcexml>case:juris/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10263</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>If <sourcexml>case:juris</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as usual (as if the
        <sourcexml>@ln.user-displayed</sourcexml> did not exist).</p>
      
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:juris ln.user-displayed="false"&gt;AB&lt;/case:juris&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;AB&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:state codescheme="ISO-3166-2" statecode="AB"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

            </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_case.juris_ln.user-displayed.dita  -->
	<!--<xsl:message>Rosetta_case.juris_ln.user-displayed.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:juris[@ln.user-displayed='false']">
    <xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:juris/@ln.user-displayed"/>
</xsl:stylesheet>