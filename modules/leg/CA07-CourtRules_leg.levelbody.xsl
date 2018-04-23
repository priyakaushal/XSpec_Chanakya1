<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    version="2.0" exclude-result-prefixes="dita leg">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-CA07-14021</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
            <ul>
              <li>
                If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:level</targetxml> i.e, 
                <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
              </li>
              <li>
                If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
              </li>
            </ul>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="3"&gt;
            &lt;leg:marginal-note&gt;Appeal book required&lt;/leg:marginal-note&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 2 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:bodytext&gt;
                &lt;marginnote notetype="reference"&gt;
                    &lt;ref:anchor id="CA-01"/&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;Appeal book required&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/marginnote&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;PART I TITLE AND INTERPRETATION&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;PART I TITLE AND INTERPRETATION&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
<note> If "French or English note" text (i.e. French <b>QL Ed. note, Note d'ed. and Note
                d'editeur</b> or English <b>Editor’s note:, Ed.note: and Ed. Note:</b>) comes inside
                <sourcexml>leg:bodytext/p/text</sourcexml> markup in the source document then the
            target mapping will be
                <targetxml>primlaw:bodytext/note[@notetype="instruction"]/bodytext/p/text</targetxml>. </note>
       <example>
           <p><b>&gt;Source XML <sourcexml>leg:bodytext/p/text</sourcexml> with French or English note</b></p>
           <codeblock>

   &lt;leg:levelbody&gt;
        &lt;leg:bodytext&gt;
             &lt;p&gt;
                 &lt;text&gt;(Editor's Note: This Rule does not appear in the Ontario Rules
                       of Civil Procedure. It was adopted from the 1976 Rules of Civil
                       Procedure - Rule 30.08 - previously applicable in this
                       Province.)
                  &lt;/text&gt;
             &lt;/p&gt;
        &lt;/leg:bodytext&gt;
  &lt;/leg:levelbody&gt;
                          
           </codeblock>
       </example>
       <example>
           <p><b>&gt;Target XML <sourcexml>leg:bodytext/p/text</sourcexml> with French or English
                    note</b></p>
           <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;note notetype="instruction"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    (Editor's Note: This Rule does not appear in the Ontario Rules
                       of Civil Procedure. It was adopted from the 1976 Rules of Civil
                       Procedure - Rule 30.08 - previously applicable in this
                       Province.)
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/primlaw:bodytext&gt;


           </codeblock>
       </example>
       <section>
           <title>Change</title>
           <p>2015-02-02 <ph id="change_20150202_SSX">Removed ambiguity line for handling <b>French or English note</b></ph></p>
           <p>2014-08-20: <ph id="20140820_SSX">Updated instruction to handle French or English Note when it comes inside <sourcexml>leg:bodytext/p/text</sourcexml> to <targetxml>primlaw:bodytext/note[@notetype="instruction"]/bodytext/p/text</targetxml></ph></p>
           <p>2014-07-28: <ph id="20140728_SSX">Added a note to handle French or English Note when it comes inside <sourcexml>leg:bodytext/p/text</sourcexml></ph></p>
       </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.levelbody.dita  -->
	
	
    <xsl:variable name="vDpsiCodes">
        <codes>
            <code key="03EX" value="REPEALED"/>
            <code key="03TR" value="REPEALED"/>
            <code key="03GG" value="REPEALED"/>
            <code key="03GN" value="REPEALED"/>
            <code key="03U3" value="REPEALED"/>
            <code key="03J5" value="REPEALED"/>
            <code key="03QW" value="REPEALED"/>
            <code key="0CV2" value="ABROGÉ"/>
            <code key="03U5" value="REPEALED"/>
            <code key="03JA" value="REPEALED"/>
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
            <code key="0USP" value="ABROGÉ"/>
        </codes>
    </xsl:variable>
    
    <!--Key kCodeByName for match the code -->
    <xsl:key name="kCodeByName" match="code" use="string(@key)"/>
    <xsl:template
        match="docinfo/docinfo:custom-metafield[@name = 'dpsi'][key('kCodeByName', ., $vDpsiCodes)]"
        mode="DpsiCode">
        <xsl:value-of select="key('kCodeByName', ., $vDpsiCodes)/@value"/>
    </xsl:template>
    
    <xsl:template match="leg:level-vrnt" priority="2">
        <xsl:variable name="i" select="count(preceding::leg:level-vrnt) + count(ancestor::leg:level-vrnt) + 1"/>
        <xsl:variable name="dpsi" select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'dpsi']"/>
        <xsl:variable name="doc_id" select="substring-before(/LEGDOC/docinfo/docinfo:doc-id,'-')"/>
        <xsl:variable name="status_text" select="/LEGDOC/leg:body/leg:info/leg:history/leg:histnote/p/text"/>
        <xsl:variable name="template">
            <xsl:if
                test="($i = 1) and ($dpsi = $vDpsiCodes//code/@key)">
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status>
                                    <xsl:attribute name="statuscode">
                                        <xsl:apply-templates select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'dpsi']"
                                            mode="DpsiCode"/>
                                    </xsl:attribute>
                                    <legisinfo:statustext>
                                        <xsl:apply-templates select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'dpsi']"
                                            mode="DpsiCode"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:if>
            <xsl:if
                test="($i = 1) and (($doc_id = $vDpsiCodes//code/@key))">
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status>
                                    <xsl:attribute name="statuscode">
                                        <xsl:for-each select="$vDpsiCodes/codes/code">
                                            <xsl:variable name="code" select="."/>
                                            <xsl:if test="contains($doc_id, $code/@key)">
                                                <xsl:value-of
                                                    select="replace($doc_id, $code/@key, $code/@value)"/>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:attribute>
                                    <legisinfo:statustext>
                                        <xsl:for-each select="$vDpsiCodes/codes/code">
                                            <xsl:variable name="code" select="."/>
                                            <xsl:if test="contains($doc_id, $code/@key)">
                                                <xsl:value-of
                                                    select="replace($doc_id, $code/@key, $code/@value)"/>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:if>
            <xsl:if test="($i = 1) and starts-with($status_text,'REPEALED by')">
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status statuscode="repealedshell">
                                    <legisinfo:statustext>
                                        <xsl:value-of select="/LEGDOC/leg:body/leg:info/leg:history/leg:histnote/p/text"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:if>
            <xsl:if test="$i = 1 and not($doc_id = $vDpsiCodes//code/@key) and not($dpsi = $vDpsiCodes//code/@key) and not(starts-with($status_text,'REPEALED by'))">
                <!--and descendant::leg:level-not-in-force-->
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status statuscode="consolidated"/> 
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:if>
        </xsl:variable>
        <!--<xsl:variable name="dpsi">-->
        <xsl:choose>
            <xsl:when
                test="leg:level-vrnt[@leveltype = '2' or '3'] or not(preceding-sibling::leg:level-not-in-force)">
                <xsl:choose>
                    <xsl:when test="child::leg:heading[@subdoc = 'true']">
                        <xsl:variable name="i" select="count(preceding::leg:heading[@subdoc = 'true']) + 1"/>
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
                            <ref:anchor>
                                <xsl:attribute name="id">
                                    <xsl:text>TOC00</xsl:text>
                                    <xsl:value-of select="$i"/>
                                </xsl:attribute>
                                <xsl:attribute name="anchortype">
                                    <xsl:text>local</xsl:text>
                                </xsl:attribute>
                            </ref:anchor>
                            <xsl:apply-templates select="node()"/>
                        </primlaw:level>
                    </xsl:when>
                    <xsl:otherwise>
                        <primlaw:level>
                            <xsl:attribute name="leveltype">
                                <xsl:text>unclassified</xsl:text>
                            </xsl:attribute>
                            <xsl:copy-of select="$template"/>
                            <xsl:apply-templates select="node()"/>
                        </primlaw:level>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <xsl:template match="leg:level-vrnt/leg:levelbody" priority="2">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>
    

</xsl:stylesheet>