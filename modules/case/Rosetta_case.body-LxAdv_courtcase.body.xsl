<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.body-LxAdv_courtcase.body.dita">
  <title>case:body <lnpid>id-CCCC-12008</lnpid></title>
  <body>
    <section><p><sourcexml>case:body</sourcexml> becomes
      <targetxml>courtcase:body</targetxml>.</p></section>
    <!--<section>
      <title>Changes</title>
      </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.body-LxAdv_courtcase.body.dita  -->
	<!--<xsl:message>Rosetta_case.body-LxAdv_courtcase.body.xsl requires manual development!</xsl:message> -->
	<!--WSS: Done - case:bdoy -->
	<xsl:template match="case:body">

		<!--  Original Target XPath:  courtcase:body   -->
		<courtcase:body>
			<!-- Vikas Rohilla : added for the streamID = CA01			-->
			<xsl:apply-templates select="//case:info/case:constituents[not(ancestor::case:appendix)][$streamID='CA01']"/>
			<!--Satbir: Define these element "case:typeofcase and case:judgement" as a optional for maintain order of elements-->
			<xsl:apply-templates select="case:content/case:typeofcase | case:content/case:judgments"/>
			<!--<xsl:apply-templates select="case:content/case:judgments"/>-->
			<!--<xsl:apply-templates select="case:content/case:judgments/case:judgment/case:courtinfo/case:judges[ancestor::case:content]"/>-->
			<!--<xsl:apply-templates select="case:content/case:judgments/case:constituents"/>-->
			<!--<xsl:apply-templates select="case:content/case:judgments/case:disposition"/>-->
			<!--<xsl:apply-templates select="case:content/case:judgments/case:appendix"/>-->
			<xsl:apply-templates select="case:courtinfo"/>
			<xsl:apply-templates select="case:content/case:author"/>
			<xsl:apply-templates select="case:content/case:appendix[not(parent::case:judgments)]|case:content/case:appendix[$streamID='CA01']"/>
			<xsl:apply-templates select="case:content/page"/>
			<!-- JD: 2017-12-01: supporting dropped <note> content per email from Chuck 2017-12-01/10:41AM.
			Rather than specifically process just <note>, process anything not handled above.  Limit to UK01 for now.  
			-->
			<xsl:if test="$streamID='UK01'">
				<xsl:apply-templates select="case:content/* except(case:content/case:typeofcase,case:content/case:judgments,case:content/case:author,case:content/case:appendix,case:content/page)"/>
			</xsl:if>
			
<!--			<xsl:apply-templates select="case:content/case:author"/>-->
			<!--<xsl:apply-templates select="case:content/case:judgments"/>
			<xsl:apply-templates select="case:content/page"/>
			<xsl:apply-templates select="case:content/case:typeofcase"/>
			<xsl:apply-templates select="case:content/case:appendix[not(parent::case:judgments)]"/>
			
			<xsl:apply-templates select="case:content/case:judgments/case:constituents"/>
			<xsl:apply-templates select="case:content/case:author"/>
			<xsl:apply-templates select="@* | node() except case:info[parent::case:headnote]"/>-->
		</courtcase:body>

	</xsl:template>
	
	<xsl:template match="inlineobject" mode="citator-ref">
		<xsl:if test="contains(@alttext , 'Click for CaseBase entry')">    
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:choose>
					<xsl:when test="starts-with(@alttext , 'Citation')"><xsl:text>none</xsl:text></xsl:when>
					<xsl:when test="starts-with(@alttext , 'Positive')"><xsl:text>positive</xsl:text></xsl:when>
					<xsl:when test="starts-with(@alttext , 'Neutral')"><xsl:text>neutral</xsl:text></xsl:when>
					<xsl:when test="starts-with(@alttext , 'Negative')"><xsl:text>negative</xsl:text></xsl:when>
					<xsl:when test="starts-with(@alttext , 'Cautionary')"><xsl:text>cautionary</xsl:text></xsl:when>
					<xsl:when test="starts-with(@alttext , 'Click')"><xsl:text>none</xsl:text></xsl:when>
				</xsl:choose>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>
	

</xsl:stylesheet>