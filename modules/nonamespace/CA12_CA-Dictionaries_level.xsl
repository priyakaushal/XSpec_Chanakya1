<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita comm">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="CA12_CA-Dictionaries_level">
        <title>level <lnpid>id-CA12-15015</lnpid></title>

        <body>
            <p>The conversion of <sourcexml>level</sourcexml> is based on the following
                scenarios:</p>
            <section>
                <title>Scenario 1</title>
                <p>When <sourcexml>level</sourcexml> is having immediately child element
                        <sourcexml>heading/title/defterm</sourcexml> then
                        <sourcexml>level</sourcexml> becomes
                        <targetxml>dict:defitem/tei:entry</targetxml>.</p>
                <p><sourcexml>heading/title/defterm</sourcexml> becomes
                        <targetxml>tei:form/tei:orth</targetxml> and
                        <sourcexml>heading/title/emph/defterm</sourcexml> becomes
                        <targetxml>tei:form/tei:orth</targetxml>.</p>

                <p>Drop attribute <sourcexml>@searchtype</sourcexml> from
                        <sourcexml>defterm</sourcexml> element.</p>
                <p>Supress attribute <sourcexml class="+ topic/keyword xml-d/sourcexml "
                        >@leveltype</sourcexml> with its content.</p>
                <p>First nested element <sourcexml>level</sourcexml> becomes
                        <targetxml>tei:entry/tei:def/pgrp</targetxml> and rest of the nested
                    elements <sourcexml>level</sourcexml> becomes <targetxml>pgrp</targetxml>.</p>
                <pre xml:space="preserve" class="- topic/pre ">
&lt;comm:body&gt;
    &lt;level leveltype="1"&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;defterm searchtype="DEFINED-TERMS"&gt;OFFEREE&lt;/defterm&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="3"&gt;
            &lt;heading&gt;
                &lt;title searchtype="JURIS"&gt;
                    &lt;alias kw="AB"&gt;Alberta&lt;/alias&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;level leveltype="3"&gt;
                &lt;heading&gt;
                    &lt;title searchtype="DIGEST-SUBJECT"&gt;Corporations and Associations Law&lt;/title&gt;
                &lt;/heading&gt;
                ...
            &lt;/level&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;dict:body&gt;
    &lt;dict:defitem&gt;
        &lt;tei:entry&gt;
            &lt;tei:form&gt;
                &lt;tei:orth&gt;OFFEREE&lt;/tei:orth&gt;
            &lt;/tei:form&gt;
            &lt;tei:def&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Corporations and Associations Law&lt;/title&gt;
                    &lt;/heading&gt;
                    ...
                &lt;/pgrp&gt;
            &lt;/tei:def&gt;
        &lt;/tei:entry&gt;
    &lt;/dict:defitem&gt;
&lt;/dict:body&gt;
         </pre>
            </section>
            <section>
                <title>Scenario 2</title>

                <p>When <sourcexml>level</sourcexml> is immediate child of
                        <sourcexml>comm:body</sourcexml> and its child
                        <sourcexml>heading/title</sourcexml> contains [A-Z] single character then
                        <sourcexml>level/heading/title</sourcexml> becomes
                        <targetxml>dict:body/dict:defitem/h</targetxml> and the nested
                        <sourcexml>level/heading/title/@searchtype="DOC-HEADING
                        CHAPTER-TITLE"</sourcexml> becomes
                        <targetxml>tei:entry/tei:form/tei:orth</targetxml> and
                        <sourcexml>bodytext</sourcexml> becomes
                    <targetxml>tei:def/pgrp</targetxml>.</p>

                <p>First nested element <sourcexml>level</sourcexml> becomes
                        <targetxml>tei:entry/tei:def/pgrp</targetxml> and rest of the nested
                    elements <sourcexml>level</sourcexml> becomes <targetxml>pgrp</targetxml>.</p>
                <pre>&lt;comm:body&gt;
    &lt;level leveltype="1"&gt;
        &lt;heading lign="center"&gt;
            &lt;title&gt;A&lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="3"&gt;
            &lt;heading align="left"&gt;
                &lt;title searchtype="DOC-HEADING CHAPTER-TITLE"&gt;
                    &lt;emph typestyle="bf"&gt;
                        &lt;emph typestyle="bf"&gt;all just claims &amp;#8212;&lt;/emph&gt;
                    &lt;/emph&gt;
                    &lt;emph typestyle="bf"/&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext searchtype="COMMENTARY"&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&amp;#8220;In the specification, which is part of the
                            contract, there is also this provision: -&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;dict:body&gt;
    &lt;dict:defitem&gt;
        &lt;h&gt;A&lt;/h&gt;
        &lt;tei:entry&gt;
            &lt;tei:form&gt;
                &lt;tei:orth&gt;all just claims &amp;#8212;&lt;/tei:orth&gt;
            &lt;/tei:form&gt;
            &lt;tei:def&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;&amp;#8220;In the specification, which is part of the
                                contract, there is also this provision: -&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt;
            &lt;/tei:def&gt;
        &lt;/tei:entry&gt;
    &lt;/dict:defitem&gt;
