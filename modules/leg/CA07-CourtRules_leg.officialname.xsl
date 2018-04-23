<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname">
  <title>leg:officialname <lnpid>id-CA07-14027</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:info/leg:officialname</sourcexml> becomes <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>.</p>      
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:officialname&gt;Règles des Cours fédérales en matière d'immigration et de protection des réfugiés&lt;/leg:officialname&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;legisinfo:legisinfo&gt;
  &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;Règles des Cours fédérales en matière d'immigration et de protection des réfugiés&lt;/legisinfo:officialtitle&gt;
  &lt;/legisinfo:names&gt;
&lt;/legisinfo:legisinfo&gt;

    </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.officialname.dita  -->

	<xsl:template match="leg:info/leg:officialname">

		<!--  Original Target XPath:  legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<!--<legisinfo:legisinfo>
			<legisinfo:names>-->
				
				  <xsl:choose>
				    <xsl:when test="@ln.user-displayed='false'">
				      <legisinfo:officialtitle source="editoriallyassigned">
				        <xsl:apply-templates select="@* | node()"/>
				      </legisinfo:officialtitle>
				    </xsl:when>
				    <xsl:otherwise>
				      <legisinfo:officialtitle>
				      <xsl:apply-templates select="@* | node()"/>    
				        </legisinfo:officialtitle>
				    </xsl:otherwise>
				  </xsl:choose>
				  
				
			<!--</legisinfo:names>
		</legisinfo:legisinfo>-->

	</xsl:template>
 
  

</xsl:stylesheet>