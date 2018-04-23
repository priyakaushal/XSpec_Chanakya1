<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level1">
  <title><sourcexml>level</sourcexml> <lnpid>id-MY03-16416</lnpid></title>
  
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
            <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
            <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="FORM.GRP"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm.intro"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="GROUP"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
            <li><sourcexml>level[@leveltype="miscins"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm30"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
            <li><sourcexml>level[@leveltype="comm36"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
            <li><sourcexml>level[@leveltype="act"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="act"]</targetxml></li>
            <li><sourcexml>level[@leveltype="part"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="part"]</targetxml></li>
            <li><sourcexml>level[@leveltype="sec"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="section"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subsec"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subsection"]</targetxml></li>
            <li><sourcexml>level[@leveltype="division"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
            <li><sourcexml>level[@leveltype="chap"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>level[@leveltype="rule"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
            <li><sourcexml>level[@leveltype="clause"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="clause"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subclause"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subclause"]</targetxml></li>
            <li><sourcexml>level[@leveltype="order"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="order"]</targetxml></li>
            <li><sourcexml>level[@leveltype="rul"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subrul"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subrule"]</targetxml></li>
            <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
            <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
          </ul>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY03_Commentary-From-Prece\Comm-Form-Pre_level1.dita  -->
<!--	<xsl:message>Comm-Form-Pre_level1.xsl requires manual development!</xsl:message> -->

	<xsl:template match="level">
		<xsl:choose>
			<xsl:when test="./parent::comm:body">
				<xsl:element name="seclaw:level">
					<xsl:apply-templates select="@subdoc"/>
					<xsl:apply-templates select="@toc-caption"/>
					<xsl:apply-templates select="@id"/>
					<xsl:call-template name="leveltype"/>
					<xsl:apply-templates select="heading/descendant::refpt"/>
					<xsl:apply-templates select="heading"/>
					<seclaw:bodytext>
						<xsl:apply-templates select="*[not(self::heading)]"/>
					</seclaw:bodytext>
				</xsl:element>
			</xsl:when>
			<xsl:when test="ancestor::leg:comntry and not(parent::leg:comntry)">
				<xsl:element name="annot:annotationlevel">
					<xsl:apply-templates select="@subdoc"/>
					<xsl:apply-templates select="@toc-caption"/>
					<xsl:apply-templates select="@id"/>
					<xsl:apply-templates select="heading/descendant::refpt"/>
					<xsl:apply-templates select="heading"/>
					<annot:bodytext>
						<xsl:apply-templates select="*[not(self::heading)]"/>
					</annot:bodytext>
				</xsl:element>
			</xsl:when>
			<xsl:when test="parent::leg:comntry">
		
				<annot:annotation>
					<xsl:apply-templates select="heading/descendant::refpt"/>
					<xsl:apply-templates select="heading"/>
					<xsl:apply-templates select="*[not(self::heading)]"/>
				</annot:annotation>
			</xsl:when>
			<xsl:otherwise>
				<xsl:element name="seclaw:level">
					<xsl:call-template name="leveltype"/>
					<xsl:apply-templates select="@subdoc"/>
					<xsl:apply-templates select="@toc-caption"/>
					<xsl:apply-templates select="@id"/>
					<xsl:apply-templates select="heading/descendant::refpt"/>
					<xsl:apply-templates select="heading"/>
					<xsl:apply-templates select="bodytext/heading"/>
					<seclaw:bodytext>
						<xsl:apply-templates select="*[not(self::heading)]"/>
					</seclaw:bodytext>
				</xsl:element>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	

	
	
	<xsl:template name="subdoc" match="@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template name="toc-caption" match="@toc-caption">
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template name="leveltype">
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test="./@leveltype = 'chapter'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'form'">
					<xsl:text>form</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'FORM.GRP'">
					<xsl:text>form</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'formgrp'">
					<xsl:text>form</xsl:text>
				</xsl:when>
				<xsl:when test="./lower-case(@leveltype) = 'group'">
					<xsl:text>division</xsl:text>
				</xsl:when>            
				<xsl:when test="./@leveltype = 'para0'">
					<xsl:text>paragraph</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'subpara0'">
					<xsl:text>subparagraph</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.2'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.A'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.A2'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.A3'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.A4'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.G'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.chap.H'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'comm.intro'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'miscins'">
					<xsl:text>introduction</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'prelim'">
					<xsl:text>preamble</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'act'">
					<xsl:text>act</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'part'">
					<xsl:text>part</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'sec'">
					<xsl:text>section</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'subsec'">
					<xsl:text>subsection</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'division'">
					<xsl:text>division</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'chap'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'rule'">
					<xsl:text>rule</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'clause'">
					<xsl:text>clause</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'subclause'">
					<xsl:text>subclause</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'order'">
					<xsl:text>order</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'rul'">
					<xsl:text>rule</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'subrul'">
					<xsl:text>subrule</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'subpara0'">
					<xsl:text>subparagraph</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype = 'misc.lst.table'">
					<xsl:text>introduction</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>unclassified</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template name="seclaw_prelim">
		<xsl:if test="@leveltype = 'prelim'">
			<seclaw:prelim>
				<xsl:apply-templates select="@subdoc"/>
				<xsl:apply-templates select="@toc-caption"/>
				<xsl:apply-templates select="@id"/>
				<xsl:attribute name="narrativetype">
					<xsl:value-of select="@leveltype"/>
				</xsl:attribute>
				<xsl:choose>
					<xsl:when test="./bodytext">
						<pubfm:narrative>
							<xsl:attribute name="narrativetype">
								<xsl:value-of select="@leveltype"/>
							</xsl:attribute>
							<xsl:apply-templates/>
						</pubfm:narrative>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates/>
					</xsl:otherwise>
				</xsl:choose>
			</seclaw:prelim>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>