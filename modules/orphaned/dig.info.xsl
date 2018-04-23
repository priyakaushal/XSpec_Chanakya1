<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.info">
    <title>dig:info <lnpid>id-CA02DC-12632</lnpid></title>
   <body>
      <section>
<ul>
         <li> Rosetta element <sourcexml>dig:info</sourcexml> is a information container element, so omit it and no need to carry forward during NL conversion. 
             <pre>

&lt;dig:info&gt;
    ......
    ......
&lt;/dig:info&gt;
         
             </pre>
                </li>    
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\dig.info.dita  -->
	 
    <!--Vikas Rohilla : Updated the Template initial  -->
    <xsl:template match="dig:info">
        <xsl:apply-templates select="node()|@*"/>
    </xsl:template>

</xsl:stylesheet>