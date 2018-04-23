<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite">
    <title>case:reportercite <lnpid>id-UK02-27231</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>case:reportercite</sourcexml> becomes
                    <targetxml>/compcase:compositecourtcase/compcase:head/compcase:caseinfo/ref:citations</targetxml>.
                Create <targetxml>ref:cite4thisresource</targetxml> with attribute
                    <targetxml>@citetype</targetxml> defines the type of citation, it should be set
                to "reporter".</p>
            <p>For details on the handling of citation markup, refer to the instructions for
                    <sourcexml>ci:cite</sourcexml> in the General Markup section.</p>
            <note>If there are 2 or more <sourcexml>case:reportercite</sourcexml> elements with the
                same citation, only map the first occurrence and suppress any duplicates.</note>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALLER"/&gt;
                &lt;ci:volume num="2"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1936"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="1299"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1936] 2 All ER 1299&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

       </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="ALLER"/&gt;
                    &lt;lnci:volume num="2"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1936"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="1299"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1936] 2 All ER 1299&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

       </codeblock>
        </example>
        <example>
            <title>Source XML: duplicate citations (AU content)</title>
            <codeblock>

&lt;case:reportercite ln.user-displayed="false"&gt;
    &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2005"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="nswlr"/&gt;
                &lt;ci:volume num="65"/&gt;
                &lt;ci:page num="92"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(2005) 65 NSWLR 92&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
...
&lt;case:reportercite ln.user-displayed="false"&gt;
    &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2005"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="nswlr"/&gt;
                &lt;ci:volume num="65"/&gt;
                &lt;ci:page num="92"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(2005) 65 NSWLR 92&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseinfo&gt;
                    &lt;lnci:decisiondate year="2005"/&gt;
                &lt;/lnci:caseinfo&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="nswlr"/&gt;
                    &lt;lnci:volume num="65"&gt; &lt;/lnci:volume&gt;
                    &lt;lnci:page num="92"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;(2005) 65 NSWLR 92&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

           </codeblock>
        </example>
        <section>
            <p>Text (PCDATA) occuring in between <sourcexml>case:reportercite</sourcexml> and
                    <sourcexml>ci:cite</sourcexml> should be moved inside a
                    <targetxml>connector</targetxml> element and put in between multiple
                    <targetxml>ref:cite4thisresource</targetxml> elements if needed.</p>
        </section>
        <section>
            <title>Changes</title>
            <p>2013-07-15: <ph id="change_20130715_DSF">Added instructions for handling the scenario
                    when there are multiple case:reportercite elements that contain the same
                    citation.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.reportercite.dita  -->

	<xsl:template match="case:reportercite">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/compcase:caseinfo/ref:citations   -->
		<xsl:for-each select="ci:cite">
			<ref:cite4thisresource citetype="reporter">
				<xsl:apply-templates select="."/>
			</ref:cite4thisresource>
			<xsl:apply-templates select="following-sibling::text()"/>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="text()[string-length(normalize-space(.))&gt;0][parent::case:reportercite and preceding-sibling::ci:cite]">
		<!--  Original Target XPath:  connector   -->
		<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:value-of select="."/>
		</connector>
	</xsl:template>

</xsl:stylesheet>