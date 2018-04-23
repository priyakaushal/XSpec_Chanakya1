<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
    exclude-result-prefixes="dita leg docinfo">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
        <title>leg:levelbody <lnpid>id-CA05-13624</lnpid></title>
        <body>
            <section>
                <ul>
                    <li class="- topic/li "> The conversion of <sourcexml>leg:levelbody</sourcexml>
                        depends upon its child elements: <ul>
                            <li> If <sourcexml>leg:level</sourcexml> is the immediate child of
                                    <sourcexml>leg:levelbody</sourcexml> then it will become
                                    <targetxml>primlaw:level</targetxml> i.e,
                                    <sourcexml>leg:levelbody/leg:level</sourcexml> becomes
                                    <targetxml>primlaw:level</targetxml>. </li>
                            <li> If <sourcexml>leg:bodytext</sourcexml> is the immediate child of
                                    <sourcexml>leg:levelbody</sourcexml> then it will become
                                    <targetxml>primlaw:bodytext</targetxml> i.e,
                                    <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes
                                    <targetxml>primlaw:bodytext</targetxml>. </li>
                        </ul>
                    </li>
                </ul>

                <ul>
                    <li> If text of <sourcexml>leg:bodytext</sourcexml> starts with the French
                            <b>Note de l'éditeur:</b> or English <b>Editor’s note:</b> or
                            <b>Editor's Note:</b> then convert it to
                            <targetxml>note[@notetype="instruction"]</targetxml>. <note>
                            <sourcexml>leg:level/leg:levelbody/leg:bodytext</sourcexml> becomes
                                <targetxml>note</targetxml>. </note>
                        <note>These <b>French</b> or <b>English</b> may also start with square
                            bracket <b>(i.e.[Note de l'éditeur: or [Editor’s note:</b>) then also
                            convert it to
                            <targetxml>note[@notetype="instruction"].</targetxml></note>
                    </li>
                </ul>

            </section>

            <example>
                <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
                <codeblock> &lt;leg:levelbody&gt; &lt;leg:level&gt; &lt;leg:level-vrnt
                    leveltype="3"&gt; &lt;leg:marginal-note&gt;Review by Attorney
                    General&lt;/leg:marginal-note&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; ...
                    &lt;/leg:levelbody&gt; </codeblock>
            </example>

            <example>
                <title>Target XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:bodytext&gt;
                    &lt;marginnote notetype="reference"&gt; &lt;ref:anchor id="CA_10002_001"/&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Review by Attorney General&lt;/text&gt;
                    &lt;/p&gt; &lt;/bodytext&gt; &lt;/marginnote&gt; &lt;/primlaw:bodytext&gt;
                    &lt;/primlaw:level&gt; </codeblock>
            </example>

            <example>
                <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
                <codeblock> &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Editor's note: S.C. 2005, c. 25, s. 11 was amended prior to coming
                    into force by S.C. 2007, c. 22, s. 21, effective June 22, 2007
                    (R.A.).&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; ... &lt;/leg:levelbody&gt;
                </codeblock>
            </example>

            <example>
                <title>Target XML 2: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
                <codeblock> &lt;primlaw:bodytext&gt; &lt;note notetype="instruction"&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Editor's note: S.C. 2005, c. 25, s. 11
                    was amended prior to coming into force by S.C. 2007, c. 22, s. 21, effective
                    June 22, 2007 (R.A.).&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/primlaw:bodytext&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-01-08: <ph id="change_20150108_PS">Updated Target XML 1 for
                            <targetxml>marginnote</targetxml> element mapping. DB# 194, Applicable
                        on CA05.</ph></p>
                <p>2014-12-09: <ph id="change_20141209_PS">Added instruction and updated example to
                        convert <b>Editor's note</b> in
                            <targetxml>note/@notetype="instruction"</targetxml></ph></p>
                <p>2013-04-18: <ph id="change_20130418_vv">Target Example fixed</ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--	<!-\-  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -\->
	<!-\-    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.levelbody.dita  -\->
	<xsl:message>leg.levelbody.xsl requires manual development!</xsl:message> -->

    <xsl:variable name="vDpsiCodes">
        <codes>
            <code key="03EX" value="REPEALED"/>
            <code key="03GG" value="REPEALED"/>
            <code key="03J5" value="REPEALED"/>
            <code key="03QW" value="REPEALED"/>
            <code key="0CV2" value="ABROGÉ"/>
            <code key="0U9B" value="REPEALED"/>
            <code key="0U9Y" value="REPEALED"/>
            <code key="0UA7" value="REPEALED"/>
            <code key="0UAQ" value="REPEALED"/>
            <code key="0UCP" value="REPEALED"/>
            <code key="0UCY" value="REPEALED"/>
            <code key="0UDC" value="REPEALED"/>
            <code key="0UEJ" value="REPEALED"/>
            <code key="0UFE" value="REPEALED"/>
            <code key="0UHM" value="REPEALED"/>
            <code key="0UI4" value="REPEALED"/>
            <code key="0UJB" value="REPEALED"/>
            <code key="0UPY" value="REPEALED"/>
            <code key="0UJ9" value="REPEALED"/>
            <code key="03TR" value="REPEALED"/>
            <code key="03GN" value="REPEALED"/>
            <code key="03U3" value="REPEALED"/>
            <code key="0USP" value="ABROGÉ"/>
            <code key="03JA" value="ABROGÉ"/>
            <code key="03U5" value="ABROGÉ"/>
        </codes>
    </xsl:variable>

    <xsl:key name="kCodeByName" match="code" use="string(@key)"/> 
    <xsl:template match="//docinfo:custom-metafield[@name='dpsi'][key('kCodeByName', ., $vDpsiCodes)]" mode="DpsiCode">
        <xsl:value-of select="key('kCodeByName', ., $vDpsiCodes)/@value"/>
    </xsl:template>

<xsl:template match="leg:levelbody">
    <xsl:apply-templates select="@* | node()"/>
</xsl:template>

    <xsl:template match="leg:level-vrnt" priority="2">
        <xsl:variable name="i" select="count(preceding::leg:level-vrnt) + count(ancestor::leg:level-vrnt) +1"/>
        <xsl:variable name="j" select="count(ancestor::leg:level-vrnt) + 1"/>
        <xsl:variable name="template">
        <xsl:if test= "$i = 1 and preceding::docinfo:versioninfo">
            <xsl:apply-templates select="//docinfo:versioninfo" mode="historical"/>
        </xsl:if>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="leg:level-vrnt[@leveltype = '2' or '3']  or not(preceding-sibling::leg:level-not-in-force)">
                <xsl:choose>
                    <xsl:when test="child::leg:heading[@subdoc='true']">
                        <xsl:variable name="i" select="count(preceding::leg:heading[@subdoc='true']) + 1"/>
                        <primlaw:level>
                            
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="child::leg:heading/@subdoc"/>
                            </xsl:attribute>
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="child::leg:heading/@toc-caption"/>
                            </xsl:attribute>
                            <xsl:attribute name="leveltype">
                                <xsl:text>unclassified</xsl:text>
                            </xsl:attribute>
                            <xsl:apply-templates select="node()"/>
                        </primlaw:level>
                    </xsl:when>
                    <xsl:when test="parent::leg:level-not-in-force">
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <primlaw:level>
                            <xsl:attribute name="leveltype">
                                <xsl:text>unclassified</xsl:text>
                            </xsl:attribute>
                            <xsl:apply-templates select="child::leg:heading"/>
                            <xsl:copy-of select="$template"/>
                            <xsl:apply-templates select="node() except leg:heading"/>
                            
                        </primlaw:level>
                        
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
        </xsl:choose>
        
<!--        <xsl:variable name="template">
        <xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name='dpsi']/$vDpsiCodes/codes/code/@key">
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                    <legisinfo:legisinfo>
                        <legisinfo:statusgroup>
                            <legisinfo:status statuscode="repealed">
                                <legisinfo:statustext>
                                    <xsl:apply-templates select="//docinfo:custom-metafield[@name='dpsi']" mode="DpsiCode"/>
                                </legisinfo:statustext>
                            </legisinfo:status>
                        </legisinfo:statusgroup>
                    </legisinfo:legisinfo>
                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
        </xsl:if>
        </xsl:variable>-->
       <!-- <xsl:choose>
            <xsl:when test="(@leveltype = '2' or '3') and (child::leg:heading[@subdoc='true'])">
                <xsl:variable name="i" select="count(preceding::leg:heading[@subdoc='true']) + 1"/>
                <primlaw:level>
                    
                    <xsl:attribute name="includeintoc">
                        <xsl:value-of select="child::leg:heading/@subdoc"/>
                    </xsl:attribute>
                    <xsl:attribute name="alternatetoccaption">
                        <xsl:value-of select="child::leg:heading/@toc-caption"/>
                    </xsl:attribute>
                    <xsl:attribute name="leveltype">
                        <xsl:text>unclassified</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="node()"/>
                </primlaw:level>
            </xsl:when>
            <xsl:when test="@leveltype = '2' or '3'">
                <primlaw:level leveltype="unclassified">
                   <!-\- <xsl:copy-of select="$template"></xsl:copy-of>-\->
                    <xsl:apply-templates select="child::leg:heading"/>
                    <xsl:if test= "$i = 1 and preceding::docinfo:versioninfo">
                        <xsl:apply-templates select="//docinfo:versioninfo" mode="historical"/>
                    </xsl:if>
                    <xsl:apply-templates select="node() except child::leg:heading"/>
                </primlaw:level>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
        </xsl:choose>-->
    </xsl:template>

    <xsl:template match="docinfo:versioninfo[child::docinfo:startdate]" mode="historical">
        <xsl:choose>
            <xsl:when test="child::docinfo:enddate">
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status statuscode="historical">
                                    <legisinfo:statustext>
                                        <xsl:text>Effective </xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@day"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@month"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@year"/>
                                        <xsl:text> to </xsl:text>
                                        <xsl:value-of select="child::docinfo:enddate/@day"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:enddate/@month"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:enddate/@year"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status statuscode="consolidated">
                                    <legisinfo:statustext>
                                        <xsl:text>Effective </xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@day"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@month"/>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@year"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="docinfo:versioninfo/docinfo:versionbranch/@value" mode='membership'>
        <doc:membership>
            <ref:groupid group-type="variants-1">
                <ref:resourceid>
                    <xsl:attribute name="ref:resourcekey">
                        <xsl:text>urn:cldi-1:</xsl:text>
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </ref:resourceid> 
            </ref:groupid>
        </doc:membership>
    </xsl:template>

</xsl:stylesheet>
