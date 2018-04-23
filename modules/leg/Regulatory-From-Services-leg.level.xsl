<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-From-Services-leg.level">
   <title>leg:level <lnpid>id-NZ12-24816</lnpid></title>
   <body>
      <section>
         <ul>
            <li><sourcexml>leg:level</sourcexml> <b>Becomes</b> <targetxml>admindoc:level</targetxml> comes with below attribute:
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
          		   <li><sourcexml>[@leveltype="attachment"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="attachments"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="convention"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="treaty"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="group"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="leg-inst"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="miscins"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="schedulegrp"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="subgroup"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml></li>
          		   <li><sourcexml>[@leveltype="summary"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="introduction"]</targetxml></li>
          		   <li><sourcexml>[leveltype="clause"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="clause"]</targetxml></li>
          		   <li><sourcexml>[leveltype="subclause"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subclause"]</targetxml></li>
          		   <li><sourcexml>[leveltype="schedule"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml></li>
          		   <li><sourcexml>[leveltype="part"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="part"]</targetxml></li>
          		   <li><sourcexml>[leveltype="article"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="article"]</targetxml></li>
          		   <li><sourcexml>[leveltype="chapter"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="chapter"]</targetxml></li>
          		   <li><sourcexml>[leveltype="regulation"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="regulation"]</targetxml></li>
          		   <li><sourcexml>[leveltype="reg"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="regulation"]</targetxml></li>
          		   <li><sourcexml>[leveltype="subreg"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subregulation"]</targetxml></li>
          		   <li><sourcexml>[leveltype="forms"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="form"]</targetxml></li>
          		   <li><sourcexml>[leveltype="form"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="form"]</targetxml></li>
          		   <li><sourcexml>[leveltype="subsect"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subsection"]</targetxml></li>
          		   <li><sourcexml>[leveltype="division"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="division"]</targetxml></li>
          		   <li><sourcexml>[leveltype="subdivision"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subdivision"]</targetxml></li>
          		   <li><sourcexml>[leveltype="rul"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="rule"]</targetxml></li>
          		   <li><sourcexml>[leveltype="subrul"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subrule"]</targetxml></li>
          		   <li><sourcexml>[leveltype="sect"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="section"]</targetxml></li>
          		   <li><sourcexml>[leveltype="para0"</sourcexml> becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml></li>
          		</ul>
                <p><sourcexml>leg:prelim</sourcexml> should become <targetxml>admindoc:level[@leveltype='unclassified"]/admindoc:prelim</targetxml>.</p>
          	<note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown above the value will be set as <targetxml>@leveltype="unclassified"</targetxml>.</note>
               Examples are populated as below:
               <pre>
                  <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="2005A210.BODY"&gt;
 &lt;leg:level-vrnt leveltype="regulation" searchtype="LEGISLATION REGULATION"&gt;
  ....
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

               </pre>
               <pre>
                  <b><i>Example: Target XML 1</i></b>

&lt;admindoc:level xml:id="nz_2005A210.BODY" leveltype="regulation"&gt;
 ....
&lt;/admindoc:level&gt;

               </pre>
               <pre>
                  <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="2005A210S1"&gt;
 &lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 1 Title"&gt;
	....
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

               </pre>
               <pre>
                  <b><i>Example: Target XML 2</i></b>
                  
&lt;admindoc:level xml:id="nz_2005A210S1" alternatetoccaption="reg 1 Title" includeintoc="true" leveltype="regulation"&gt;
	....
&lt;/admindoc:level&gt;

               </pre>
               <note>In NL Schema <targetxml>admindoc:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute <sourcexml>@leveltype</sourcexml> with value from <sourcexml>leg:level-vrnt</sourcexml> element and <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
            </li>
            <li>
                <p>When target conversion are having <targetxml>@leveltype="clause"</targetxml>, <targetxml>@leveltype="section"</targetxml> or <targetxml>@leveltype="regulation"</targetxml> then within that <targetxml>primlaw:level</targetxml>, attribute <targetxml>@inline</targetxml> (value of <b>true</b> or <b>false</b>) is removed at the following locations (below listed elements). Removal of <targetxml>@inline</targetxml> attribute will not propagate to child <targetxml>primlaw:level</targetxml>. Please refer the below snippet for your reference.</p>
               <ul>
                  <li><targetxml>heading</targetxml></li>
                  <li><targetxml>heading/desig</targetxml></li>
                  <li><targetxml>heading/altdesig</targetxml></li>
                  <li><targetxml>heading/title</targetxml></li>
                  <li><targetxml>heading/alttitle</targetxml></li>
                  <li><targetxml>alt-heading</targetxml></li>
                  <li><targetxml>alt-heading/desig</targetxml></li>
                  <li><targetxml>alt-heading/title</targetxml></li>
                  <li><targetxml>alt-heading/alttitle</targetxml></li>
               </ul>
                <note>There are some cases where the source value of <sourcexml>@leveltype</sourcexml> does not exactly match the target value of <targetxml>@leveltype</targetxml> then refer the below shown table:
                    <table id="table_mew_znv_km">
                        <tgroup cols="2">
                            <colspec colnum="1" colname="col1"/>
                            <colspec colnum="2" colname="col2"/>
                            <thead>
                                <row>
                                    <entry>leg:level/@leveltype </entry>
                                    <entry>primlaw:level/@leveltype </entry>
                                </row>
                            </thead>
                            <tbody>
                                <row>
                                    <entry>sect</entry>
                                    <entry>section</entry>
                                </row>
                                <row>
                                    <entry>conv.sect</entry>
                                    <entry>section</entry>
                                </row>
                                <row>
                                    <entry>reg</entry>
                                    <entry>regulation</entry>
                                </row>
                            </tbody>
                        </tgroup>
                    </table>
                </note>
                <pre>
                  <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="JPC0012005S1"&gt;
    &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE"
        subdoc="true" toc-caption="cl 1 Title"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;title searchtype="CLAUSE-TITLE"&gt;&lt;refpt id="JPC0012005S1" type="ext"
            /&gt;Title&lt;/title&gt;
            &lt;desig searchtype="CLAUSE-NUM"&gt;
                &lt;designum&gt;1&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This amendment may be referred to as the Justice
                        Sector Unique Identifier Code 1998 Amendment No
                        1.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
&lt;leg:level id="JPC0012005S2"&gt;
    &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE"
        subdoc="true" toc-caption="cl 2 Commencement"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;title searchtype="CLAUSE-TITLE"&gt;&lt;refpt id="JPC0012005S2" type="ext"
            /&gt;Commencement&lt;/title&gt;
            &lt;desig searchtype="CLAUSE-NUM"&gt;
                &lt;designum&gt;2&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;This amendment will come into force on 2 March
                        2006.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


               </pre>
                  <pre>
                  <b><i>Example: Target XML 1</i></b>
                  
&lt;admindoc:level alternatetoccaption="cl 1 Title" includeintoc="true" leveltype="clause"&gt;
    &lt;ref:anchor anchortype="global" id="JPC0012005S1"/&gt;
    &lt;heading&gt;
        &lt;title&gt;Title&lt;/title&gt;
        &lt;desig&gt;1&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;admindoc:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                This amendment may be referred to as the Justice Sector Unique Identifier Code 1998 Amendment No 1.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/admindoc:bodytext&gt;
&lt;/admindoc:level&gt;
&lt;admindoc:level alternatetoccaption="cl 2 Commencement" includeintoc="true" leveltype="clause"&gt;
    &lt;ref:anchor anchortype="global" id="JPC0012005S2"/&gt;
    &lt;heading&gt;
        &lt;title&gt;Commencement&lt;/title&gt;
        &lt;desig&gt;2&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;admindoc:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                This amendment will come into force on 2 March 2006.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/admindoc:bodytext&gt;
&lt;/admindoc:level&gt;

                  </pre>
            </li>
         </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2014-02-21: <ph id="change_20140221_AB">Updated the instruction for suppressing the <targetxml>@inline</targetxml> attribute when target conversion are having <targetxml>@leveltype="clause"</targetxml>, <targetxml>@leveltype="section"</targetxml> or <targetxml>@leveltype="regulation"</targetxml>. R4.5 Content issue #1066</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ12_Regulatory_Material_From_Services\Regulatory-From-Services-leg.level.dita  -->
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
		<xsl:variable name="adminLevelTypes" select="('act' , 'addendum' , 'amendment' , 'annex' , 'appendix' , 'article' , 'attachment' , 'canon' , 'chapter' , 'clause' , 'companion' , 'constitution' , 'dictionary' , 'division' , 'endnote' , 'exhibit' , 'form' , 'hierarchy-note' , 'instrument' , 'introduction' , 'order' , 'paragraph' , 'part' , 'preamble' , 'regulation' , 'rule' , 'schedule' , 'section' , 'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subregulation' , 'subschedule' , 'subrule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' , 'treaty' , 'agency' , 'subagency' , 'unclassified')"></xsl:variable>
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test=".=$adminLevelTypes">
					<xsl:value-of select="."/>
				</xsl:when>				
				<xsl:when test=".='attachment'">attachment</xsl:when>
				<xsl:when test=".='attachments'">attachment</xsl:when>
				<xsl:when test=".='convention'">treaty</xsl:when>
				<xsl:when test=".='group'">chapter</xsl:when>
				<xsl:when test=".='leg-inst'">instrument</xsl:when>
				<xsl:when test=".='miscins'">instrument</xsl:when>
				<xsl:when test=".='schedulegrp'">schedule</xsl:when>
				<xsl:when test=".='subgroup'">subchapter</xsl:when>
				<xsl:when test=".='summary'">introduction</xsl:when>
				<xsl:when test=".='clause'">clause</xsl:when>
				<xsl:when test=".='subclause'">subclause</xsl:when>
				<xsl:when test=".='schedule'">schedule</xsl:when>
			    <xsl:when test=".='scales'">schedule</xsl:when>
			    <xsl:when test=".='scale'">schedule</xsl:when>
				<xsl:when test=".='part'">part</xsl:when>
				<xsl:when test=".='article'">article</xsl:when>
				<xsl:when test=".='chapter'">chapter</xsl:when>
				<xsl:when test=".='regulation'">regulation</xsl:when>
				<xsl:when test=".='reg'">regulation</xsl:when>
				<xsl:when test=".='subreg'">subregulation</xsl:when>
				<xsl:when test=".='forms'">form</xsl:when>
				<xsl:when test=".='form'">form</xsl:when>
				<xsl:when test=".='subsect'">subsection</xsl:when>
				<xsl:when test=".='division'">division</xsl:when>
				<xsl:when test=".='subdivision'">subdivision</xsl:when>
				<xsl:when test=".='rul'">rule</xsl:when>
				<xsl:when test=".='subrul'">subrule</xsl:when>
				<xsl:when test=".='sect'">section</xsl:when>
				<xsl:when test=".='conv.sect'">section</xsl:when>
				<xsl:when test=".='para0'">paragraph</xsl:when>				
				<xsl:otherwise>unclassified</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>		
	</xsl:template>
	
	
	
	
	<xsl:template match="leg:level-vrnt">
		<xsl:apply-templates select="leg:heading/(refpt | desig/designum/refpt | title/refpt | edpnum/refpt) | leg:levelinfo/leg:levelstatus/refpt"/>
		<xsl:apply-templates select="leg:levelinfo"/>
		<xsl:apply-templates select="leg:heading"/>
	    <xsl:apply-templates select="leg:heading/leg:empleg | leg:heading/leg:histnote | leg:heading/glp:note"/>
		<xsl:apply-templates select="node() except(leg:heading | leg:levelinfo)"/>
	</xsl:template>
	
	<xsl:template match="leg:level-vrnt/@searchtype | leg:heading/@searchtype | leg:level/@searchtype"/>
	
	<xsl:template match="leg:prelim">
	    <admindoc:level leveltype="unclassified">
	        <admindoc:prelim>
	            <xsl:apply-templates select="@* | node()"/>
	        </admindoc:prelim>
	    </admindoc:level>
	</xsl:template>
	
	<xsl:template match="leg:levelprelim">
	    <admindoc:level leveltype="unclassified">
	         <xsl:apply-templates select="@*"/>
	        <xsl:for-each-group select="*" group-adjacent="if (self::leg:heading or self::heading or self::leg:history
	           or self::leg:prelim or self::leg:empleg or self::leg:comntry or self::leg:level) then 0 else 1">
	            <xsl:choose>
	                <xsl:when test="current-grouping-key()=0">
	                    <xsl:apply-templates select="current-group()"/>
	                </xsl:when>
	                <xsl:otherwise>
	                    <admindoc:bodytext>
	                        <xsl:apply-templates select="current-group()"/>
	                    </admindoc:bodytext>
	                </xsl:otherwise>
	            </xsl:choose>
	        </xsl:for-each-group>
	    </admindoc:level>
	</xsl:template>
    
    <xsl:template match="leg:history[parent::leg:prelim or parent::leg:levelprelim]">
       <admindoc:histgrp>
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="refpt | leg:heading//refpt"/>
           <xsl:apply-templates select="leg:heading"/>
           <xsl:if test="*[not(self::leg:heading or self::refpt or self::leg:tableofamend)]">
               <admindoc:histitem>
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                     <xsl:apply-templates select="* except (leg:heading | refpt | leg:tableofamend)"/>
                 </bodytext>
               </admindoc:histitem>
           </xsl:if>           
       </admindoc:histgrp>
        <xsl:apply-templates select="leg:tableofamend"/>
    </xsl:template>
    
    <xsl:template match="leg:tableofamend">
        <admindoc:histgrp grptype="tableofamend">
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="refpt | leg:heading//refpt | heading//refpt"/>
            <xsl:apply-templates select="leg:heading | heading"/>
            <xsl:if test="*[not(self::heading or self::leg:heading or self::refpt)]">
                <admindoc:histitem>
                    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                        <xsl:apply-templates select="* except (heading | leg:heading | refpt )"/>
                    </bodytext>
                </admindoc:histitem>
            </xsl:if>
        </admindoc:histgrp>       
    </xsl:template>
    
</xsl:stylesheet>