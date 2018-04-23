<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ci="http://www.lexis-nexis.com/ci"    
    xmlns:tei="http://www.tei-c.org/ns/1.0/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita ci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="CA12_CA-Dictionaries_bodytext">
        <title>bodytext <lnpid>id-CA12-15008</lnpid></title>
        <body>
            <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">bodytext</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">bodytext</targetxml>. This
                mapping will be applicable when the parent of <sourcexml>bodytext</sourcexml> is
                    <sourcexml>level</sourcexml>.</p>
            <p>Supress attribute <sourcexml>searchtype="COMMENTARY"</sourcexml>.</p>
            <pre xml:space="preserve" class="- topic/pre ">
&lt;comm:body&gt;
    &lt;level leveltype="1"&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt;P&lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="3"&gt;
            &lt;heading align="left"&gt;
                &lt;title searchtype="DOC-HEADING CHAPTER-TITLE"&gt;
                    &lt;emph typestyle="bf"&gt;
                        &lt;emph typestyle="bf"&gt;prevenient arrangement &amp;#8212;&lt;/emph&gt;
                    &lt;/emph&gt;
                    &lt;emph typestyle="bf"/&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext searchtype="COMMENTARY"&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&amp;#8220;A prevenient arrangement links together what
                            would ...&amp;#8221;&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;dict:body&gt;
    &lt;dict:additionalmaterials&gt;
        &lt;bodytext&gt;
            &lt;section&gt;
                &lt;heading align="center"&gt;
                    &lt;title&gt;P&lt;/title&gt;
                &lt;/heading&gt;
                &lt;section&gt;
                    &lt;heading align="left"&gt;
                        &lt;title&gt;
                            &lt;emph typestyle="bf"&gt;
                                &lt;emph typestyle="bf"&gt;prevenient arrangement &amp;#8212;&lt;/emph&gt;
                            &lt;/emph&gt;
                        &lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;
                                &lt;emph typestyle="it"&gt;&amp;#8220;A prevenient arrangement links together
                                    what would ...&amp;#8221;&lt;/emph&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/section&gt;
            &lt;/section&gt;
        &lt;/bodytext&gt;
    &lt;/dict:additionalmaterials&gt;
&lt;/dict:body&gt;
</pre>


            <note>
                <p>Whenever we have first<sourcexml>ci:cite</sourcexml> under
                        <sourcexml>p/text/emph</sourcexml> in
                        <sourcexml>bodytext/@searchtype="COMMENTARY"</sourcexml> then we need to add
                        <targetxml>ref:anchor anchortype="local" id="dict-CASENAME-CITE"</targetxml>
                    in between <targetxml>p</targetxml> and <targetxml>text</targetxml> in
                    target.</p>
            </note>

            <pre>
&lt;bodytext searchtype="COMMENTARY"&gt;
    &lt;p&gt;
        &lt;text&gt;Pasquinelli, 
            &lt;emph typestyle="it"&gt;To Drill or Not to Drill: The Arctic National Wildlife Refuge v. the 'Need' for U.S. Energy Independence, 
                &lt;ci:cite xmlns:ci="http://www.lexis-nexis.com/ci"&gt;
                    &lt;ci:lawrev&gt;
                        &lt;ci:lawrevref ID="cref00000357" spanref="cspan00000357"&gt;
                            &lt;ci:lawrevlocator&gt;
                                &lt;ci:publicationname normpubcode="330"/&gt;
                                    &lt;ci:volume num="33"/&gt;
                                        &lt;ci:jurisinfo/&gt;
                                            &lt;ci:page num="503"/&gt;
                            &lt;/ci:lawrevlocator&gt;
                        &lt;/ci:lawrevref&gt;
                    &lt;/ci:lawrev&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="cspan00000357"&gt;33 Golden Gate U. L. Rev. 503 &lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt; (2003). 
          &lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/bodytext&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;bodytext&gt; 
    &lt;p&gt;
       &lt;ref:anchor anchortype="local" id="dict-CASENAME-CITE"/&gt; 
            &lt;text&gt; Pasquinelli, 
                &lt;emph typestyle="it"&gt;To Drill or Not to Drill: The Arctic National Wildlife Refuge v. the 'Need' for U.S. Energy Independence,  
                        &lt;lnci:cite&gt;      
                            &lt;lnci:lawrev&gt; 
                                &lt;lnci:lawrevref ID="cref00000357"&gt; 
                                    &lt;lnci:lawrevlocator&gt;
                                        &lt;lnci:publicationname normpubcode="330"/&gt;
                                            &lt;lnci:volume num="33"/&gt;
                                                &lt;lnci:page num="503"/&gt;
                                    &lt;/lnci:lawrevlocator&gt;
                                &lt;/lnci:lawrevref&gt;
                            &lt;/lnci:lawrev&gt; 
                        &lt;lnci:content&gt;
                            &lt;lnci:span CITE-REF="#330#3#000033#000503#" alttext="Golden Gate University Law Review" cfi:contentclasscode="3" cfi:kw-fallback-substring="#330#3#000033 cfi:normcite="33 Golden Gate U.L. Rev. 503m spanid="I0M4D14BYV00006VGBS000DG"&gt;33 Golden Gate U. L. Rev. 503&lt;/lnci:span&gt;
                        &lt;/lnci:content&gt;
                   &lt;/lnci:cite&gt; (2003).
                &lt;/emph&gt; 
            &lt;/text&gt;
        &lt;/p&gt;