&lt;/dict:body&gt;
        </pre>
                <note>
                    <p>When <sourcexml>comm:body/level/@leveltype="1"/heading/title</sourcexml> is
                        having value <b>[A-Z]</b> and <sourcexml>comm:info/publication</sourcexml>
                        element is having value <b>Canadian Construction Law Dictionary</b> then
                        conversion should suppress <targetxml>h</targetxml> element in the
                        target.</p>
                </note>

                <pre>
&lt;comm:body&gt;
    &lt;level leveltype="1"&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt;A&lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="3"&gt;
            &lt;heading align="left"&gt;
                &lt;title searchtype="DOC-HEADING CHAPTER-TITLE"&gt;
                    &lt;emph typestyle="bf"&gt;
                        &lt;emph typestyle="bf"&gt;appurtenant &amp;#8212;&lt;/emph&gt;
                    &lt;/emph&gt;
                    &lt;emph typestyle="bf"/&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext searchtype="COMMENTARY"&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&amp;#8220;&amp;#8230; instead of giving the word 'appurtenant'
                            as used a strict legal meaning, its ordinary popular meaning must be
                            given to it &amp;#8230;&amp;#8221;&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;

<b>and</b>

&lt;comm:info&gt;
    &lt;publication&gt;Canadian Construction Law Dictionary&lt;/publication&gt;
&lt;/comm:info&gt;

<b>becomes</b>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth&gt;appurtenant &amp;#8212;&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:def&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&amp;#8220;&amp;#8230; instead of giving the word 'appurtenant'
                            as used a strict legal meaning, its ordinary popular meaning must be
                            given to it &amp;#8230;&amp;#8221;&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt; ... &lt;/pgrp&gt;
        &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;
</pre>
            </section>
            <section>
                <title>Scenario 3</title>
                <p>When there is only one <sourcexml>level</sourcexml> having immediate child
                    elements <sourcexml>heading/title/defterm</sourcexml> then
                        <sourcexml>level</sourcexml> becomes
                        <targetxml>dict:defitem/tei:entry</targetxml> and
                        <sourcexml>heading/title/defterm</sourcexml> becomes
                        <targetxml>tei:form/tei:orth</targetxml> and child
                        <sourcexml>bodytext</sourcexml> becomes
                    <targetxml>tei:def/pgrp</targetxml>.</p>
                <p>Supress attribute <sourcexml class="+ topic/keyword xml-d/sourcexml "
                        >@leveltype</sourcexml> with its content.</p>
                <pre>
&lt;comm:body&gt;
    &lt;level leveltype="3"&gt;
        &lt;heading align="left"&gt;
            &lt;title searchtype="DOC-HEADING"&gt;
                &lt;emph typestyle="bf"&gt;
                    &lt;defterm searchtype="DEFINED-TERMS"&gt;QUO WARRANTO&lt;/defterm&gt;
                &lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;p&gt;
                &lt;text&gt;&amp;#8194;&lt;!-- WARNING: empty core:emp removed.--&gt; Lat.: by what right or
                    authority. A prerogative remedy, now ...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;
            
<b class="+ topic/ph hi-d/b ">Becomes</b>
            
&lt;dict:body&gt;
    &lt;dict:defitem&gt;
        &lt;tei:entry&gt;
            &lt;tei:form&gt;
                &lt;tei:orth&gt;QUO WARRANTO&lt;/tei:orth&gt;
            &lt;/tei:form&gt;
            &lt;tei:def&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;&amp;#8194;&lt;!-- WARNING: empty core:emp removed.--&gt; Lat.: by what right or
                            authority. A prerogative remedy, now ...&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt;
            &lt;/tei:def&gt;
        &lt;/tei:entry&gt;
    &lt;/dict:defitem&gt;
