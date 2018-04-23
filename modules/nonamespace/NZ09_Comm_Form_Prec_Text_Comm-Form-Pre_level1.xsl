<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" 
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level1">
  <title><sourcexml>level</sourcexml> <lnpid>id-NZ09-24220</lnpid></title>
  
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
            <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
            <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="guidecard"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
            <li><sourcexml>level[@leveltype="prac.note.grp"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
            <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.att"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.att.grp"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
            <li><sourcexml>level[@leveltype="miscins"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="instrument"]</targetxml></li>
          </ul>
        </li>
      </ul>
    </section>
    <section>
      <p><b>Special rule for child when parent and child are both
        <sourcexml>"chapter"</sourcexml> or both <sourcexml>"group"</sourcexml></b>:<ul>
          <li>If <sourcexml>level[@leveltype="chapter"]</sourcexml> contains child
            <sourcexml>level[@leveltype="chapter"]</sourcexml>, then child becomes
            <targetxml>seclaw:level[@leveltype="subchapter"]</targetxml>.</li>
          <li>If <sourcexml>level[@leveltype="group"]</sourcexml> contains child
            <sourcexml>level[@leveltype="group"]</sourcexml>, then child becomes
            <targetxml>seclaw:level[@leveltype="subdivision"]</targetxml>.</li>
        </ul></p>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-01-16: <ph id="change_20140116_jm">Added special rule for child when parent and
        child <sourcexml>@leveltype</sourcexml> are both
        <sourcexml>"chapter"</sourcexml> or both <sourcexml>"group"</sourcexml>.
        Parent mapping unchanged. Child target <targetxml>@leveltype</targetxml> now set
        to <targetxml>"subchapter"</targetxml> or <targetxml>"subdivision"</targetxml>.
        R4.5 Content Issue 664.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_level1.dita  -->

	<!-- default non-form behavior -->
	<xsl:template match="level[not(starts-with(@leveltype , ('prec')) or starts-with(@leveltype , 'form'))]">
		<seclaw:level>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt | heading/descendant::refpt"/>
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
				<xsl:when test=".='chapter'">
					<xsl:choose>
						<xsl:when test="parent::level/parent::level[@leveltype='chapter']">subchapter</xsl:when>
						<xsl:otherwise>chapter</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:when test=".='group'">
					<xsl:choose>
						<xsl:when test="parent::level/parent::level[@leveltype='group']">subdivision</xsl:when>
						<xsl:otherwise>division</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:when test=".=('act' , 'addendum' , 'agreement' , 'amendment' , 'annex' , 'appendix' , 'article' , 
					'attachment' , 'canon' , 'clause' , 'companion' , 'constitution' , 'dictionary' , 'division' , 
					'endnote' , 'exhibit' , 'hierarchy-note' , 'instrument' , 'introduction' , 'order' , 'paragraph' , 
					'part' , 'preamble' , 'procedural-guide' , 'regulation' , 'regulatory-code' , 'rule' , 'schedule' , 'section' , 
					'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subregulation' , 
					'subschedule' , 'subrule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' , 
					'treaty' , 'agency' , 'subagency' , 'unclassified' , 'special-alert' , 'special-unit' , 'court-order' , 'introduction' , 
					'guidecard' , 'guidecardgroup' , 'landingpage' , 'digestgroups' , 'practicearea' , 'subtopic' , 'topictree')">
					<xsl:value-of select="."/>				
				</xsl:when>
				<xsl:when test=".=('para0')">paragraph</xsl:when>
				<xsl:when test=".=('subpara0')">subparagraph</xsl:when>
				<xsl:when test=".=('comm.chap')">chapter</xsl:when>
				<xsl:when test=".=('guidecard.group')">guidecardgroup</xsl:when>
				<xsl:when test=".=('outline')">topic</xsl:when>
				<xsl:when test=".=('misc.1st.table' , 'misc.lst.table' , 'comm.intro')">introduction</xsl:when>
				<xsl:when test=".=('comm.att.grp', 'comm.att')">annex</xsl:when>
				<xsl:when test=".=('miscins')">instrument</xsl:when>
				<xsl:otherwise>unclassified</xsl:otherwise>				
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>


</xsl:stylesheet>