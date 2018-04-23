<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict_body">
    <title>Body <lnpid>id-ST06-31207</lnpid></title>
    <body>
        <section>
            <title><sourcexml>dict:body</sourcexml> to <targetxml>dict:body</targetxml></title>
            <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml>.</p>
            <p>All of the following are descendants of <targetxml>dict:body</targetxml>. Handle in
                document order unless specifically stated otherwise. Refer to General Markup Section
                for handling of children (including mixed content).</p>
            <p>
                <sourcexml>dict:term-entry</sourcexml> becomes <targetxml>tei:entry</targetxml>
                following the rules below: <xref href="dict_term-entry.dita"/></p>
            <ul>
                <li><b>Case 1:</b> If zero or 1 <sourcexml>dict:definition/dict:subtopic</sourcexml>
                    descendants, <targetxml>tei:entry</targetxml> becomes a child of
                        <targetxml>dict:defitem</targetxml>.</li>
                <li><b>Case 2:</b> If more than 1
                        <sourcexml>dict:definition/dict:subtopic</sourcexml> descendants,
                        <targetxml>tei:entry</targetxml> becomes a child of
                        <targetxml>dict:defitem/tei:superEntry</targetxml>. <xref href="dict_subtopic.dita"/></li>
            </ul>
            <ul>
                <li><sourcexml>dict:subtopic[@id]</sourcexml> becomes
                        <targetxml>tei:entry[@type]</targetxml>
                    <xref href="dict_subtopic.dita"/>
                </li>
            </ul>
            <p><sourcexml>defterm</sourcexml> becomes <targetxml>tei:form/tei:orth</targetxml>
                following the rules below:</p><xref href="dict_defterm.dita"/>
            <ul>
                <li>If <b>Case 1</b>: create <targetxml>tei:form/tei:orth</targetxml> as a child of
                        <targetxml>tei:entry</targetxml>.</li>
                <li>If <b>Case 2</b>: create <targetxml>tei:form/tei:orth</targetxml> as a child of
                        <targetxml>tei:superEntry</targetxml><xref href="dict_subtopic.dita"/>
                    <note>The value of <targetxml>@norm</targetxml> should be the value of
                            <sourcexml>defterm</sourcexml> with space normalized, punctutation
                        removed, and converted to lower-case.</note></li>
            </ul>
            <p> Convert <sourcexml>dict:definition</sourcexml> following the rules below: <xref href="dict_definition.dita"/></p>
            <ul>
                <li>If <b>Case 1</b>: <sourcexml>dict:definition</sourcexml> becomes
                        <targetxml>tei:def/pgrp</targetxml>.</li>
                <li>If <b>Case 2</b>: For each <sourcexml>dict:definition/dict:subtopic</sourcexml>
                    following-siblings, create a new <targetxml>tei:entry/tei:def/pgrp</targetxml>.
                </li>
            </ul>
            <p><sourcexml>dict:topicname</sourcexml> becomes <targetxml>tei:usg</targetxml>. Set
                    <targetxml>tei:usg[@type]</targetxml> to the text from
                    <sourcexml>dict:topicname</sourcexml> (converted to lower-case with spaces
                    removed).<xref href="dict_topicname.dita"/></p>
            <p><sourcexml>dict:short-definition</sourcexml> becomes
                    <targetxml>tei:def/pgrp</targetxml> with
                    <targetxml>tei:def[@label='short-definition']</targetxml>.<xref href="dict_short-definition.dita"/></p>
            <p><sourcexml>dict:equivalent-term</sourcexml> becomes
                    <targetxml>tei:usg[@type='equivalent-term']</targetxml>.<xref href="dict_equivalent-term.dita"/></p>
            <p><sourcexml>index</sourcexml> becomes
                    <targetxml>tei:sense/pgrp/section/index:index</targetxml>.<xref href="dict_Index.dita"/>
            </p>
            <ul>
                <li>Set <targetxml>@indextype="topical"</targetxml>.</li>
                <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                <li><sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml>,
                        <sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
                        <sourcexml>in:lev5</sourcexml>, or <sourcexml>in:lev6</sourcexml> becomes
                        <targetxml>index:item</targetxml>. </li>
            </ul>
            <p><sourcexml>in:entry</sourcexml> becomes <targetxml>index:entry</targetxml></p>
            <p><sourcexml>in:entry-text</sourcexml> becomes
                <targetxml>index:entrytext</targetxml></p>
            <ul>
                <li><sourcexml>p</sourcexml> and its children will map to
                        <targetxml>tei:def/pgrp</targetxml></li>
                <li><sourcexml>dict:synonym</sourcexml> becomes
                        <targetxml>tei:usg[@type='syn']</targetxml>.</li>
                <li><sourcexml>dict:abbreviation</sourcexml> becomes
                        <targetxml>abbrvname</targetxml>.</li>
                <li><sourcexml>see</sourcexml> becomes <targetxml>tei:re[@type='see']</targetxml>. </li>
                <li><sourcexml>see-also</sourcexml> becomes
                        <targetxml>tei:re[@type='see-also']</targetxml>.</li>
                <li><sourcexml>in:index-ref/refpt</sourcexml> becomes
                    <targetxml>index:item/ref:anchor</targetxml>. That is, suppress
                    <sourcexml>in:index-ref</sourcexml> wrapper and move
                    <targetxml>ref:anchor</targetxml> to be 1st child of
                    <targetxml>index:item</targetxml>. Follow common rules for mapping
                    <sourcexml>refpt</sourcexml> to <targetxml>ref:anchor</targetxml>, as described in General Markup section.</li>
            </ul>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>&lt;dict:term-entry&gt;
    &lt;defterm&gt;&lt;refpt id="ABSENTEE-VOTER" type="ext"/&gt;absentee voter&lt;/defterm&gt;
    &lt;dict:definition&gt;
        &lt;dict:subtopic&gt; ..... &lt;dict:synonym&gt;Also known as `absent voter'.&lt;/dict:synonym&gt;
            &lt;see-also&gt;See also &lt;remotelink dpsi="0034" refpt="ABSENT-VOTING" remotekey1="REFPTID"
                    service="DOC-ID"&gt;absent voting&lt;/remotelink&gt;.&lt;/see-also&gt;
        &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;
                
            </codeblock>
            
        Becomes
        
        </example>
        
        <example>
            <title>Target XML 1</title>
            <codeblock>&lt;dict:defitem&gt;
    &lt;tei:entry&gt;       
            .....
        &lt;tei:usg type="syn"&gt;Also known as `absent voter'.&lt;/tei:usg&gt;
        &lt;tei:re type="see-also"&gt;See also &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    ....
        &lt;/tei:re&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;
                
            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2014-05-14: <ph id="change_20140514_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Dictionary\dict_Body.dita  -->
	<xsl:message>dict_Body.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:body"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  dict:body   -->
		<dict:body>
			<xsl:apply-templates select="@* | node()"/>
		</dict:body>

	</xsl:template>

	<xsl:template match="dict:term-entry"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:definition/dict:subtopic"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry[@type]   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="defterm"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:form/tei:orth   -->
		<tei:form>
			<tei:orth>
				<xsl:apply-templates select="@* | node()"/>
			</tei:orth>
		</tei:form>

	</xsl:template>

	<xsl:template match="dict:definition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:topicname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

	<xsl:template match="dict:short-definition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:equivalent-term"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg[@type='equivalent-term']   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

	<xsl:template match="index"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

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

	<xsl:template match="@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="in:lev1"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev2"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev3"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev4"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev5"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev6"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:entry"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:entry-text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:entrytext   -->
		<index:entrytext>
			<xsl:apply-templates select="@* | node()"/>
		</index:entrytext>

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:synonym"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg[@type='syn']   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

	<xsl:template match="dict:abbreviation"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  abbrvname   -->
		<abbrvname>
			<xsl:apply-templates select="@* | node()"/>
		</abbrvname>

	</xsl:template>

	<xsl:template match="see"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:re[@type='see']   -->
		<tei:re>
			<xsl:apply-templates select="@* | node()"/>
		</tei:re>

	</xsl:template>

	<xsl:template match="see-also"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:re[@type='see-also']   -->
		<tei:re>
			<xsl:apply-templates select="@* | node()"/>
		</tei:re>

	</xsl:template>

	<xsl:template match="in:index-ref/refpt"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item/ref:anchor   -->
		<index:item>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</index:item>

	</xsl:template>

	<xsl:template match="in:index-ref"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="refpt"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

</xsl:stylesheet>