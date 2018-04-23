<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1"
    xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0"
    exclude-result-prefixes="dita source_dict">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-Body">
        <title>Body <lnpid>id-HK05-37410</lnpid></title>
        <body>
            <section>
                <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml><ul>
                        <li>Child <sourcexml>dict:term-entry</sourcexml> becomes
                                <targetxml>dict:defitem/tei:entry</targetxml><ul>
                                <li><sourcexml>defterm</sourcexml> becomes
                                        <targetxml>tei:form/tei:orth</targetxml> following the rules below:<ul>
                                        <li>The value of <targetxml>tei:orth/@norm</targetxml>
                                            should be the value of <sourcexml>defterm</sourcexml>
                                            with space normalized, punctutation removed, and
                                            converted to lower-case.</li>
                                    </ul></li>
                                <li>Convert <sourcexml>dict:definition</sourcexml> as follows:<ul>
                                        <li><sourcexml>dict:definition</sourcexml> becomes
                                                <targetxml>tei:def</targetxml>.<ul
                                                id="ul_zlv_cbv_yk">
                                                <li>child element <sourcexml>p</sourcexml> and its
                                                  children will be contained in
                                                  <targetxml>pgrp</targetxml>.</li>
                                            </ul></li>
                                    </ul></li>
                            </ul></li>
                        <li>
                            <sourcexml>dict:definition/see</sourcexml> becomes
                                <targetxml>dict:defitem/tei:entry/tei:re[@type='see']</targetxml>
                        </li>
                        <li>
                            <sourcexml>dict:definition/see-also</sourcexml> becomes
                                <targetxml>dict:defitem/tei:entry/tei:re[@type='see-also']</targetxml>
                            <ul>
                                <li>In both above cases <targetxml>tei:re</targetxml> would be as
                                    sibling of <targetxml>tei:def</targetxml>.</li>
                            </ul>
                        </li>
                    </ul></p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;dict:body&gt; &lt;dict:term-entry&gt; &lt;defterm&gt; &lt;emph
                    typestyle="bf"&gt;Step in the proceedings&lt;/emph&gt; &lt;/defterm&gt;
                    &lt;dict:definition&gt; &lt;p&gt; &lt;text&gt;An action which impliedly invokes
                    the... &lt;/text&gt; &lt;/p&gt; &lt;/dict:definition&gt;
                    &lt;/dict:term-entry&gt; &lt;/dict:body&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;dict:body&gt; &lt;dict:defitem&gt; &lt;tei:entry&gt;
                    &lt;tei:form&gt; &lt;tei:orth norm="Step in the proceedings"&gt;
                    &lt;/tei:orth&gt; &lt;/tei:form&gt; &lt;tei:def&gt; &lt;pgrp&gt; &lt;p&gt;
                    &lt;text&gt;An action which impliedly invokes the... &lt;/text&gt; &lt;/p&gt;
                    &lt;/pgrp&gt; &lt;/tei:def&gt; &lt;/tei:entry&gt; &lt;/dict:defitem&gt;
                    &lt;/dict:body&gt; </codeblock>
            </example>
            <example>
                <title>Source XML for see-also</title>
                <codeblock> &lt;dict:definition&gt; &lt;p&gt; &lt;text&gt; &lt;emph
                    typestyle="bf"&gt;Possession;&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt;
                    &lt;see-also&gt; &lt;emph typestyle="bf"&gt;Yield up in good repair&lt;/emph&gt;
                    &lt;/see-also&gt; &lt;/dict:definition&gt; </codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock> &lt;tei:entry&gt; &lt;tei:def&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;
                    &lt;emph typestyle="bf"&gt;Possession;&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt;
                    &lt;/pgrp&gt; &lt;/tei:def&gt; &lt;tei:re type='see-also'&gt; &lt;emph
                    typestyle="bf"&gt;Yield up in good repair&lt;/emph&gt; &lt;/tei:re&gt;
                    &lt;/tei:entry&gt; </codeblock>
            </example>


            <section>
                <title>Changes</title>
                <p>2016-04-18: <ph id="change_20160418_HP">Created</ph>.</p>
            </section>
        </body>
    </dita:topic>


    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK05_Dictionary\Body.dita  -->

    <xsl:template match="source_dict:body">
        <dict:body>
            <xsl:apply-templates select="@* | node()[not(self::heading)]"/>
        </dict:body>
    </xsl:template>

    <xsl:template match="source_dict:term-entry">
        <dict:defitem>
            <xsl:apply-templates select="ancestor::source_dict:body/heading/refpt" mode="h-dict"/>
            <tei:entry>
                <xsl:apply-templates select="@* | node()"/>
            </tei:entry>
        </dict:defitem>
    </xsl:template>
    
    <xsl:template match="source_dict:body/heading/refpt" mode="h-dict">
        <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:call-template name="refpt-generic"/>   
        </h>
    </xsl:template>

    <xsl:template match="defterm">
        <!--  Original Target XPath:  tei:form/tei:orth   -->
        <tei:form>
            <tei:orth>
                <xsl:attribute name="norm">
                    <xsl:value-of select="replace(normalize-space(lower-case(.)), '.?!,;:-', '')"/>
                </xsl:attribute>
                <xsl:apply-templates select="@*"/>
                <!-- refpt moved from source_dict:head -->
                <xsl:if test="ancestor::source_dict:term-entry[position() = 1][not(preceding-sibling::source_dict:term-entry)]">
                    <xsl:apply-templates select="ancestor::source_dict:body/heading/desig/designum/refpt"/>
                </xsl:if>
                <xsl:apply-templates/>
            </tei:orth>
        </tei:form>

    </xsl:template>

    <xsl:template match="source_dict:definition">
        <xsl:for-each-group select="*" group-adjacent="local-name(.)">
            <xsl:choose>
                <xsl:when test="current-grouping-key() = 'p'">
                    <tei:def>
                        <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <xsl:apply-templates select="current-group()"/>
                        </pgrp>
                    </tei:def>
                </xsl:when>
                <xsl:when test="current-grouping-key() = 'see-also'">
                    <tei:re type="see-also">
                        <xsl:apply-templates select="current-group()"/>
                    </tei:re>                   
                </xsl:when>
                <xsl:when test="current-grouping-key() = 'see'">
                    <xsl:for-each select="current-group()">
                        <xsl:apply-templates select="."/>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="outputErrorMessage">
                        <xsl:with-param name="messageText">unexpected element encountered: <xsl:value-of select="name(.)"/></xsl:with-param>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each-group>
    </xsl:template>


    <xsl:template match="source_dict:definition/see">
        <tei:re>
            <xsl:attribute name="type" select="'see'"/>
            <xsl:apply-templates select="@* | node()"/>
        </tei:re>
    </xsl:template>

    <xsl:template match="source_dict:definition/see-also">
        <xsl:if test="preceding-sibling::*[1][name()='p']/text">                 
                <xsl:analyze-string select="preceding-sibling::*[1][name()='p']/text" regex="(^[\d\D\w]*)((&#x53E6;&#x898B;|See also|see also)[\s]*$)" flags="i">
                    <xsl:matching-substring>      
                        <xsl:choose>
                            <xsl:when test="matches(regex-group(2),'[\s]+$')">
                                <xsl:value-of select="regex-group(2)"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="concat(regex-group(2),' ')"/> 
                            </xsl:otherwise>
                        </xsl:choose>                        
                    </xsl:matching-substring>
                    <xsl:non-matching-substring>
                        <!-- ignore non-matching -->
                    </xsl:non-matching-substring>
                </xsl:analyze-string>
        </xsl:if>                    
        <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>
