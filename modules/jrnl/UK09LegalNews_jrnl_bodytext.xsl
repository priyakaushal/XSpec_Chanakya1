<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0"
    exclude-result-prefixes="dita jrnl">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK09LegalNews_jrnl_bodytext">
        <title>jrnl:bodytext <lnpid>id-UK09-29013</lnpid></title>
        <body>
            <p><sourcexml>jrnl:bodytext</sourcexml> becomes
                    <targetxml>nitf:body.content/bodytext</targetxml>.</p>
            <p>The attribute <sourcexml>@searchtype</sourcexml> should be dropped.</p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:body&gt; ... &lt;jrnl:bodytext searchtype="ARTICLE"&gt;
                    &lt;level&gt; &lt;heading&gt; &lt;title&gt; &lt;emph
                    typestyle="bf"&gt;Abstract&lt;/emph&gt; &lt;/title&gt; &lt;/heading&gt;
                    &lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;This article provides an
                    examination of some of the difficult legal issues, identified by the authors,
                    which arise from the mass market supply of software. The use of licences has
                    become the standard method of supply of software and this raises both
                    contractual and copyright issues for both suppliers and users. The problems
                    which arise under the law as it stands in the United Kingdom are examined first
                    by considering the rules of the law of contract and their applicability to such
                    supply methods as 'shrink-wrap', 'click-wrap' and shareware licences and
                    secondly by an examination of the protection provided to the parties by the law
                    of copyright. Throughout the article the authors consider the impact of the new
                    legislation in the United States, the Uniform Computer Information Transactions
                    Act, and question whether it provides guidance for policy-makers in the United
                    Kingdom. The authors conclude that there exist a number of areas of uncertainty
                    and that there is a need for new legislation in the United Kingdom.&lt;/text&gt;
                    &lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/level&gt; ...
                    &lt;/jrnl:bodytext&gt; &lt;/jrnl:body&gt; <b>Becomes</b> &lt;nitf:body&gt; ...
                    &lt;nitf:body.content&gt; &lt;bodytext&gt; &lt;section&gt; &lt;heading&gt;
                    &lt;title&gt; &lt;emph typestyle="bf"&gt;Abstract&lt;/emph&gt; &lt;/title&gt;
                    &lt;/heading&gt; &lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;This
                    article provides an examination of some of the difficult legal issues,
                    identified by the authors, which arise from the mass market supply of software.
                    The use of licences has become the standard method of supply of software and
                    this raises both contractual and copyright issues for both suppliers and users.
                    The problems which arise under the law as it stands in the United Kingdom are
                    examined first by considering the rules of the law of contract and their
                    applicability to such supply methods as 'shrink-wrap', 'click-wrap' and
                    shareware licences and secondly by an examination of the protection provided to
                    the parties by the law of copyright. Throughout the article the authors consider
                    the impact of the new legislation in the United States, the Uniform Computer
                    Information Transactions Act, and question whether it provides guidance for
                    policy-makers in the United Kingdom. The authors conclude that there exist a
                    number of areas of uncertainty and that there is a need for new legislation in
                    the United Kingdom.&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt;
                    &lt;/section&gt; ... &lt;/bodytext&gt; &lt;/nitf:body.content&gt;
                    &lt;/nitf:body&gt; </codeblock>

                <note>When Source is having Xpath
                        <sourcexml>/JOURNALDOC/jrnl:body/jrnl:bodytext/level/levelinfo/classification/classitem/classitem-identifier/classname
                    </sourcexml> then in the Target the conversion needs to put the converted
                    classication Elements under <targetxml>nitf:body.head</targetxml></note>

                <codeblock> &lt;jrnl:body&gt; ... &lt;jrnl:bodytext&gt; &lt;level&gt;
                    &lt;levelinfo&gt; &lt;classification&gt; &lt;classitem&gt;
                    &lt;classitem-identifier&gt; &lt;classname&gt;Company Law: Banking &amp;amp;
                    Finance Law&lt;/classname&gt; &lt;/classitem-identifier&gt; &lt;/classitem&gt;
                    &lt;/classification&gt; &lt;/levelinfo&gt; &lt;/level&gt; ...
                    &lt;/jrnl:bodytext&gt; &lt;/jrnl:body&gt; <b>Becomes</b> &lt;nitf:body&gt; ...
                    &lt;nitf:body.head&gt; &lt;classify:classification&gt;
                    &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;Company Law: Banking &amp;amp; Finance
                    Law&lt;/classname&gt; &lt;/classify:classitem-identifier&gt;
                    &lt;/classify:classitem&gt; &lt;/classify:classification&gt;
                    &lt;nitf:body.head&gt; &lt;nitf:body&gt; </codeblock>
            </example>


            <section>
                <title>Changes</title>
                <p>2015-07-15: <ph id="change_20150715_AK">Earlier we have put an unwanted Element
                        name <targetxml>bodytext</targetxml> in the Target after
                            <targetxml>nitf:body.head</targetxml> which we remove in this
                        change</ph></p>
                <p>2015-04-28: <ph id="change_20150428_AK">When Source is having Xpath
                            <sourcexml>/JOURNALDOC/jrnl:body/jrnl:bodytext/level/levelinfo/classification/classitem/classitem-identifier/classname</sourcexml>
                        then our conversion needs to put the converted classification elements under
                            <targetxml>nitf:body.head</targetxml> in the Target.</ph></p>

            </section>
        </body>

    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_jrnl_bodytext.dita  -->
    <!--<xsl:message>UK09LegalNews_jrnl_bodytext.xsl requires manual development!</xsl:message> -->

    <!--<xsl:template match="bodytext">
        <!-\-  Original Target XPath:  bodytext   -\->
        <bodytext>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:apply-templates select="following-sibling::bodytext/node()"/>
        </bodytext>
    </xsl:template>
    
    <xsl:template match="bodytext[preceding-sibling::bodytext]"/>-->

    <xsl:template match="jrnl:bodytext">
        <nitf:body.content>
            <bodytext>
                <xsl:apply-templates select="@* | node()" />
            </bodytext>
        </nitf:body.content>
    </xsl:template>
    
    <xsl:template match="jrnl:bodytext/@searchtype"/>
    <xsl:template match="/JOURNALDOC/jrnl:body/jrnl:bodytext/level/levelinfo">
        <xsl:apply-templates select="@* | node() except classification"/>        
    </xsl:template>
    <xsl:template match="classification">
        <classify:classification>
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classname>
                        <xsl:value-of select="."/>
                    </classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
    </xsl:template>
<!-- Suppress note element inside bodytext -->
    <xsl:template match="/JOURNALDOC/jrnl:body/jrnl:bodytext/level/bodytext/note | note[not(parent::footnotegrp|parent::l)]"/>
    
    <xsl:template match="ref:page[parent::l]">
        <listitem>
            <bodytext>
                <p>
                    <xsl:apply-templates/>
                </p>
            </bodytext>
        </listitem>
    </xsl:template>
    
   <!-- <xsl:template
        match="/JOURNALDOC/jrnl:body/jrnl:bodytext/level/levelinfo/classification/classitem/classitem-identifier/classname">
        <nitf:body.head>
            <xsl:apply-templates select="@* | node()"/>
        </nitf:body.head>
    </xsl:template>-->


</xsl:stylesheet>
