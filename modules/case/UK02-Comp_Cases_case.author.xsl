<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"	
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.author">
		<title>case:author <lnpid>id-UK02-27208</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:author</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>compcase:body/note/byline</targetxml>
					<note class="- topic/note ">If <sourcexml
							class="+ topic/keyword xml-d/sourcexml ">person</sourcexml> occurs
						inside <sourcexml class="+ topic/keyword xml-d/sourcexml "
							>case:author</sourcexml>, kindly refer to <xref
							href="../../common_newest/Rosetta_case.author_person-LxAdv-byline_person.contributor.dita"
							class="- topic/xref ">person section</xref> for handling of this
						scenario.</note>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:author&gt; &lt;person&gt; &lt;name.text&gt;W K
					Scrivener Esq Barrister.&lt;/name.text&gt; &lt;/person&gt;
					&lt;/case:author&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:body&gt; &lt;note&gt; &lt;byline&gt;
					&lt;person:contributor contributor-type="author"&gt;
					&lt;person:person&gt; &lt;person:name.text&gt;W K Scrivener Esq
					Barrister.&lt;/person:name.text&gt; &lt;/person:person&gt;
					&lt;/person:contributor&gt; &lt;/byline&gt; &lt;/note&gt;
					&lt;/compcase:body&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.author.dita  -->

	<xsl:template match="case:author[person]">
		<!--  Original Target XPath:  compcase:body/note/byline   -->
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<byline>
				<person:contributor contributor-type="author">
					<xsl:apply-templates select="@* | node()"/>
				</person:contributor>
			</byline>
		</note>
	</xsl:template>


	<xsl:template match="case:author">
		<!--  Original Target XPath:  compcase:body/note/byline   -->
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</note>
	</xsl:template>

</xsl:stylesheet>