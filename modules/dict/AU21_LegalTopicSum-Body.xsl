<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_LegalTopicSum.body">
    <title>Body <lnpid>id-AU21-22407</lnpid></title>
    <body>
        <section>
            <title><sourcexml>dict:body</sourcexml> to <targetxml>dict:body</targetxml></title>
            <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml>.</p>
            <p>All of the following are descendants of <targetxml>dict:body</targetxml>. Handle in
                document order unless specifically stated otherwise. Refer to General Markup Section
                for handling of children (including mixed content).</p>
            <p>
                <sourcexml>dict:term-entry</sourcexml> becomes <targetxml>tei:entry</targetxml>
                following the rules below: <xref href="AU21_LegalTopicSum-dict.term-entry.dita"/></p>
            <ul>
                <li><b>Case 1:</b> If zero or 1 <sourcexml>dict:definition/dict:subtopic</sourcexml>
                    descendants, <targetxml>tei:entry</targetxml> becomes a child of
                        <targetxml>dict:defitem</targetxml>.</li>
                <li><b>Case 2:</b> If more than 1
                        <sourcexml>dict:definition/dict:subtopic</sourcexml> descendants,
                        <targetxml>tei:entry</targetxml> becomes a child of
                    <targetxml>dict:defitem/tei:superEntry</targetxml>. <xref href="AU21_LegalTopicSum-subtopic.dita"/></li>
            </ul>
            <ul>
                <li><sourcexml>dict:subtopic[@id]</sourcexml> becomes
                        <targetxml>tei:entry[@type]</targetxml>
                    <xref href="AU21_LegalTopicSum-subtopic.dita"/>
                </li>
            </ul>
            <p><sourcexml>defterm</sourcexml> becomes <targetxml>tei:form/tei:orth</targetxml>
                following the rules below:</p><xref href="AU21_LegalTopicSum_defterm.dita"/>
            <ul>
                <li>If <b>Case 1</b>: create <targetxml>tei:form/tei:orth</targetxml> as a child of
                        <targetxml>tei:entry</targetxml>.</li>
                <li>If <b>Case 2</b>: create <targetxml>tei:form/tei:orth</targetxml> as a child of
                    <targetxml>tei:superEntry</targetxml><xref href="AU21_LegalTopicSum-subtopic.dita"/>
                    <note>The value of <targetxml>@norm</targetxml> should be the value of
                            <sourcexml>defterm</sourcexml> with space normalized, punctutation
                        removed, and converted to lower-case.</note></li>
            </ul>
            <p> Convert <sourcexml>dict:definition</sourcexml> following the rules below: <xref href="AU21_LegalTopicSum-dict.definition.dita"/></p>
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
                    removed).<xref href="AU21_LegalTopicSum-topicname.dita"/></p>
            <p><sourcexml>dict:short-definition</sourcexml> becomes
                    <targetxml>tei:def/pgrp</targetxml> with
                    <targetxml>tei:def[@label='short-definition']</targetxml>.<xref href="AU21_LegalTopicSum_short-definition.dita"/></p>
            <p><sourcexml>dict:equivalent-term</sourcexml> becomes
                    <targetxml>tei:usg[@type='equivalent-term']</targetxml>.<xref href="AU21_LegalTopicSum_equivalent-term.dita"/></p>
            <p><sourcexml>index</sourcexml> becomes
                    <targetxml>tei:sense/pgrp/section/index:index</targetxml>.<xref href="AU21_LegalTopicSum-Index.dita"/>
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
        </section>
        <section>
            <title>Changes</title>
            <p>2013-04-03: <ph id="change_20130403_WL">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU21_Legal_Topic_Summaries\AU21_LegalTopicSum-Body.dita  -->

	<xsl:template match="source_dict:body">
		<!--  Original Target XPath:  dict:body   -->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

</xsl:stylesheet>