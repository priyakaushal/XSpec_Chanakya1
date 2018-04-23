<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="highlight">
    <title>highlight <lnpid>id-CA14-35626</lnpid></title>

    <body>
        <section><ul>
                <li><sourcexml>highlight</sourcexml> becomes
                        <targetxml>seclaw:body/seclaw:digestgrp/seclaw:highlight</targetxml>.<ul>
                        <li>If <sourcexml>highlight</sourcexml> contains
                                <sourcexml>hrule</sourcexml>, suppress
                            <sourcexml>hrule</sourcexml>.</li>
                    </ul></li>
            </ul>
            <note><p>Conversion should generate one <targetxml>seclaw:digestgrp</targetxml> to hold
                    all <targetxml>seclaw:highlight</targetxml> elements. More calrification see
                    Example 2.</p></note>
            <note>
                <p>Comment-out <sourcexml>glp:note</sourcexml> when it occurs in Xpath
                        <sourcexml>//dig:body/dig:collection/dig:info/highlight/p/text/glp:note</sourcexml>.
                    The markup is under review. Known in dpsi <b>03GX</b>.</p>
            </note>
        </section>

        <example>
            <title>Example 1</title>
            <codeblock>
&lt;dig:info&gt;
    &lt;highlight&gt;
        &lt;l&gt;
            &lt;li&gt;
                &lt;lilabel&gt;*&lt;/lilabel&gt;
                &lt;p&gt;
                    &lt;text&gt;MEDICAL MALPRACTICE -- Gynecology -- failure to obtain informed consent
                        before laparoscopy assisted vaginal hysterectomy &amp;amp; failure to diagnose
                        &amp;amp; manage complications within standard of care -- damage to left ureter,
                        leakage
                        ...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/li&gt;
        &lt;/l&gt;
        &lt;hrule align="center" width="90%"/&gt;
    &lt;/highlight&gt;
&lt;/dig:info&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
        &lt;seclaw:highlight&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;label&gt;*&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;MEDICAL MALPRACTICE -- Gynecology -- failure to obtain informed
                                consent before laparoscopy assisted vaginal hysterectomy &amp;amp;
                                failure to diagnose &amp;amp; manage complications within standard of
                                care -- damage to left ureter, leakage
                                ...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/seclaw:highlight&gt;
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
       </codeblock>
        </example>
        <example>
            <title>Example 2: Multiple highlight elements.</title>
            <codeblock>
&lt;dig:info&gt;
    &lt;highlight&gt;
        &lt;l&gt;
            &lt;li&gt;
                &lt;lilabel&gt;*&lt;/lilabel&gt;
                &lt;p&gt;
                    &lt;text&gt;MEDICAL MALPRACTICE -- Gynecology -- failure to obtain informed consent
                        before laparoscopy assisted vaginal hysterectomy &amp;amp; failure to diagnose
                        &amp;amp; manage complications within standard of care -- damage to left ureter,
                        leakage
                        ...
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/li&gt;
        &lt;/l&gt;
    &lt;/highlight&gt;
    &lt;highlight&gt;
        &lt;l&gt;
            &lt;li&gt;
                &lt;lilabel&gt;*&lt;/lilabel&gt;
                &lt;p&gt;
                    &lt;text&gt;MVA -- soft tissue injuries &amp;amp; pain in back, dizziness -- Non-pecuniary
                        damages: $25,000
                        ...
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/li&gt;
        &lt;/l&gt;
    &lt;/highlight&gt;
&lt;/dig:info&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
        &lt;seclaw:highlight&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;label&gt;*&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;MEDICAL MALPRACTICE -- Gynecology -- failure to obtain informed
                                consent before laparoscopy assisted vaginal hysterectomy &amp;amp;
                                failure to diagnose &amp;amp; manage complications within standard of
                                care -- damage to left ureter, leakage
                                ...
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/seclaw:highlight&gt;
        &lt;seclaw:highlight&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;label&gt;*&lt;/label&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;MVA -- soft tissue injuries &amp;amp; pain in back, dizziness --
                                Non-pecuniary damages: $25,000
                                ...
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
            &lt;/list&gt;
        &lt;/seclaw:highlight&gt;
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
       </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2015-03-26: <ph id="change_20150326_jm">Added instruction to suppress
                        <sourcexml>hrule</sourcexml>. RFA 12.</ph></p>
            <p>2015-03-25: <ph id="change_20150325_jm">Not a rule change. Minor change to CI format
                    only. Moved an existing note from below examples to above.</ph></p>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\highlight.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the first highlight -->
    <xsl:template match="highlight[not(preceding-sibling::*[1][self::highlight])]">
        <seclaw:digestgrp>
            <seclaw:highlight>
                <xsl:apply-templates select="@* | node()"/>
            </seclaw:highlight>
            <xsl:if test="following-sibling::*[1][self::highlight]">
                <xsl:call-template name="wrap-highlight">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::highlight]"/>
                </xsl:call-template>
            </xsl:if>
        </seclaw:digestgrp>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template name wrap-highlight to wrap all following sibling highlight -->
    <xsl:template name="wrap-highlight">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="wrap-highlight"/>
        <xsl:if test="$node/following-sibling::*[1][self::highlight]">
            <xsl:call-template name="wrap-highlight">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::highlight]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the highlight with @mode wrap-highlight -->
    <xsl:template match="highlight" mode="wrap-highlight">
        <seclaw:highlight>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:highlight>
    </xsl:template>

    <!-- Vikas Rohilla : Tamplate to match the highlight and preceding sibling highlight   -->
    <xsl:template match="highlight[preceding-sibling::*[1][self::highlight]]"/>

</xsl:stylesheet>