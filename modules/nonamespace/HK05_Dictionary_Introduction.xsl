<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0"
    exclude-result-prefixes="dita source_dict">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-Introduction">
        <title>Introduction <lnpid>id-HK05-37412</lnpid></title>
        <shortdesc>This document describes the conversion of Hong Kong dictionary content to the
            LexisAdvance dictionary 2.5_PROD schema.</shortdesc>

        <body>

            <section>
                <title>Root Element</title>
                <p>
                    <sourcexml>DICTIONARYDOC</sourcexml> becomes
                        <targetxml>dict:dictionary</targetxml>. </p>
                <p><targetxml>dict:head</targetxml>, <targetxml>dict:body</targetxml>, and
                        <targetxml>doc:metadata</targetxml> are created as required children of
                        <targetxml>dict:dictionary</targetxml>.</p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;DICTIONARYDOC&gt; ...... &lt;docinfo:doc-lang lang="en"/&gt;
                    &lt;docinfo:doc-country iso-cc="HK"/&gt; ...... &lt;/DICTIONARYDOC&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;dict:dictionary xml:lang="en-HK"&gt; .......... &lt;doc:docinfo
                    doc-content-country="HK"&gt; .......... &lt;/dict:dictionary&gt; </codeblock>
            </example>
            <section>
                <title>Notes</title>
                <p>The following information is meant to help the user understand the conventions
                    used in this document.</p>
                <p>Source elements and attributes are highlighted like this: <sourcexml>XML
                        SOURCE</sourcexml></p>
                <p>Target elements and attributes are highlighted like this: <targetxml>XML
                        TARGET</targetxml></p>
                <p>Verify content of following target attributes: <ul>
                        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
                            between 01-12. Any numbers outside this range, do not output a
                                <targetxml>@month</targetxml>.</li>
                        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is
                            between 01-31. Any numbers outside this range, do not output
                                <targetxml>@day</targetxml>.</li>
                        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
                            digits in length. Any other lengths, do not output
                                <targetxml>@year</targetxml>.</li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Changes</title>
                <p>2016-04-18: <ph id="change_20160418_HP">Created</ph>.</p>
            </section>
        </body>
    </dita:topic>
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK05_Dictionary\Introduction.dita  -->

    <!-- JL this template is accurate -->
   <!-- <xsl:output indent="no" method="xml"/>-->
    <xsl:param name="outputSchemaLoc"
        select="'urn:x-lexisnexis:content:dict:sharedservices:1 sch_dictionary.xsd'"/>

    <xsl:template match="DICTIONARYDOC">
        <dict:dictionary>
            <xsl:call-template name="generateNSGlobalBindings"/>
            <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
            <!--<xsl:call-template name="xml_lang"/>-->
            <xsl:apply-templates select="@*"/>
            <xsl:if test="docinfo/docinfo:doc-lang">
                <!-- Satbir:After discussion Commenting out xsl:call-template name="xml_lang" as input files have <docinfo:doc-country iso-cc="AU"/> and hard coding en-HK -->
                <xsl:attribute name="xml:lang">
                    <xsl:text>en-HK</xsl:text>
                </xsl:attribute>
                <!--<xsl:call-template name="xml_lang"/>-->
            </xsl:if>
            <xsl:apply-templates select="source_dict:body/heading"/>
            <xsl:apply-templates select="source_dict:body"/>
            <doc:metadata>
                <xsl:apply-templates select="docinfo"/>
            </doc:metadata>
        </dict:dictionary>


    </xsl:template>



    <!-- suppress Rosetta-dtd specific atts -->

    <xsl:template match="DICTIONARYDOC/@xml:lang"/>
    <xsl:template match="DICTIONARYDOC/@version"/>
    <xsl:template match="DICTIONARYDOC/@versionminor"/>
    


</xsl:stylesheet>
