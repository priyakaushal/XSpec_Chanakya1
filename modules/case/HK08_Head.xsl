<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
  <title>Head <lnpid>id-HK08-37621</lnpid></title>
  <body>
    <p>
        <sourcexml>case:headnote</sourcexml> becomes <targetxml>cttr:head</targetxml> and
        children are described below. 
      
    </p>
  </body>
	</dita:topic>

	<xsl:template match="case:headnote">

		<!--  Original Target XPath:  cttr:head   -->
		<cttr:head>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:head>

	</xsl:template>

</xsl:stylesheet>