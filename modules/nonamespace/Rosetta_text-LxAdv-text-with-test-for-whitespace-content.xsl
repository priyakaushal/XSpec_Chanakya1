<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    version="2.0"
    exclude-result-prefixes="dita glp">
<!--  ******************************************************************************
      IMPORTANT: This template should replace Rosetta_text-LxAdv-text.xsl AND
      Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.xsl in files where 
      Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.xsl and 
      Rosetta_text-LxAdv-text.xsl were originally included. This incorporates the
      test for whitespace and non-breaking whitespace with the normal text processing
      
      FOR DITA INSTRUCTIONS, SEE Rosetta_text-LxAdv-text.xsl AND
      Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.xsl AND
      Rosetta_p-LxAdv-p.xsl. This module implements applicable DITA instructions 
      from all 3 templates, due to interactions between p and text structuring.
      
      
      VERY IMPORTANT:
      Newcomers to XSLT often ask how they can check for entity references such as 
      "&nbsp;" or "&lt;" in the source tree, and the answer is: you can't. By the 
      time the document's content reaches the source tree, it's too late.
      Therefore the final treatment of &nbsp; and its # equivalents must be handled
      outside the xslt. This template will remove text element containing only the 
      unresolved entity because it must remove the resolved entity and the processor
      cannot distinguish them.
      JL
      *******************************************************************************
    
    -->
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_text_to-LexisAdvance_text">
        <title><sourcexml>text</sourcexml> to <targetxml>text</targetxml>
            <lnpid>id-CCCC-10477</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <p><sourcexml>text</sourcexml> becomes <targetxml>text</targetxml>, and optional
                    attributes <sourcexml>@cont</sourcexml> should be suppressed from conversion,
                        <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> must
                    only be used to preserve mandated horizontal spacing and
                        <targetxml>@align</targetxml> will be moved in parent
                        <targetxml>p</targetxml> in New Lexis conversion. <codeblock>
                        &lt;p&gt;&lt;text align="right"&gt;TOBY HALLIGAN&lt;/text&gt;&lt;/p&gt; </codeblock>
                    <b>Becomes</b>
                    <codeblock> &lt;p align="right"&gt;&lt;text&gt;TOBY
                        HALLIGAN&lt;/text&gt;&lt;/p&gt; </codeblock>
                </p>
            </section>
            <note><b>(For CANADA Content Stream only )</b>Only move the <sourcexml>
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
            </section>
            <section>
                <title>Changes</title>
                <p>2011-12-21: Added instruction for attribute align. </p>
                <p>2011-04-28: Added instruction for attribute cont. </p>
                <p>2012-08-30: Moved form/bodytext/text scenario to
                    Rosetta_form_bodytext_text-to-LexisAdvance_form.text.dita.</p>
                <p>2014-01-31: <ph id="change_20140131_AB">Updated instruction,
                            <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml>
                        in NL conversion. NZ09 commentary discussion board issue for handling
                            <sourcexml>text/@align</sourcexml></ph></p>
                <p>2014-08-12: <ph id="change_20140811_SSX">For CANADA Content Stream: Only move the
                            <sourcexml> text@align</sourcexml> to the parent
                            <targetxml>p</targetxml> if it is the only text in
                            <sourcexml>p</sourcexml>, Otherwise, wrap the
                            <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the
                            <sourcexml>@align</sourcexml> attribute to the newly created <targetxml>
                            p</targetxml>.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_text-LxAdv-text.dita  -->
    <!-- *****************************************************************************
         * NOTE :  &nbsp; entity should not be removed, but is at this point         *
         * due to entities being resolved.  TO BE SOLVED LATER                       *
         * NOTE: @align handling including CA exception is addressed in              *
         * /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_p-LxAdv-p.xsl *
         * because it can't be run from p/text context node.                         *
         * NOTE: @nl is addressed here and not in                                    *
         * /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_p-LxAdv-p.xsl *
         * because it can't be run from p context node.                              *
          ****************************************************************************-->

    <xsl:template match="text">
        <!--  Original Target XPath:  text   -->
        <xsl:choose>
            <xsl:when test="normalize-space(string-join(. ,''))='' and not(child::*)"/>
            <!-- or normalize-space(.)=' ' -->
            <!--<xsl:when test="normalize-space(.)=' '"/>-->
            <!-- ************************************************************************
                 * note - &nbsp; entity should not be removed, but is at this point     *
                 * due to entities being resolved.  TO BE SOLVED LATER                  *
                 ************************************************************************-->
            <xsl:when test="parent::p[@nl]">
                <xsl:call-template name="insert-vertical-space"/>
            </xsl:when>
            <xsl:when test="preceding-sibling::*[1][self::text[inlineobject] and ancestor::glp:note][$streamID='AU04']"/>
            <!-- MDS 2017-04-04 - See Rosetta_deflist-LxAdv-deflist.xsl for instructions
            JL removed this because defdesc is not a valid child of text element.            -->
