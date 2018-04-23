<?xml version="1.0" encoding="UTF-8"?>
<!--  ******************************************************************************
      IMPORTANT: This module differs from 
      Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl only in that this 
      module does not remove text elements that contain only whitespace.
      
      FOR DITA INSTRUCTIONS, SEE ALSO Rosetta_p-LxAdv-p.xsl. This module implements 
      applicable DITA instructions from both templates, due to interactions between 
      p and text structuring.
      
       Functionality moved from this module to the Rosetta_p-LxAdv-p.xsl:
      1) moving @align attribute on text to parent p (generic)
      2) for Canada, if multiple text elements exist within one paragraph, 
      text elements with @align attributes will be split out to separate paragraphs
      and the @align attribute will be moved to the appropriate separate paragraph.
      
      Functionality moved from Rosetta_p-LxAdv-p.xsl to this module:
      1) @nl element values used to insert proc:nl into p/text and to remove <nl/>
      elements from p/text when @nl='0'
      
      See Rosetta_p-LxAdv-p.xsl and/or 
      Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl for more information
      on moved functionality
      
      JL
      *******************************************************************************
    
    -->
<xsl:stylesheet xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:frm="http://www.lexis-nexis.com/glp/frm" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_text_to-LexisAdvance_text">
    <title><sourcexml>text</sourcexml> to <targetxml>text</targetxml> <lnpid>id-CCCC-10477</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>text</sourcexml> becomes <targetxml>text</targetxml>, and optional attributes <sourcexml>@cont</sourcexml> should be suppressed from conversion, <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> must only be used to preserve mandated horizontal spacing and <targetxml>@align</targetxml> will be moved in parent <targetxml>p</targetxml> in New Lexis conversion.
                <codeblock>
                    &lt;p&gt;&lt;text align="right"&gt;TOBY HALLIGAN&lt;/text&gt;&lt;/p&gt;
                </codeblock>
                <b>Becomes</b>
                <codeblock>
                    &lt;p align="right"&gt;&lt;text&gt;TOBY HALLIGAN&lt;/text&gt;&lt;/p&gt;
                </codeblock>
            </p>
        </section>
        <note><b>(For CANADA Content Stream only )</b>Only move the <sourcexml> text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only text in <sourcexml>p</sourcexml>,  Otherwise, wrap the <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute to the newly created <targetxml> p</targetxml>.</note>
        <section>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;Dated at Calgary, Alberta this 31 day of March 1998.&lt;/text&gt;
    &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of the Court of Queen's Bench of Alberta&lt;/text&gt;
    &lt;text align="center"&gt;ALBERTA RULES&lt;/text&gt;
    &lt;text&gt;Rules of practice made pursuant to subsection 745.64 of the Criminal
        Code to reflect the changes made to the Criminal Code regarding
        applications for reduction in the number of years of imprisonment
        without eligibility for parole.&lt;/text&gt;
&lt;/p&gt;                     
                    

</codeblock>
            <b>Becomes</b>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;Dated at Calgary, Alberta this 31 day of March 1998.&lt;/text&gt;
    &lt;text&gt;The Honourable W. Kenneth Moore, Chief Justice of the Court of Queen's Bench of Alberta&lt;/text&gt;
&lt;/p&gt;
&lt;p align="center"&gt;
    &lt;text&gt;ALBERTA RULES&lt;/text&gt;
&lt;/p&gt;
&lt;p&gt;
    &lt;text&gt;Rules of practice made pursuant to subsection 745.64 of the Criminal
        Code to reflect the changes made to the Criminal Code regarding
        applications for reduction in the number of years of imprisonment
        without eligibility for parole.&lt;/text&gt;
&lt;/p&gt;

