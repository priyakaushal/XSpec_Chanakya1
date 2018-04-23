<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="index">
    <title><sourcexml>index</sourcexml> to
        <targetxml>tei:sense/pgrp/section/index:index</targetxml> <lnpid>id-UK10-29223</lnpid></title>
    <body>
        <section>
            <p><sourcexml>index</sourcexml> becomes
                    <targetxml>tei:sense/pgrp/section/index:index</targetxml>.<ul id="ul_pxr_wgf_ci">
                    <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                    <li><sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml>,
                            <sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
                            <sourcexml>in:lev5</sourcexml>, or <sourcexml>in:lev6</sourcexml>
                        becomes <targetxml>index:item</targetxml>.<note>The schema currently
                            requires an update support a child <sourcexml>refpt</sourcexml> to
                                <targetxml>ref:anchor</targetxml> in this context. A change is in
                            process and this note will be removed upon release of the new schema
                            (post Dictionary 1.5 BETA ). </note><ul id="ul_prf_eif_ci">
                            <li><sourcexml>in:entry</sourcexml> becomes
                                    <targetxml>index:entry</targetxml><ul id="ul_hie_iif_ci">
                                    <li><sourcexml>in:entry-text</sourcexml> becomes
                                            <targetxml>index:entrytext</targetxml><note>The schema
                                            currently requires an update support a child
                                                <sourcexml>remotelink</sourcexml> to
                                                <targetxml>ref:crossreference</targetxml> in this
                                            context. A change is in process and this note will be
                                            removed upon release of the new schema (post Dictionary 1.5 BETA ). </note></li>
                                </ul></li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>

&lt;index id="HALSBURYS"&gt;
    &lt;heading&gt;
        &lt;title&gt;...&lt;/title&gt;
    &lt;/heading&gt;
    &lt;in:lev1&gt;
        &lt;refpt id="tab-1" type="ext"/&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
        &lt;in:lev2&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
        &lt;/in:lev2&gt;
    &lt;/in:lev1&gt;
    &lt;in:lev1&gt;
        &lt;in:entry&gt;
            &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
        &lt;in:lev2&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
            &lt;in:lev3&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;/in:entry&gt;
            &lt;/in:lev3&gt;
        &lt;/in:lev2&gt;
    &lt;/in:lev1&gt;
    ...
&lt;/index&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>

&lt;tei:sense&gt;
    &lt;pgrp&gt;
        &lt;section&gt;
            &lt;index:index indextype="topical" xml:id="HALSBURYS"&gt;
                &lt;heading&gt;
                    &lt;title&gt;...&lt;/title&gt;
                &lt;/heading&gt;
                &lt;index:item&gt;
                    &lt;!--Need CR to add here
                            &lt;ref:anchor id="tab-1" type="anchortype"/&gt;
                        --&gt;
                    &lt;index:entry&gt;
                        &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                    &lt;/index:entry&gt;
                    &lt;index:item&gt;
                        &lt;index:entry&gt;
                            &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                        &lt;/index:entry&gt;
                    &lt;/index:item&gt;
                &lt;/index:item&gt;
                &lt;index:item&gt;
                    &lt;index:entry&gt;
                        &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                    &lt;/index:entry&gt;
                    &lt;index:item&gt;
                        &lt;index:entry&gt;
                            &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                        &lt;/index:entry&gt;
                        &lt;index:item&gt;
                            &lt;index:entry&gt;
                              &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                            &lt;/index:entry&gt;
                        &lt;/index:item&gt;
                    &lt;/index:item&gt;
                &lt;/index:item&gt;
                ...
            &lt;/index:index&gt;
        &lt;/section&gt;
    &lt;/pgrp&gt;
&lt;/tei:sense&gt;

	</codeblock>
            
        </example>
        <!--<section>
            <title>Changes</title>
            <p>2012-11-01: Created.</p>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\index.dita  -->
	<xsl:message>UK10_Dictionary_index.xsl requires manual development!</xsl:message> 

	<xsl:template match="index">

		<!--  Original Target XPath:  tei:sense/pgrp/section/index:index   -->
		<tei:sense>
			<pgrp>
				<section>
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</section>
			</pgrp>
		</tei:sense>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="in:lev1">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev2">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev3">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev4">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev5">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev6">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="in:entry">

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:entry-text">

		<!--  Original Target XPath:  index:entrytext   -->
		<index:entrytext>
			<xsl:apply-templates select="@* | node()"/>
		</index:entrytext>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

</xsl:stylesheet>