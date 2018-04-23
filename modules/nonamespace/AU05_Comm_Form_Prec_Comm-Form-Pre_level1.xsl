<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level1">
  <title><sourcexml>level</sourcexml> <lnpid>id-AU05-18820</lnpid></title>
  
  <body>
    <section>
      <ul>
        <li><sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml> comes with following attributes:
          <ul>
            <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
            <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
            <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
            <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and the values are tokenized for <targetxml>@leveltype</targetxml>. These are listed below:
              <ul>
                <li><targetxml>seclaw:level[@leveltype="act"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="addendum"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="agreement"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="amendment"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="article"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="attachment"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="canon"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="clause"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="companion"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="constitution"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="dictionary"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="endnote"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="exhibit"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="instrument"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="order"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="part"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="preamble"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="procedural-guide"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="regulation"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="regulatory-code"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="schedule"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="section"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subarticle"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subchapter"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subclause"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subdivision"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subpart"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subregulation"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subschedule"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subrule"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subsection"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subtitle"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="supplement"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="table-of-contents"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="title"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="topic"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="treaty"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="agency"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subagency"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="special-alert"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="special-unit"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="court-order"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="guidecardgroup"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="landingpage"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="digestgroups"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="practicearea"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="subtopic"]</targetxml></li>
                <li><targetxml>seclaw:level[@leveltype="topictree"]</targetxml></li>
              </ul>
            </li>
          </ul>
          <p><b>Below are the unique values for <targetxml>@leveltype</targetxml> found in the source documents and the corresponding mapping in NewLexis.
          For certain <targetxml>@leveltype</targetxml> values set as <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
          <ul>
            <li><sourcexml>level[@leveltype="appendix"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
            <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="form"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
            <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
            <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="outline.grp"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="guidecard"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
            <li><sourcexml>level[@leveltype="prac.dec"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
            <li><sourcexml>level[@leveltype="guidecard.group"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="guidecardgroup"]</targetxml></li>
            <li><sourcexml>level[@leveltype="outline"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="topic"]</targetxml> <b>topic or possibly a variation on form</b></li>
            <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="preface"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="acknowledgment"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="foreword"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="pubnote"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.att"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.att.grp"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.intro"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="corp.chap.front"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="attachmentgrp"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="group"]</targetxml></li>
            <li><sourcexml>level[@leveltype="clausegrp"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="group"]</targetxml></li>
            <li><sourcexml>level[@leveltype="attachment"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="attachment"]</targetxml></li>
            <li><sourcexml>level[@leveltype="chap"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="clause"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="clause"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subclause"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subclause"]</targetxml></li>
            <li><sourcexml>level[@leveltype="chapintro"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
          </ul>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU05_Comm_Form_Prec\Comm-Form-Pre_level1.dita  -->

<!-- default non-form behavior -->
	<xsl:template match="level[not(@leveltype=('prec.grp' , 'precgrp' , 'precgrp1' , 'precgrp2' , 'prec'))]">
		<xsl:choose>
			<!-- Below when condition added to handle AU05 index source -->
		  <xsl:when test="descendant::index">
		    <seclaw:level>
		      <xsl:attribute name="leveltype">unclassified</xsl:attribute>
		      <xsl:apply-templates select="@*"/>
		      <xsl:apply-templates select="refpt | heading//refpt"/>
		      <xsl:apply-templates select="heading"/>		 
		      <xsl:if test="heading/leg:empleg and not(levelinfo)">
		        <seclaw:levelinfo>
		          <xsl:apply-templates select="heading/leg:empleg"/>
		        </seclaw:levelinfo>
		      </xsl:if>
		      <xsl:apply-templates select="levelinfo"/>
		      <xsl:if test="glp:note or heading/glp:note">
		        <seclaw:prelim>
		          <xsl:apply-templates select="glp:note | heading/glp:note"/>
		        </seclaw:prelim>
		      </xsl:if>		  
		      <xsl:for-each-group select="* except (heading | refpt | levelinfo | glp:note)" group-adjacent="if (self::level[@leveltype='prelim']) then 0 else 1">
		        <xsl:choose>
		          <xsl:when test="current-grouping-key()=0">
		            <xsl:apply-templates select="current-group()"/>
		          </xsl:when>
		          <xsl:otherwise>
		            <seclaw:bodytext>
		              <xsl:apply-templates select="current-group()"/>
		            </seclaw:bodytext>	
		          </xsl:otherwise>
		        </xsl:choose>
		      </xsl:for-each-group>		 	  
		    </seclaw:level>
		  </xsl:when>
		  <xsl:otherwise>
		    <seclaw:level>
		      <xsl:apply-templates select="@*"/>
		      <xsl:apply-templates select="refpt | heading//refpt"/>
		      <xsl:apply-templates select="heading"/>		 
		      <xsl:if test="heading/leg:empleg and not(levelinfo)">
		        <seclaw:levelinfo>
		          <xsl:apply-templates select="heading/leg:empleg"/>
		        </seclaw:levelinfo>
		      </xsl:if>
		      <xsl:apply-templates select="levelinfo"/>
		      <xsl:if test="glp:note or heading/glp:note">
		        <seclaw:prelim>
		          <xsl:apply-templates select="glp:note | heading/glp:note"/>
		        </seclaw:prelim>
		      </xsl:if>		  
		      <xsl:for-each-group select="* except (heading | refpt | levelinfo | glp:note)" group-adjacent="if (self::level[@leveltype='prelim']) then 0 else 1">
		        <xsl:choose>
		          <xsl:when test="current-grouping-key()=0">
		            <xsl:apply-templates select="current-group()"/>
		          </xsl:when>
		          <xsl:otherwise>
		            <seclaw:bodytext>
		              <xsl:apply-templates select="current-group()"/>
		            </seclaw:bodytext>	
		          </xsl:otherwise>
		        </xsl:choose>
		      </xsl:for-each-group>		 	  
		    </seclaw:level>
		  </xsl:otherwise>
		</xsl:choose>
	  <!--<seclaw:level>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt | heading//refpt"/>
			<xsl:apply-templates select="heading"/>		 
		  <xsl:if test="heading/leg:empleg and not(levelinfo)">
		    <seclaw:levelinfo>
		      <xsl:apply-templates select="heading/leg:empleg"/>
		    </seclaw:levelinfo>
		  </xsl:if>
		  <xsl:apply-templates select="levelinfo"/>
		  <xsl:if test="glp:note or heading/glp:note">
		    <seclaw:prelim>
		      <xsl:apply-templates select="glp:note | heading/glp:note"/>
		    </seclaw:prelim>
		  </xsl:if>		  
		  <xsl:for-each-group select="* except (heading | refpt | levelinfo | glp:note)" group-adjacent="if (self::level[@leveltype='prelim']) then 0 else 1">
		    <xsl:choose>
		      <xsl:when test="current-grouping-key()=0">
		        <xsl:apply-templates select="current-group()"/>
		      </xsl:when>
		      <xsl:otherwise>
		        <seclaw:bodytext>
		          <xsl:apply-templates select="current-group()"/>
		        </seclaw:bodytext>	
		      </xsl:otherwise>
		    </xsl:choose>
		  </xsl:for-each-group>		 	  
		</seclaw:level>-->
	</xsl:template>

	<xsl:template match="@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="@toc-caption">
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
		
	</xsl:template>
  
  <xsl:template match="level/bodytext" priority="20">
    <xsl:apply-templates/>
  </xsl:template>
	
	<xsl:template match="level/@leveltype">
		<xsl:attribute name="leveltype">
		<xsl:choose>
			<xsl:when test=".=('act' , 'addendum' , 'agreement' , 'amendment' , 'annex' , 'appendix' , 'article' , 
				'attachment' , 'canon' , 'chapter' , 'clause' , 'companion' , 'constitution' , 'dictionary' , 'division' , 
				'endnote' , 'exhibit' , 'form' , 'guidecard' , 'hierarchy-note' , 'instrument' , 'introduction' , 'order' , 'paragraph' , 
				'part' , 'preamble' , 'procedural-guide' , 'regulation' , 'regulatory-code' , 'rule' , 'schedule' , 'section' , 
				'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subregulation' , 
				'subschedule' , 'subrule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' , 
				'treaty' , 'agency' , 'subagency' , 'unclassified' , 'special-alert' , 'special-unit' , 'court-order' , 'introduction' , 
				'guidecard' , 'guidecardgroup' , 'landingpage' , 'digestgroups' , 'practicearea' , 'subtopic' , 'topictree')">
				<xsl:value-of select="."/>				
			</xsl:when>
			<xsl:when test=".=('group')">division</xsl:when>
			<xsl:when test=".=('para0')">paragraph</xsl:when>
			<xsl:when test=".=('subpara0')">subparagraph</xsl:when>
			<xsl:when test=".=('comm.chap', 'outline.grp')">chapter</xsl:when>
			<xsl:when test=".=('guidecard.group')">guidecardgroup</xsl:when>
			<xsl:when test=".=('outline')">topic</xsl:when>
		  <xsl:when test=".=('misc.1st.table' , 'misc.lst.table' , 'preface', 'acknowledgment', 'foreword' , 'pubnote' , 
				'comm.intro', 'corp.chap.front' , 'chapintro')">introduction</xsl:when>
			<xsl:when test=".=('comm.att.grp')">annex</xsl:when>
			<xsl:when test=".=('attachmentgrp' , 'clausegrp')">group</xsl:when>
			<xsl:otherwise>unclassified</xsl:otherwise>				
		</xsl:choose>
		</xsl:attribute>
	</xsl:template>
	


</xsl:stylesheet>