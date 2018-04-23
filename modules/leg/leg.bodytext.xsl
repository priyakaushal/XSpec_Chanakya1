<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
  exclude-result-prefixes="dita leg">

  	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-CA05-13611</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

&lt;leg:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;38 (1) On the basis of a complaint or otherwise, the minister may investigate, or appoint a person to investigate, any matter related to this Act.&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:bodytext&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;38 (1) On the basis of a complaint or otherwise, the minister may investigate, or appoint a person to investigate, any matter related to this Act.&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>

   </body>
	</dita:topic>


  <xsl:template match="leg:bodytext[not(descendant::text[starts-with(.,'Note:') or 
    starts-with(.,'NOTE:') or starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')]) and not(leg:comntry)]">
    <!--  Original Target XPath:  primlaw:bodytext   -->
    <primlaw:bodytext>
      <xsl:apply-templates select="@* | node() except leg:history"/>
      <xsl:if test="not(child::leg:history) and not($streamID='HK06')">
        <xsl:apply-templates select="child::leg:histnote" mode="historical"/>
      </xsl:if>
    </primlaw:bodytext>
    <xsl:apply-templates select="child::leg:history"/>
    <xsl:if test="child::leg:history">
      <primlaw:bodytext>
    <xsl:apply-templates select="child::leg:histnote" mode="historical"/>
      </primlaw:bodytext>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="leg:bodytext[descendant::text[starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')]]">
    <note notetype='instruction'>
      <bodytext>
        <xsl:apply-templates select="@* | node() except leg:history"/>
      </bodytext>
    </note>
    <xsl:apply-templates select="child::leg:history"/>
  </xsl:template>
  
<xsl:template match="leg:bodytext[descendant::text[starts-with(.,'NOTE:') or starts-with(.,'Note:')]]">
  <primlaw:bodytext>
  <note notetype="other" notesource="official">
    <bodytext>
      <xsl:apply-templates select="@* | node() except leg:history"/>
    </bodytext>
  </note>
  </primlaw:bodytext>
  <xsl:apply-templates select="child::leg:history"/>
</xsl:template>
  
  <xsl:template match="leg:bodytext[leg:comntry][not($streamID='HK06')]">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
  
  <xsl:template match="leg:bodytext[leg:comntry][$streamID='HK06']">
    <xsl:for-each-group select="*" group-adjacent="if (not(self::leg:comntry)) then 1 else 0">
      <xsl:choose>
        <xsl:when test="current-grouping-key()=0">
          <xsl:for-each select="current-group()">
            <xsl:apply-templates select="."/>
          </xsl:for-each>
        </xsl:when>
        <xsl:otherwise>
          <primlaw:bodytext>
            <xsl:for-each select="current-group()">
              <xsl:apply-templates select="."/>
            </xsl:for-each>
          </primlaw:bodytext>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each-group>
  </xsl:template>
<!--  <xsl:template match="leg:bodytext" priority="22">
    <!-\- this will handle annotations interspersed with primlaw:bodytext elements in document order -\->
    <xsl:choose>
      <xsl:when
        test="descendant::text[starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')]">
          <note notetype="instruction">
            <bodytext>
              <xsl:apply-templates select="@* | node() except child::leg:history"/>
            </bodytext>
          </note>
        <xsl:apply-templates select="child::leg:history"></xsl:apply-templates>
      </xsl:when>
      <xsl:when test="descendant::text[starts-with(.,'Note:')]">
        <primlaw:bodytext>
        <note notetype="other" notesource="official">
          <bodytext>
            
              <xsl:apply-templates select="@* | node() except child::leg:history"/>
            
          </bodytext>
        </note>
        </primlaw:bodytext>
      </xsl:when>
      <xsl:otherwise>
        <primlaw:bodytext>
          <xsl:apply-templates select="@* | node() except leg:history"/>
        </primlaw:bodytext>
        <xsl:apply-templates select="child::leg:history"/>
        <!-\-<xsl:apply-templates select="child::leg:histnote" mode="history"/>-\->
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>-->

  <xsl:template match="figure" priority="2">
    <!-- <figure>-->
    <xsl:apply-templates select="descendant::text"/>
    <!--</figure>-->
  </xsl:template>
  
  <xsl:template match="text[ancestor::figure]" priority="2">
    <xsl:apply-templates select="@*"/>
    <xsl:apply-templates select="node() except refpt"/>
  </xsl:template>

  <!-- reason for annotation handling: from DITA/ConversionInstructions/Rosetta/common_newest/Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita
n the input Xpath, leg:comntry is allowed within leg:bodytext, but the target New Lexis Xpath 
allows annot:annotations to be a sibling to primlaw:bodytext and child element of primlaw:level 
i.e. leg:bodytext/leg:comntry becomes annot:annotations/annot:annotation-grp -->

</xsl:stylesheet>
