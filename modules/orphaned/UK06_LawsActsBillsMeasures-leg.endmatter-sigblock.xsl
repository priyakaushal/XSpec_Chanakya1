<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.endmatter-sigblock">
  <title>leg:endmatter/sigblock <lnpid>id-UK06-28049</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>sigblock</sourcexml> comes under the <sourcexml>leg:endmatter</sourcexml>
        markup in source then target conversion needs to convert
          <targetxml>primlaw:level[@leveltype="endnote"]/primlaw:bodytext/sigbock</targetxml> and
        all other sub-child elements converted through the common module.</p>
	   </section>
    <section>
      <title>Changes</title>
      <p>2016-08-19 <ph id="change_20160819_SS">Created the instruction for handling input <sourcexml>leg:endmatter/sigblock</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.endmatter-sigblock.dita  -->
	
	<!-- Sudhanshu Srivastava 
	     Edited : 19 June 2017.
	     Comments : This is conetent specific module handling sigblock inside leg:endmatter.
	
	-->
	<xsl:template match="leg:endmatter/sigblock">
		<!--  Original Target XPath:  primlaw:level[@leveltype="endnote"]/primlaw:bodytext/sigbock   -->
				<sigbock>
					<xsl:apply-templates select="@* | node()"/>
				</sigbock>
	</xsl:template>
</xsl:stylesheet>