&lt;/dict:body&gt;
            </pre>
            </section>
            <section>
                <title>Scenario 4</title>
                <p>When <sourcexml>level</sourcexml> is having immediately child element
                        <sourcexml>heading/title/defterm</sourcexml> then
                        <sourcexml>level</sourcexml> becomes
                        <targetxml>dict:defitem/tei:entry</targetxml>.</p>
                <p><sourcexml>heading/title/defterm</sourcexml> becomes
                        <targetxml>tei:form/tei:orth</targetxml>.</p>

                <p>Drop attribute <sourcexml>@searchtype</sourcexml> from
                        <sourcexml>defterm</sourcexml> element.</p>
                <p>Supress attribute <sourcexml class="+ topic/keyword xml-d/sourcexml "
                        >@leveltype</sourcexml> from <sourcexml>level</sourcexml> with its
                    content.</p>
                <p>First nested element <sourcexml>level</sourcexml> becomes
                        <targetxml>tei:entry/tei:def</targetxml> and rest of the nested elements
                        <sourcexml>level</sourcexml> becomes <targetxml>pgrp</targetxml>.</p>
                <p><sourcexml>bodytext</sourcexml> becomes <targetxml>pgrp</targetxml>.</p>

                <pre>
&lt;comm:body&gt;
    &lt;level leveltype="1"&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;defterm searchtype="DEFINED-TERMS"&gt;APPOINTMENT - OF ARBITRATOR&lt;/defterm&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="3"&gt;
            &lt;heading&gt;
                &lt;title searchtype="JURIS"&gt;
                    &lt;alias kw="UK"&gt;United Kingdom&lt;/alias&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;level leveltype="3"&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text searchtype="CASE-NAME"&gt;
                            &lt;emph typestyle="bf"&gt;Tradax Export SA v Volkswagenwerk AG&lt;/emph&gt;
                        &lt;/text&gt;
                        &lt;text searchtype="REPORTER-CITE"&gt;[1970] 1 All ER 420&lt;/text&gt;
                        &lt;text searchtype="COURT-NAME"&gt;United Kingdom Court&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf" searchtype="JUDGES"&gt;per Edmund Davies LJ&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                    &lt;pgrp searchtype="QUOTED-TEXT"&gt;
                        &lt;p&gt;
                            &lt;text&gt;'"Appoint" and "appointed" are words with meanings varying
                                ...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
            &lt;/level&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;
            
<b class="+ topic/ph hi-d/b ">Becomes</b>
            
&lt;dict:body&gt;
    &lt;dict:defitem&gt;
        &lt;tei:entry&gt;
            &lt;tei:form&gt;
                &lt;tei:orth&gt;APPOINTMENT - OF ARBITRATOR&lt;/tei:orth&gt;
            &lt;/tei:form&gt;
            &lt;tei:def&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf"&gt;Tradax Export SA v Volkswagenwerk AG&lt;/emph&gt;
                        &lt;/text&gt;
                        &lt;text&gt;[1970] 1 All ER 420&lt;/text&gt;
                        &lt;text&gt;United Kingdom Court&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;&lt;emph typestyle="bf"&gt;per Edmund Davies LJ&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                    &lt;blockquote&gt;
                        &lt;p&gt;
                            &lt;text&gt;'"Appoint" and "appointed" are words with meanings varying
                                ...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/blockquote&gt;
                &lt;/pgrp&gt;
            &lt;/tei:def&gt;
        &lt;/tei:entry&gt;
    &lt;/dict:defitem&gt;
