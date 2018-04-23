<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Body">
  <title>Body <lnpid>id-NZ17CA-25617</lnpid></title>

  <body>
    <p><sourcexml>cttr:body</sourcexml> becomes <targetxml>abstract:body</targetxml></p>

    <p>The Child elements of <sourcexml>cttr:body</sourcexml> are discussed as individual topics.</p>
  </body>

	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\cttr.body.dita  -->
	
	<!-- Sudhanshu Srivastava:
		 Edited on: 22 Aug 2017.
		 Comments: This module is handling cttr:body from the source document. cttr:body is bieng converted into abstract:body and then then the child of cttr:body is bieng converted.
	-->	

	<xsl:template match="source_cttr:body">
		<!--  Original Target XPath:  abstract:body   -->
		<xsl:apply-templates select="case:headnote/case:info/case:casename,@* | node() except case:headnote"></xsl:apply-templates>
	</xsl:template>
</xsl:stylesheet>