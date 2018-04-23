<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.author-courtcase.body_note_byline">
    <title>case:author <lnpid>id-ST01-26229</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita#Rosetta_case.author-LxAdv_courtcase.body_note_byline/mapping"/>
        <example><title>Mapping of <sourcexml>case:author</sourcexml> when it only contains
                text</title>
            <codeblock>

&lt;case:author&gt;
    &lt;emph typestyle="it"&gt;Reported by:&lt;/emph&gt; Lindy Course, &lt;emph typestyle="it"&gt;Barrister&lt;/emph&gt;
&lt;/case:author&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;courtcase:body&gt;
    &lt;note&gt;
        &lt;byline&gt;
            &lt;emph typestyle="it"&gt;Reported by:&lt;/emph&gt; Lindy Course, &lt;emph typestyle="it"&gt;Barrister&lt;/emph&gt;
        &lt;/byline&gt;
    &lt;/note&gt;
&lt;/courtcase:body&gt;

           </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>case:author</sourcexml> when it contains
                    <sourcexml>person</sourcexml></title>
            <codeblock>

&lt;case:author&gt;
    &lt;person&gt;
        &lt;name.text&gt;SAM ROSEWARNE&lt;/name.text&gt;&lt;role&gt;BARRISTER&lt;/role&gt;
    &lt;/person&gt;
&lt;/case:author&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;courtcase:body&gt;
    &lt;note&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;SAM ROSEWARNE&lt;/person:name.text&gt;
                    &lt;role&gt;BARRISTER&lt;/role&gt;
                &lt;/person:person&gt;
            &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/note&gt;
&lt;/courtcase:body&gt;

           </codeblock>
        </example>
    
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita#Rosetta_case.author-LxAdv_courtcase.body_note_byline/changes"/>-->
        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.author-courtcase.body_note_byline.dita  -->
	
	<xsl:template match="case:author">
		<courtcase:body>
			<note>
				<byline>
					<xsl:apply-templates select="@* | node()"/>
				</byline>
			</note>
		</courtcase:body>
	</xsl:template>
	

</xsl:stylesheet>