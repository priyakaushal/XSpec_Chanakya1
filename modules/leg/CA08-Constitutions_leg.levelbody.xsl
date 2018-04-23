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
  version="2.0">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-CA08-14221</lnpid></title>
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
            &lt;leg:marginal-note&gt;Qualification of Members&lt;/leg:marginal-note&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1</title>
             <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;marginnote&gt;
                    &lt;ref:anchor id="CA-01"/&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;Qualification of Members&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/marginnote&gt;
            &lt;/text&gt;
        &lt;/p&gt;
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
        &lt;text&gt;84. Until the legislatures of Ontario and Quebec respectively otherwise provide, all Laws which at the Union are in force in those Provinces respectively...&lt;/text&gt;
      &lt;/p&gt;
    &lt;/leg:bodytext&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2</title>
       <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;84. Until the legislatures of Ontario and Quebec respectively otherwise provide, all Laws which at the Union are in force in those Provinces respectively...&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
     <example>
       <title>Source XML 3 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <note>If "French or Enlish note" text (i.e. <b>QL Ed. Note</b>, <b>Note d'ed. QL</b> and
          <b>Note d'éditeur</b>) comes inside the <sourcexml>leg:bodytext/p/text</sourcexml> markup
        in source documents then target mapping should be
          <targetxml>primlaw:bodytext/note/bodytext/p/text</targetxml>.</note>
       
       <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
      &lt;p&gt;&lt;text&gt;[Ed. note:  The Letter of Referral and Acknowledgments which preceded this document are found in Appendix D.]&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:bodytext&gt;
    ...
&lt;/leg:levelbody&gt;


                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 3</title>
       <codeblock>

&lt;primlaw:bodytext&gt;
   &lt;note notetype="instruction"&gt;
    &lt;bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;[Ed. note:  The Letter of Referral and Acknowledgments which preceded this document are found in Appendix D.]&lt;/text&gt;
    &lt;/p&gt;
   &lt;/bodytext&gt;
  &lt;/note&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\leg.levelbody.dita  -->
<!--	<xsl:message>CA08-Constitutions_leg.levelbody.xsl requires manual development!</xsl:message> -->


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
    <xsl:variable name="i"
      select="count(preceding::leg:level-vrnt) + count(ancestor::leg:level-vrnt) + 1"/>
    <xsl:variable name="template">
      <xsl:if
        test="$i = 1 and preceding::docinfo:custom-metafield/$vDpsiCodes/codes/code/@key and not[preceding-sibling::leg:level-not-in-force]">
        <primlaw:levelinfo>
          <primlawinfo:primlawinfo>
            <legisinfo:legisinfo>
              <legisinfo:statusgroup>
                <legisinfo:status statuscode="repealed">
                  <legisinfo:statustext>
                    <xsl:apply-templates select="docinfo/docinfo:custom-metafield[@name = 'dpsi']"
                      mode="DpsiCode"/>
                  </legisinfo:statustext>
                </legisinfo:status>
              </legisinfo:statusgroup>
            </legisinfo:legisinfo>
          </primlawinfo:primlawinfo>
        </primlaw:levelinfo>
      </xsl:if>
      <xsl:if test="$i = 1">
        <!--and descendant::leg:level-not-in-force-->
        <primlaw:levelinfo>
          <primlawinfo:primlawinfo>
            <legisinfo:legisinfo>
              <legisinfo:statusgroup>
                <legisinfo:status statuscode="consolidated"> </legisinfo:status>
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