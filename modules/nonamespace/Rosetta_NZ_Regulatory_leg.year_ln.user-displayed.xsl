<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_NZ_Regulatory_leg.year_ln.user-displayed">
  <title><sourcexml>leg:year/@ln.user-displayed="false"</sourcexml> <lnpid>id-CCCC-10415</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml> are used for certain functionality in Rosetta that does not exist in Lexis Advance. Each of the following elements have mappings described elsewhere in this CI for when this attribute does not exist. The examples here are ONLY for when this <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a "true" value, i.e. @ln.user-displayed="true".)</note>
      
      <p>When <sourcexml>leg:year</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> (i.e. <sourcexml>leg:year/@ln.user-displayed="false"</sourcexml>), that element is translated into the target but with the element content omitted. Only the attributes are populated. So there is no displayable content.</p>
    </section>  
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:info&gt;
 &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;2005&lt;/leg:year&gt;
&lt;/leg:info&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;admindoc:head&gt;
 &lt;admindecision:decisioninfo&gt;
  &lt;admindecision:dates&gt;
   &lt;admindecision:adopteddate year="2005"&gt;
    &lt;date-text&gt;2005&lt;/date-text&gt;
   &lt;/admindecision:adopteddate&gt;
  &lt;/admindecision:dates&gt;
 &lt;/admindecision:decisioninfo&gt;
&lt;/admindoc:head&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_NZ_Regulatory_leg.year_ln.user-displayed.dita  -->
	 
<!-- Vikas Rohilla : compleated -->
	<xsl:template match="leg:year/@ln.user-displayed[.='false']"/>
  
</xsl:stylesheet>