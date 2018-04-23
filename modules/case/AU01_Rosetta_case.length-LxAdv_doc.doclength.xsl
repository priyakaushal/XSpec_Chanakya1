<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.length-LxAdv_doc.doclength">
    <title>case:length <lnpid>id-AU01-18229</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.length-LxAdv_doc.doclength.dita#Rosetta_case.length-LxAdv_doc.doclength/mapping"/>
        <example>
            <codeblock>
&lt;case:length&gt;47 Paragraphs&lt;/case:length&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        ...
        &lt;doc:doclength num="47" unit="Paragraphs" source="conversion"/&gt;
        ...
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
       </codeblock>
        </example>
        <note>If <sourcexml>case:length</sourcexml> occurs within
                <sourcexml>case:embeddedcase</sourcexml>, then conversion should suppress
                <sourcexml>case:length</sourcexml> and its content.</note>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.length-LxAdv_doc.doclength.dita#Rosetta_case.length-LxAdv_doc.doclength/changes"/>-->
        <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.length-LxAdv_doc.doclength.dita  -->

	<xsl:template match="case:length">
		<doc:doclength source="conversion">
			<xsl:attribute name="num"><xsl:value-of select="normalize-space(replace(.,'\D+',''))"/></xsl:attribute>
			<xsl:attribute name="unit"><xsl:value-of select="normalize-space(replace(.,'\d+',''))"/></xsl:attribute>
		</doc:doclength>
	</xsl:template>
	
	<xsl:template match="case:length[ancestor::case:embeddedcase]"/>

</xsl:stylesheet>