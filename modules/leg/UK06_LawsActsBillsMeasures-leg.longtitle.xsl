<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"  xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.longtitle">
  <title>leg:longtitle <lnpid>id-UK06-28029</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:longtitle</sourcexml> becomes <targetxml>primlaw:prelim/primlaw:synopsis</targetxml> with child as <targetxml>bodytext</targetxml> and populated as below:
        <note>The target element <targetxml>primlaw:prelim/primlaw:synopsis</targetxml> is coming under <targetxml>legis:body</targetxml> and not in <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml></note>
        <note>Conversion should not create adjacent <targetxml>primlaw:prelim</targetxml>. Content should be merged into a single <targetxml>primlaw:prelim</targetxml> element.</note>
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-08-20 <ph id="change_20130820_JCG">Added a note regarding merging adjacent
            <targetxml>primlaw:prelim</targetxml> elements (indirectly related to WebTeam
          #231496).</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.longtitle.dita  -->
	 
  <!-- Sudhanshu Srivastava :
       Edited : 16 June 2017.
       Comments : This is content specific module handling leg:longtitle.
  -->

	<xsl:template match="leg:longtitle">
		<!--  Original Target XPath:  primlaw:prelim/primlaw:synopsis   -->
			<primlaw:synopsis>
			  <bodytext>
				<xsl:apply-templates select="@* | node()"/>
			  </bodytext>
			</primlaw:synopsis>
	</xsl:template>
</xsl:stylesheet>