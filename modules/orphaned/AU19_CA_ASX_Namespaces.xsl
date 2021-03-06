<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU19_LA_ASX_Namespaces">
  <title>Namespaces <lnpid>id-AU19CA-21615</lnpid></title>
  <body>
    <ul>
      <li>xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"</li>
      <li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</li>
      <li>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</li>
      <li>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</li>
      <li>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</li>
      <li>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</li>
      <li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
      <li>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</li>
      <li>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</li>
      <li>xmlns:register="http://www.lexisnexis.com/xmlschemas/content/legal/register/1/"</li>
      <li>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</li>
      <li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
      <li>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</li>
      <li>xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/"</li>
      <li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</li>
      <li>xmlns:dcterms="http://purl.org/dc/terms/"</li>
      <li>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</li>
      <li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
      <li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
      <li>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</li>
      <li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</li>
      <li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
      <li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
      <li>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</li>
      <li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
      <li>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</li>
      <li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
      <li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</li>
      <li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</li>
      <li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</li>
      <li>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</li>
      <li>xmlns:registerinfo="http://www.lexisnexis.com/xmlschemas/content/legal/register-info/1/"</li>
      <li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
      <li>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</li>
      <li>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</li>
      <li>xmlns:xs="http://www.w3.org/2001/XMLSchema"</li>
    </ul>
  </body>
	</dita:topic>
  
  <xsl:variable name="lexisAdvNamespaces">
    <lexisAdvNamespaces>
      <lexisAdvNamespace>xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</lexisAdvNamespace>
    </lexisAdvNamespaces>
  </xsl:variable>

 <!-- <xsl:variable name="lexisAdvNamespaces" as=" element() ">
    <lexisAdvNamespaces
      xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"
      xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
      xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
      xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
      xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
      xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
      xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
      xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
      xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
      xmlns:register="http://www.lexisnexis.com/xmlschemas/content/legal/register/1/"
      xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
      xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
      xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
      xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/"
      xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"
      xmlns:dcterms="http://purl.org/dc/terms/"
      xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"
      xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
      xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
      xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"
      xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
      xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
      xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
      xmlns:guid="urn:x-lexisnexis:content:guid:global:1"
      xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"
      xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
      xmlns:dc="http://purl.org/dc/elements/1.1/"
      xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
      xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
      xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
      xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"
      xmlns:registerinfo="http://www.lexisnexis.com/xmlschemas/content/legal/register-info/1/"
      xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"
      xmlns:xs="http://www.w3.org/2001/XMLSchema" />
  </xsl:variable>-->

</xsl:stylesheet>