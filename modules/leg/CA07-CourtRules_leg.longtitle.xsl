<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.longtitle">
  <title>leg:longtitle <lnpid>id-CA07-14022</lnpid></title>
  <body>
    <section>
      <p>
                <sourcexml>leg:info/leg:longtitle</sourcexml> becomes
                    <targetxml>primlaw:prelim/primlaw:synopsis</targetxml> and create required child
                    <targetxml>bodytext</targetxml>. </p> 
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:info&gt;
    &lt;leg:longtitle&gt;
        &lt;p&gt;
            &lt;text&gt; RÈGLES DES COURS FÉDÉRALES EN MATIÈRE D'IMMIGRATION ET DE PROTECTION
                DES RÉFUGIÉS [DORS/2002-232, art. 1]&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:longtitle&gt;
&lt;/leg:info&gt;

    </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;primlaw:prelim&gt;
    &lt;primlaw:synopsis&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; RÈGLES DES COURS FÉDÉRALES EN MATIÈRE D'IMMIGRATION ET DE PROTECTION
                DES RÉFUGIÉS [DORS/2002-232, art. 1]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;  
    &lt;/primlaw:synopsis&gt;
&lt;/primlaw:prelim&gt; 

    </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.longtitle.dita  -->
	
	<xsl:template match="leg:info/leg:longtitle">

		<!--  Original Target XPath:  primlaw:prelim/primlaw:synopsis   -->
		<primlaw:prelim>
			<primlaw:synopsis>
			    <bodytext>
			        <xsl:apply-templates select="@* | node()"/></bodytext>
			</primlaw:synopsis>
		</primlaw:prelim>
	  
	</xsl:template>

</xsl:stylesheet>