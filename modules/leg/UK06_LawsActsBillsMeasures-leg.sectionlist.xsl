<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.sectionlist">
 <title>leg:sectionlist <lnpid>id-UK06-28039</lnpid></title>
 <body>
  <section>
   <p><sourcexml>leg:sectionlist</sourcexml> becomes <targetxml>primlaw:level[@leveltype="unclassified"]/navaid:navigationaid[@type="sectionlist"]</targetxml> with required child <targetxml>bodytext</targetxml> and child elements will be converted as:
    <ul>
     <li><sourcexml>leg:sectionlist/leg:heading/title</sourcexml> becomes <targetxml>navaid:navigationaid[@type="sectionlist"]/title</targetxml></li>
     <li><sourcexml>leg:sectionlist/p</sourcexml>  becomes <targetxml>navaid:navigationaid[@type="sectionlist"]/bodytext</targetxml></li>
    </ul>
    populated as below:</p>
   
   <note>The target element <targetxml>primlaw.level[@leveltype="unclassified"]/navaid:navigationaid[@type="sectionlist"]</targetxml> is coming under <targetxml>legis:body</targetxml> and not in <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml></note>
   
   <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the attribute's value <sourcexml>epmh/@typestyle="it"</sourcexml> or <sourcexml>epmh/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
   
   <note>Insert all <sourcexml>leg:sectionlist</sourcexml> element content within this single <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> element.</note>
  </section>
  <section>
   <title>Changes</title>
   <p>2015-08-20 <ph id="change_20150820_AB"> Conversion Instruction Created. (DB #2372).</ph></p>
  </section>
 </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.sectionlist.dita  -->
	
<!-- Sudhanshu Srivastava :
	 Edited :- 15 June 2017.
	 Comments :- This is content specific module handling leg:sectionlist.
	-->

	<xsl:template match="leg:sectionlist">
		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/navaid:navigationaid[@type="sectionlist"]   -->
		<primlaw:level leveltype="unclassified">
			<navaid:navigationaid type="sectionlist">
				<xsl:apply-templates select="leg:heading/title"/>
				<bodytext>
				<xsl:apply-templates select="@* | node() except leg:heading"/>
				</bodytext>
			</navaid:navigationaid>
		</primlaw:level>
	</xsl:template>
</xsl:stylesheet>