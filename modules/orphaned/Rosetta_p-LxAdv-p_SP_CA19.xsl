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
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"    
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" exclude-result-prefixes="dita xs leg">
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
                    <note>If source document is having the input scenario "<sourcexml>pgrp/p/leg:histnote</sourcexml>" then 
                        conversion needs to drop '<sourcexml>p</sourcexml>' markup in target conversion and target mapping xpath is 
                        "<targetxml>pgrp/note[@notetype="historical"]</targetxml>".</note> 
                </p>
            </section>
            <section>
                <note>For Stream 'HK06'</note>
                <p>
                    When the source has <sourcexml>deflist/defitem/p/text</sourcexml> then omit <sourcexml>p/text</sourcexml> and retain <sourcexml>defitem</sourcexml>.
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
        <xsl:choose>
			<!--SP TODO added text/glp:note clause for CA19. Need to merge these with official Rocket glp:note modules when they are developed.
				 But for now implement here.
				 
					CA01 has these 2 instructions:

						7.19.8. text/glp:note to text/inlinenote (id-CCCC-10339)
						7.19.9. emph/glp:note to emph/inlinenote (id-CCCC-10329)

					So, Those 2 dita instructions would accommodate the use cases currently appearing in our ~50 input files for CA19.

					Making this a*_SP_CA19.xsl module for easier diffing and merging.
			-->
			<xsl:when test="text//glp:note">
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
                    <!-- create ref:anchor before other elements to meet schema ordering -->
                    <xsl:apply-templates select="refpt | text/refpt"/>
                    <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                </xsl:element>
				<xsl:element name="p" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:element name="text" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:element name="inlinenote" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:apply-templates select="text//glp:note//text()"/>
						</xsl:element>
					</xsl:element>
				</xsl:element>
            </xsl:when>
            <!-- MDS - occurs in HK04 -  child is leg:histnote then the p element is not output and simply passed through.-->
            <!-- JL revised to handle the many scenarios when p has other children than leg:histnote -->
            <xsl:when test="leg:histnote | blockquote/legfragment">
                <!--<xsl:apply-templates select="node()"/>-->
                <xsl:for-each-group select="*" group-adjacent="if (self::leg:histnote or self::blockquote[legfragment]) then 0 else 1">
                    <xsl:choose>
                        <xsl:when test="current-grouping-key()=0">
                            <xsl:for-each select="current-group()">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                 
                                <xsl:for-each select="current-group()">
                                    <xsl:apply-templates select="."/>
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
            <xsl:otherwise>
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
                    <!-- create ref:anchor before other elements to meet schema ordering -->
                    <xsl:apply-templates select="refpt | text/refpt"/>
                    <xsl:apply-templates select="*[not(self::refpt)] | text()"/>
                </xsl:element>
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

    <xsl:template match="p/@style">
        <xsl:choose>
            <xsl:when test=". = 'right' or . = 'left' or . = 'center'">
                <xsl:attribute name="align">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select=" 'p element style attribute has unexpected and unmappable value and will be omitted on output.' "/>
					<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
					<xsl:with-param name="errorCode" as="xs:string" select=" 'TBD' "/>
					<xsl:with-param name="context" as="xs:string">
						<xsl:call-template name="generateXPath"/>
					</xsl:with-param>
					<xsl:with-param name="status" as="xs:string" select=" 'W' "/>
				</xsl:call-template>
                <xsl:message></xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="p/@indent">
        <xsl:copy-of select="."/>
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
</xsl:stylesheet>
