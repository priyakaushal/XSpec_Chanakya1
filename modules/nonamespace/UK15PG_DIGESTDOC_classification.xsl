<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:guid="urn:x-lexisnexis:content:guid:global:1" 
    xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="classify dita dig ">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_DIGESTDOC_classification">
        <title>classification <lnpid>id-UK15-30433</lnpid></title>
        <body>
            <section>
                <p><sourcexml>classification</sourcexml> becomes
                        <targetxml>seclaw:levelinfo/classify:classification</targetxml> with
                    descendants as follows:</p>
                <ul>
                    <li><sourcexml>classitem[@classscheme]</sourcexml> becomes
                            <targetxml>classify:classitem[@classscheme]</targetxml>
                        <ul>
                            <li><sourcexml>classitem-identifier</sourcexml> becomes
                                    <targetxml>classify:classitem-identifier</targetxml>
                                <ul>
                                    <li><sourcexml>classname</sourcexml> becomes
                                            <targetxml>classify:classname</targetxml></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <note><targetxml>seclaw:levelinfo</targetxml> is a child of the
                    <targetxml>seclaw:level</targetxml> created from
                <sourcexml>dig:info</sourcexml>.</note>
            <note>Occurs in smart forms, dpsi 0JUM and 0KVS.</note>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;dig:body&gt; &lt;dig:info&gt; &lt;classification&gt; &lt;classitem
                    classscheme="agency"&gt; &lt;classitem-identifier&gt; &lt;classname&gt;The Law
                    Society&lt;/classname&gt; &lt;/classitem-identifier&gt; &lt;/classitem&gt;
                    &lt;classitem classscheme="agency-division"&gt; &lt;classitem-identifier&gt;
                    &lt;classname&gt;Litigation Forms&lt;/classname&gt;
                    &lt;/classitem-identifier&gt; &lt;/classitem&gt; &lt;/classification&gt;
                    &lt;/dig:info&gt; &lt;/dig:body&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:level leveltype="form"&gt;
                    &lt;seclaw:levelinfo&gt; &lt;classify:classification&gt; &lt;classify:classitem
                    classscheme="agency"&gt; &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;The Law Society&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;classify:classitem classscheme="agency-division"&gt;
                    &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;Litigation
                    Forms&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt; &lt;/classify:classification&gt;
                    &lt;/seclaw:levelinfo&gt; &lt;/seclaw:level&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-10-14: <ph id="change_20131014_jm">New Rule. Supports move of smart-form
                        content from UK11-DA to UK15-DS. Webteam # 240975 and #247307.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_DIGESTDOC_classification.dita  -->
    <!--<xsl:message>UK15PG_DIGESTDOC_classification.xsl requires manual development!</xsl:message> -->

    <xsl:template match="dig:info/classification[child::classitem[@classscheme!='topic:topicReference']]">

        <!--  Original Target XPath:  seclaw:levelinfo/classify:classification   -->

        <classify:classification>
            <xsl:apply-templates select="@* | node() except child::classitem[@classscheme='topic:topicReference']"/>
        </classify:classification>


    </xsl:template>

    <xsl:template match="classitem[@classscheme!='topic:topicReference']">

        <!--  Original Target XPath:  classify:classitem[@classscheme]   -->
        <classify:classitem>
            <xsl:attribute name="classscheme">
                <xsl:value-of select="@classscheme"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
         </classify:classitem>

    </xsl:template>

    <xsl:template match="classitem[@classscheme!='topic:topicReference']/classitem-identifier">

        <!--  Original Target XPath:  classify:classitem-identifier   -->
        <classify:classitem-identifier>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classitem-identifier>

    </xsl:template>

    <xsl:template match="classname">

        <!--  Original Target XPath:  classify:classname   -->
        <classify:classname>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classname>

    </xsl:template>
    
    <!--<xsl:template match="classification/@classscheme|classitem/@classscheme">
        <xsl:attribute name="classscheme">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="classcode">
        <topic:topicReference>
            <xsl:apply-templates select="@normval"/>
        </topic:topicReference>
    </xsl:template>
    <xsl:template match="classcode/@normval"> <!-\-added for topc:topicReference-\->
        <xsl:attribute name="guid:guid">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="meta">
        <meta>
            <xsl:apply-templates select="@*|node()"/>
        </meta>
    </xsl:template>
    
    <xsl:template match="metaitem">
        <metaitem>
            <xsl:apply-templates select="@*|node()"/>
        </metaitem>
    </xsl:template>
    
    <xsl:template match="metaitem/@*">
        <xsl:copy>
            <xsl:value-of select="."/>
        </xsl:copy>
    </xsl:template>-->
    

</xsl:stylesheet>
