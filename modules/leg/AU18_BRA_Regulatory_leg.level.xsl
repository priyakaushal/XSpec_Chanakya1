<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
   xmlns:leg="http://www.lexis-nexis.com/glp/leg"
   xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0"
   exclude-result-prefixes="dita leg">

   <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
      <title>
         <sourcexml>leg:level</sourcexml> to <targetxml>admindoc:level</targetxml>
         <lnpid>id-AU18-21413</lnpid></title>
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
                        <targetxml>admindoc:level[@leveltype="clausegroup"]</targetxml>
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
                        <targetxml>admindoc:level[@leveltype="scope-note"]</targetxml>
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
                     <li>
                        <targetxml>admindoc:level[@leveltype="frontmatter"]</targetxml>
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
                     <li>If input <sourcexml>[@leveltype="intro"]</sourcexml> becomes
                           <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
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
                     <li>If input <sourcexml>[@leveltype="volfront"]</sourcexml> becomes
                           <targetxml>admindoc:level[@leveltype="frontmatter"]</targetxml>
                     </li>
                     <li>If input <sourcexml>[@leveltype="clausegrp"]</sourcexml> becomes
                           <targetxml>admindoc:level[@leveltype="clausegroup"]</targetxml>
                     </li>
                  </ul>
                  <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other
                     than the tokenized list shown above the value will be set as
                        <targetxml>@leveltype="unclassified"</targetxml>.</note>
                  <b>
                     <i>Example: Source XML 1</i></b>
                  <pre>
                
              
                  &lt;leg:level id="BRA_BC1_ATB.SGM_MISC.INS_2"&gt;
                  &lt;leg:level-vrnt leveltype="miscins" searchtype="LEGISLATION MISCINS"&gt;
                  ...
                  	&lt;/leg:level-vrnt&gt;
                  &lt;/leg:level&gt;
                  
                </pre>
                  <b><i>Example: Target XML 1</i></b>
                  <pre>

             
               &lt;admindoc:level xml:id="BRA_BC1_ATB.SGM_MISC.INS_2" leveltype="instrument"&gt;
            	....
               &lt;/admindoc:level&gt;
                 
               </pre>
                  <b><i>Example: Source XML 2</i></b>
                  <b>@leveltype="volfront"</b>
                  <pre>                  
               &lt;leg:level id="BRA_BC1_CL2TO9.SGM_BC.VOLFRONT_3"&gt;
                &lt;leg:level-vrnt leveltype="volfront" searchtype="LEGISLATION VOLFRONT" subdoc="false" toc-
                  caption="Volume One Class 2 to Class 9 Buildings"&gt;
                   &lt;leg:heading&gt;
                   &lt;desig&gt;&lt;designum&gt;Volume One&lt;/designum&gt;&lt;/desig&gt;
                   &lt;title&gt;Class 2 to Class 9 Buildings&lt;/title&gt;
                  &lt;/leg:heading&gt;
                  ...
              &lt;/leg:level&gt;
                         </pre>
                  <b><i>Example: Target XML 2</i></b>
                  <pre>
             
              
               &lt;admindoc:level xml:id="BRA.BC1.BCA96.PTA2.ACTAPP1" leveltype="frontmatter" alternatetoccaption="Volume One Class 2 to Class 9 Buildings" 
                includeintoc="false"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;Volume One&lt;/desig&gt;
                        &lt;title&gt;Class 2 to Class 9 Buildings&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/admindoc:level&gt;
               
    
               </pre>
                  <b><i>Example: Source XML 3</i></b>
                  <b>@leveltype="scope-note"</b>
                  <pre>                 
                &lt;leg:level id="BRA_BC1_SSDTOF.SGM_BC.BOX_31"&gt;
                   &lt;leg:level-vrnt leveltype="box" searchtype="LEGISLATION BOX" subdoc="true" toc-caption="Application:"&gt;
                       &lt;leg:heading&gt;
                          &lt;title&gt;Application:&lt;/title&gt;
                       &lt;/leg:heading&gt;
                           ...
                   &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;

                         </pre>
                  <b><i>Example: Target XML 3</i></b>
                  <pre>
              
               &lt;admindoc:level xml:id="BRA_BC1_SSDTOF.SGM_BC.BOX_31" leveltype="scope-note" alternatetoccaption="Application:" includeintoc="true"&gt;
                    &lt;heading&gt;
                      &lt;title&gt;Application:&lt;/title&gt;
                    &lt;/heading&gt;
                    ...
                &lt;/admindoc:level&gt;
               
    
           </pre>
                  <note>In NL Schema <targetxml>admindoc:level</targetxml> element is used instead
                     of Rosetta elements <sourcexml>leg:level</sourcexml> and
                        <sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute
                        <sourcexml>@leveltype</sourcexml> with value from
                        <sourcexml>leg:level-vrnt</sourcexml> element and
                        <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
                     conversion.</note></li>
            </ul>
         </section>
         <section>
            <title>Changes</title>
            <p>2013-03-22: <ph id="change_20130322_WLL">added a value to the leveltype list and an
                  example for leveltype="scope-note".</ph>
            </p>
            <p>2013-08-16: <ph id="change_20130816_WLL">added a value to the leveltype list and an
                  example for leveltype="clausegroup". See CR:DARG2013080809375900 for additional
                  details</ph>
            </p>
            <p>2013-09-30: <ph id="change_20130930_WLL">added a value to leveltype list for
                     <sourcexml>[@leveltype="intro"]</sourcexml><b>WebTeam # 238132</b></ph></p>
         </section>
      </body>
   </dita:topic>

   <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
   <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_leg.level.dita  -->
   <!--<xsl:message>AU18_BRA_Regulatory_leg.level.xsl requires manual development!</xsl:message>-->

   <xsl:template match="leg:level">
      
      <!--  Original Target XPath:  admindoc:level   -->
      <admindoc:level>
         <xsl:choose>
            <xsl:when test="./@id = descendant::refpt/@id"/>
            <xsl:otherwise>
               <xsl:apply-templates select="@id"/>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="@subdoc"/>
         <xsl:apply-templates select="@toc-caption"/>
         <xsl:apply-templates select="leg:level-vrnt/@*"/>
         <xsl:if test="not(leg:level-vrnt/@leveltype or @leveltype)">
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="heading/descendant::refpt | leg:level-vrnt/leg:heading/descendant::refpt"/>
        <!-- <xsl:if test=".[1][parent::leg:body] and not(preceding-sibling::leg:level)">-->
            <xsl:apply-templates select="preceding::leg:info/leg:status"/>
         <!--</xsl:if>-->
         <!--<xsl:apply-templates select="leg:level-vrnt/leg:heading//refpt | leg:heading//refpt"/>-->
         <xsl:apply-templates select="leg:level-vrnt/leg:levelinfo | leg:levelinfo"/>
         <xsl:apply-templates select="leg:level-vrnt/leg:heading|heading|leg:heading"/>
         <xsl:apply-templates select="node() except(leg:levelinfo|heading|leg:heading)"/>
      </admindoc:level>
      
   </xsl:template>
   <xsl:template match="@searchtype"/>
   
   <xsl:template match="leg:level/@leveltype|leg:level-vrnt/@leveltype">
      <xsl:attribute name="leveltype">
         <xsl:choose>
            <xsl:when test=".='agreement'">agreement</xsl:when>
            <xsl:when test=".='annexure'">annex</xsl:when>
            <xsl:when test=".='appendix'">jurisdiction-variant</xsl:when>
            <xsl:when test=".='attachment'">attachment</xsl:when>
            <xsl:when test=".='attachments'">attachment</xsl:when>
            <xsl:when test=".='bcapr'">unclassified</xsl:when>
            <xsl:when test=".='box'">unclassified</xsl:when>
            <xsl:when test=".='comm.intro'">annotation-group</xsl:when>
            <xsl:when test=".='convention'">treaty</xsl:when>
            <xsl:when test=".='clausegrp'">clausegroup</xsl:when>
            <xsl:when test=".='clause'">clause</xsl:when>
            <xsl:when test=".='division'">division</xsl:when>
            <xsl:when test=".='group'">subchapter</xsl:when>
            <xsl:when test=".='fig'">unclassified</xsl:when>
            <xsl:when test=".='intro'">introduction</xsl:when>
            <xsl:when test=".='leg-inst'">instrument</xsl:when>
            <xsl:when test=".='miscins'">instrument</xsl:when>
            <xsl:when test=".='proc-guide'">procedural-guide</xsl:when>
            <xsl:when test=".='reg-code'">regulatory-code</xsl:when>
            <xsl:when test=".='release'">instrument</xsl:when>
            <xsl:when test=".='spec'">unclassified</xsl:when>
            <xsl:when test=".='subclause'">subclause</xsl:when>
            <xsl:when test=".='subpara'">subparagraph</xsl:when>
            <xsl:when test=".='para0'">paragraph</xsl:when>
            <xsl:when test=".='part'">part</xsl:when>
            <xsl:when test=".='partgrp'">subparagraph</xsl:when>
            <xsl:when test=".='sect'">section</xsl:when>
            <xsl:when test=".='section'">section</xsl:when>
            <xsl:when test=".='scale'">schedule</xsl:when>
            <xsl:when test=".='scalep'">paragraph</xsl:when>
            <xsl:when test=".='scales'">schedule</xsl:when>
            <xsl:when test=".='scalesp'">paragraph</xsl:when>
            <xsl:when test=".='schedulegrp'">schedule</xsl:when>
            <xsl:when test=".='subgroup'">subchapter</xsl:when>
            <xsl:when test=".='summary'">introduction</xsl:when>
            <xsl:when test=".='volfront'">frontmatter</xsl:when>
            <xsl:when test=".='vol'">unclassified</xsl:when>
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
      <xsl:choose>
         <xsl:when test="parent::leg:level[ancestor::legfragment]">
               <xsl:apply-templates select="node()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates select="node() except (leg:levelinfo | heading | leg:heading)"/>
         </xsl:otherwise>
      </xsl:choose>
     
   </xsl:template>

</xsl:stylesheet>
