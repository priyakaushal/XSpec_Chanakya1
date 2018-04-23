<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_UK_ci.cite-Chof-ci.content-LxAdv-lnci.cite">
    <title>(UK) <sourcexml>ci:cite[@type]/ci:content/ci:cite[@searchtype]</sourcexml> to
            <targetxml>lnci:cite</targetxml> <lnpid>id-CCCC-10482</lnpid></title>
    <body>
        <section><p><b>UK use case:</b>
                <sourcexml>ci:cite[@searchtype]</sourcexml> wrapped in inappropriate
                    <sourcexml>ci:cite[@type]/ci:content</sourcexml>. Action is to suppress wrapping
                tags and convert content. Use case occurs within parent element that allows pcdata,
                most commonly <sourcexml>text</sourcexml> or <sourcexml>title</sourcexml>. Content
                of suppressed tags is one/more <sourcexml>ci:cite[@searchtype]</sourcexml> and
                sometimes pcdata. Content converts in usual way, as illustrated below.
            </p></section>
        <section>
            <p>The following applies when
                    <sourcexml>ci:cite[@type]/ci:content/ci:cite[@searchtype]</sourcexml> occurs:<ul>
                    <li>suppress <sourcexml>ci:cite[@type]/ci:content</sourcexml> tags</li>
                    <li>each <sourcexml>ci:cite[@searchtype]</sourcexml> becomes
                            <targetxml>lnci:cite</targetxml></li>
                    <li>pcdata remains in place</li>
                    <li>result in target is pcdata and <targetxml>lnci:cite</targetxml> within
                        parent of suppressed tags, e.g. within <targetxml>text</targetxml> or
                            <targetxml>title</targetxml></li>
                </ul></p><note>For details on <sourcexml>ci:cite</sourcexml> conversion, see <xref href="../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/>.</note>
        </section>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;text&gt;... as filed by Acme Company Ltd 
    &lt;ci:cite type="case"&gt;
        &lt;ci:content&gt;(1885) 
            &lt;ci:cite searchtype="CASE-REF"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref&gt;
                        &lt;ci:reporter value="LT"/&gt;
                        &lt;ci:volume num="52"/&gt;
                        &lt;ci:page num="98"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;52 LT 98&lt;/ci:content&gt;
            &lt;/ci:cite&gt; and (1888) 
            &lt;ci:cite searchtype="CASE-REF"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref&gt;
                        &lt;ci:reporter value="LT"/&gt;
                        &lt;ci:volume num="61"/&gt;
                        &lt;ci:page num="43"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;61 LT 43&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;. It is not thought ...&lt;/text&gt;
            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;text&gt;... as filed by Acme Company Ltd (1885) 
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="LT"/&gt;
                        &lt;lnci:volume num="52"/&gt;
                        &lt;lnci:page num="98"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;52 LT 98&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt; and (1888) 
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="LT"/&gt;
                        &lt;lnci:volume num="61"/&gt;
                        &lt;lnci:page num="43"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;61 LT 43&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;. It is not thought ...&lt;/text&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-03-28: <ph id="change_20140328_jm">Modified rule. Target xpath is not new.
                    Handles pcdata and multiple <sourcexml>ci:cite[@searchtype]</sourcexml> within this
                    special use case. Known to occur in UK12 dpsi 0424 and 041V, newly delivered
                    Mar 2014. Phase 6 UK discussion items 75 and 90. Webteam 252434.</ph></p>
            <p>2014-03-18: <ph id="change_20140318_jm">New rule. Target xpath is not new. Initially
                    applies to UK12 but expected to apply to any UK stream if the use case occurs.
                    Known to occur in UK12 dpsi 0424, newly delivered Mar 2014. Phase 6 UK
                    discussion item 75. Webteam 252434.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_UK_ci.cite-Chof-ci.content-LxAdv-lnci.cite.dita  -->
<!--	<xsl:message>Rosetta_UK_ci.cite-Chof-ci.content-LxAdv-lnci.cite.xsl requires manual development!</xsl:message> -->

	<xsl:template match="ci:cite[@type]/ci:content/ci:cite[@searchtype]">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ci:cite[@searchtype]">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ci:cite[@type]/ci:content">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<!--<xsl:template match="text">

		<!-\-  Original Target XPath:  lnci:cite   -\->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>-->

	<xsl:template match="title">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ci:cite">
	    
	   <!-- Priya kaushal added below -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<!--<xsl:apply-templates select="@* | node()"/>-->
		<!--  Could not determine target element or attribute name:  </>  -->
	    <lnci:cite>
	        <xsl:apply-templates select="@* | node()"/>
	    </lnci:cite>
	</xsl:template>

</xsl:stylesheet>