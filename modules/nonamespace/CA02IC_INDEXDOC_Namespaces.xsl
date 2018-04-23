<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Case-Summaries_Namespaces">
		<title>Namespaces <lnpid>id-CA02IC-13009</lnpid></title>
		<body>
			<ul>
				<li>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</li>
				<li>xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"</li>
				<li>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</li>
				<li>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</li>
				<li>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</li>
				<li>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</li>
				<li>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</li>
				<li>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</li>
				<li>xmlns:dc="http://purl.org/dc/elements/1.1/"</li>
				<li>xmlns:dcterms="http://purl.org/dc/terms/"</li>
				<li>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</li>
				<li>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</li>
				<li>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</li>
				<li>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</li>
				<li>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</li>
				<li>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</li>
				<li>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</li>
				<li>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</li>
				<li>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</li>
				<li>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</li>
				<li>xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"</li>
				<li>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</li>
				<li>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</li>
				<li>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</li>
			</ul>
			<section>
				<title>Changes</title>
				<p>2017-03-01: <ph id="change_20170301_SBy">Added navaid namespace</ph>.</p>
				<p>2017-05-02: <ph id="change_20170502_SBy">Added rdf and dcterms</ph>.</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02IC_INDEXDOC\Namespaces.dita  -->

	<xsl:variable name="lexisAdvNamespaces" as=" element() ">
		<lexisAdvNamespaces>
			<lexisAdvNamespace>xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:dc="http://purl.org/dc/elements/1.1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:dcterms="http://purl.org/dc/terms/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"</lexisAdvNamespace>
			<lexisAdvNamespace>xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"</lexisAdvNamespace>
		</lexisAdvNamespaces>
	</xsl:variable>

</xsl:stylesheet>