</codeblock>
        </section>
        <section>
            <title>Changes</title>
            <p>2011-12-21: Added instruction for attribute align. </p>
            <p>2011-04-28: Added instruction for attribute cont. </p>
            <p>2012-08-30: Moved form/bodytext/text scenario to Rosetta_form_bodytext_text-to-LexisAdvance_form.text.dita.</p>
            <p>2014-01-31: <ph id="change_20140131_AB">Updated instruction, <targetxml>align</targetxml> will be moved in <targetxml>p</targetxml> in NL conversion. NZ09 commentary discussion board issue for handling <sourcexml>text/@align</sourcexml></ph></p>
            <p>2014-08-12: <ph id="change_20140811_SSX">For CANADA Content Stream: Only move the
                        <sourcexml> text@align</sourcexml> to the parent <targetxml>p</targetxml> if
                    it is the only text in <sourcexml>p</sourcexml>, Otherwise, wrap the
                        <sourcexml>text</sourcexml> with <targetxml>p</targetxml> and move the
                        <sourcexml>@align</sourcexml> attribute to the newly created <targetxml>
                        p</targetxml>.</ph></p>
        </section>
    </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_text-LxAdv-text.dita  -->


    <!-- *****************************************************************************
         * NOTE: @align handling including CA exception is addressed in              *
         * /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_p-LxAdv-p.xsl *
         * because it can't be run from p/text context node.                         *
         * NOTE: @nl is addressed here and not in                                    *
         * /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_p-LxAdv-p.xsl *
         * because it can't be run from p context node.                              *
          ****************************************************************************-->
    
    <!-- JD: 2017-07-21: added trap for empty node or single whitespace to match DT output.  -->
	<xsl:template match="text[not(node()) or string() and normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = '']" priority="2"/>
	
	
	
    <xsl:template match="text">
        <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
        <!--  Original Target XPath:  text   -->
        <xsl:choose>
            <xsl:when test="parent::p[@nl]">
                <xsl:call-template name="insert-vertical-space"/>
            </xsl:when>
            <xsl:otherwise> 
                <!-- Awantika: For AU20 history text becomes textitem -->
                <xsl:choose>
                    <xsl:when test="$streamID='AU20' and parent::p[parent::note[@notetype='xref'][parent::heading]] and contains(lower-case($docinfoidtext),'history')">
                        <textitem>
                            <xsl:apply-templates/>
                        </textitem>
                    </xsl:when>
                    <xsl:when test="$streamID='AU20' and parent::p[ancestor::source_cttr:annotations[@annotgroup='prov-am']] and contains(lower-case($docinfoidtext),'history')">
                        <textitem>
                            <xsl:apply-templates/>
                        </textitem>
                    </xsl:when>
                    <!-- Awantika:2017-10-27: p/text will be converted to <textitem> for AU20 for specific scenario -->
                    <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'history') and parent::p[ancestor::source_cttr:annotations/heading/note[@id='HI4']]| child::heading/title[.='Assent']">
                        <textitem>
                            <xsl:apply-templates/>
                        </textitem>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and ancestor::source_cttr:annotations[@id='OP3' or @id='OI7']/heading/note/l/li">
                                <xsl:apply-templates/>
                            </xsl:when>
                            <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and ancestor::source_cttr:annotations[@id='OP15']">
                                <xsl:apply-templates/>
                            </xsl:when>
                    <!-- Vikas Rohilla : Updated for the UK12                            -->
                            <xsl:when test="child::note[@notetype!='xref'][$streamID = 'UK12']">
                                <xsl:apply-templates/>
                            </xsl:when>
                            <!--Ravikant:2017-12-12: p/inlineobject move in form:p/from:text/figure for hk07  -->
                            <xsl:when test="$streamID='HK07' and parent::p[parent::bodytext[parent::level[@leveltype='prec' or @leveltype='prec.grp' or @leveltype='precgrp' or @leveltype='precgrp1' or @leveltype='precgrp2' or parent::comm.chap or ancestor::level[@leveltype = 'prec.grp']]]]">
                               <form:text>
                                <xsl:apply-templates select="node()"/>
                                  <xsl:apply-templates select="following-sibling::inlineobject[parent::p]"/>
                               </form:text>
                            </xsl:when>
                            <!-- Awantika:2017-11-02: p/text will be converted to <textitem> for AU20 for specific scenario -->
                            <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and parent::p[ancestor::source_cttr:annotations[child::heading/note/h[.='Former Title'] or child::heading/title[.='Former Title']]/source_cttr:annot/leg:info/note]">
                                <xsl:apply-templates/>
                            </xsl:when>
                            <xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview') and parent::p[ancestor::heading[child::title[starts-with(lower-case(.),'international equivalents') or starts-with(lower-case(.),'uniform equivalents')]]/note/l/li]">
                                <xsl:apply-templates/>
                            </xsl:when>
                            <xsl:otherwise>
                                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                    <!-- <xsl:apply-templates select="node() except refpt"/>-->
                                    <!-- Awantika: Updated, as refpt should not be created in the text element -->
                                    <!-- Priya Bardhan: Added ci:cite[@type='cite4thisdoc'] in except condition. Since, not required inside text -->
                                    <xsl:apply-templates select="@*"/>                    
                                    <xsl:apply-templates select="node() except (refpt,ci:cite[@type='cite4thisdoc'],copyright[$streamID='UK06'])"/>
                                    
                                    <!-- Awantika: UK11DN- Need to merge the adjacent notes and move them to the end of the existing text  -->
                                    <xsl:if test="parent::p[note[@notetype='xref']] and $streamID='UK11DN'">                       
                                        <xsl:for-each-group select="parent::p[note[@notetype='xref']]/node()" group-adjacent="if (self::note) then 0 else 1">                           
                                            
                                            <xsl:choose>
                                                <xsl:when test="current-grouping-key()=0">                                    
                                                    <!--  <xsl:apply-templates select="ancestor::p/text"/>-->
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
                                                </xsl:when>                                
                                            </xsl:choose>                           
                                        </xsl:for-each-group>
                                    </xsl:if>
                                </text>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:otherwise>
                </xsl:choose>
                
            </xsl:otherwise>
        </xsl:choose>
        
        
    </xsl:template>
    <!-- it doesn't make sense to address @align here, but to address it at the paragraph level.
        What do we do for <p> elements that get emptied by having now-empty text? Right now they remain, 
        as passively specified through omission of use case. -->