&lt;/bodytext&gt;    
</pre>


            <section>
                <title>Changes</title>
                <p>2015-01-30: <ph id="change_20150130_AK">Added an <targetxml>ref:anchor
                            anchortype="local" id="dict-CASENAME-CITE"</targetxml> in between
                            <targetxml>p</targetxml> and <targetxml>text</targetxml> when
                            <sourcexml>p/text/emph</sourcexml> contains first
                            <sourcexml>ci:cite</sourcexml> in <sourcexml>bodytext
                            searchtype="COMMENTARY"</sourcexml> the earlier update is conflicting
                        CCLD document.</ph></p>
                <p>2015-01-09: <ph id="change_20150109_AK">Added an <targetxml>ref:anchor
                            anchortype="local" id="dict-CASENAME-CITE"</targetxml> in between
                            <targetxml>p</targetxml> and <targetxml>text</targetxml> when
                            <sourcexml>text</sourcexml> contains first
                            <sourcexml>ci:cite</sourcexml> in <sourcexml>bodytext
                            searchtype="COMMENTARY"</sourcexml> the earlier update is conflicting so
                        we use one jump-to <targetxml>dict-CASENAME-CITE</targetxml> for
                            <sourcexml>CASE-NAME</sourcexml>and
                        <sourcexml>CITE</sourcexml>applicable to CA12.</ph>
                </p>
                <p>2015-01-07: <ph id="change_20150107_AK">Added an <targetxml>ref:anchor
                            anchortype="local" id="dict-CITATION"</targetxml> in between
                            <targetxml>p</targetxml> and <targetxml>text</targetxml> when
                            <sourcexml>text</sourcexml> contains first
                            <sourcexml>ci:cite</sourcexml> in <sourcexml>bodytext
                            searchtype="COMMENTARY"</sourcexml> applicable to CA12.</ph>
                </p>
            </section>


        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_bodytext.dita  -->
    <!--<xsl:message>CA12_CA-Dictionaries_bodytext.xsl requires manual development!</xsl:message>-->

    <xsl:template match="bodytext">
        <!--  Original Target XPath:  bodytext   -->      
        <xsl:apply-templates/>
        
    </xsl:template>

    <xsl:template match="bodytext[@searchtype = 'COMMENTARY']">
        <!--  Original Target XPath:  bodytext   -->
        <xsl:choose>
            <xsl:when test="ci:cite[child::p/text/emph]">
                <bodytext>
                    <p>
                        <ref:anchor>
                            <xsl:attribute name="anchortype">local</xsl:attribute>
                            <xsl:attribute name="id">dict-CASENAME-CITE</xsl:attribute>
                        </ref:anchor>
                        <xsl:apply-templates/>
                    </p>
                </bodytext>
            </xsl:when>
            <xsl:otherwise>
                <tei:def>
                    <pgrp>                        
                        <xsl:apply-templates/>
                    </pgrp>
                </tei:def>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>



   </xsl:stylesheet>
