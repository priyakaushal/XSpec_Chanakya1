<?xml version="1.0" encoding="UTF-8"?>
<!--  ******************************************************************************
      IMPORTANT: This template contains some instructions for text processing coming
      from DITA instructions associated with the text element.
      
      FOR DITA INSTRUCTIONS, SEE Rosetta_text-LxAdv-text.xsl AND
      Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.xsl AND
      Rosetta_p-LxAdv-p.xsl. This module implements applicable DITA instructions 
      from all 3 templates, due to interactions between p and text structuring and
      the availability of context nodes.

      Functionality moved from text dita to this template:
      1) moving @align attribute on text to parent p (generic)
      2) for Canada, if multiple text elements exist within one paragraph, 
      text elements with @align attributes will be split out to separate paragraphs
      and the @align attribute will be moved to the appropriate separate paragraph.
      
      Functionality moved from this module to text modules:
      1) @nl element values used to insert proc:nl into p/text and to remove <nl/>
      elements from p/text when @nl='0'
      
      See Rosetta_text-LxAdv-text.xsl and/or 
      Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl for more information
      on moved functionality.
      
      JL
      *******************************************************************************
    
    -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:frm="http://www.lexis-nexis.com/glp/frm"
    xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0"
    exclude-result-prefixes="dita xs leg in glp form frm seclaw source_cttr ci case docinfo primlaw">
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_p-to-LexisAdvance_p">
        <title><sourcexml>p</sourcexml> to <targetxml>p</targetxml>
            <lnpid>id-CCCC-10424</lnpid></title>
        <body>
            <section>
                <p>Except where otherwise noted, <sourcexml>p</sourcexml> becomes
                        <targetxml>p</targetxml> comes with <sourcexml>@indent</sourcexml> becomes
                        <targetxml>@indent</targetxml>. <targetxml>@indent</targetxml> has tokenized
                    value in NewLexis schema. And <sourcexml>p/@style</sourcexml> becomes
                        <targetxml>p/@align</targetxml>. <targetxml>@align</targetxml> has tokenized
                    value in NewLexis Schema. </p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;blockquote&gt; &lt;p indent="hang"&gt; &lt;text&gt;Note: There is no
                    penalty for this Rule.&lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;blockquote&gt; &lt;p indent="hang"&gt; &lt;text&gt;Note: There is no
                    penalty for this Rule.&lt;/text&gt; &lt;/p&gt; &lt;/blockquote&gt; </codeblock>
            </example>
            <note>
                <b>If <sourcexml>p</sourcexml> comes with <sourcexml>@i</sourcexml> then
                        <sourcexml>@i</sourcexml> will get dropped in NewLexis.</b>
            </note>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;blockquote&gt; &lt;p i="3.5" indent="hang"&gt; &lt;text&gt;Note:
                    There is no penalty for this Rule.&lt;/text&gt;&lt;/p&gt; &lt;/blockquote&gt;
                </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;blockquote&gt; &lt;p indent="hang"&gt; &lt;text&gt;Note: There is no
                    penalty for this Rule.&lt;/text&gt; &lt;/p&gt; &lt;/blockquote&gt; </codeblock>
            </example>
            <note>
                <b>If <sourcexml>p</sourcexml> comes with <sourcexml>@nl</sourcexml> this means the
                        <targetxml>p</targetxml> should start with the same number of
                        <targetxml>proc:nl</targetxml> elements before any text content in order to
                    maintain vertical white space.</b>
            </note>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;p nl="1"&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;EDITORIAL
                    NOTE&lt;/emph&gt; ... &lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;proc:nl/&gt; &lt;emph
                    typestyle="bf"&gt;EDITORIAL NOTE&lt;/emph&gt; ... &lt;/text&gt; &lt;/p&gt;
                </codeblock>
            </example>
            <note>If <sourcexml>p</sourcexml> comes with <sourcexml>@nl=”0”</sourcexml>, this means
                the first <sourcexml>&lt;nl/&gt;</sourcexml> encountered within the
                    <sourcexml>&lt;p&gt;</sourcexml> should be omitted.</note>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;p nl="0"&gt; &lt;text&gt; &lt;nl/&gt; &lt;ci:cite
                    searchtype="LEG-REF"&gt; &lt;ci:content&gt;Companies Code (NSW)
                    s129&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;lnci:cite&gt; &lt;lnci:content&gt;Companies
                    Code (NSW) s129&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt;
                </codeblock>
            </example>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;p style="right"&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Last
                    updated: June 2011&lt;/emph&gt;&lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;p align="right"&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;Last
                    updated: June 2011&lt;/emph&gt;&lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <section>
                <title>Exceptional scenario for NZ07-Linxplus</title>
                <p>If <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> is a child of
                        <sourcexml>references</sourcexml> element then merge all
                        <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> in a single
                        <targetxml>p</targetxml> in target. Also all occurences of
                        <sourcexml>nl</sourcexml> within <sourcexml>text</sourcexml> becomes
                        <targetxml>proc:nl</targetxml>. Refer below example.</p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;references referencetype="statutes"&gt; &lt;p&gt; &lt;text&gt;
                    &lt;process-ignore process="kwd"&gt; &lt;emph typestyle="bf"&gt;References to
                    Legislation&lt;/emph&gt; &lt;/process-ignore&gt; &lt;/text&gt; &lt;/p&gt; &lt;p
                    nl="0"&gt; &lt;text&gt;&lt;ci:cite
                    searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;citefragment
                    searchtype="LEG-NAME-REF"&gt;&lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID" refpt="2000A38"&gt;Bail Act
                    2000&lt;/remotelink&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
                    &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;citefragment
                    searchtype="LEG-PROV-REF"&gt;&lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID"
                    refpt="2000A38S8"&gt;s8&lt;/remotelink&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;,
                    &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;&lt;citefragment
                    searchtype="LEG-PROV-REF"&gt;&lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID" refpt="2000A38S13"
                    &gt;s13&lt;/remotelink&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
                    &lt;/p&gt; &lt;p nl="0"&gt; &lt;text&gt; &lt;nl/&gt; &lt;ci:cite
                    searchtype="LEG-REF"&gt; &lt;ci:content&gt; &lt;citefragment
                    searchtype="LEG-NAME-REF"&gt; &lt;remotelink service="DOC-ID" dpsi="0069"
                    remotekey1="REFPTID" refpt="1975A116"&gt;Misuse of Drugs Act
                    1975&lt;/remotelink&gt; &lt;/citefragment&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;p nl="0"&gt; &lt;text&gt;
                    &lt;nl/&gt; &lt;ci:cite searchtype="LEG-REF"&gt; &lt;ci:content&gt;
                    &lt;citefragment searchtype="LEG-NAME-REF"&gt; &lt;remotelink service="DOC-ID"
                    dpsi="0069" remotekey1="REFPTID" refpt="2002A9"&gt;Sentencing Act
                    2002&lt;/remotelink&gt; &lt;/citefragment&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;ci:cite searchtype="LEG-REF"&gt; &lt;ci:content&gt;
                    &lt;citefragment searchtype="LEG-PROV-REF"&gt; &lt;remotelink service="DOC-ID"
                    dpsi="0069" remotekey1="REFPTID" refpt="2002A9S65"&gt;s65&lt;/remotelink&gt;
                    &lt;/citefragment&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt;
                    &lt;/p&gt; &lt;/references&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;ref:relatedrefs referencetype="statutes"&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;References to
                    Legislation&lt;/emph&gt; &lt;/text&gt; &lt;text&gt; &lt;lnci:cite
                    type="legislation"&gt; &lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;Bail Act
                    2000&lt;/ref:content&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0069-2000A38"/&gt;
                    &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
                    &lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;s8&lt;/ref:content&gt; &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0069-2000A38S8"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; &lt;/lnci:content&gt; &lt;/lnci:cite&gt;,
                    &lt;lnci:cite type="legislation"&gt;&lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;s13&lt;/ref:content&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0069-2000A38S13"/&gt; &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;proc:nl/&gt; &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Misuse of Drugs Act 1975&lt;/ref:content&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0069-1975A116"/&gt; &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;proc:nl/&gt; &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:content&gt; &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Sentencing Act 2002&lt;/ref:content&gt; &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="0069-2002A9"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt; &lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;lnci:cite type="legislation"&gt; &lt;lnci:content&gt; &lt;ref:crossreference
                    crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;s65&lt;/ref:content&gt;
                    &lt;ref:locator&gt; &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt;
                    &lt;ref:key-value value="0069-2002A9S65"/&gt; &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/ref:relatedrefs&gt; </codeblock>
            </example>

            <section>
                <p>
                    <note>If source document is having the input scenario
                            "<sourcexml>pgrp/p/leg:histnote</sourcexml>" then conversion needs to
                        drop '<sourcexml>p</sourcexml>' markup in target conversion and target
                        mapping xpath is
                        "<targetxml>pgrp/note[@notetype="historical"]</targetxml>".</note>
                </p>
            </section>
            <section>
                <note>For Stream 'HK06'</note>
                <p> When the source has <sourcexml>deflist/defitem/p/text</sourcexml> then omit
                        <sourcexml>p/text</sourcexml> and retain <sourcexml>defitem</sourcexml>.
                </p>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-03-14: <ph id="change_20140414_AS">Removed Colons from Labels.. DB item
                        #1255</ph></p>
                <p>2012-10-05: Removed @i from the example.</p>
                <p>2013-03-14: <ph id="change_20130314_ab">Add instruction and example
                            <sourcexml>p/@style</sourcexml>.</ph></p>
                <p>2013-10-09: <ph id="change_20131009_PS">Added instruction and example
                            <sourcexml>p</sourcexml> comes with
                    <sourcexml>@nl=”0”</sourcexml>.</ph></p>
                <p>2013-10-25: <ph id="change_20131025_PS">Added instruction and example
                            <sourcexml>p/@nl="0"</sourcexml> comes in
                            <sourcexml>references</sourcexml>.</ph></p>
                <p>2013-11-21: <ph id="change_20131121_PS">Updated instruction and example
                            <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in
                            <sourcexml>references</sourcexml>, this change directly affects
                        NZ07.</ph></p>
                <p>2013-12-04: <ph id="change_20131204_PS">Updated target example when
                            <sourcexml>p</sourcexml> or <sourcexml>p/@nl="0"</sourcexml> comes in
                            <sourcexml>references</sourcexml>, this change directly affects
                        NZ07.</ph></p>
            </section>

        </body>
    </dita:topic>
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-LxAdv-p.dita  -->
    <!-- BRT: this template is the otherwise condition in match="p" in base.xsl. 
                 The rules in this topic for handling @nl are different than the existing XSLT, which ignores and suppresses the element. 
                 Adding template match="p[@nl!='']/text" to handle this rule. *** Also, did not address NZ07 exception scenario** 
                 
       JL: seems like the @nl handling  will not behave properly unless we move it to the text template.  
        I moved it to XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl
        PLEASE LOOK THERE!!!!!! IF YOU NEED TO ADD IT TO ANOTHER MODULE FOR ELEMENT <text> WE MIGHT WANT TO FURTHER MODULARIZE IT -->

    <xsl:template match="p">
        <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
        <xsl:choose>            
            <!-- Priya Kaushal: Added below code for UK 15 -->
            <xsl:when test="parent::references[$streamID = 'UK15']">
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                </bodytext>
            </xsl:when>
            <xsl:when test="parent::in:body[$streamID = 'AU16']">
                <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="node()"/>
                </p>
            </xsl:when>
            <xsl:when test="parent::in:body">
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <p>
                        <xsl:apply-templates select="node()"/>
                    </p>
                </bodytext>
            </xsl:when>
            <!-- Vikas Rohilla : Included for the stream UK12          -->
            <xsl:when test="parent::blockquote[$streamID = 'UK12']">
                <p>
                    <xsl:apply-templates select="@* | refpt, node() except refpt"/>
                </p>
            </xsl:when>
            <xsl:when test="child::text/child::note[@notetype!='xref'][$streamID = 'UK12']">
                <xsl:apply-templates select="@* | refpt, node() except refpt"/>
            </xsl:when>
            <xsl:when
                test="(parent::frm:div 
                | parent::frm:body 
                | parent::clause[ancestor::frm:div | ancestor::frm:body] 
                | parent::li[ancestor::frm:body and not(parent::l/parent::entry)])[not(ancestor::footnote or ancestor::note)]
                [$streamID = ('NZ11','AU10')]">
                <form:p> 
                    <xsl:if test="not(@style) and child::text[1]/@align[.!='']">
                        <xsl:copy-of select="child::text[1]/@align"/>
                    </xsl:if>
                    <xsl:apply-templates select="@* | refpt, node() except refpt"/>
                </form:p>
            </xsl:when>
            <xsl:when
                test="(parent::frm:div | parent::frm:body | parent::clause[ancestor::frm:div | ancestor::frm:body] | parent::li[ancestor::frm:body])[not(ancestor::footnote or ancestor::note)][$streamID = 'UK12']">
                <form:p> 
                    <xsl:if test="not(@style) and child::text[1]/@align[.!='']">
                        <xsl:copy-of select="child::text[1]/@align"/>
                    </xsl:if>
                    <xsl:apply-templates select="@* | refpt, node() except refpt"/>
                </form:p>
            </xsl:when>
            <xsl:when
                test="(parent::sigblock[ancestor::frm:div | ancestor::frm:body])[not(ancestor::footnote)][$streamID = 'UK12']">
                <form:line>
                    <xsl:apply-templates select="@* | node()"/>
                </form:line>
            </xsl:when>
            <!-- MDS - occurs in HK04 -  child is leg:histnote then the p element is not output and simply passed through.-->
            <!-- JL revised to handle the many scenarios when p has other children than leg:histnote
            also revised to strip the p wrapper in certain conditions when legfragment is a child
            -->
            <xsl:when
                test="leg:histnote | blockquote[legfragment and not(child::*[2])][parent::p[parent::*:bodytext or parent::pgrp or parent::li or parent::fnbody or parent::glp:note or parent::case:judgmentbody or parent::case:appendix]]">
                <!--<xsl:apply-templates select="node()"/>-->
                <xsl:for-each-group select="*"
                    group-adjacent="
                    if (self::leg:histnote or self::blockquote[legfragment and not(child::*[2])][parent::p[parent::*:bodytext or parent::pgrp or parent::li or parent::fnbody or parent::glp:note or parent::case:judgmentbody or parent::case:appendix]]) then
                            0
                        else
                            1">
                    <xsl:choose>
                        <xsl:when test="current-grouping-key() = 0">
                            <xsl:apply-templates select="current-group()"/>
                        </xsl:when>
                        <!--Satbir: Added below template for changing order of reft before desig in NZ03 only-->
                        <xsl:when test="$streamID = 'NZ03'">
                            <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">

                                <xsl:apply-templates
                                    select="following-sibling::refpt[preceding-sibling::pnum]"/>
                                <xsl:for-each select="current-group()">

                                    <xsl:apply-templates select="current() except self::refpt"/>
                                </xsl:for-each>
                            </p>
                        </xsl:when>
                        <xsl:otherwise>
                            <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates select="parent::p/@*"/>
                                <xsl:if test="not(parent::p/@style)">
                                    <xsl:copy-of select="parent::p/text[1]/@align"/>
                                </xsl:if>
                                <!-- MDS 2017-08-08 Added handling for refpt to reorder in output-->
                                <xsl:apply-templates select="current-group()[self::refpt]"/>
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select=". except(self::refpt)"/>
                                </xsl:for-each>
                            </p>

                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each-group>
            </xsl:when>
            <!-- JL: funky NZ07 case where we collapse p or p[@nl='0'] element children of references 
            full logic isn't given but I assume we don't do the collapse if the reference has any non-p children or if 
            references has any p children where the @nl value is not zero or we're going to be here all year -->
            <xsl:when
                test="parent::references[not(child::*[not(self::p[@nl = '0' or not(@nl)])])] and starts-with($streamID, 'NZ07') and (not(@nl) or @nl = '0') and not(preceding-sibling::p)">
                <xsl:element name="p"
                    namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
                    <xsl:apply-templates select="@*"/>
                    <xsl:if
                        test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
                        <xsl:attribute name="align">
                            <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                    </xsl:if>
                    <!-- JL: the sample seems to indicate they want to collapse some of the text child elements too, 
                        but doesn't give the logic for doing that so I'm GUESSING based on the sample!
                        My guess at the logic used: if the @nl has the same value as (or is missing the same as) the previous p, then collapse 
                        text element children too.                          
                        This needs to be very carefully tested when we test  NZ07 data.
                    
                    -->
                    <xsl:choose>
                        <xsl:when
                            test="child::*[not(self::text)] or following-sibling::p[child::*[not(self::text)]]">
                            <xsl:apply-templates select="refpt | following-sibling::p/refpt"/>
                            <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                            <!-- if any p elements have ANY child elements other than <text>, don't merge child text nodes. cleaner -->
                            <xsl:for-each select="following-sibling::p">
                                <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- can assume p has only text children, yay! And we have also whittled the possibilities down to "p contains an nl att or not" -->
                            <xsl:for-each-group select="self::p | following-sibling::p"
                                group-adjacent="exists(@nl)">
                                <xsl:element name="text"
                                    namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                    <xsl:apply-templates select="current-group()[1]/text[1]/@*"/>
                                    <xsl:for-each select="current-group()">
                                        <xsl:apply-templates select="text/node()"/>
                                    </xsl:for-each>
                                </xsl:element>
                            </xsl:for-each-group>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:element>
            </xsl:when>
            <!-- suppresses context nodes already accessed in previous condition -->
            <xsl:when
                test="parent::references[not(child::*[not(self::p[@nl = '0' or not(@nl)])])] and starts-with($streamID, 'NZ07') and (not(@nl) or @nl = '0') and preceding-sibling::p"/>
            <xsl:when
                test="starts-with($streamID, 'CA') and count(text) &gt; 1 and not(@style) and text[@align]">
                <xsl:for-each-group select="*" group-adjacent="concat('', @align)">
                    <xsl:element name="p"
                        namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                        <xsl:apply-templates select="parent::p/@*"/>
                        <xsl:copy-of select="@align"/>
                        <xsl:for-each select="current-group()">
                            <xsl:apply-templates select="."/>
                        </xsl:for-each>
                    </xsl:element>

                </xsl:for-each-group>
            </xsl:when>
           
            <!-- Awantika: conditional change for AU20, using double slashes as full path is not working here  -->
            <xsl:when
                test="//source_cttr:annotations/child::heading/note/h[. = 'ActName' or . = 'Act Name'] and $streamID = 'AU20'">
                <xsl:apply-templates/>
            </xsl:when>
            <xsl:when test="parent::bodytext[$streamID = 'CA12']">
                <p>
                    <xsl:if test="child::text/ci:cite[not(preceding::p/text/ci:cite)] and not(child::text/@searchtype='CASE-NAME')">                       
                        <ref:anchor>                            
                            <xsl:attribute name="id">dict-CASENAME-CITE</xsl:attribute>
                            <xsl:attribute name="anchortype">local</xsl:attribute>
                        </ref:anchor> 
                    </xsl:if>                        
                  <xsl:apply-templates select="node()"/>
                </p>
            </xsl:when>
            <!-- 2017-10-17 - MDS: Added due to Webstar 7025682 -->
            <xsl:when test="parent::l[$streamID='UK12']">
                <listitem>
                    <bodytext>
                        <p>
                            <xsl:apply-templates select="@* | node()"/>
                        </p>
                    </bodytext>
                </listitem>
            </xsl:when>
            <xsl:when test="$streamID='UK22CF' and parent::legfragment and (preceding-sibling::leg:prelim or preceding-sibling::leg:info)">
                <xsl:element name="primlaw:bodytext">
                    <xsl:element name="p">
                        <xsl:apply-templates select="refpt"/>
                        <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <!-- Awantika:2018-04-04- Updated to apply inlineobject. W* 7157638 -->
            <xsl:when test="$streamID='HK07' and parent::bodytext[parent::level[@leveltype='prec' or @leveltype='prec.grp' or @leveltype='precgrp' or @leveltype='precgrp1' or @leveltype='precgrp2' or parent::comm.chap or ancestor::level[@leveltype = 'prec.grp']]]">
                <form:p>
                    <xsl:choose>
                        <xsl:when test="child::inlineobject">
                            <form:text>
                                <xsl:apply-templates select="inlineobject"></xsl:apply-templates>
                            </form:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="node() except inlineobject"/>
                        </xsl:otherwise>
                    </xsl:choose>                    
                </form:p>
            </xsl:when>
        <!--    <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and ancestor::source_cttr:annotations[not(@annotgroup='prov-al')]/heading/note[descendant::lnlink/marker['List of Provisions' or 'Defined Terms' or 'Government Website'][not(@id='OI13')]] | source_cttr:annotations[not(@annotgroup='prov-al')]/heading/remotelink">
                <xsl:apply-templates/>
            </xsl:when>-->
            <!-- Awantika:2018-02-15- mapping refpt inside <p>. Webstar # 7116564 -->
            <xsl:when test="$streamID='CA02CC' and preceding-sibling::heading[child::title/refpt]">
                <p>
                <xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:decisionsummary/heading/title/refpt"></xsl:apply-templates>
            <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:otherwise>         
               <xsl:choose>
                   <!-- Awantika: 2017-10-26- Added the condition to check multiple text/@align in one p
                   as per CI instructions which is currently only for Canada applying for HK07. 
                   Creating seperate <p> for each text/@align.-->
                   <xsl:when test="count(child::text/@align) >= 1 and $streamID='HK07'">
                       <xsl:for-each select="child::*">
                           <xsl:element name="p">
                               <xsl:if test="self::*[1]/@align">
                                   <xsl:attribute name="align">
                                       <xsl:value-of select="self::*[1]/@align"/>
                                   </xsl:attribute>
                               </xsl:if>
                               <xsl:apply-templates select="self::*"/>
                           </xsl:element>
                       </xsl:for-each>
                   </xsl:when>
                   <!-- Awantika:2017-10-27: p/text will be converted to <textitem> for AU20 for specific scenario -->
                   <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'history') and /CITATORDOC/source_cttr:body/source_cttr:content/source_cttr:annotations/heading/note[@id='HI4']| /CITATORDOC/source_cttr:body/source_cttr:content/source_cttr:annotations/heading/title[.='Assent']">                      
                       <xsl:apply-templates select="@* | node()"/>                       
                   </xsl:when>
                   <!--Satbir: Added mdule for handling glp:note under p/text-->
                   <xsl:when test="$streamID='NZ03' and child::text/child::glp:note[not(child::node except glp:note)][ancestor::case:judgmentbody]">
                       <xsl:apply-templates select="child::text/child::glp:note"/>
                   </xsl:when>
                   <!-- Awntika: 2017-12-13- Updated for webstar# 7065522 -->
                   <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and parent::note[ancestor::source_cttr:annotations[@id='OI2']/heading/title[.,'Former Title']]">
                       <xsl:apply-templates select="node()"/>
                   </xsl:when>
                   <xsl:otherwise>

               
                <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <!-- JL this "if" condition that moves text align att value to the parent p is generic and cannot be used for CA -->
                    <xsl:apply-templates select="@*"/>
                    <!-- <xsl:if
                        test="not(@style) and child::text[@align[. != '']] and not(child::text[2]) and not(starts-with($streamID, 'CA'))">
                        <xsl:attribute name="align">
                            <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                    </xsl:if>-->
                    <!--                   Chaitanya :Making the for the P/@align as CA08 require this change, Luckabaugh, Joy H. (LNG-HBE) <Joy.Luckabaugh@lexisnexis.com> has approved to change this module  -->
                    <xsl:if
                        test="not(@style) and child::text[@align[. != '']] and not(child::text[2])">
                        <xsl:attribute name="align">
                            <xsl:value-of select="text/@align"/>
                        </xsl:attribute>
                    </xsl:if>
                    
             
                    
                    
                	<!-- JD: 2017-07-25: modifying the above for NZ18 create @align from only the first text/align so as to not concat -->
                	<xsl:if
                		test="not(@style) and child::text[@align[. != '']] 
                		and $streamID=('NZ18','AU04','NZ13')">                		
                		<xsl:attribute name="align">
                			<!-- take the @align from the first child <text> (don't concatenate all child text/@align values) -->
                			<xsl:value-of select="text[1]/@align"/>
                		</xsl:attribute>
                	</xsl:if>
                	
                	<!-- Vikas Rohilla : Created desig altdesig before other element to meet schema ordering                  -->
                	<!-- create ref:anchor before other elements to meet schema ordering -->
                    <xsl:if test="not($streamID=('UK06','UK07'))">
                	   <xsl:apply-templates select="(refpt | text/refpt), edpnum, pnum"/>
                    </xsl:if>
                    <!-- the above is the wrong order for legis and regulation if pnum goes to desig and edpnum goes to altdesig  -->
                    <xsl:if test="$streamID=('UK06','UK07')">
                        <xsl:apply-templates select="(refpt | text/refpt), pnum, edpnum"/>
                    </xsl:if>
                	<!-- JD: 2017-07-31: added loop in order to properly wrap p/link elements and proces other children when present -->
                	<xsl:for-each select="*">
                		<xsl:choose>
                			<!--SS: Added this condition for p/link becomes p/text/ref:lnlink - HK07-->
                			<!-- JD: 2017-07-28: this produces an extra <text> when there is a child <link> AND a child <text>;
                		adding "and not(child::text)" -->
                			<xsl:when test="self::link">
                				<xsl:element name="text">
                					<!--<xsl:apply-templates />-->
                					<xsl:call-template name="generic-link"/>
                				</xsl:element>
                				<!--SS: Added "except link" condition for handling p/link - HK07-->
                				<!--<xsl:apply-templates
                					select="*[not(self::refpt | self::edpnum | self::pnum)] except link | text()"/>-->                			
                			</xsl:when>
                		    <!--SS: Added template for converting images from inline to figure/inline-->
                		    <!-- Awantika: 2018-01-12- inlineobject was getting dropped when coming in text for AU01. -->
                		    <!-- Awantika: 2018-03-29- Added HK03 to create inlineobject. VSTS Bug #459196 -->
                		    <xsl:when test="child::inlineobject[$streamID=('AU18','AU01','HK03')]">
                		        <text>
                		            <xsl:apply-templates/>
                		        </text>
                		    </xsl:when>
                			<xsl:otherwise>
                				<xsl:apply-templates
                					select=".[not(self::refpt | self::edpnum | self::pnum)]"/>                			
                			</xsl:otherwise>
                		</xsl:choose>                		
                	</xsl:for-each>
                	
                    <!-- Vikas Rohilla : Created desig altdesig before other element to meet schema ordering                  -->
                    <!-- create ref:anchor before other elements to meet schema ordering -->
                    <!--<xsl:apply-templates select="(refpt | text/refpt), edpnum, pnum"/>
                    <!-\-SS: Added "except link" condition for handling p/link - HK07-\->
                	<!-\- JD: removing 'except link' -\->
                		<xsl:apply-templates
                			select="*[not(self::refpt | self::edpnum | self::pnum)] except link | text()"/>-->                			
                
                    <xsl:if test="note[@notetype='xref'] and $streamID='UK11DN'">                       
                        <xsl:for-each-group select="*" group-adjacent="if (self::note) then 1 else 0">                           
                            
                            <xsl:choose>
                                <xsl:when test="current-grouping-key()=1">                                    
                                    <!--  <xsl:apply-templates select="ancestor::p/text"/>-->
                                    
                                  <text>
                                        <marginnote>
                                            <ref:anchor>
                                                <xsl:attribute name="id">
                                                    <xsl:value-of select="generate-id()"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="anchortype">
                                                    <xsl:text>local</xsl:text>
                                                </xsl:attribute>
                                            </ref:anchor>
                                            <bodytext>                                               
                                                <xsl:for-each select="current-group()">                                                    
                                                    <xsl:apply-templates select="@* | node()"/>
                                                </xsl:for-each>
                                            </bodytext>
                                        </marginnote>  
                                  </text>
                                </xsl:when>                                
                            </xsl:choose>                           
                        </xsl:for-each-group>
                    </xsl:if>
                </p>
                
                   </xsl:otherwise>
               </xsl:choose>
                <xsl:for-each select="following-sibling::level">
                    <xsl:call-template name="following_p_level"/>
                </xsl:for-each>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="p/@i">
        <!-- suppress -->
    </xsl:template>

    <xsl:template match="p/@nl">
        <!-- suppress -->
        <!-- see module for handling text when parent p has @nl -->
    </xsl:template>

    <xsl:template match="p/@ln.nsprefix">
        <!-- suppress -->
    </xsl:template>

    <xsl:template match="p/@class">
        <!-- suppress -->
    </xsl:template>

    <xsl:template match="p/@style">
        <xsl:choose>
            <xsl:when test=". = 'right' or . = 'left' or . = 'center'">
                <xsl:attribute name="align">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <!--<xsl:message>'p' element 'style' attribute has unexpected and unmappable value
                        <xsl:value-of select="."/> and will be omitted on output.</xsl:message>-->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Vikas Rohilla : Added template for the streamID CA01   -->
    <!-- Sudhanshu Srivastava : Added streamID CA02CC -->
    <xsl:template
        match="p[parent::glp:note[parent::text]][$streamID = 'CA01' or $streamID = 'CA02CC' or $streamID = 'CA04']">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="p/@indent">
        <xsl:copy-of select="."/>
    </xsl:template>

    <xsl:template match="p[parent::text][$streamID = 'UK12']">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <!-- Awantika: Added template to handle p/inlineobject in HK07 to p/text/ref:inlineobject
    JL: this isn't going to account for all scenarios; moved functionality to inlineobject templates-->




    <!-- from text dita: <note><b>(For CANADA Content Stream only )</b>Only move the <sourcexml>
        text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only
        text in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml>
        with <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute
        to the newly created <targetxml> p</targetxml>.</note>
    <section>
        <codeblock> &lt;p&gt; &lt;text&gt;Dated at Calgary, Alberta this 31 day of March
            1998.&lt;/text&gt; &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of
            the Court of Queen's Bench of Alberta&lt;/text&gt; &lt;text
            align="center"&gt;ALBERTA RULES&lt;/text&gt; &lt;text&gt;Rules of practice made
            pursuant to subsection 745.64 of the Criminal Code to reflect the changes made
            to the Criminal Code regarding applications for reduction in the number of years
            of imprisonment without eligibility for parole.&lt;/text&gt; &lt;/p&gt; </codeblock>
        <b>Becomes</b>
        <codeblock> &lt;p&gt; &lt;text&gt;Dated at Calgary, Alberta this 31 day of March
            1998.&lt;/text&gt; &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of
            the Court of Queen's Bench of Alberta&lt;/text&gt; &lt;/p&gt; &lt;p
            align="center"&gt; &lt;text&gt;ALBERTA RULES&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
            &lt;text&gt;Rules of practice made pursuant to subsection 745.64 of the Criminal
            Code to reflect the changes made to the Criminal Code regarding applications for
            reduction in the number of years of imprisonment without eligibility for
            parole.&lt;/text&gt; &lt;/p&gt; </codeblock>
    </section>-->


    <!-- JL: seems like the @nl handling  will not behave properly unless we move it to the text template.  
        I moved it to XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl
        PLEASE LOOK THERE!!!!!! IF YOU NEED TO ADD IT TO ANOTHER MODULE FOR ELEMENT <text> -->
    <!-- BRT: included this specific text match template because it's part of p[@nl]. Added this template -->
    <!--    <xsl:template match="p[@nl != '']/text">
        <xsl:element name="text">
            <xsl:apply-templates select="@*"/>           
            <!-\- BRT add number of nl that are in p/@nl -\->
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="parent::p/@nl"/>
                <xsl:with-param name="i" select="1"/>
            </xsl:call-template>

            <!-\- BRT remove hard-coded nl that are in source -\->
            <xsl:apply-templates select="*[not(self::nl)] | text()"/>
        </xsl:element>
    </xsl:template>



    <xsl:template name="add_nl">
        <xsl:param name="length" select="."/>
        <xsl:param name="i" select="1"/>
        <!-\- BRT: create <nl/> for each iteration of @nl value -\->
        <xsl:if test="$length &gt; 0">
            <xsl:element name="proc:nl"/>
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="$length - 1"/>
                <xsl:with-param name="i" select="$i + 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>-->
    <xsl:template name="following_p_level">
        <xsl:choose>
            <xsl:when test="child::heading/title/refpt">
                <seclaw:level>
                    <xsl:attribute name="leveltype">
                        <xsl:value-of select="@leveltype"/>
                    </xsl:attribute>
                    <xsl:apply-templates select="child::heading/title/refpt"/>
                    <xsl:apply-templates
                        select="@* | node() except (level[preceding-sibling::bodytext])"/>
                </seclaw:level>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
	
	
	<!-- JD: 2017-07-21: added trap for p containing only empty node or single whitespace to match DT output.
	e.g., 
	<p>
	  <text/>
	</p>
	-->
    
    <xsl:template match="p[text[not(node()) or (string() and not(normalize-space()) and not(*))] and count(*)=1 ]"/>

	<!-- 
		JD:		match p that has at least one element child, and don't have any children not named 'text', which doesn't have any text() or children not named 'br' 
		e.g.,
 		 <p>
				<text>
					<nl/>
					<nl/>
				</text>
			</p>
		taken from https://stackoverflow.com/questions/11438787/find-an-element-that-only-has-one-other-kind-of-child
	-->
	<xsl:template match="p[* and not(*[not(self::text[* and not(text()) and not(*[not(self::nl)])])])]"/>
	
	
	<!-- MDS 2017-08-11 - Added supression of completely empty paragraph elements.  Only for specific streams -->
    <xsl:template match="p[not(node())][$streamID = 'AU13']"/>
</xsl:stylesheet>
