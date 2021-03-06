<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_leg.dates-LxAdv-primlawinfo.dates">
  <title>leg.dates <lnpid>id-MY07-17415</lnpid></title>
 <body>
    <section>
      <p>
         <sourcexml>leg:dates</sourcexml> becomes <targetxml>primlawinfo:dates</targetxml> which will be the child of <targetxml>courtrule:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/</targetxml>. And rest children are populated as below:
      </p>
</section>  
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.dates-LxAdv-primlawinfo.dates.dita  -->
	<!--<xsl:message>MY07_Rosetta_leg.dates-LxAdv-primlawinfo.dates.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="leg:dates">

		<!--  Original Target XPath:  primlawinfo:dates   -->
		<primlawinfo:dates>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:dates>

	</xsl:template>

</xsl:stylesheet>