<!--            <xsl:when test="defterm[following-sibling::node()[1][self::text()]]">
                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@*"/>            
                    <xsl:for-each-group select="node()" group-adjacent=" if (self::text()[preceding-sibling::defterm][not(following-sibling::node()[not(self::text() or self::emph)])]  or self::emph[preceding-sibling::defterm][not(following-sibling::node()[not(self::text() or self::emph)])]) then 0 else 1">
                            <xsl:choose>
                                <xsl:when test="current-grouping-key()=0">
                                    <defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                            <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                                    <xsl:for-each select="current-group()">
                                                        <xsl:apply-templates select="."/>
                                                    </xsl:for-each>
                                                </text>
                                            </p>
                                        </bodytext>
                                    </defdesc>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:for-each select="current-group()">
                                        <xsl:apply-templates select="."/>
                                    </xsl:for-each>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each-group>                   
                    
                    <!-\-<xsl:apply-templates select="defterm"/>
                    <defdesc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                            <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                    <xsl:apply-templates select="defterm/following-sibling::text()|defterm/following-sibling::emph"/>
                                </text>
                            </p>
                        </bodytext>
                    </defdesc>
                    <xsl:apply-templates select="node() except(defterm, defterm/following-sibling::text()|defterm/following-sibling::emph)"/>-\->
                </text>
            </xsl:when>-->
            <xsl:when test="parent::p/following-sibling::*[1][self::see-also] and $streamID='HK05'">
                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@*"/>
                    <!--<xsl:apply-templates select="node() except refpt"/>-->
                    <xsl:for-each select="node() except refpt">
                        <xsl:choose>
                            <xsl:when test="self::text() and (matches(.,'See also[\s]*$','i') or matches(.,'&#x53E6;&#x898B;[\s]*$'))">
                                <xsl:analyze-string select="." regex="(^[\d\D\w]*)((&#x53E6;&#x898B;|See also|see also)[\s]*$)" flags="i">
                                    <xsl:matching-substring>
                                        <xsl:value-of select="regex-group(1)"/>
                                    </xsl:matching-substring>
                                    <xsl:non-matching-substring>
                                        <xsl:value-of select="."/>
                                    </xsl:non-matching-substring>
                                </xsl:analyze-string> 
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="."/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </text>
            </xsl:when>
            <xsl:otherwise>                
                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@*"/>
                    <xsl:apply-templates select="node() except refpt"/>
                    <xsl:if test="$streamID='AU10'">
                        <xsl:apply-templates select="parent::p/following-sibling::*[1][self::glp:note[@notetype='xref']]"/>                        
                    </xsl:if>
                </text>
            </xsl:otherwise>
        </xsl:choose>


    </xsl:template>
    <!-- it doesn't make sense to address @align here, but to address it at the paragraph level.
        What do we do for <p> elements that get emptied by having now-empty text? Right now they remain, 
        as passively specified through omission of use case. -->

<xsl:template match="text/@align"/>
<xsl:template match="text/@cont"/>
<xsl:template match="text/@ln.nsprefix"/>
    
    <xsl:template name="insert-vertical-space">
        <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@*"/>           
            <!--- BRT add number of nl that are in p/@nl -->
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="parent::p/@nl"/>
                <xsl:with-param name="i" select="1"/>
            </xsl:call-template>            
            <!-- BRT remove hard-coded nl that are in source -->
            <xsl:apply-templates select="*[not(self::nl or self::refpt)] | text()"/>
        </text>
    </xsl:template>
    
    
    
    <xsl:template name="add_nl">
        <xsl:param name="length" select="."/>
        <xsl:param name="i" select="1"/>
        <!-- BRT: create <nl/> for each iteration of @nl value -->
        <xsl:if test="$length &gt; 0">
            <xsl:element name="proc:nl"/>
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="$length - 1"/>
                <xsl:with-param name="i" select="$i + 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>
