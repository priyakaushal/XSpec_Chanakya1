<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Dictionaries_Namespaces">
  <title>Namespaces <lnpid>id-CA11-14814</lnpid></title>
  <body>
    <ul>
      <li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</li>
      <li>xmlns:directory="urn:x-lexisnexis:content:directory:sharedservices:1"</li>
      <li>xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
      <li>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</li>
      <li>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</li>
      <li>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</li>
      <li>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</li>
      <li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
      <li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</li>
      <li>xmlns:dcterms="http://purl.org/dc/terms/"</li>
      <li>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</li>
      <li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
      <li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
      <li>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</li>
      <li>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</li>
      <li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</li>
      <li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
      <li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
      <li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
      <li>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</li>
      <li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
      <li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</li>
      <li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</li>
      <li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</li>
      <li>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</li>
      <li>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</li>
      <li>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</li>
      <li>xmlns:article="urn:x-lexisnexis:content:article:sharedservices:1"</li>
      <li>xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1"</li>
      <li>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</li>
      <li>xmlns:org="urn:x-lexisnexis:content:organization:sharedservices:1"</li>
      <li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
    </ul>
  </body>
	</dita:topic>

	
  
  <xsl:variable name="lexisAdvanceNamespaces" as=" element() ">
    <lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:directory="urn:x-lexisnexis:content:directory:sharedservices:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:dcterms="http://purl.org/dc/terms/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:article="urn:x-lexisnexis:content:article:sharedservices:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:org="urn:x-lexisnexis:content:organization:sharedservices:1"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvanceNamespaces>
      <lexisAdvanceNamespaces>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvanceNamespaces>
    </lexisAdvanceNamespaces>
  </xsl:variable>

</xsl:stylesheet>