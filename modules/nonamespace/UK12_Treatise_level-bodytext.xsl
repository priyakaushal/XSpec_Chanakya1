<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_level-bodytext">
  <title>level and bodytext <lnpid>id-UK12-29817</lnpid></title>
  <body>
    <section>
      <p><sourcexml>level[@leveltype]</sourcexml> becomes
        <targetxml>seclaw:level[@leveltype]</targetxml>.</p><p>Child
          <sourcexml>bodytext</sourcexml> becomes
          <targetxml>seclaw:bodytext</targetxml>.</p></section>
    <section><p><u>Special Rules for certain <sourcexml>@leveltype</sourcexml></u>. Value of
      <sourcexml>@leveltype</sourcexml> carries through unchanged except for the following
      special mappings: <ul>
        <li>When content of <sourcexml>level/heading/title</sourcexml> is "All Questions" (without
          quotes) then <sourcexml>level[@leveltype="title"]</sourcexml> becomes
          <targetxml>seclaw:level[@leveltype="questionanswergroup"]</targetxml>. This use case
          is known to occur in directory/dpsi 0NF9.</li>
        <li><sourcexml>level[@leveltype="stop-press"]</sourcexml> becomes
          <targetxml>seclaw:level[@leveltype="special-alert"]</targetxml>. Known to occur in
          stop-press docs.</li>
        <li><sourcexml>level[@leveltype="affected-enactment-notice"]</sourcexml> becomes
          <targetxml>seclaw:level[@leveltype="act"]</targetxml>. Known to occur in stop-press
          docs.</li>
        <li><sourcexml>level[@leveltype="source-enactments"]</sourcexml> becomes
          <targetxml>seclaw:level[@leveltype="amendment"]</targetxml>. Known to occur in
          stop-press docs.</li>
      </ul></p></section>
    <note><targetxml>seclaw:bodytext</targetxml> is a required child of
      <targetxml>seclaw:level</targetxml>. Generate <targetxml>seclaw:bodytext</targetxml> if
      <sourcexml>bodytext</sourcexml> not present. Usual scenario is
      <sourcexml>level/level</sourcexml> becomes
      <targetxml>seclaw:level/seclaw:level/seclaw:bodytext</targetxml>.</note>
    <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;COMMENTARYDOC&gt;
  &lt;comm:body&gt;
    &lt;level leveltype="topic"&gt;
      &lt;heading&gt;
        &lt;title&gt;Albania&lt;/title&gt;
      &lt;/heading&gt;
      &lt;level leveltype="title"&gt;
        &lt;heading&gt;
          &lt;title&gt;Construction 2012&lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="title"&gt; &lt;!-- see rule for @leveltype when level contains "All Questions" --&gt;
          &lt;heading&gt;
            &lt;title&gt;All Questions&lt;/title&gt;
          &lt;/heading&gt;
          &lt;level leveltype="question"&gt;
            &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;Must foreign designers...control the joint venture?&lt;/text&gt;
              &lt;/p&gt;
            &lt;/bodytext&gt;
          &lt;/level&gt;
          &lt;level leveltype="answer"&gt;
            &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;Foreign designers or contractors do not...&lt;/text&gt;
              &lt;/p&gt;
            &lt;/bodytext&gt;
          &lt;/level&gt;
        &lt;/level&gt;
      &lt;/level&gt;
    &lt;/level&gt;
    &lt;!-- the following simplified markup illustrates special @leveltype value mappings --&gt;
    &lt;level leveltype="stop-press"&gt;
      &lt;!-- level content --&gt;
      &lt;level leveltype="affected-enactment-notice"&gt;
        &lt;!-- level content --&gt;
        &lt;level leveltype="source-enactments"&gt;
          &lt;!-- level content --&gt;
        &lt;/level&gt;
      &lt;/level&gt;
    &lt;/level&gt;
  &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>Target XML</i></b>
