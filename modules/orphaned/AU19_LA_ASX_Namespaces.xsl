<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis_Namespaces">
  <title>Namespaces <lnpid>id-AU19LA-22017</lnpid></title>
  <body>
    <ul>
      <li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
      <li>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</li>
      <li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
      <li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</li>
      <li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
      <li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
      <li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
      <li>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</li>
      <li>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</li>
      <li>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</li>
      <li>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</li>
      <li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</li>
      <li>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</li>
      <li>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</li>
      <li>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</li>
      <li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
      <li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
      <li>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</li>
      <li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
      <li>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</li>
      <li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</li>
      <li>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</li>
      <li>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</li>
      <li>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</li>
      <li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
      <li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</li>
      <li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</li>
      <li>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</li>
    </ul>
  </body>
	</dita:topic>
  <!-- JL added xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/" 
        xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"
                        xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
                        xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
                                        
                            xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    to handle namespaces in general -->
  
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_Namespaces.dita  -->
  <xsl:variable name="lexisAdvNamespaces" as="element()">
    <lexisAdvNamespaces>
      <lexisAdvNamespace>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</lexisAdvNamespace></lexisAdvNamespaces>
  </xsl:variable>

</xsl:stylesheet>