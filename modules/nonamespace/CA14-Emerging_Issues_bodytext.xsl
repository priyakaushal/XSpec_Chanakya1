<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita dig seclaw">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="bodytext">
    <title>bodytext <lnpid>id-CA14-35610</lnpid></title>

    <body>
        <section>
            <p><sourcexml>bodytext</sourcexml> becomes
                    <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/abstract/bodytext</targetxml>.</p>
            <p>If <sourcexml>bodytext</sourcexml> contains <sourcexml>heading/title</sourcexml> then
                move target <targetxml>heading/title</targetxml> to become preceding sibling of
                    <targetxml>bodytext</targetxml>. See Example 2.</p>
            <p>Suppress attribute <sourcexml>@searchtype</sourcexml> from NL conversion.</p>
        </section>

        <example>
            <title>Example 1</title>
            <codeblock>
&lt;bodytext searchtype="DECISION-SUMMARY"&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;verbatim verbatimclass="future"&gt; Driving offence convictions reversed where
                accused's&lt;nl/&gt; denial of driving rejected in part because of accused's&lt;nl/&gt; failure
                to tell police on arrest.&lt;nl/&gt;
                &lt;nl/&gt; "In this case, it is clear that the trial judge's&lt;nl/&gt; reliance on the
                appellant's failure to protest his&lt;nl/&gt; innocence at the scene was a factor along
                his path of&lt;nl/&gt; reasoning to conviction. It is equally clear that this&lt;nl/&gt; line of
                reasoning is impermissible: see Regina v. Palmer
                ...
                &lt;nl/&gt;
            &lt;/verbatim&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/bodytext&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
        &lt;seclaw:digest&gt;
            &lt;abstract&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;verbatim verbatimclass="future"&gt; Driving offence
                                convictions reversed where accused's&lt;proc:nl/&gt; denial
                                of driving rejected in part because of
                                accused's&lt;proc:nl/&gt; failure to tell police on arrest.&lt;proc:nl/&gt;
                                &lt;proc:nl/&gt; "In this case, it is clear that the trial
                                judge's&lt;proc:nl/&gt; reliance on the appellant's failure
                                to protest his&lt;proc:nl/&gt; innocence at the scene was a
                                factor along his path of&lt;proc:nl/&gt; reasoning to
                                conviction. It is equally clear that this&lt;proc:nl/&gt;
                                line of reasoning is impermissible: see Regina v. Palmer
                                ...
                                &lt;proc:nl/&gt;
                            &lt;/verbatim&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/abstract&gt;
        &lt;/seclaw:digest&gt;
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
       </codeblock>
        </example>
        <example>
            <title>Example 2. <sourcexml>bodytext/heading/title</sourcexml></title>
            <codeblock>

