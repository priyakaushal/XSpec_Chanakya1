<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.longtitle">
  <title>leg:longtitle <lnpid>id-CA06-13822</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:longtitle</sourcexml> becomes
          <targetxml>regulation:body/primlaw:prelim/primlaw:synopsis</targetxml> and create required
        child <targetxml>bodytext</targetxml></p> 
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:longtitle</sourcexml></title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:longtitle&gt;&lt;p&gt;&lt;text&gt;RÈGLEMENT CONCERNANT L'EMPLOI AVEC STATISTIQUE CANADA DANS LE CADRE DU RECENSEMENT DE 2006&lt;/text&gt;&lt;/p&gt;&lt;/leg:longtitle&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlaw:prelim&gt;
    &lt;primlaw:synopsis&gt;
      &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;RÈGLEMENT CONCERNANT L'EMPLOI AVEC STATISTIQUE CANADA DANS LE CADRE DU RECENSEMENT DE 2006&lt;/text&gt;&lt;/p&gt;
      &lt;/bodytext&gt;  
    &lt;/primlaw:synopsis&gt;
 &lt;/primlaw:prelim&gt;   

       </codeblock>
    </example>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.longtitle.dita  -->
	<!--<xsl:message>CA06-Regulation_leg.longtitle.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:longtitle">

		<!--  Original Target XPath:  regulation:body/primlaw:prelim/primlaw:synopsis   -->
			<primlaw:prelim xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
				<primlaw:synopsis>
				  <bodytext>
					<xsl:apply-templates select="@* | node()"/>
				  </bodytext>
				</primlaw:synopsis>
			</primlaw:prelim>
	</xsl:template>

</xsl:stylesheet>