<!--    Updated by Chaitanya foe the text Alignment-->
    <xsl:template match="text/@align[$streamID!='CA09']"/>
        <!--<xsl:copy-of select="."></xsl:copy-of>-->
    
    <xsl:template match="text/@cont"/>
    <xsl:template match="text/@ln.nsprefix"/>
    
    <xsl:template match="text[$streamID='CA12']/@searchtype"/>
    
    <xsl:template name="insert-vertical-space">
        <xsl:element name="text" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@*"/>           
            <!--- BRT add number of nl that are in p/@nl -->
            <xsl:call-template name="add_nl">
                <xsl:with-param name="length" select="parent::p/@nl"/>
                <xsl:with-param name="i" select="1"/>
            </xsl:call-template>            
            <!-- BRT remove hard-coded nl that are in source -->
            <xsl:apply-templates select="*[not(self::nl or self::refpt)] | text()"/>
        </xsl:element>
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
    
<!-- Vikas Rohilla : Added the template for the streamID CA01    -->
    <!-- Sudhanshu Srivastava : Added StreamID for passthrough. -->
    <xsl:template match="text[parent::p[parent::glp:note[parent::text]]][$streamID='CA01' or $streamID='CA02CC' or $streamID='CA04']">
        <xsl:apply-templates/>
    </xsl:template>

    <!--Satbir: Set the low priority in below template because this is common template which is already define in "Rosetta_strike-LxAdv-strike.xsl"-->
		<!-- JD: 2017-07-14: just use common template "Rosetta_strike-LxAdv-strike.xsl"; removing this version because: 
				1) this is the module for the <text> element, not the <strike> element 
				2) the handling is nearly identical
				3) this version generates an empty @typestyle attribute, which causes validation errors.
		-->
    <!--<xsl:template match="strike" priority="10">
        <strike>
            <xsl:attribute name="typestyle">
                <xsl:value-of select="@typestyle"/>   
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </strike>
    </xsl:template>-->
    
   <!-- <!-\- Vikas Rohilla :Added template for the streamID CA01-\->
    <xsl:template match="text[matches(.,'^ARRÊT') or matches(.,'^HELD:') or matches(.,'^DISPOSITIF :')]">
        <xsl:element name="text">
            <xsl:choose>
                <xsl:when test="child::*">
                    <xsl:apply-templates/>
                </xsl:when>
                <xsl:when test="contains(.,'- ')">
                    <xsl:value-of select="substring-after(.,'- ')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="substring-after(.,'. ')"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>-->
    
<!-- Vikas Rohilla : created the template for text when ancestor frm:div    -->
    <xsl:template match="text[parent::p[parent::frm:div |
                              parent::frm:body |
                              parent::li[ancestor::frm:body] |
                              parent::clause[ancestor::frm:div or ancestor::frm:body]]][not(ancestor::footnote or ancestor::note)][$streamID='UK12']">
        <form:text>
            <xsl:apply-templates select="@*|node()"/>
        </form:text>
    </xsl:template>
    
    <!-- Vikas Rohilla : created the template for text when ancestor frm:div    -->
    <xsl:template match="text[parent::p[parent::sigblock[ancestor::frm:div or ancestor::frm:body]]][$streamID='UK12']">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <xsl:template match="text[parent::p[parent::text]][$streamID='UK12']" priority="25">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    
    <xsl:template match="text[preceding-sibling::note[@notetype='xref']]">
        <text>
        <xsl:apply-templates select="@*|node()"/>
          <xsl:if test="$streamID='UK12'">  
            <xsl:apply-templates select="preceding-sibling::note[@notetype='xref']" mode="note-xref"/>
          </xsl:if>
        </text>
    </xsl:template>
    
    <!-- suppress the empty text    -->
    <xsl:template match="text[normalize-space(.)=''][$streamID=('UK12','UK03')]"/>
        
    <xsl:template match="text[matches(.,'^&#x2009;$')][$streamID='NZ13']" priority="25">
        <text>
        <xsl:text xml:space="preserve"> </xsl:text>
        </text>
    </xsl:template>
    
    
</xsl:stylesheet>