&lt;dig:item&gt;
    &lt;bodytext&gt;
        &lt;heading&gt;
            &lt;title align="center"&gt;In the News - Canada&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;Bill requiring DNA samples...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/dig:item&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
        &lt;seclaw:digest&gt;
            &lt;abstract&gt;
                &lt;heading&gt;
                    &lt;title align="center"&gt;In the News - Canada&lt;/title&gt;
                &lt;/heading&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;Bill requiring DNA samples...&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/abstract&gt;
        &lt;/seclaw:digest&gt;
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
       </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-03-26: <ph id="change_20150326_jm">Added rule for
                        <sourcexml>bodytext/heading</sourcexml> to make
                        <targetxml>heading</targetxml> sibling not child. RFA 12.</ph></p>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\bodytext.dita  -->
	 
	 
    <!-- Vikas Rohilla : Tempalte to match the bodytext and create the seclaw:bodytext  -->
    <xsl:template match="bodytext">        
        <seclaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:if test="following-sibling::*[1][self::bodytext]">
                <xsl:call-template name="bodytext-followingbodytext">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::bodytext]"/>
                </xsl:call-template>
            </xsl:if>
        </seclaw:bodytext>        
    </xsl:template>
    
    <!-- Vikas Rohilla : Template name bodytext-followingbodytext fro wrap in single seclaw:bodytext  -->
    <xsl:template name="bodytext-followingbodytext">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="wrap-bodytext"/>
        <xsl:if test="$node/following-sibling::*[1][self::bodytext]">
            <xsl:call-template name="bodytext-followingbodytext">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::bodytext]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!--    Vikas Rohillla : Template to match the bodytext and the mode wrap-bodytext-->
    <xsl:template match="bodytext" mode="wrap-bodytext">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the following bodytext for supress in cutrent mode    -->
    <xsl:template match="bodytext[preceding-sibling::*[1][self::bodytext]]"/>
    
    <!-- Vikas Rohilla : Tempalte to match the bodytext has following sibling level  and create the seclaw:bodytext  -->
    <xsl:template match="bodytext[following-sibling::*[1][self::level]]">
        <seclaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:if test="following-sibling::*[1][self::level]">
                <xsl:call-template name="bodytext-followinglevel">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::level]"/>
                </xsl:call-template>    
            </xsl:if>
        </seclaw:bodytext>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the following level for supress in cutrent mode    -->
    <xsl:template match="level[preceding-sibling::bodytext]" priority="25"/>
    
    <!-- Vikas Rohilla : Template name bodytext-followinglevel for wrap in single seclaw:bodytext  -->
    <xsl:template name="bodytext-followinglevel">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="wrap-level"/>
        <xsl:if test="$node/following-sibling::*[1][self::level]">
            <xsl:call-template name="bodytext-followinglevel">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::level]"></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <!-- Vikas Rohilla : Tempalte to match the bodytext and  the parent dig:item create the abstract/bodytext  -->
    <xsl:template match="bodytext[parent::dig:item]">
        <xsl:choose>
            <xsl:when test="preceding-sibling::dig:info">
                <abstract>
                    <xsl:apply-templates select="heading"/>
                    <bodytext>
                        <xsl:apply-templates select="node() except heading|@*"/>
                    </bodytext>
                </abstract>
            </xsl:when>
            <xsl:when test="not(preceding-sibling::*) and parent::dig:item/preceding-sibling::*[1][self::dig:item]/bodytext[not(following-sibling::*)][preceding-sibling::*]">
                <abstract>
                    <xsl:apply-templates select="heading"/>
                    <bodytext>
                        <xsl:apply-templates select="node() except heading|@*"/>
                    </bodytext>
                </abstract>
            </xsl:when>
            <xsl:when test="preceding-sibling::abstract and parent::dig:item/preceding-sibling::*[1][self::dig:item]/bodytext[not(following-sibling::*)]">
                <abstract>
                    <xsl:apply-templates select="heading"/>
                    <bodytext>
                        <xsl:apply-templates select="node() except heading|@*"/>
                    </bodytext>
                </abstract>
            </xsl:when>
            <xsl:otherwise>
                <seclaw:digest>
                    <abstract>
                        <xsl:apply-templates select="heading"/>
                        <bodytext>
                            <xsl:apply-templates select="node() except heading|@*"/>
                        </bodytext>
                    </abstract>
                </seclaw:digest>
            </xsl:otherwise>
        </xsl:choose> 
    </xsl:template>
    
    <!-- Vikas Rohilla : Tempalte to match the bodytext and  the parent dig:body create the seclaw:digestgrp/seclaw:digest/bodytext  -->
    <xsl:template match="bodytext[parent::dig:body]">
        <seclaw:digestgrp>
            <seclaw:digest>
                <abstract>
                    <xsl:apply-templates select="heading"/>
                    <bodytext>
                        <xsl:apply-templates select="node() except heading|@*"/>
                    </bodytext>
                </abstract>
            </seclaw:digest>
        </seclaw:digestgrp>
    </xsl:template>
    
    <!-- Vikas Rohilla : Supressed the  @searchtype    -->
    <xsl:template match="bodytext/@searchtype"/>
    

</xsl:stylesheet>