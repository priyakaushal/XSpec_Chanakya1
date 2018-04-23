<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" 
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Body">
  <title>Body <lnpid>id-HK01-36807</lnpid></title>
  <body>
    <section>

<p>All of the following are descendants of <targetxml>legis:body</targetxml>. Handle in document order unless specifically stated otherwise.
Refer to General Markup Section for handling of children (including mixed content).</p>

<p><b>legis:body</b></p>

<p><sourcexml>leg:body</sourcexml> becomes <targetxml>legis:body</targetxml> and child elements as described below:</p>
      
    </section>    
  </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\Body.dita  -->


	<xsl:template match="leg:body">
		<legis:body>
			<xsl:apply-templates select="@* | node()"/>
		</legis:body>
	</xsl:template>

</xsl:stylesheet>