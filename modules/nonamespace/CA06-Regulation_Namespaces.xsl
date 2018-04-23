<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
  exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Namespaces">
    <title>Namespaces <lnpid>id-CA06-13832</lnpid></title>
    <body>
      <ul>
        <li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
        <li>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</li>
        <li>xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/"</li>
        <li>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</li>
        <li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
        <li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</li>
        <li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
        <li>xmlns:dcterms="http://purl.org/dc/terms/"</li>
        <li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
        <li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
        <li>xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"</li>
        <li>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</li>
        <li>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</li>
        <li>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</li>
        <li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</li>
        <li>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</li>
        <li>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</li>
        <li>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</li>
        <li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
        <li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
        <li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</li>
        <li>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</li>
        <li>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</li>
        <li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
        <li>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</li>
        <li>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</li>
        <li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</li>
        <li>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</li>
        <li>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</li>
        <li>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</li>
        <li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
        <li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</li>
        <li>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</li>
        <li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</li>
        <li>xmlns:register="http://www.lexisnexis.com/xmlschemas/content/legal/register/1/"</li>
        <li>xmlns:registerinfo="http://www.lexisnexis.com/xmlschemas/content/legal/register-info/1/"</li>
        <li>xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"</li>
        <li>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</li>
      </ul>
    </body>
  </dita:topic>
  <xsl:variable name="lexisAdvNamespaces" as=" element() ">
    <lexisAdvNamespaces>
      <lexisAdvNamespace>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:glp="http://www.lexis-nexis.com/glp"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:xls="http://www.w3.org/1999/XSL/Transform"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:ci="http://www.lexis-nexis.com/ci"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:rfc="http://www.lexisnexis.com/xmlschemas/content/legal/reason-for-citing/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:dcterms="http://purl.org/dc/terms/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</lexisAdvNamespace>
      <lexisAdvNamespace>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" </lexisAdvNamespace>
    </lexisAdvNamespaces>
  </xsl:variable>
  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\Namespaces.dita  -->
  <!--	<xsl:message>CA06-Regulation_Namespaces.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>