&lt;seclaw:seclaw>
  &lt;seclaw:body>
    &lt;seclaw:level leveltype="topic">
      &lt;heading>
        &lt;title>Albania&lt;/title>
      &lt;/heading>
      &lt;seclaw:level leveltype="title">
          &lt;heading>
            &lt;title>Construction 2012&lt;/title>
          &lt;/heading>
          &lt;seclaw:level leveltype="questionanswergroup">
              &lt;heading>
                &lt;title>All Questions&lt;/title>
              &lt;/heading>
              &lt;seclaw:level leveltype="question">
                  &lt;seclaw:bodytext>
                    &lt;p>
                      &lt;text>Must foreign designers...control the joint
                            venture?&lt;/text>
                    &lt;/p>
                  &lt;/seclaw:bodytext>
                &lt;/seclaw:level>
                &lt;seclaw:level leveltype="answer">
                  &lt;seclaw:bodytext>
                    &lt;p>
                      &lt;text>Foreign designers or contractors do
                      not...&lt;/text>
                    &lt;/p>
                  &lt;/seclaw:bodytext>
                &lt;/seclaw:level>
            &lt;/seclaw:level>
        &lt;/seclaw:level>
    &lt;/seclaw:level>
    &lt;!-- the following simplified markup illustrates special @leveltype value mappings -->
    &lt;seclaw:level leveltype="special-alert">
      &lt;!-- level content -->
      &lt;seclaw:level leveltype="act">
        &lt;!-- level content -->
        &lt;seclaw:level leveltype="amendment">
          &lt;!-- level content -->
        &lt;/seclaw:level>
      &lt;/seclaw:level>
    &lt;/seclaw:level>
  &lt;/seclaw:body>
&lt;/seclaw:seclaw>
                </pre>
    <section>
      <title>Changes</title>
      <p>2017-05-03: <ph id="change_20170503_SS">Updated the instruction for handling <sourcexml>level\level</sourcexml> scenario means new target schema allow <targetxml>seclaw:level</targetxml> under <targetxml>seclaw:level</targetxml>. <b>VSTS #265069</b></ph></p>
      <p>2016-10-21: <ph id="change_20161021_jm">In section on special rules for certain @leveltype
        values, added rules for source values <sourcexml>"stop-press"</sourcexml>,
        <sourcexml>"affected-enactment-notice"</sourcexml>, and
        <sourcexml>"source-enactments"</sourcexml>. Supports stop-press docs.</ph></p>
      <p>2014-09-02: <ph id="change_20140902_jm">Not a rule change. This is a note to Presentation.
        Source data for "Getting the Deal Through" material (dpsi 0NF9) have been modified to make
        the "question" and "answer" levels siblings instead of parent-child. The change is
        appropriate for the data and will support requirement for different display of question
        and answer. The markup sample is modified to show the new sibling relationship. Conversion
        carries through the source relationship so coding not affected. R4.5 Content Issue
        1868.</ph></p>
      <p>2013-06-06: <ph id="change_20130606_jm"><sourcexml>level[@leveltype]</sourcexml> - Added
        special rule for mapping to <targetxml>@leveltype="questionanswergroup"</targetxml> when
        text is "All Questions". And removed reference to pending CR for values "question" and
        "answer", now allowed.</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_level-bodytext.dita  -->
<!--	<xsl:message>UK12_Treatise_level-bodytext.xsl requires manual development!</xsl:message> -->

<xsl:variable name="leveltype-value">
  <sources>
    <source key="All Questions" value="questionanswergroup"/>
    <source key="stop-press" value="special-alert"/>
    <source key="affected-enactment-notice" value="act"/>
    <source key="source-enactments" value="amendment"/>
    <source key="subsection" value="subsection"/>
    <source key="section" value="section"/>
    <source key="chapter" value="chapter"/>
    <source key="supplement" value="supplement"/>
    <source key="schedule" value="schedule"/>
    <source key="regulation" value="regulation"/>
    <source key="article" value="article"/>
    <source key="annex" value="annex"/>
    <source key="convention" value="convention"/>
    <source key="act" value="act"/>
    <source key="form" value="form"/>
    <source key="appendix" value="appendix"/>
    <source key="part" value="part"/>
    <source key="subpart" value="subpart"/>
    <source key="rule" value="rule"/>
    <source key="title" value="title"/>
    <source key="division" value="division"/>
    <source key="paragraph" value="paragraph"/>
    <source key="leg-destination" value="unclassified"/>
    <source key="leg-derivation" value="unclassified"/>
    <source key="volume" value="unclassified"/>
    <source key="prelim" value="unclassified"/>
    <source key="precedent" value="unclassified"/>
    <source key="Full Text" value="Full_Text"/>
  </sources>
