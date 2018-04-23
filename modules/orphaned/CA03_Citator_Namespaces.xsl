<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-namespaces">
	<title>Namespaces <lnpid>id-CA03-13209</lnpid></title>
	<body>
		<sl>
			<sli>xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"</sli>
			<sli>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</sli>
			<sli>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</sli>
			<sli>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</sli>
			<sli>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</sli>
			<sli>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</sli>
			<sli>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</sli>
			<sli>xmlns:docinfo="http://www.lexisnexis.com/xmlschemas/content/shared/documentinfo-level-metadata/1/"</sli>
			<sli>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</sli>
			<sli>xmlns:dc="http://purl.org/dc/elements/1.1/"</sli>
			<sli>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</sli>
		</sl>
	</body>
	</dita:topic>


	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Namespaces.dita  -->
<xsl:variable name="lexisAdvNamespaces" as="element()">
<lexisAdvNamespaces>
<lexisAdvNamespace>xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:cfi="http://www.lexisnexis.com/xmlschemas/content/shared/cite-finding-information/1/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</lexisAdvNamespace> 
<lexisAdvNamespace>xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:dcterms="http://purl.org/dc/terms/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</lexisAdvNamespace> 
<lexisAdvNamespace>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvNamespace> 
<lexisAdvNamespace>xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:guid="urn:x-lexisnexis:content:guid:global:1"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:legishist="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-history/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"</lexisAdvNamespace> 
<lexisAdvNamespace>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</lexisAdvNamespace> <lexisAdvNamespace>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:topic="urn:x-lexisnexis:content:topic:global:1"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:xml="http://www.w3.org/XML/1998/namespace"</lexisAdvNamespace>
<lexisAdvNamespace>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</lexisAdvNamespace>   
</lexisAdvNamespaces>
</xsl:variable> 

</xsl:stylesheet>