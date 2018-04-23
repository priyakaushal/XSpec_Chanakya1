<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0"
    exclude-result-prefixes="dita dig glp case pubfm seclaw">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.info">
        <title>dig:info <lnpid>id-CA14-35623</lnpid></title>

        <body>
            <section>
                <p><sourcexml>dig.info</sourcexml> becomes
                    <targetxml>seclaw:digestinfo</targetxml>.</p>
                <note>
                    <p>When <sourcexml>dig:info</sourcexml> is a direct child of
                            <sourcexml>dig:collection</sourcexml> then conversion should <b>not</b>
                        convert <sourcexml>dig:info</sourcexml> to
                            <targetxml>seclaw:digestinfo</targetxml> because children of
                            <sourcexml>dig:collection/dig:info</sourcexml> map to <b>metadata</b> or
                            <b>highlights</b> section.</p>
                </note>
                <note>
                    <p>Comment-out <sourcexml>glp:note</sourcexml> when it occurs in Xpath
                            <sourcexml>//dig:body/dig:collection/dig:info/glp:note</sourcexml>. The
                        markup is under review. Known in dpsi <b>03LT</b>.</p>
                </note>
            </section>

            <example>
                <title>Example 1</title>
                <codeblock> &lt;dig:info&gt; ... &lt;/dig:info&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:digestinfo&gt; ... &lt;/seclaw:digestinfo&gt; </codeblock>
            </example>
            <section>
                <p>When <sourcexml>contrib</sourcexml> is the child of
                        <sourcexml>dig:info</sourcexml> then <sourcexml>contrib</sourcexml> becomes
                        <targetxml>seclaw:body/pubfm:pubfm/pubfm:narrative/pubfm:item</targetxml>.</p>
                <p>When <sourcexml>note</sourcexml> is the child of <sourcexml>dig:info</sourcexml>
                    then <sourcexml>note</sourcexml> becomes
                        <targetxml>seclaw:body/pubfm:pubfm/pubfm:narrative/note/bodytext</targetxml>.</p>
            </section>
            <example>
                <title>Example of <sourcexml>dig:info/contrib</sourcexml> and
                        <sourcexml>dig:info/note</sourcexml></title>
                <codeblock> &lt;dig:body&gt; &lt;dig:collection&gt; &lt;dig:info&gt; …
                    &lt;contrib&gt;WILL POWER&lt;/contrib&gt; &lt;contrib&gt;Published monthly as
                    the newsletter complement to the Canadian Estate Administration Guide by
                    LexisNexis Canada Inc. For subscription information, contact your Account
                    Manager or call 1-800-387-0899.&lt;/contrib&gt; &lt;contrib&gt;For LexisNexis
                    Canada Inc.&lt;/contrib&gt; &lt;note&gt; &lt;p&gt; &lt;text&gt;Iver
                    Chong,&lt;nl/&gt;Associate Editor&lt;nl/&gt;905-479-2665, ext.
                    519&lt;nl/&gt;email: iver.chong@lexisnexis.ca&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
                    &lt;text&gt;&amp;#xa9; 2015, LexisNexis Canada. All rights
                    reserved.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Customer
                    Support&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Phone:
                    1-800-387-0899&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Email:
                    service@lexisnexis.ca&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;Customer
                    Service is available from 7 a.m. to 11 p.m. (ET) Monday to Friday, and from 9
                    a.m. to 11 p.m. (ET) on Weekends.&lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
                    &lt;/dig:info&gt; &lt;/dig:collection&gt; &lt;/dig:body&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:body&gt; &lt;pubfm:pubfm&gt; &lt;pubfm:narrative&gt;
                    &lt;pubfm:item&gt; WILL POWER &lt;/pubfm:item&gt; &lt;pubfm:item&gt; Published
                    monthly as the newsletter complement to the Canadian Estate Administration Guide
                    by LexisNexis Canada Inc. For subscription information, contact your Account
                    Manager or call 1-800-387-0899.&lt;/pubfm:item&gt; &lt;pubfm:item&gt; For
                    LexisNexis Canada Inc.&lt;/pubfm:item&gt; &lt;note&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; Iver Chong,&lt;nl/&gt;Associate
                    Editor&lt;nl/&gt;905-479-2665, ext. 519&lt;nl/&gt;email:
                    iver.chong@lexisnexis.ca &lt;/text&gt; &lt;/p&gt; &lt;p&gt;
                    &lt;text&gt;&gt;&amp;#xa9; 2015, LexisNexis Canada. All rights
                    reserved.&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; Customer Support
                    &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; Phone:
                    1-800-387-0899&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; Email:
                    service@lexisnexis.ca &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; Customer
                    Service is available from 7 a.m. to 11 p.m. (ET) Monday to Friday, and from 9
                    a.m. to 11 p.m. (ET) on Weekends.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/note&gt; &lt;/pubfm:narrative&gt; &lt;/pubfm:pubfm&gt; &lt;/seclaw:body&gt;
                </codeblock>
            </example>

            <section>
                <title>Changes</title>
                <p>2016-04-27: <ph id="change_20160427_PS">Added instruction and example when
                            <sourcexml>contrib</sourcexml> and <sourcexml>note</sourcexml> are the
                        child of <sourcexml>dig:info</sourcexml>, Applicable on CA14.</ph></p>
                <p>2015-03-25: <ph id="change_20150325_jm">Not a rule change. Minor change to CI
                        format only. Moved an existing note from below example to above.</ph></p>
                <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\dig.info.dita  -->


    <!-- Vikas Rohilla : Template to match the dig:info and process the child   -->
    <xsl:template match="dig:info">
        <xsl:apply-templates select="@* | node() except (publication | aboutpub | pubdate | issue)"/>
    </xsl:template>

    <!-- Vikas Rohilla : Template to match the dig:info descendent case:casename or abbrvname   -->
    <xsl:template match="dig:info[descendant::case:casename or descendant::abbrvname]">
        <seclaw:digestinfo>
            <xsl:apply-templates select="@* | node() except (publication | aboutpub | pubdate | issue)"/>
        </seclaw:digestinfo>
    </xsl:template>

    <!-- Vikas Rohilla : Template to match the first contrib and -->
    <xsl:template match="contrib[not(preceding-sibling::*[1][self::contrib])]">
        <pubfm:pubfm>
            <xsl:attribute name="pubfmtype"/>
            <pubfm:narrative>
                <xsl:attribute name="narrativetype"/>
                <pubfm:item>
                    <xsl:attribute name="itemtype"/>
                    <xsl:apply-templates select="@* | node()"/>
                </pubfm:item>
                <xsl:if test="following-sibling::*[1][self::contrib]">
                    <xsl:call-template name="wrap-contrib">
                        <xsl:with-param name="node" select="following-sibling::*[1][self::contrib]"/>
                    </xsl:call-template>
                </xsl:if>
                <xsl:if test="following-sibling::note">
                    <xsl:call-template name="wrap-note">
                        <xsl:with-param name="node" select="following-sibling::note[1]"/>
                    </xsl:call-template>
                </xsl:if>
            </pubfm:narrative>
        </pubfm:pubfm>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template name wrapp-contrib for wrap contrib elements  -->
    <xsl:template name="wrap-contrib">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="wrap-contrib"/>
        <xsl:if test="$node/following-sibling::*[1][self::contrib]">
            <xsl:call-template name="wrap-contrib">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::contrib]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <!-- Vikas Rohilla : Template to match the first note and parent is level  -->
    <xsl:template match="note[parent::level][not(preceding-sibling::*[1][self::note])]" priority="25">
        <xsl:element name="seclaw:prelim">
            <xsl:element name="note">
                <xsl:element name="bodytext">
                    <xsl:apply-templates select="node() | @*"/>
                </xsl:element>
            </xsl:element>
            <xsl:if test="following-sibling::*[1][self::note]">
                <xsl:call-template name="wrap-note">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::note]"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- Vikas Rohilla : Template name wrapp-contrib for wrap contrib elements  -->
    <xsl:template name="wrap-note">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="wrap-note"/>
        <xsl:if test="$node/following-sibling::*[1][self::note]">
            <xsl:call-template name="wrap-note">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::note]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!-- Vikas Rohilla : template to match the contrib with the mode @att value wrap-contrib-->
    <xsl:template match="contrib" mode="wrap-contrib">
        <xsl:element name="pubfm:item">
            <xsl:attribute name="itemtype"/>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:element>
    </xsl:template>
    
    <!-- Vikas Rohilla : template to match the note with the mode @att value wrap-note-->
    <xsl:template match="note" mode="wrap-note">
        <xsl:element name="note">
            <xsl:element name="bodytext">
                <xsl:apply-templates select="node() | @*"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the note not preceding-sibling contrib   -->
    <xsl:template match="note[not(preceding-sibling::contrib)]">
        <pubfm:pubfm>
            <pubfm:narrative>
                <note>
                    <bodytext>
                        <xsl:apply-templates select="@* | node()"/>
                    </bodytext>
                </note>
            </pubfm:narrative>
        </pubfm:pubfm>
    </xsl:template>
    
    <!-- Suppressed the contrib or note in the current mode   -->
    
    <xsl:template match="contrib[preceding-sibling::*[1][self::contrib]]"/>

    <xsl:template match="note[preceding-sibling::*[1][self::contrib]]"/>
    
    <xsl:template match="note[parent::level][preceding-sibling::*[1][self::note]]" priority="25"/>
   
</xsl:stylesheet>
