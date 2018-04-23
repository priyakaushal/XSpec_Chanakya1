<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.juris_ln.user-displayed">
  <title><sourcexml>leg:juris/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10381</lnpid></title>
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

&lt;leg:juris ln.userdisplayed="false"&gt;NSW&lt;/leg:juris&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

    &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:legisbodyinfo&gt;
    
    &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt;
        &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.juris_ln.user-displayed.dita  -->
	<!-- JL Nothing to do or see here.  Commenting out of HK01 driver; this will validate if empty but is pretty useless. --> 

	
</xsl:stylesheet>