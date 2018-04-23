<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  
   xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
   xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
   xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
   version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-AU15-20814</lnpid></title>
   <body>
      <section>
         <ul>
            <li class="- topic/li ">
               <sourcexml>leg:level</sourcexml>
               <b>Becomes</b>
               <targetxml>admindoc:level</targetxml> comes with below attribute: <ul class="- topic/ul ">
                  <li class="- topic/li ">
                     <sourcexml>@id</sourcexml>
                     <b>Becomes</b>
                     <targetxml>@xml:id</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <sourcexml>@subdoc</sourcexml>
                     <b>Becomes</b>
                     <targetxml>@includeintoc</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <sourcexml>@toc-caption</sourcexml>
                     <b>Becomes</b>
                     <targetxml>@alternatetoccaption</targetxml>
                  </li>
               </ul> and <sourcexml>@leveltype</sourcexml>
               <b>Becomes</b>
               <targetxml>@leveltype</targetxml>, the values are tokenized: <ul class="- topic/ul ">
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="act"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="addendum"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="amendment"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="annex"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="appendix"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="article"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="canon"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="chapter"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="clause"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="companion"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="constitution"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="dictionary"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="division"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="endnote"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="exhibit"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="form"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="hierarchy-note"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="order"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="part"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="preamble"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="regulation"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="rule"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="section"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subarticle"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subclause"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subdivision"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subparagraph"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subpart"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subregulation"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subschedule"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subrule"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subsection"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subtitle"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="supplement"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="table-of-contents"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="title"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="topic"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="agency"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="subagency"]</targetxml>
                  </li>
                  <li class="- topic/li ">
                     <targetxml>admindoc:level[@leveltype="unclassified"]</targetxml>
                  </li>
               </ul> As per LBU recommend the rules are listed below for some unique
                  [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: <ul class="- topic/ul ">
                  <li class="- topic/li ">If input <sourcexml>[[@leveltype="agreement"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="agreement"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="attachment"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="attachments"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="comm.intro"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="annotation-group"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="convention"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="group"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="chapter"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="leg-inst"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="miscins"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="proc-guide"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="procedural-guide"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="reg-code"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="regulatory-code"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="release"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="scale"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="scalep"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="scales"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="scalesp"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="schedulegrp"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="subgroup"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
                  </li>
                  <li class="- topic/li ">If input <sourcexml>[@leveltype="summary"]</sourcexml>
                     becomes <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
                  </li>
                     <li class="- topic/li ">If input <sourcexml>[@leveltype="sect"]</sourcexml>
                        becomes <targetxml>admindoc:level[@leveltype="section"]</targetxml>
                     </li>
                     <li class="- topic/li ">If input <sourcexml>[@leveltype="subsect"]</sourcexml>
                        becomes <targetxml>admindoc:level[@leveltype="subsection"]</targetxml>
                     </li>
               </ul>
               <note class="- topic/note ">If the input files are having
                     <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown
                  above the value will be set as
                  <targetxml>@leveltype="unclassified"</targetxml>.</note> Examples are populated as
               below: <pre xml:space="preserve" class="- topic/pre ">
                
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="AL.AATL.CPNRDRR.BODY"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION LEG-INST" leveltype="leg-inst"&gt;
		....
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


</pre>
               <pre xml:space="preserve" class="- topic/pre ">

              <b><i>Example: Target XML 1</i></b>


&lt;admindoc:level xml:id="AL.AATL.CPNRDRR.BODY" leveltype="instrument"&gt;
	....
&lt;/admindoc:level&gt;

            </pre>
               <pre xml:space="preserve" class="- topic/pre ">
              <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="AL.AATL.CPNRDRR.CL1"&gt;
	&lt;leg:level-vrnt toc-caption="[1160] cl 1 Citation" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
		....
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


</pre>
               <pre xml:space="preserve" class="- topic/pre ">
              <b><i>Example: Target XML 2</i></b>
              

&lt;admindoc:level xml:id="AL.AATL.CPNRDRR.CL1" alternatetoccaption="[1160] cl 1 Citation" includeintoc="true" leveltype="clause"&gt;
	....
&lt;/admindoc:level&gt;

              
            </pre>
               <note class="- topic/note ">In NL Schema <targetxml>admindoc:level</targetxml>
                  element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
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

   <xsl:template match="leg:level[not(ancestor::legfragment)]">
      
      <!--  Original Target XPath:  admindoc:level   -->
      <admindoc:level>
         <xsl:apply-templates select="@*"/>
         <xsl:apply-templates select="leg:level-vrnt/@*"/>
         <xsl:if test="not(leg:level-vrnt/@leveltype or @leveltype)">
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="leg:level-vrnt/leg:heading//refpt | leg:heading//refpt"/>
         <xsl:apply-templates select="leg:level-vrnt/leg:levelinfo | leg:levelinfo"/>
         <xsl:apply-templates select="leg:level-vrnt/leg:heading|heading|leg:heading"/>
         <xsl:apply-templates select=" leg:heading/(leg:histnote|leg:empleg) | leg:level-vrnt/leg:heading/(leg:histnote|leg:empleg)"/>
         <xsl:apply-templates select="node() except(leg:levelinfo|heading|leg:heading)"/>
      </admindoc:level>
      
   </xsl:template>
   
   <xsl:template match="leg:level[ancestor::legfragment]">
      
      <!--  Original Target XPath:  admindoc:level   -->
      <primlaw:level>
         <xsl:apply-templates select="@*"/>
         <xsl:apply-templates select="leg:level-vrnt/@*"/>
         <xsl:if test="not(leg:level-vrnt/@leveltype or @leveltype)">
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="leg:level-vrnt/leg:heading//refpt | leg:heading//refpt"/>
         <xsl:apply-templates select="leg:level-vrnt/leg:levelinfo | leg:levelinfo"/>
         <xsl:apply-templates select="leg:level-vrnt/leg:heading|heading|leg:heading"/>
         <xsl:apply-templates select=" leg:heading/(leg:histnote|leg:empleg) | leg:level-vrnt/leg:heading/(leg:histnote|leg:empleg)"/>
        
         <xsl:apply-templates select="node() except(leg:levelinfo|heading|leg:heading)"/>
      </primlaw:level>
      
   </xsl:template>
   
   <xsl:template match="leg:level/@leveltype|leg:level-vrnt/@leveltype">
      <xsl:attribute name="leveltype">
         <xsl:choose>
            <xsl:when test=". = 'annexure'">annex</xsl:when>
            <xsl:when test=".='sect'">section</xsl:when>
            <xsl:when test=".='subsect'">subsection</xsl:when>
            <xsl:when test=".=''">unclassified</xsl:when>
            <xsl:when test=".='attachments'">attachment</xsl:when>
            <xsl:when test=".='comm.chap'">chapter</xsl:when>
            <xsl:when test=".='comm.intro'">annotation-group</xsl:when>
            <xsl:when test=".='convention'">treaty</xsl:when>
            <xsl:when test=".='forms'">form</xsl:when>
            <xsl:when test=".='group'">chapter</xsl:when>
            <xsl:when test=".='leg-inst'">instrument</xsl:when>
            <xsl:when test=".='miscins'">instrument</xsl:when>
            <xsl:when test=".='para0'">paragraph</xsl:when>
            <xsl:when test=".='proc-guide'">procedural-guide</xsl:when>
            <xsl:when test=".='reg-code'">regulatory-code</xsl:when>
            <xsl:when test=".='reg'">regulatory-code</xsl:when>
            <xsl:when test=".='rul'">rule</xsl:when>
            <xsl:when test=".='release'">instrument</xsl:when>
            <xsl:when test=".='scale'">schedule</xsl:when>
            <xsl:when test=".='scalep'">paragraph</xsl:when>
            <xsl:when test=".='scales'">schedule</xsl:when>
            <xsl:when test=".='scalesp'">paragraph</xsl:when>
            <xsl:when test=".='schedulegrp'">schedule</xsl:when>
            <xsl:when test=".='subgroup'">subchapter</xsl:when>
            <xsl:when test=".='subpara'">subparagraph</xsl:when>
            <xsl:when test=".='subreg'">subregulation</xsl:when>
            <xsl:when test=".='subrul'">subrule</xsl:when>
            <xsl:when test=".='summary'">introduction</xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="."/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:attribute>  
   </xsl:template>
   

	<xsl:template match="@subdoc">

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

	<xsl:template match="leg:level-vrnt">

		<!--  Could not determine target element or attribute name:  <>  -->			
	   <xsl:apply-templates select="node() except(leg:levelinfo|heading|leg:heading)"/>

	</xsl:template>

   <xsl:template match="leg:comntry/levelinfo | leg:comntry/level/levelinfo">
      <xsl:apply-templates select="node()"/>
   </xsl:template>
   
   <!-- MDS 2017-07-27 - Not found in CI.  Exception error caught during test conversions.  It is handled by DT. -->
   <xsl:template match="leg:levelprelim">
      <admindoc:level leveltype="unclassified">
         <xsl:apply-templates select="node()"/>
      </admindoc:level>
   </xsl:template>
</xsl:stylesheet>