</xsl:variable>


  <xsl:key name="leveltype" match="*:source" use="string(@key)"/>
  
  
  
  
  
  
  

  <!-- Vikas Rohilla : Template to match the level and the not parent level    -->
  <xsl:template match="level">
    <seclaw:level>
      <xsl:if test="not(@leveltype)">
        <xsl:attribute name="leveltype">
          <xsl:text>unclassified</xsl:text>
        </xsl:attribute>    
      </xsl:if>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="heading/title/refpt,heading"/>
      <xsl:choose>
        <xsl:when test="not(child::bodytext or child::level)">
          <seclaw:bodytext>
            <xsl:comment>Mandatory element according to the CI</xsl:comment>
          </seclaw:bodytext>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each-group select="*" group-adjacent="if(name(.)='level' and not(preceding-sibling::bodytext or following-sibling::bodytext) ) then 'level' 
            else if(name(.)=('bodytext', 'pgrp')) then 'merge' else if (name(.)='heading') then 'skip' 
            else 'none'">
            <xsl:choose>
              <xsl:when test="current-grouping-key()='level'">
                <xsl:apply-templates select="current-group()"/>
              </xsl:when>
              <xsl:when test="current-grouping-key()='merge'">
                <xsl:choose>
                  <xsl:when test="preceding-sibling::level">
                    <seclaw:level leveltype='unclassified'>
                      <seclaw:bodytext>
                        <xsl:apply-templates select="current-group()"/>
                      </seclaw:bodytext>
                    </seclaw:level>
                  </xsl:when>
                  <xsl:otherwise>
                    <seclaw:bodytext>
                      <xsl:apply-templates select="current-group()"/>
                    </seclaw:bodytext>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <xsl:when test="current-grouping-key()='skip'"/>
              <xsl:otherwise>
                <xsl:apply-templates select="current-group()"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each-group>  
        </xsl:otherwise>
      </xsl:choose>      
    </seclaw:level>
  </xsl:template>
  
  <xsl:template match="level[@leveltype='Full Text' or @leveltype='Summary']">
    <seclaw:level>
      <xsl:attribute name="leveltype" select="'unclassified'"/>
      <seclaw:bodytext>
        <miscsource>
          <section sectiontype="Full_Text">
            <xsl:apply-templates select="node()"/>
          </section>
        </miscsource>
      </seclaw:bodytext>
    </seclaw:level>
  </xsl:template>
  
  <xsl:template match="bodytext[parent::level[@leveltype='Full Text' or @leveltype='Summary']]" priority="20">
    <bodytext>
      <xsl:apply-templates select="node()"/>
    </bodytext>
  </xsl:template>
  
  <xsl:template match="bodytext" priority="10">
    <xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  
