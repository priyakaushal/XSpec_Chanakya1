<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_QUASI_ReguMate_COMMTOADMINDOC-level">
   <title>level <lnpid>id-UK08CA-28613</lnpid></title>
   <body>
      <section>
         <p><sourcexml>level</sourcexml> <b>Becomes</b> <targetxml>admindoc:level</targetxml> comes with below attribute:
            <ul>
               <li><sourcexml>@id</sourcexml> <b>Becomes</b> <targetxml>@xml:id</targetxml></li>
               <li><sourcexml>@subdoc</sourcexml> <b>Becomes</b> <targetxml>@includeintoc</targetxml></li>
               <li><sourcexml>@toc-caption</sourcexml> <b>Becomes</b> <targetxml>@alternatetoccaption</targetxml></li>
               <li><sourcexml>@leveltype</sourcexml> <b>Becomes</b> <targetxml>@leveltype</targetxml>, the values are tokenized:
                  <ul>
                     <li><targetxml>admindoc:level[@leveltype="act"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="addendum"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="amendment"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="annex"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="appendix"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="article"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="attachment"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="canon"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="chapter"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="clause"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="companion"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="constitution"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="dictionary"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="division"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="endnote"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="exhibit"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="form"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="hierarchy-note"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="instrument"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="introduction"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="order"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="paragraph"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="part"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="preamble"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="regulation"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="rule"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="schedule"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="section"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subarticle"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subchapter"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subclause"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subdivision"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subparagraph"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subpart"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subregulation"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subschedule"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subrule"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subsection"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subtitle"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="supplement"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="table-of-contents"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="title"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="topic"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="treaty"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="agency"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="subagency"]</targetxml></li>
                     <li><targetxml>admindoc:level[@leveltype="unclassified"]</targetxml></li>
                  </ul>
               </li>
            </ul>
            <b>Below are the unique values for @leveltype found in the source documents and the corresponding mapping in NewLexis.</b>
            <ul>
               <li><sourcexml>[@leveltype="publication"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="administrative-decision"]</targetxml></li>
               <li><sourcexml>[@leveltype="section"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="section"]</targetxml></li>
               <li><sourcexml>[@leveltype="subsection"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subsection"]</targetxml></li>
               <li><sourcexml>[@leveltype="part"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="part"]</targetxml></li>
               <li><sourcexml>[@leveltype="chapter"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="chapter"]</targetxml></li>
               <li><sourcexml>[@leveltype="division"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="division"]</targetxml></li>
            </ul>
            <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown above the value will be set as <targetxml>@leveltype="unclassified"</targetxml>.</note>
            Examples are populated as below:
         </p>
      </section>
   </body>
	</dita:topic>

	<xsl:template match="level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
		   <xsl:apply-templates select="@*"/>
		   <xsl:apply-templates select="heading/refpt"/>
		   <xsl:apply-templates select="heading"/>
			<xsl:apply-templates select="node() except (heading)"/>
		</admindoc:level>

	</xsl:template>


	<xsl:template match="level/@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
		   <xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
		   <xsl:variable name="levelTypeValues" select="tokenize('act,addendum,amendment,annex,appendix,article,attachment,canon,chapter,clause,companion,constitution,dictionary,division,endnote,exhibit,form,hierarchy-note,instrument,introduction,order,paragraph,part,preamble,regulation,rule,schedule,section,subarticle,subchapter,subclause,subdivision,subparagraph,subpart,subregulation,subschedule,subrule,subsection,subtitle,supplement,table-of-contents,title,topic,treaty,agency,subagency,unclassified', ',')"/>
		   <!--  Original Target XPath:  @leveltype   -->
		      <xsl:choose>
		         <xsl:when test="index-of($levelTypeValues, .)">
		            <xsl:value-of select="."/>
		         </xsl:when>
		         <xsl:when test=".='publication'">administrative-decision</xsl:when>
		         <xsl:otherwise>
		            <xsl:text>unclassified</xsl:text>
		         </xsl:otherwise>
		      </xsl:choose>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>