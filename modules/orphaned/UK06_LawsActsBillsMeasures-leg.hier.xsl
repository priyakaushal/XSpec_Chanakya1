<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.hier">
  <title>leg:hier <lnpid>id-UK06-28023</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:hier/leg:hierlev</sourcexml> becomes <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and populated as below:</p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.hier.dita  -->
	
	<!-- Sudhanshu Srivastava :
	     Edited :- 15 June 2017.
	     Comments :- This is content specific module handling leg:hier.
	-->
	<xsl:template match="leg:hier/leg:hierlev">
		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem   -->
		<metaitem name="'leg:hierlev'" value="'SCHEDULE'"/>
	</xsl:template>
</xsl:stylesheet>