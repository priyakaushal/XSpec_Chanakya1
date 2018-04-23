<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp"
  version="2.0" exclude-result-prefixes="dita docinfo leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-to-LexisAdvance_annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry</sourcexml> to
      <targetxml>annot:annotations/annot:annotation-grp</targetxml> <lnpid>id-CCCC-10378</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>leg:comntry</sourcexml>
            <b>Becomes</b>
            <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes
            and child elements converted as: <ul>
              <li><sourcexml>@subdoc</sourcexml>
                <b>becomes</b>
                <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml>
                <b>becomes</b>
                <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>heading/@searchtype</sourcexml>
                <b>becomes</b>
                <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
                <note>For GPL IN Content Stream
                  <sourcexml>leg:comntry/@searchtype</sourcexml> becomes
                  <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
                </note>
              </li>
              <li><sourcexml>refpt</sourcexml>
                <b>becomes</b>
                <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Refer
                to the <xref href="Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref> section for
                more information.</li>
              <li><sourcexml>heading/edpnum</sourcexml>
                <b>becomes</b>
                <targetxml>heading/desig</targetxml></li>
              <li><sourcexml>heading/title</sourcexml>
                <b>becomes</b>
                <targetxml>heading/title</targetxml></li>
            </ul>
            <note>In the input Xpath, <sourcexml>leg:comntry</sourcexml> is allowed within
                <sourcexml>leg:bodytext</sourcexml>, but the target New Lexis Xpath allows
                <targetxml>annot:annotations</targetxml> to be a sibling to
                <targetxml>primlaw:bodytext</targetxml> and child element of
                <targetxml>primlaw:level</targetxml> i.e.
                <sourcexml>leg:bodytext/leg:comntry</sourcexml> becomes
                <targetxml>annot:annotations/annot:annotation-grp</targetxml>.</note>
          </li>
          <li> The conversion of <sourcexml>level</sourcexml> is determined by the value of
              <sourcexml>@leveltype</sourcexml> which also reflects the nesting structure.
              <note>Maintain source nesting.</note>
          </li>
          <li>If source document is having empty elements (i.e.
              <sourcexml>bodytext/p/text</sourcexml> and <sourcexml>hrule</sourcexml>) within
              <sourcexml>leg:comntry</sourcexml> then removed the empty markups from
              <sourcexml>leg:comntry</sourcexml> and <sourcexml>leg:comntry</sourcexml> should be
            mapped with <targetxml>annot:annotations</targetxml>. Please refer the below markups for
            understanding this scenario: </li>
        </ul>
      </p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:comntry subdoc="true" toc-caption="Notes"&gt;
  &lt;bodytext&gt;
    &lt;p&gt;&lt;text&gt; &lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text&gt; &lt;/text&gt;&lt;/p&gt;
    &lt;hrule/&gt;
  &lt;/bodytext&gt;
  &lt;level id="NZREGS_REGS-H.SGM_PARA-2009R165S1-COMPENDIUM" leveltype="para0"&gt;
    &lt;bodytext searchtype="COMMENTARY"&gt;
      ...
    &lt;/bodytext&gt;
  &lt;/level&gt;
 &lt;/leg:comntry&gt;

	</codeblock>
      <title>Target XML</title>
      <codeblock>

&lt;annot:annotations&gt;
  &lt;annot:annotation-grp includeintoc="true" alternatetoccaption="Notes"&gt;
    &lt;annot:annotation xml:id="NZREGS_REGS-H.SGM_PARA-2009R165S1-COMPENDIUM"&gt;
      &lt;bodytext&gt;
        ...
      &lt;/bodytext&gt;
    &lt;/annot:annotation&gt;
  &lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

	</codeblock>
    </example>
    <example>
      <p>For GPL IN Content Streams</p>
      <p><b>GPL IN LEG Source XML</b></p>
      <codeblock>
        
       &lt;leg:comntry searchtype="commentary"&gt;
             &lt;level leveltype="comm1"&gt;
                  &lt;bodytext&gt;
                    &lt;pgrp&gt;
                      &lt;heading searchtype="commentary"&gt;
                           &lt;title align="center"&gt;COMMENTS&lt;/title&gt;
                      &lt;/heading&gt;
                    .....
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
            &lt;/level&gt;
        &lt;/leg:comntry&gt;
        
      </codeblock>
      <p><b>GPL IN LEG Target XML</b></p>
      <codeblock>
 
