<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
   xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
   xmlns:glp="http://www.lexis-nexis.com/glp"
   version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-AU19LA-22014</lnpid></title>
   <body>
      <section>
         <ul>
            <li>
               <sourcexml>leg:level</sourcexml>
               <b>Becomes</b>
               <targetxml>admindoc:level</targetxml> comes with below attribute: <ul>
                  <li>
                     <sourcexml>@id</sourcexml>
                     <b>Becomes</b>
                     <targetxml>@xml:id</targetxml>
                  </li>
                  <li>
                     <sourcexml>@subdoc</sourcexml>
                     <b>Becomes</b>
                     <targetxml>@includeintoc</targetxml>
                  </li>
                  <li>
                     <sourcexml>@toc-caption</sourcexml>
                     <b>Becomes</b>
                     <targetxml>@alternatetoccaption</targetxml>
                  </li>
               </ul> and <sourcexml>@leveltype</sourcexml>
               <b>Becomes</b>
               <targetxml>@leveltype</targetxml>, the values are tokenized: <ul>
                  <li>
                     <targetxml>admindoc:level[@leveltype="act"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="addendum"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="amendment"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="annex"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="appendix"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="article"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="canon"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="chapter"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="clause"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="companion"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="constitution"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="dictionary"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="division"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="endnote"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="exhibit"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="form"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="hierarchy-note"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="order"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="part"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="preamble"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="regulation"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="rule"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="section"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subarticle"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subclause"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subdivision"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subparagraph"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subpart"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subregulation"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subschedule"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subrule"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subsection"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subtitle"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="supplement"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="table-of-contents"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="title"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="topic"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="agency"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="subagency"]</targetxml>
                  </li>
                  <li>
                     <targetxml>admindoc:level[@leveltype="unclassified"]</targetxml>
                  </li>
               </ul> As per LBU recommend the rules are listed below for some unique
                  [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: <ul>
                  <li>If input <sourcexml>[[@leveltype="agreement"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="agreement"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="attachment"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="attachments"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="comm.intro"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="annotation-group"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="convention"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="group"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="leg-inst"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="miscins"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="proc-guide"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="procedural-guide"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="reg-code"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="regulatory-code"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="release"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="scale"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="scalep"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="scales"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="scalesp"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="schedulegrp"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="subgroup"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
                  </li>
                  <li>If input <sourcexml>[@leveltype="summary"]</sourcexml> becomes
                        <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
                  </li>
               </ul>
               <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other
                  than the tokenized list shown above the value will be set as
                     <targetxml>@leveltype="unclassified"</targetxml>.</note> Examples are populated
               as below: <pre>
                
              <b>
                <i>Example: Source XML 1</i></b>
                   &lt;leg:level id="ASXLRN_LISTING_RULES.SGM_MISC.INS_2"&gt;
                    &lt;leg:level-vrnt leveltype="miscins" searchtype="LEGISLATION MISCINS"&gt;

                  ...
                  	&lt;/leg:level-vrnt&gt;
                  &lt;/leg:level&gt;
</pre>
               <pre>

              <b><i>Example: Target XML 1</i></b>

       &lt;admindoc:level xml:id="ASXLRN_LISTING_RULES.SGM_MISC.INS_2" leveltype="instrument"&gt;
	    ...
       &lt;/admindoc:level&gt;

            </pre>
               <note>In NL Schema <targetxml>admindoc:level</targetxml> element is used instead of
                  Rosetta elements <sourcexml>leg:level</sourcexml> and
                     <sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute
                     <sourcexml>@leveltype</sourcexml> with value from
                     <sourcexml>leg:level-vrnt</sourcexml> element and
                     <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
                  conversion.</note>
            </li>
         </ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_leg.level.dita  -->
	
	<xsl:template match="leg:level">
		<admindoc:level>
		   <xsl:apply-templates select="@*"/>
		   <xsl:apply-templates select="leg:level-vrnt/@*"/>
		   <!-- in case there's no leveltype in the input -->
		   <xsl:if test="not(leg:level-vrnt/@leveltype or leg:level/@leveltype)">
		      <xsl:attribute name="leveltype" select="'unclassified'"/>
		   </xsl:if>
		   <xsl:apply-templates select="node()"/>
		</admindoc:level>
	</xsl:template>


   <xsl:template match="leg:level/@subdoc | leg:level-vrnt/@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

   <xsl:template match="leg:level/@toc-caption | leg:level-vrnt/@toc-caption">
		<xsl:attribute name="alternatetoccaption">
		   <xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

   <xsl:template match="leg:level/@leveltype | leg:level-vrnt/@leveltype">
      <xsl:variable name="adminLevelTypes" select="('act' , 'addendum' , 'amendment' , 'agreement', 'annex' , 'appendix' , 'article' , 'attachment' , 'canon' , 'chapter' , 'clause' , 'companion' , 'constitution' , 'dictionary' , 'division' , 'endnote' , 'exhibit' , 'form' , 'hierarchy-note' , 'instrument' , 'introduction' , 'order' , 'paragraph' , 'part' , 'preamble' , 'regulation' , 'rule' , 'schedule' , 'section' , 'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subregulation' , 'subschedule' , 'subrule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' , 'treaty' , 'agency' , 'subagency' , 'unclassified')"/>
		<xsl:attribute name="leveltype">
			<xsl:choose>
			   <xsl:when test=".=$adminLevelTypes">
			      <xsl:value-of select="."/>
			   </xsl:when>
			   <xsl:when test=".='attachments'">attachment</xsl:when>
			   <xsl:when test=".='comm.intro'">annotation-group</xsl:when>
			   <xsl:when test=".='convention'">treaty</xsl:when>
			   <xsl:when test=".='group'">subchapter</xsl:when>
			   <xsl:when test=".='leg-inst'">instrument</xsl:when>
			   <xsl:when test=".='miscins'">instrument</xsl:when>
			   <xsl:when test=".='proc-guide'">procedural-guide</xsl:when>
			   <xsl:when test=".='reg-code'">regulatory-code</xsl:when>
			   <xsl:when test=".='release'">instrument</xsl:when>
			   <xsl:when test=".='sect'">section</xsl:when>
			   <xsl:when test=".='scale'">schedule</xsl:when>
			   <xsl:when test=".='scalep'">paragraph</xsl:when>
			   <xsl:when test=".='scales'">schedule</xsl:when>
			   <xsl:when test=".='scalesp'">paragraph</xsl:when>
			   <xsl:when test=".='schedulegrp'">schedule</xsl:when>
			   <xsl:when test=".='subgroup'">subchapter</xsl:when>
			   <xsl:when test=".='summary'">introduction</xsl:when>
			   <xsl:otherwise>unclassified</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>

	</xsl:template>


   <xsl:template match="leg:heading">
      <xsl:if test="not(@ln.user-displayed='false')">
      <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
         <xsl:apply-templates select="@* | node() except (refpt | leg:empleg | glp:note)"/>
      </heading>
      </xsl:if>
   </xsl:template>
	
   <xsl:template match="leg:heading/@inline">
      <xsl:copy-of select="."/>
   </xsl:template>

	<xsl:template match="leg:level-vrnt">
	   <xsl:apply-templates select="leg:heading/(refpt | desig/designum/refpt | title/refpt | edpnum/refpt) | leg:levelinfo/leg:levelstatus/refpt"/>
	   <xsl:apply-templates select="leg:levelinfo"/>
	   <xsl:if test="not(leg:levelinfo) and /LEGDOC/leg:body/leg:info/leg:status/@statuscode">
	      <admindoc:levelinfo>	      
	         <admindoc:status>
	            <xsl:copy-of select="/LEGDOC/leg:body/leg:info/leg:status/@statuscode"/>
	         </admindoc:status>
	     </admindoc:levelinfo>
	   </xsl:if>
	   <xsl:apply-templates select="leg:heading"/>
	   <xsl:apply-templates select="leg:heading/glp:note"/>
	   <xsl:apply-templates select="leg:heading/leg:empleg | leg:heading/leg:histnote"/>
	   <xsl:apply-templates select="node() except(leg:heading | leg:levelinfo)"/>
	</xsl:template>
   
   <xsl:template match="leg:level-vrnt/@searchtype | leg:heading/@searchtype | leg:level/@searchtype"/>

</xsl:stylesheet>