&lt;/dict:body&gt;
            </pre>
            </section>



            <section>
                <title>Changes</title>
                <p>2015-01-13: <ph id="change_20150113_AK">We have remove the Verbage along with its
                        example when we have Xpath in our
                            target<targetxml>/dict:dictionary/dict:body[1]/dict:defitem[1]/tei:entry[1]/tei:def[1]/pgrp[1]/p[1]/[ref:anchor/@id="dict-CASENAME-CITE"]/text[1]</targetxml>
                        as it is conflicting our scenario
                            <sourcexml>text@searchtype="CASE-NAME"</sourcexml>.</ph></p>
                <p>2015-01-09: <ph id="change_20150109_AK">We use one jump-to
                            <targetxml>ref:anchor/@id="dict-CASENAME-CITE"</targetxml> in the target
                        for both <sourcexml>CASE-NAME</sourcexml> and <sourcexml>CITE</sourcexml> in
                        the source </ph></p>
                <p>2014-12-15: <ph id="change_20141215_AK">Added ref:anchor element whenever there
                        is an xpath in the target went like this
                            <targetxml>/dict:dictionary/dict:body[1]/dict:defitem[1]/tei:entry[1]/tei:def[1]/pgrp[1]/p[1]</targetxml>
                        changes into
                            <targetxml>/dict:dictionary/dict:body[1]/dict:defitem[1]/tei:entry[1]/tei:def[1]/pgrp[1]/p[1]/[ref:anchor/@id="dict-CASE-NAME"]/text[1]</targetxml>
                        Applicable to CA12.</ph></p>
                <p>2014-10-07: <ph id="change_20141007_PS">Added note to suppress
                            <targetxml>h</targetxml> when
                            <sourcexml>comm:body/level/heading/title</sourcexml> is [A-Z] and
                            <sourcexml>publication</sourcexml> is <b>"Canadian Construction Law
                            Dictionary"</b>. Applicable to CA12.</ph></p>
                <p>2014-04-23: <ph id="change_20140423_PS">Corrected target mapping for scenario 1,
                        These instructions apply immediately to CA12.</ph></p>
                <p>2014-02-11: <ph id="change_20140211_PS">Added new scenario 4 and updated target
                        snippet in scenario 1, These instructions apply immediately to
                    CA12.</ph></p>
                <p>2013-05-03: <ph id="change_20130503_ps">Updated snippet for Scenario 2.</ph></p>
                <p>2013-04-16: <ph id="change_20130416_ps">Added Instruction for
                            <sourcexml>level/heading/title/@searchtype="DOC-HEADING
                            CHAPTER-TITLE"</sourcexml>.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_level.dita  -->
    <!--<xsl:message>CA12_CA-Dictionaries_level.xsl requires manual development!</xsl:message> -->


    <xsl:template match="level[@leveltype = '1'][parent::comm:body[1]]">
        <xsl:choose>
            <xsl:when test="child::heading[@align = 'center']/title[1]">
                <xsl:apply-templates select="child::heading[@align = 'center']/title[1]"/>
                <tei:entry>
                    <xsl:apply-templates select="child::heading/title/defterm[1]" mode="title_def"/>
                    <xsl:apply-templates select="child::heading/title/emph/defterm[1]"/>
                    <xsl:apply-templates select="level[@leveltype = '3']" mode="level3"/>
                </tei:entry>
            </xsl:when>
            <xsl:otherwise>
                <tei:entry>
                    <xsl:apply-templates select="child::heading/title/defterm[1]" mode="title_def"/>
                    <xsl:apply-templates select="child::heading/title/emph/defterm[1]"/>
                    <xsl:apply-templates select="level[@leveltype = '3']" mode="level3"/>
                </tei:entry>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <xsl:template match="level[@leveltype = '3']" mode="level3">
        <xsl:apply-templates select="child::heading/title/defterm[1]"/>
        <xsl:apply-templates select="child::heading/title/emph/defterm[1]"/>
        <xsl:apply-templates select="child::heading/title[@searchtype = 'DOC-HEADING']/emph/emph"/>
        <xsl:apply-templates select="child::heading/title[@searchtype = 'JURIS']"/>
        <xsl:apply-templates
            select="child::level[@leveltype = '3'][parent::level[@leveltype = '3']]"/>
        <xsl:apply-templates select="child::bodytext[@searchtype = 'COMMENTARY']"/>
    </xsl:template>

    <xsl:template match="heading/title/defterm" mode="title_def">
        <tei:form>
            <tei:orth>
                <xsl:apply-templates/>               
            </tei:orth>
        </tei:form>
    </xsl:template>

    <xsl:template match="heading/title[@searchtype = 'DOC-HEADING']/emph/emph">
        <tei:form>
            <tei:orth>
                <xsl:apply-templates/>               
            </tei:orth>
        </tei:form>
    </xsl:template>

    <xsl:template match="heading/title/emph/defterm">
        <tei:form>
            <tei:orth>
                <xsl:apply-templates/>               
            </tei:orth>
        </tei:form>
    </xsl:template>

    <xsl:template match="heading[@align = 'center']/title" priority="2">
        <xsl:variable name="info_pub" select="//comm:info/publication"/>
        <xsl:if test="not($info_pub = 'Canadian Construction Law Dictionary')">
            <xsl:if test="string-length(.) = 1">
                <h>
                    <xsl:apply-templates/>                    
                </h>
            </xsl:if>
        </xsl:if>
    </xsl:template>

    <xsl:template match="heading/title[@searchtype = 'JURIS']" priority="2"/>

    <xsl:template match="level[@leveltype = '3'][parent::level[@leveltype = '3']]">
        <xsl:apply-templates select="child::heading/title/defterm[1]"/>
        <xsl:apply-templates select="child::heading/title/emph/defterm[1]"/>
        <tei:def>
            <pgrp>
                <heading>
                    <title>
                        <xsl:value-of select="child::heading/title"/>
                    </title>
                </heading>
                <xsl:apply-templates
                    select="child::bodytext[parent::level[@leveltype = '3'][parent::level[@leveltype = '3']]]"
                />
            </pgrp>
        </tei:def>
    </xsl:template>

    <xsl:template match="bodytext[parent::level[@leveltype = '3'][parent::level[@leveltype = '3']]]">
        <xsl:apply-templates select="@* | node() except references"/>
    </xsl:template>
</xsl:stylesheet>