&lt;annot:annotations&gt;
  &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
    &lt;annot:annotation&gt;
       &lt;bodytext&gt;
          &lt;pgrp&gt;
            &lt;heading&gt;
              &lt;title align="center"&gt;COMMENTS&lt;/title&gt;
            &lt;/heading&gt;
          ....
          &lt;/pgrp&gt;
      &lt;/bodytext&gt;
    &lt;/annot:annotation&gt;
  &lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;
        
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2012-11-20: Added the instruction and example for handling the empty markups (i.e.
          <sourcexml>bodytext/p/text</sourcexml> and <sourcexml>hrule</sourcexml>) within
          <sourcexml>leg:comntry</sourcexml>.</p>
       <p>2013-05-15 <ph id="change_20130515_wl">Fixed typo: (extra semicolon in xpath
       expression)</ph>
       </p>
      <p>2014-03-21: <ph id="change_20140321_SSX"> Added instruction to handle <sourcexml>leg:comntry/@searchtype</sourcexml> For GPL IN Content Streams</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-LxAdv-annot.annotations-annot.annotation-grp.dita  -->

 <xsl:template match="leg:comntry" name="leg-comntry-generic">
		<annot:annotations>
		 <!-- based on the examples for comm.intro and group children, outputting the annotation group only in certain conditions 
		 but what are they? -->
		  <xsl:choose>
		    <xsl:when test="child::*[not(self::level[@leveltype=('comm.intro' , 'group')])]">
		      <annot:annotation-grp>
		        <xsl:choose>
		          <!-- 20170601:  MCJ:  Added 'AU06' to list. -->
		          <xsl:when test="$streamID = ('AU04', 'AU05', 'AU06', 'AU08', 'NZ05','NZ06' , 'NZ12', 'NZ10', 'AU18')">		            
		            <xsl:apply-templates select="@*"/>
		            <xsl:if test="heading/@searchtype[.='COMMENTARY'] or level/heading[@searchtype='COMMENTARY'] or (starts-with($streamID, 'IN') and @searchtype[.='COMMENTARY'])">
		              <xsl:attribute name="grptype" select="'COMMENTARY'"/>
		            </xsl:if>		              		    
		            <xsl:apply-templates select="refpt | heading//refpt | bodytext/refpt"/>
		            <xsl:apply-templates select="heading"/>
		          	<!-- JD: 2017-08-07: Adding for-each here to preserve ordering (don't just test that there is any child named bodytext, loop through each child and test self::); don't include levelinfo only having currency-statement (maps to doc:docinfo/currencystatement) -->
		          	<xsl:for-each select="* except (refpt,heading,levelinfo[docinfo:currencystatement and count(*)=1])">
			            <xsl:choose>
			              <xsl:when test="self::bodytext">
			                <!-- 20170728:  MCJ:
			                    An annotation wrapper should only be created if the bodytext transformation has results.  There are other instructions that suppress paragraphs and other
			                    constructs when they are effectively empty (whitespace, tabs, etc.).  We attempted to do this by applying the regex of '[\t\s\p{Z}]+' to the string value
			                    of the bodytext child (not an exact comparison of what apply-templates against the bodytext) but a possible encoding problem is causing the character count
			                    to always be off.  As an alternative, the results of transforming bodytext are stored in a variable which is then evaluated.  For future reference, the
			                    regex that was originally attempted is here within the comment.
	
			                        <xsl:variable name="bodytextString"><xsl:value-of select="bodytext" /></xsl:variable>
			                        <xsl:variable name="replacedBodytextString" select="replace($bodytextString, '[\t\s\p{Z}]+', '')" />
			                --> 
			                <xsl:variable name="bodytextResult">
			                  <xsl:apply-templates select="." /><!-- JD: 2017-08-07: changed from 'bodytext' to '.' since for-each loop has changed context node -->
			                </xsl:variable>
			                <!-- MCJ:  Test both the result as a string and also that it doesn't have child nodes... both suggest that the transform of bodytext has a result that should be
			                           wrapped in an annotation.  Without this test, empty occurrences of annot:annotation are created. -->
			                <xsl:if test="normalize-space($bodytextResult) != '' or $bodytextResult/*">
			                  <annot:annotation>
			                    <xsl:apply-templates select="." />
			                  </annot:annotation>
			                </xsl:if>
			              	<!-- JD: 2017-08-07: removing this; after for-each causing duplicates -->
			                <!--<xsl:apply-templates select="node() except (refpt | heading | bodytext)"/>-->
			              </xsl:when>
			            	<!-- JD: 2017-08-08: when self is create <annot:annotation-grp> -->
			            	<xsl:when test="self::level[@leveltype=('comm.intro' , 'group')]">
		            			<xsl:apply-templates select="."/>
			            	</xsl:when>
			              <!-- <xsl:when test="bodytext[string-length(replace(., '[\t\s\p{Z}]+', '')) != 0]">
			                <xsl:variable name="bodytextString">
			                  <xsl:value-of select="bodytext" />
			                </xsl:variable>
			                <blah>Text of bodytext is :<xsl:value-of select="replace($bodytextString, '[\t\s\p{Z}]+', '')" />:</blah>
	                    <annot:annotation>
	                      <xsl:apply-templates select="bodytext" />
	                    </annot:annotation>
			                <xsl:apply-templates select="node() except (refpt | heading | bodytext)"/>
			              </xsl:when> -->
			              <xsl:otherwise>
			              	<annot:annotation>
			              		<!--<xsl:apply-templates select="@* | node() except (levelinfo[docinfo:currencystatement and count(*)=1])"/>-->
												<xsl:apply-templates select="@*"/>
			              		<xsl:apply-templates select="refpt | heading//refpt | bodytext/refpt"/>
			              	  <!-- JL from bodytext template, we are outputting level/glp:note in bodytext except for UK15, UK06 and 
			              	    other xpaths that don't apply here -->
			              	  <xsl:choose>
			              	    <xsl:when test="$streamID= ('UK15' , 'UK06')">
			              	      <xsl:apply-templates select="node() except (refpt,levelinfo[docinfo:currencystatement and count(*)=1])"/>
			              	    </xsl:when>
			              	    <xsl:otherwise>
			              	      <xsl:apply-templates select="node() except (refpt,glp:note,levelinfo[docinfo:currencystatement and count(*)=1])"/>
			              	    </xsl:otherwise>
			              	  </xsl:choose>			              	                	
			              	</annot:annotation>			              	
			              </xsl:otherwise>
			            </xsl:choose>		         
		          	</xsl:for-each>
		          </xsl:when>
		          <xsl:otherwise>
		            <xsl:apply-templates select="@*"/>
		            <xsl:if test="heading/@searchtype[.='COMMENTARY'] or level/heading[@searchtype='COMMENTARY'] or (starts-with($streamID, 'IN') and @searchtype[.='COMMENTARY'])">
		              <xsl:attribute name="grptype" select="'COMMENTARY'"/>
		            </xsl:if>			    
		            <xsl:apply-templates select="refpt | heading//refpt | bodytext/refpt"/>
		            <xsl:apply-templates select="node() except refpt"/>
		          </xsl:otherwise>
		        </xsl:choose>
		      </annot:annotation-grp>	
		    </xsl:when>
		    <xsl:otherwise>
		      <xsl:apply-templates select="node() except refpt"/>
		    </xsl:otherwise>
		  </xsl:choose>			
		</annot:annotations>
	</xsl:template>
  <!-- 
         Date: March 22, 2018 - Modified by Ravikant Sibgh for W*: 7144391.
         Created new template for suppressed the empty element <leg:comntry subdoc="true" toc-caption="Commentary"/>. 
         Because output file is not validated with the target schema due to incomplete <annot:annotations/>.
  -->
  <xsl:template match="leg:comntry[not(child::node() or child::text())]"/>
  <!-- these are common attributes for all generic "level" elements as well as leg:comntry, so we might as well handle once and done -->

	<xsl:template match="leg:comntry/@subdoc | level[ancestor::leg:comntry]/@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

  <xsl:template match="leg:comntry/@toc-caption | level[ancestor::leg:comntry]/@toc-caption">
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

  <xsl:template match="leg:comntry/@includeintoc | level[ancestor::leg:comntry]/@includeintoc">
	  <xsl:attribute name="toc-caption">
	    <xsl:value-of select="."/>
	  </xsl:attribute>
	</xsl:template>

	
<xsl:template match="leg:comntry/bodytext/p[normalize-space(string-join(text , ''))=''][not(child::*[not(self::text[normalize-space(string-join(. , ''))=''])])]"/>

<xsl:template match="leg:comntry//hrule"/>
  
  <!-- per updated CIs if we come across leveltypes we don't recognize, right now we just output them same as para0/subpara0  -->
 
  <xsl:template match="level[ancestor::level[parent::leg:comntry]][not(@leveltype=('para0', 'subpara0' , 'comm.intro' , 'group'))]">
    <annot:annotationlevel>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="refpt | heading/descendant::refpt | bodytext/refpt"/>
      <xsl:apply-templates select="heading"/>
      <xsl:if test="child::*[not(self::refpt or self::heading)]">
        <annot:bodytext>
          <xsl:apply-templates select="node() except (heading | refpt)"/>
        </annot:bodytext>
      </xsl:if>
    </annot:annotationlevel>	 
  </xsl:template>	
  
  <xsl:template match="level[ancestor::level[parent::leg:comntry]][not(@leveltype=('para0', 'subpara0' , 'comm.intro' , 'group'))]/bodytext">
      <xsl:apply-templates select="@* | node() except refpt"/>
  </xsl:template>


  <xsl:template match="level[parent::leg:comntry][not(@leveltype=('para0', 'subpara0' , 'comm.intro' , 'group'))]">
  <annot:annotation>
    <xsl:apply-templates select="@*"/>
    <xsl:apply-templates select="refpt | heading/descendant::refpt | bodytext/refpt"/>
    <xsl:apply-templates select="node() except refpt"/>
  </annot:annotation>
 </xsl:template>	

<!-- JL  to handle nested leg:comntry in all sorts of ridiculousness found as far as I know only in HK01.
  This is really kludgy, there is no way around kludgy with this stuff. We do simliar things for legfragments
  -->
  
  <xsl:template match="leg:comntry[parent::bodytext[ancestor::leg:comntry]]" priority="25">
    <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <primlaw:level leveltype="unclassified">
        <xsl:call-template name="leg-comntry-generic"/>
      </primlaw:level>
    </blockquote>
  </xsl:template>
  
  
</xsl:stylesheet>
