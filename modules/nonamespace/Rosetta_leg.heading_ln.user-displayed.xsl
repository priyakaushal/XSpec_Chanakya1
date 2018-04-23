<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.heading_ln.user-displayed">
  <title><sourcexml>leg:heading/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10379</lnpid></title>
  <body>
  	<!-- *********************** -->
  	<!-- DO NOT USE - functionality elsewhere -->
  	<!-- See Rosetta_heading_ln.user-displayed.xsl  -->
  	<!-- *********************** -->
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis
        Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when
        this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>If <sourcexml>leg:heading</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> the element is suppressed.</p>
           
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:heading ln.user-displayed="false"&gt;
    &lt;title&gt;Preliminary&lt;/title&gt;
&lt;/leg:heading&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;!-- output Suppressed --&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>


	<xsl:template match="leg:heading[@ln.user-displayed='false' and not(parent::leg:level-vrnt)]"/>



</xsl:stylesheet>