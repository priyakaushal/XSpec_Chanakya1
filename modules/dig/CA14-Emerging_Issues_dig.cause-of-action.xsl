<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
    exclude-result-prefixes="dita dig casedigest seclaw person">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.cause-of-action">
        <title>dig:cause-of-action <lnpid>id-CA14-35621</lnpid></title>
        <body>
            <section>
                <p> Suppress <sourcexml>dig:cause-of-action</sourcexml> and childern of
                        <sourcexml>dig:cause-of-action</sourcexml> can be converted as below.</p>
                <p><sourcexml>dig:action-facts</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction</targetxml></p>
                <p><sourcexml>dig:cause-date</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:causedate</targetxml></p>
                <p><sourcexml>dig:injury/p/text</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:injury/textitem</targetxml></p>
                <p><sourcexml>dig:injury-duration</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:injuryduration/duration</targetxml></p>
                <p><sourcexml>dig:action-party</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:actionparty</targetxml>.
                    Also create attribute <targetxml>@partyrole="unknown"</targetxml> within
                        <targetxml>casedigest:actionparty</targetxml>.</p>
                <p><sourcexml>gender</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:actionparty/person:gender</targetxml></p>
                <p><sourcexml>dig:age/age</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:actionparty/person:age</targetxml></p>
                <p><sourcexml>occupation</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/casedigest:facts/casedigest:causeofaction/casedigest:actionparty/person:occupation</targetxml></p>
                <note>
                    <p>Conversion should not create consecutive <targetxml>seclaw:digest</targetxml>
                        elements. When 2 or more consecutive sibling source elements map to
                            <targetxml>seclaw:digest</targetxml>, data should be merged to a single
                            <targetxml>seclaw:digest</targetxml> element unless this would hamper
                        content ordering.</p>
                </note>
            </section>
            <example>
                <title>Example 1: Mapping of
                    <sourcexml>dig:action-facts/dig:cause-date</sourcexml></title>
                <codeblock> &lt;dig:cause-of-action&gt; &lt;dig:action-facts&gt;
                    &lt;dig:cause-date&gt;June 23, 2008.&lt;/dig:cause-date&gt;
                    &lt;/dig:action-facts&gt; &lt;/dig:cause-of-action&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;casedigest:facts&gt; &lt;casedigest:causeofaction&gt;
                    &lt;casedigest:causedate&gt;June 23, 2008.&lt;/casedigest:causedate&gt;
                    &lt;/casedigest:causeofaction&gt; &lt;/casedigest:facts&gt;
                    &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>

            <example>
                <title>Example 2: Mapping of
                        <sourcexml>dig:action-facts/dig:injury/p/text</sourcexml></title>
                <codeblock> &lt;dig:cause-of-action&gt; &lt;dig:action-facts&gt; &lt;dig:injury&gt;
                    &lt;p&gt; &lt;text&gt;Medical Malpractice -- gynecology -- failure to obtain
                    informed consent before laparoscopy assisted vaginal hysterectomy &amp;amp;
                    failure to diagnose &amp;amp; manage complications within standard of care --
                    damage to left ureter, leakage of urine into body, abdominal pain, unspecified
                    cellulitis infection, removal of navel, tube to drain kidney, 2 reparative
                    surgeries, permanent partial disability, flank pain, fatigue, abdominal
                    scarring.&lt;/text&gt; &lt;/p&gt; &lt;/dig:injury&gt; &lt;/dig:action-facts&gt;
                    &lt;/dig:cause-of-action&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;casedigest:facts&gt; &lt;casedigest:causeofaction&gt;
                    &lt;casedigest:injury&gt; &lt;textitem&gt;Medical Malpractice -- gynecology --
                    failure to obtain informed consent before laparoscopy assisted vaginal
                    hysterectomy &amp;amp; failure to diagnose &amp;amp; manage complications within
                    standard of care -- damage to left ureter, leakage of urine into body, abdominal
                    pain, unspecified cellulitis infection, removal of navel, tube to drain kidney,
                    2 reparative surgeries, permanent partial disability, flank pain, fatigue,
                    abdominal scarring.&lt;/textitem&gt; &lt;/casedigest:injury&gt;
                    &lt;/casedigest:causeofaction&gt; &lt;/casedigest:facts&gt;
                    &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>

            <example>
                <title>Example 3: Mapping of
                        <sourcexml>dig:action-facts/dig:injury-duration</sourcexml></title>
                <codeblock> &lt;dig:cause-of-action&gt; &lt;dig:action-facts&gt;
                    &lt;dig:injury-duration&gt;Tube -- 3 months; Flank pain, fatigue, scarring --
                    ongoing.&lt;/dig:injury-duration&gt; &lt;/dig:action-facts&gt;
                    &lt;/dig:cause-of-action&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;casedigest:facts&gt; &lt;casedigest:causeofaction&gt;
                    &lt;casedigest:injuryduration&gt; &lt;duration&gt;Tube -- 3 months; Flank pain,
                    fatigue, scarring -- ongoing.&lt;/duration&gt;
                    &lt;/casedigest:injuryduration&gt; &lt;/casedigest:causeofaction&gt;
                    &lt;/casedigest:facts&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
                    &lt;/seclaw:body&gt; </codeblock>
            </example>

            <example>
                <title>Example 4: Mapping of <sourcexml>dig:action-party/gender</sourcexml></title>
                <codeblock> &lt;dig:cause-of-action&gt; &lt;dig:action-party&gt;
                    &lt;gender&gt;Female&lt;/gender&gt; &lt;/dig:action-party&gt;
                    &lt;/dig:cause-of-action&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;casedigest:facts&gt; &lt;casedigest:causeofaction&gt;
                    &lt;casedigest:actionparty partyrole="unknown"&gt;
                    &lt;person:gender&gt;Female&lt;/person:gender&gt;
                    &lt;/casedigest:actionparty&gt; &lt;/casedigest:causeofaction&gt;
                    &lt;/casedigest:facts&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
                    &lt;/seclaw:body&gt; </codeblock>
            </example>

            <example>
                <title>Example 5: Mapping of
                    <sourcexml>dig:action-party/dig:age/age</sourcexml></title>
                <codeblock> &lt;dig:cause-of-action&gt; &lt;dig:action-party&gt; &lt;dig:age&gt;
                    &lt;age&gt;53 at time of trial.&lt;/age&gt; &lt;/dig:age&gt;
                    &lt;/dig:action-party&gt; &lt;/dig:cause-of-action&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;casedigest:facts&gt; &lt;casedigest:causeofaction&gt;
                    &lt;casedigest:actionparty partyrole="unknown"&gt; &lt;person:age&gt;53 at time
                    of trial.&lt;/person:age&gt; &lt;/casedigest:actionparty&gt;
                    &lt;/casedigest:causeofaction&gt; &lt;/casedigest:facts&gt;
                    &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>

            <example>
                <title>Example 6: Mapping of
                    <sourcexml>dig:action-party/occupation</sourcexml></title>
                <codeblock> &lt;dig:cause-of-action&gt; &lt;dig:action-party&gt;
                    &lt;occupation&gt;N/A&lt;/occupation&gt; &lt;/dig:action-party&gt;
                    &lt;/dig:cause-of-action&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;seclaw:digestgrp&gt; &lt;seclaw:digest&gt;
                    &lt;casedigest:facts&gt; &lt;casedigest:causeofaction&gt;
                    &lt;casedigest:actionparty partyrole="unknown"&gt;
                    &lt;person:occupation&gt;N/A&lt;/person:occupation&gt;
                    &lt;/casedigest:actionparty&gt; &lt;/casedigest:causeofaction&gt;
                    &lt;/casedigest:facts&gt; &lt;/seclaw:digest&gt; &lt;/seclaw:digestgrp&gt;
                    &lt;/seclaw:body&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\dig.cause-of-action.dita  -->
    <!--<xsl:message>CA14-Emerging_Issues_dig.cause-of-action.xsl requires manual development!</xsl:message>-->

    <!-- Vikas Rohilla : Template to match the dig:cause-of-action and creates the casedigest:facts/casedigest:causeofaction -->
    <xsl:template match="dig:cause-of-action">
        <casedigest:facts>
            <casedigest:causeofaction>
                <xsl:apply-templates select="@* | node()"/>
            </casedigest:causeofaction>
        </casedigest:facts>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the dig:action-facts and process the childs node and attributes-->
    <xsl:template match="dig:action-facts">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the dig:cause-date and creates the casedigest:causedate -->
    <xsl:template match="dig:cause-date">
        <casedigest:causedate>
            <xsl:apply-templates select="@* | node()"/>
        </casedigest:causedate>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the dig:injury and creates the casedigest:injury/textitem-->
    <xsl:template match="dig:injury">
        <casedigest:injury>
            <textitem>
                <xsl:apply-templates select="@* | node()"/>
            </textitem>
        </casedigest:injury>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the p[parent::dig:injury] and process the childs node and attributes-->
    <xsl:template match="p[parent::dig:injury]">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the text[parent::dig:injury] and process the childs node and attributes-->
    <xsl:template match="text[ancestor::dig:injury]">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <!--Vikas Rohilla : Tempalte to match the dig:injury-duration and creates the casedigest:injuryduration/duration-->
    <xsl:template match="dig:injury-duration">
        <casedigest:injuryduration>
            <duration>
                <xsl:apply-templates select="@* | node()"/>
            </duration>
        </casedigest:injuryduration>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the dig:action-party and creates the casedigest:actionparty-->
    <xsl:template match="dig:action-party">
        <casedigest:actionparty>
            <xsl:attribute name="partyrole" select="'unknown'"/>
            <xsl:apply-templates select="@* | node()"/>
        </casedigest:actionparty>
    </xsl:template>

    <!--Vikas Rohilla : Tempalte to match the gender and creates the person:gender-->
    <xsl:template match="gender">
        <person:gender>
            <xsl:apply-templates select="@* | node()"/>
        </person:gender>
    </xsl:template>

    <!--Vikas Rohilla : Tempalte to match the dig:age and process child nodes-->
    <xsl:template match="dig:age">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <!--Vikas Rohilla : Tempalte to match the dig:age and creates person:age-->
    <xsl:template match="age[parent::dig:age]">
        <person:age>
            <xsl:apply-templates select="@* | node()"/>
        </person:age>
    </xsl:template>

    <!--Vikas Rohilla : Tempalte to match the occupation and creates person:occupation-->
    <xsl:template match="occupation">
        <person:occupation>
            <xsl:apply-templates select="@* | node()"/>
        </person:occupation>
    </xsl:template>


</xsl:stylesheet>
