<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU19_CC_ASX_Namespaces">
  <title>Namespaces <lnpid>id-AU19CC-21814</lnpid></title>
  <body>
    <ul>
      <li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
      <li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
      <li>xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"</li>
      <li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
      <li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
      <li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
      <li>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</li>
      <li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</li>
      <li>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</li>
      <li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
      <li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
      <li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</li>
      <li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
      <li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"  </li>
      <li>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</li>
      <li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
      <li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"&gt;</li>
      <li>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</li>
      <li>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/”</li>
    </ul>
  </body>
	</dita:topic>

  <xsl:variable name="lexisAdvNamespaces" as=" element() ">
    <lexisAdvNamespaces>
      <lexisAdvNamespace>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:glp="http://www.lexis-nexis.com/glp"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/”</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:ci="http://www.lexis-nexis.com/ci"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:leg="http://www.lexis-nexis.com/glp/leg"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:source_lnci="http://www.lexis-nexis.com/lnci"</lexisAdvNamespace>
    </lexisAdvNamespaces>
  </xsl:variable>
	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CC_ASX\AU19_CC_ASX_Namespaces.dita  -->
	<!--<xsl:message>AU19_CC_ASX_Namespaces.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>