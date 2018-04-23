<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	 xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"   version="2.0" exclude-result-prefixes="dita leg legis">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.status">
  <title>leg:status <lnpid>id-UK06-28034</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:status</sourcexml> becomes <targetxml>primlaw:prelim/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml> and populated as below:</p>
      <note>The target element <targetxml>primlaw:prelim</targetxml> is coming under <targetxml>legis:body</targetxml> and not in <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml></note>
      <note>Conversion should not create adjacent <targetxml>primlaw:prelim</targetxml>. Content should be merged into a single <targetxml>primlaw:prelim</targetxml> element.</note>
      <note>Conversion should not create adjacent <targetxml>legisinfo:statusgroup</targetxml>. Content should be merged into a single <targetxml>legisinfo:statusgroup</targetxml> element. For more detail please refer below source and target examples.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-10-21 <ph id="change_20131021_AB">Changed target mapping for <sourcexml>leg:status</sourcexml> and add a note regarding merging adjacent <targetxml>legisinfo:statusgroup</targetxml> element (WebTeam #241961).</ph></p>
      <p>2013-08-20 <ph id="change_20130820_JCG">Added a note regarding merging adjacent <targetxml>primlaw:prelim</targetxml> elements (indirectly related to WebTeam #231496).</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.status.dita  -->
	
	<!-- Sudhanshu Srivastava :
	     Edited :- 15 June 2017.
	     Comments :- This is conetent specific module handling leg:status.
	-->
	<xsl:template match="leg:status[not(preceding-sibling::*[1][self::leg:status])]" priority="2">
		<!--  Original Target XPath:  primlaw:prelim/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
			<!--<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">-->
				<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:statusgroup>
						<legisinfo:status>
							<legisinfo:statustext>
								<xsl:apply-templates select="node()"/>
							</legisinfo:statustext>
						</legisinfo:status>
						<xsl:apply-templates select="following-sibling::leg:status" mode="followstatus"/>
					</legisinfo:statusgroup>
				</legisinfo:legisinfo>
			<!--</primlawinfo:primlawinfo>-->
	</xsl:template>
	
	<xsl:template match="leg:status" mode="followstatus">
		<legisinfo:status xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
			<legisinfo:statustext>
				<xsl:apply-templates select="node()"/>
			</legisinfo:statustext>
		</legisinfo:status>
	</xsl:template>
	
	<xsl:template match="leg:status" priority="1"/>
</xsl:stylesheet>