<!-- Comment Start -->
<!--  
  <!-\-Vikas Rohilla : Tempalte to match the first level and parent is level   -\->
  <xsl:template match="level[parent::level][not(preceding-sibling::*[1][self::level or self::bodytext])]" priority="25">
        <seclaw:bodytext>
          <seclaw:level>
            <xsl:if test="not(@leveltype)">
              <xsl:attribute name="leveltype">
                <xsl:text>unclassified</xsl:text>
              </xsl:attribute>    
            </xsl:if>
            <xsl:apply-templates select="@*|heading/title/refpt,heading"/>
            <xsl:choose>
              <xsl:when test="not(child::bodytext or child::level)">
                <seclaw:bodytext>
                  <xsl:comment>Mandatory element according to the CI</xsl:comment>
                </seclaw:bodytext>
              </xsl:when>
              <xsl:otherwise>
                <xsl:apply-templates select="node() except heading"/>    
              </xsl:otherwise>
            </xsl:choose>        	   
          </seclaw:level> 
          <xsl:if test="following-sibling::*[1][self::level]">
            <xsl:call-template name="wrapp-level">
              <xsl:with-param name="node" select="following-sibling::*[1][self::level]"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="following-sibling::*[1][self::bodytext]">
            <xsl:call-template name="bodytext-followingbodytext">
              <xsl:with-param name="node" select="following-sibling::*[1][self::bodytext]"/>
            </xsl:call-template>
          </xsl:if>
        </seclaw:bodytext>
  </xsl:template>
  
  <!-\- Vikas Rohilla : Template name wrap-level for wrap all in single node   -\->
  <xsl:template name="wrapp-level">
    <xsl:param name="node"/>
    <xsl:apply-templates select="$node" mode="wrap-level"/>
    <xsl:if test="$node/following-sibling::*[1][self::level]">
      <xsl:call-template name="wrapp-level">
        <xsl:with-param name="node" select="$node/following-sibling::*[1][self::level]"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  
  <!-\- Vikas Rohilla : Template to match the level with the attribute mode wrap-level  -\->
  <xsl:template match="level" mode="wrap-level">
    <seclaw:level>
      <xsl:if test="not(@leveltype)">
        <xsl:attribute name="leveltype">
          <xsl:text>unclassified</xsl:text>
        </xsl:attribute>    
      </xsl:if>
      <xsl:apply-templates select="@*|heading/title/refpt,heading"/>
      <xsl:choose>
        <xsl:when test="not(child::bodytext or child::level)">
          <seclaw:bodytext>
            <xsl:comment>Mandatory element according to the CI</xsl:comment>
          </seclaw:bodytext>
          <xsl:apply-templates select="node() except heading"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="node() except heading"/>
        </xsl:otherwise>
      </xsl:choose>
    </seclaw:level>
    <xsl:if test="following-sibling::*[1][self::bodytext]">
      <xsl:call-template name="bodytext-followingbodytext">
        <xsl:with-param name="node" select="following-sibling::*[1][self::bodytext]"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  
  
 <xsl:template match="bodytext[parent::level][not(preceding-sibling::*[1][self::level or self::bodytext])]">
    <seclaw:bodytext>
      <xsl:apply-templates select="@*|node()"/>
      <xsl:if test="following-sibling::*[1][self::level]">
        <xsl:call-template name="bodytext-followinglevel">
          <xsl:with-param name="node" select="following-sibling::*[1][self::level]"/>
        </xsl:call-template>
      </xsl:if>
      <xsl:if test="following-sibling::*[1][self::bodytext]">
        <xsl:call-template name="bodytext-followingbodytext">
          <xsl:with-param name="node" select="following-sibling::*[1][self::bodytext]"/>
        </xsl:call-template>
      </xsl:if>
    </seclaw:bodytext>
  </xsl:template>
  
  <xsl:template match="level[parent::level]|bodytext[preceding-sibling::bodytext or preceding-sibling::level]" priority="20"/>
  
  
  <!-\- Vikas Rohilla : Template name bodytext-followingbodytext fro wrap in single seclaw:bodytext  -\->
  <xsl:template name="bodytext-followingbodytext">
    <xsl:param name="node"/>
    <xsl:apply-templates select="$node" mode="wrap-bodytext"/>
    <xsl:if test="$node/following-sibling::*[1][self::bodytext]">
      <xsl:call-template name="bodytext-followingbodytext">
        <xsl:with-param name="node" select="$node/following-sibling::*[1][self::bodytext]"/>
      </xsl:call-template>
    </xsl:if>
   
  </xsl:template>
  
  <!-\- Vikas Rohilla : Template name bodytext-followinglevel for wrap in single seclaw:bodytext  -\->
  <xsl:template name="bodytext-followinglevel">
    <xsl:param name="node"/>
    <xsl:apply-templates select="$node" mode="wrap-level"/>
    <xsl:if test="$node/following-sibling::*[1][self::level]">
      <xsl:call-template name="bodytext-followinglevel">
        <xsl:with-param name="node" select="$node/following-sibling::*[1][self::level]"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <!-\-    Vikas Rohillla : Template to match the bodytext and the mode wrap-bodytext-\->
  <xsl:template match="bodytext" mode="wrap-bodytext">
    <xsl:apply-templates select="@*|node()"/>
    <xsl:if test="following-sibling::*[1][self::level]">
      <xsl:call-template name="bodytext-followinglevel">
        <xsl:with-param name="node" select="following-sibling::*[1][self::level]"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  -->


<!--Comment END-->
  
     <!--************************************************************************************************
                                              Below Attributes Handling
     ****************************************************************************************************-->
  
  
  <!-- Vikas Rohilla : Template to match the @subdoc and create @includeintoc    -->
  <xsl:template match="level/@subdoc">    
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <!-- Vikas Rohilla : Template to match the level/@toc-caption and create the @alternatetoccaption  -->
  <xsl:template match="level/@toc-caption">
    <xsl:attribute name="alternatetoccaption">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
 
  <!--Vikas Rohilla : Template to match the @leveltype-->
  <xsl:template match="level[child::heading/title[.='All Questions']]/@leveltype">
    <xsl:attribute name="leveltype" select="'questionanswergroup'"/>
  </xsl:template>
  
  <!--Vikas Rohilla : Template to match the @leveltype-->
  <xsl:template match="level/@leveltype">
    <xsl:attribute name="leveltype">
      <xsl:variable name="level_type">
        <xsl:value-of select="key('leveltype',.,$leveltype-value)/@value"/>  
      </xsl:variable>
      <xsl:choose>
        <xsl:when test="$level_type!=''">
          <xsl:value-of select="$level_type"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>unclassified</xsl:text>
        </xsl:otherwise>
      </xsl:choose>      
    </xsl:attribute> 
  </xsl:template>
  
 
  
  <!-- Vikas Rohilla : supressed level/@searchtype   -->
  <xsl:template match="level/@searchtype"/>

	
</xsl:stylesheet>