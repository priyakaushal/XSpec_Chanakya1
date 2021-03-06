<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita source_case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
  <title>Citator Journal Article - Head <lnpid>id-AU02-18418</lnpid></title>
  <body>
    <p>
      <b>The following conversion instruction is specific to AU Citator Journal Articles :</b>
      <note>Citator Journal Article documents can be identified using the attribute value <sourcexml>CITATORDOC @journalarticle="true"</sourcexml>.</note>
      <sourcexml>case:info</sourcexml> becomes <targetxml>cttr:citedarticle</targetxml>
      <note>Please note that <sourcexml>case:info</sourcexml> tag is omitted here and the content is maintained in the container element <targetxml>cttr:citedarticle</targetxml>.</note>
      
      <note>Please note that the files with the xpath - <sourcexml>cttr:body/case:headnote/case:info/popname</sourcexml> can be excluded from testing for the time. 
        LBU is going to remove the markup (<sourcexml>popname</sourcexml>) in prospective feed. </note>
      
    </p>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\Citator_Journal_Article_Head.dita  -->

	<xsl:template match="source_case:info" mode="citator-journal">
		<cttr:citedarticle>
			<xsl:apply-templates select="@*"/>
		 	<xsl:apply-templates select="source_case:casename" mode="citator-journal"/>
		  	<xsl:apply-templates select="source_case:parallelcite"/>
			<xsl:apply-templates select="source_case:courtinfo" mode="citator-journal"/>
		  	<xsl:apply-templates select="source_case:parallelcite" mode="ref"/>
		</cttr:citedarticle>
	</xsl:template>

	
</xsl:stylesheet>