<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	version="2.0" exclude-result-prefixes="dita xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.author-LxAdv_courtcase.body_note_byline">
		<title>case:author <lnpid>id-UK01-27017</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita#Rosetta_case.author-LxAdv_courtcase.body_note_byline/mapping"/>
			<example>
				<codeblock> &lt;case:author&gt; &lt;person&gt; &lt;name.text&gt;Derek H Kitchin Esq Barrister.&lt;/name.text&gt;
					&lt;/person&gt; &lt;/case:author&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:body&gt; &lt;note&gt; &lt;byline&gt; &lt;person:contributor
					contributor-type="author"&gt; &lt;person:person&gt; &lt;person:name.text&gt;Derek H Kitchin Esq
					Barrister.&lt;/person:name.text&gt; &lt;/person:person&gt; &lt;/person:contributor&gt; &lt;/byline&gt;
					&lt;/note&gt; &lt;/courtcase:body&gt; </codeblock>
			</example>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita#Rosetta_case.author-LxAdv_courtcase.body_note_byline/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
        </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita  -->
	<xd:doc>
		<xd:desc>
			<xd:p>case:author becomes courtcase:body/note/byline.</xd:p>
			<xd:p>If person occurs inside case:author, please refer to the instructions for person in the General Markup section for guidance on handling of this scenario.</xd:p>
		</xd:desc>
	</xd:doc>
	
	<xsl:template match="case:author">
		<note>
			<byline>
				<xsl:apply-templates/>
			</byline>
		</note>
	</xsl:template>
	
</xsl:stylesheet>
