<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary_Namespaces">
  <title>Namespaces <lnpid>id-HK05-37413</lnpid></title>
  <body>
    <ul>
      <li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
      <li>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</li>
      <li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
      <li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</li>
      <li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
      <li>xmlns:dcterms="http://purl.org/dc/terms/"</li>
      <li>xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"</li>
      <li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
      <li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
      <li>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</li>
      <li>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</li>
      <li>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</li>
      <li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
      <li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
      <li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</li>
      <li>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</li>
      <li>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</li>
      <li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
      <li>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</li>
      <li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</li>
      <li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
      <li>xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"</li>
      <li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</li>
      <li>xmlns:pubup="http://www.lexisnexis.com/xmlschemas/content/shared/publication-update/1/"</li>
      <li>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</li>
      <li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</li>
      <li>xmlns:tei="http://www.tei-c.org/ns/1.0/"</li>
      <li>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</li>
    </ul>
  </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK05_Dictionary\Namespaces.dita  -->
	<xsl:variable name="lexisAdvNamespaces" as="element()">
	  <lexisAdvNamespaces  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	    xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"
	    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	    xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"
	    xmlns:dc="http://purl.org/dc/elements/1.1/"
	    xmlns:dcterms="http://purl.org/dc/terms/"
	    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"
	    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	    xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"
	    xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"
	    xmlns:guid="urn:x-lexisnexis:content:guid:global:1"
	    xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	    xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"
	    xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
	    xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"
	    xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"
	    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"
	    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	    xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
	    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	    xmlns:pubup="http://www.lexisnexis.com/xmlschemas/content/shared/publication-update/1/"
	    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	    xmlns:tei="http://www.tei-c.org/ns/1.0/"
	    xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
	    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
	</xsl:variable>
</xsl:stylesheet>