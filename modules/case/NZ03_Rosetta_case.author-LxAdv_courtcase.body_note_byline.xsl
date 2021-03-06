<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.author-LxAdv_courtcase.body_note_byline">
    <title>case:author <lnpid>id-NZ03-23011</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita#Rosetta_case.author-LxAdv_courtcase.body_note_byline/mapping"/>
        <note>Any empty elements inside <sourcexml>case:author</sourcexml> should be suppressed. If
            every descendant of <sourcexml>case:author</sourcexml> is empty, then
                <sourcexml>case:author</sourcexml> and all descendant elements should be
            suppressed.</note>
        <example>
            <title>Mapping of <sourcexml>case:author</sourcexml> when it only contains text</title>
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
        <example>
            <title>Mapping of <sourcexml>case:author</sourcexml> when it contains empty
                elements</title>
            <codeblock>

&lt;case:author&gt;
    &lt;person&gt;
        &lt;name.text/&gt;
        &lt;role/&gt;
    &lt;/person&gt;
&lt;/case:author&gt;

            </codeblock>
            <p><b><sourcexml>case:author</sourcexml> and its descendants are suppressed in this
                    scenario.</b></p>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita#Rosetta_case.author-LxAdv_courtcase.body_note_byline/changes"/>-->
        <section>
            <title>Changes Specific to NZ03</title>
            <p>2013-03-25: <ph id="change_20130325_DSF">Added instructions for handling the scenario
                    when <sourcexml>case:author</sourcexml> contains empty elements.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.author-LxAdv_courtcase.body_note_byline.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.author-LxAdv_courtcase.body_note_byline.xsl requires manual development!</xsl:message> -->
    <xsl:template match="case:author">
        <note>
            <byline>
                <xsl:apply-templates select="@* | node()"/>
            </byline>
        </note>
    </xsl:template>
</xsl:stylesheet>