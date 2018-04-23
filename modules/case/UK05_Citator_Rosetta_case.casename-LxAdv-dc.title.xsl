<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0"
    exclude-result-prefixes="dita case case2 ci docinfo">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_case.casename-to-LexisAdvance_dc.title">
        <title><sourcexml>case:casename</sourcexml> to <targetxml>dc:title</targetxml>
            <lnpid>id-UK05-27824</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <p><sourcexml>case:headnote/case:info/case:casename</sourcexml> becomes
                        <targetxml>dc:metadata/dc:title</targetxml>. </p>
                <p>Within <sourcexml>case:casename</sourcexml>: <ul>
                        <li>Suppress <sourcexml>emph</sourcexml> but retain its contents in
                                <targetxml>dc:title</targetxml></li>
                        <li>Suppress any text following <sourcexml>emph</sourcexml></li>
                        <li>Suppress <sourcexml>refpt</sourcexml></li>
                        <li>Suppress <sourcexml>ci:cite</sourcexml> and any text following
                                <sourcexml>ci:cite</sourcexml></li>
                        <li>Replace <sourcexml>nl</sourcexml> with a single space character.</li>
                    </ul></p>

            </section>

            <example>
                <title>1 - Source XML</title>
                <codeblock> &lt;case:headnote&gt; &lt;case:info&gt; &lt;case:casename&gt; &lt;emph
                    typestyle="ro"&gt; &lt;refpt id="80594" type="ext"/&gt; &lt;emph
                    typestyle="bf"&gt;Crozier v Wishart Books Ltd&lt;/emph&gt; &lt;/emph&gt;
                    &lt;/case:casename&gt; &lt;/case:info&gt; &lt;/case:headnote&gt; </codeblock>
            </example>

            <example>
                <title>1 - Target XML</title>
                <codeblock> &lt;dc:title&gt;Crozier v Wishart Books Ltd&lt;/dc:title&gt;
                </codeblock>
            </example>
            <example>
                <title>2 - Source XML</title>
                <codeblock> &lt;case:headnote&gt; &lt;case:info&gt; &lt;case:casename&gt; &lt;emph
                    typestyle="ro"&gt; &lt;refpt id="315836" type="ext"/&gt; &lt;emph
                    typestyle="bf"&gt;Watkins v Woolas (In the matter of the Representation of the
                    People Act 1983)&lt;/emph&gt; &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt; &lt;ci:caseref&gt; &lt;ci:reporter value="EWHCQB"/&gt;
                    &lt;ci:edition&gt; &lt;ci:date year="2010"/&gt; &lt;/ci:edition&gt; &lt;ci:page
                    num="2702"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;[2010]
                    EWHC 2702 (QB)&lt;/ci:content&gt; &lt;/ci:cite&gt;, [2010] 45 LS Gaz R 20,
                    &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt;
                    &lt;ci:reporter value="Times"/&gt; &lt;ci:volume num="11"/&gt;
                    &lt;ci:edition&gt; &lt;ci:date year="2010"/&gt; &lt;/ci:edition&gt; &lt;ci:page
                    num="16"/&gt; &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;(2010)
                    Times, 16 November&lt;/ci:content&gt; &lt;/ci:cite&gt;, &lt;ci:cite
                    searchtype="CASE-REF"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt; &lt;ci:reporter
                    value="ALLERD"/&gt; &lt;ci:volume num="11"/&gt; &lt;ci:edition&gt; &lt;ci:date
                    year="2010"/&gt; &lt;/ci:edition&gt;&lt;ci:page num="128"/&gt;
                    &lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt;[2010] All ER (D)
                    128(Nov)&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/emph&gt;
                    &lt;/case:casename&gt; .............. &lt;/case:info&gt; &lt;/case:headnote&gt;
                </codeblock>
            </example>

            <example>
                <title>2 - Target XML</title>
                <codeblock> &lt;dc:title&gt;Watkins v Woolas (In the matter of the Representation of
                    the People Act 1983)&lt;/dc:title&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2016-02-24: <ph id="change_20160224_brt">Modified topic to clarify the source
                        path. Added more rules and a second example.</ph></p>
                <p>2016-02-19: <ph id="change_20160219_brt">Created as new topic, removed
                            <sourcexml>docinfo:doc-heading</sourcexml> to
                            <targetxml>dc:title</targetxml> conversion.</ph></p>

            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Rosetta_case.casename-LxAdv-dc.title.dita  -->

	<!-- JD: 2017-06-16: moved this template to /nonamespace/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl -->
	<!--<xsl:template match="case:headnote/case:info/case:casename | case2:headnote/case2:info/case2:casename"
		mode="dc.metadata">
        <!-\-  Original Target XPath:  dc:metadata/dc:title   -\->
        <dc:title>
            <xsl:apply-templates select="@* | node()" mode="dc.metadata"/>
        </dc:title>
    </xsl:template>-->

	<xsl:template match="emph[ancestor::case:casename or ancestor::case2:casename]" 
		mode="dc.metadata">
       <!--  Original Target XPath:  dc:title   -->
        <xsl:apply-templates mode="dc.metadata"/>
    </xsl:template>

	<xsl:template match="text()[(ancestor::case:casename or ancestor::case2:casename) and preceding-sibling::ci:cite]" 
		mode="dc.metadata"/>
	
	<xsl:template match="text()[(ancestor::case:casename or ancestor::case2:casename) and not(preceding-sibling::ci:cite)]" 
		mode="dc.metadata">
		<xsl:value-of select="."/>
	</xsl:template>
	

	<xsl:template match="refpt[ancestor::case:casename or ancestor::case2:casename]" 
		mode="dc.metadata"/>

	<xsl:template match="ci:cite[ancestor::case:casename or ancestor::case2:casename]" 
		mode="dc.metadata"/>

		<xsl:template match="nl[parent::case:casename or parent::case2:casename]" 
			mode="dc.metadata">
			<xsl:value-of select="' '"/>
	   </xsl:template>

    <xsl:template match="docinfo:doc-heading"/>

</xsl:stylesheet>
