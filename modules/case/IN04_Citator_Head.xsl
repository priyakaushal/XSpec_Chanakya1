<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Head">
  <title>Citator - Head <lnpid>id-IN04-38814</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>case:info</sourcexml> becomes
            <targetxml>cttr:citeddecision/cttr:caseinfo</targetxml> and the children are described
          in next module. </li>
      </ul>
      </p>
    <section>
      <title>Changes</title>
      <p>2016-08-18: <ph id="change_20160818_SS">Created</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_Citator_Head.dita  -->
	<xsl:message>IN04_Citator_Head.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:info">

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

</xsl:stylesheet>