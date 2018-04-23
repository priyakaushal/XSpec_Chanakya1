<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-AR03-34810</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
            <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>
&lt;leg:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;la Ley N. 25.064 de Presupuesto General de la
            Administración Nacional para el año 1999, y &lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:bodytext&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>
&lt;primlaw:bodytext&gt;    
    &lt;p&gt;&lt;text&gt;la Ley N. 25.064 de Presupuesto General de la
        Administración Nacional para el año 1999, y&lt;/text&gt;&lt;/p&gt;    
&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>
     <section>
       <title>Changes</title>
       <p>2014-12-02:<ph id="change_20141202_AS">Created.</ph></p>
     </section>
     </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\leg.bodytext.dita  -->
	<xsl:message>AR03-Regulation_leg.bodytext.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>