<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita glp case leg dig caseinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note-to-LexisAdvance_note">
    <title><sourcexml>glp:note</sourcexml> to <targetxml>note</targetxml> <lnpid>id-CCCC-10340</lnpid></title>
    <body>
        <section>
            <p><sourcexml>glp:note</sourcexml> becomes <targetxml>note</targetxml> and attribute <sourcexml>@notetype</sourcexml> becomes <targetxml>notetype</targetxml>. The children of <sourcexml>glp:note</sourcexml> are handled as
                follows: <ul>
                    <li><sourcexml>glp:note/heading</sourcexml> becomes <targetxml>note/heading</targetxml>.</li>
                    <li><sourcexml>glp:note/refpt</sourcexml> becomes <targetxml>note/ref:anchor</targetxml>.</li>
                    <li><p>Other children of <sourcexml>glp:note</sourcexml> should map to children of <targetxml>note/bodytext</targetxml>.</p>
                        <p>Ex.</p>
                        <ul>
                            <li><sourcexml>glp:note/p</sourcexml> becomes <targetxml>note/bodytext/p</targetxml>.</li>
                            <li><sourcexml>glp:note/pgrp</sourcexml> becomes <targetxml>note/bodytext/pgrp</targetxml>.</li>
                            <li><sourcexml>glp:note/table</sourcexml> becomes <targetxml>note/bodytext/table</targetxml>.</li>
                            <li><sourcexml>glp:note/h</sourcexml> becomes <targetxml>note/bodytext/h</targetxml>.</li>
                            <li><sourcexml>glp:note/blockquote</sourcexml> becomes <targetxml>note/bodytext/blockquote</targetxml>.</li>
                            <li><sourcexml>glp:note/page</sourcexml> becomes <targetxml>note/bodytext/ref:page</targetxml>.</li>                  
                            <li/>
                        </ul></li>
                    <li><sourcexml/></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;glp:note&gt;
	&lt;refpt id="257_ALR_1_1" type="ext"/&gt;
&lt;/glp:note&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;note&gt;
	&lt;ref:anchor id="au_257_ALR_1_1" anchortype="global"/&gt;
&lt;/note&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;glp:note notetype="warning"&gt;
&lt;p&gt;&lt;text&gt;Editor's Note: This document contains the full text of sections 1 to 70 and the Schedule. The Appendices to the Act are found in a separate document. Please conduct a cite search for "S.B.C. 1999, c. 2" to obtain all relevant documents.Acts Affected: Adoption Act, R.S.B.C. 1996, c. 5; Child, Family and Community Service Act, R.S.B.C. 1996, c. 46; Environmental Assessment Act, R.S.B.C. 1996, c. 119; Estate Administration Act, R.S.B.C. 1996, c. 122;...&lt;/text&gt;&lt;/p&gt;
&lt;/glp:note&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;note notetype="warning"&gt;
&lt;bodytext&gt;
&lt;p&gt;&lt;text&gt;Editor's Note: This document contains the full text of sections 1 to 70 and the Schedule. The Appendices to the Act are found in a separate document. Please conduct a cite search for "S.B.C. 1999, c. 2" to obtain all relevant documents.Acts Affected: Adoption Act, R.S.B.C. 1996, c. 5; Child, Family and Community Service Act, R.S.B.C. 1996, c. 46; Environmental Assessment Act, R.S.B.C. 1996, c. 119; Estate Administration Act, R.S.B.C. 1996, c. 122;...&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;
&lt;/note&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2012-11-30: Added instruction for attribute handling of <sourcexml>glp:note</sourcexml>.</p>
        </section>
	<!-- SEP 2015-8-6 added -->
  <!--  <xsltinclusion>
      <xsl:stylesheet version="2.0">
        <xsl:template match="glp:note">
			<xsl:element name="note">
				<xsl:apply-templates select="@*"/>
				<xsl:apply-templates select="heading"/>
				<xsl:element name="bodytext">
					<xsl:apply-templates select="*[not(heading)]"/>
				</xsl:element>
			</xsl:element>
			<xsl:apply-templates/>
        </xsl:template>
      </xsl:stylesheet>
    </xsltinclusion>	-->	
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-LxAdv-note.dita  -->

				<!-- JD: 2017-08-08: Note that this also processes 'leg:histnote' via template name, called from this module; this was done to match DT output, which groups both under a <notes> wrapper -->
        <xsl:template match="glp:note" name="glp-note-generic">
            <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            	<xsl:if test="self::leg:histnote">
            		<xsl:attribute name="notetype" select="'historical'"/>
            	</xsl:if>
            	<xsl:if test="$streamID='AU18' and child::heading/desig/designum/refpt">
            		<xsl:attribute name="notetype" select="'jurisdiction-variant'"/>
            		
            	</xsl:if>
            	<xsl:choose>
            		<xsl:when test="$streamID='AU18' and ./@id = descendant::refpt/@id"/>
            		<xsl:otherwise>
            			<xsl:apply-templates select="@id"/>
            		</xsl:otherwise>
            	</xsl:choose>
				<xsl:apply-templates select="@* except @id"/>
                <!-- from 
                DITA/ConversionInstructions/Rosetta/common_newest/Rosetta_leg.comntry-level_LEVELTYPE_GROUP-LxAdv-annot.annotations-annot.annotation-grp.dita
            and other annotation CIs-->
                <xsl:if test="not(@notetype) and ancestor::level[ancestor::leg:comntry] and not(descendant::inlineobject | following-sibling::inlineobject)">
                    <xsl:attribute name="notetype" select="'xref'"/>
                </xsl:if>
            	<xsl:apply-templates select="refpt | heading/descendant::refpt"/>
                <xsl:apply-templates select="heading"/>
                <!-- SS: template added for handling heading and h under caseinfo for NZ03 cases-->
                <xsl:if test="preceding-sibling::heading[parent::caseinfo][$streamID='NZ03']">
                    <xsl:apply-templates select="preceding-sibling::heading[parent::caseinfo]"/>
                    <xsl:apply-templates select="preceding-sibling::h[parent::caseinfo]"/>
                </xsl:if>
            	<xsl:if test="child::*[not(self::heading)][not(self::refpt)]">
				    <bodytext>
				        <!-- Awantika: if remotelink is the child of glp:note then p/text is required.
				        	WPK 2018-03-16: added clause for NZ05 where there is child inlineobject only (or first child).  webstar 7141513 
				        -->
				       <xsl:choose>
				           <xsl:when test="child::remotelink 
				           					or not(child::p/child::table or child::p/child::text) and $streamID=('HK03, NZ03')
				           					or (*[1][self::inlineobject] and $streamID='NZ05')">
				               <p>
				                   <text>
				                       <xsl:apply-templates select="child::* except (heading | refpt)"/>
				                   </text>
				               </p>
				           </xsl:when>
				           <!--Satbir: Added condition for handling "glp:note/p/table"-->
				           <xsl:when test="child::p/child::table or child::p/child::text and $streamID='NZ03'">
				               
				                       <xsl:apply-templates select="child::* except (heading | refpt)"/> 
				               
				           </xsl:when>
				           <xsl:otherwise>
				               <xsl:apply-templates select="child::* except (heading | refpt)"/>
				           </xsl:otherwise>
				       </xsl:choose>
				    </bodytext>
				</xsl:if>
			</note>
        </xsl:template>
    
    <xsl:template match="glp:note/@notetype">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Updated for the streamID CA01 -->
    <xsl:template match="glp:note[parent::lilabel][$streamID=('CA01','CA04')]">
        <xsl:value-of select="."/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Updated for the streamID CA14    -->
    <xsl:template match="glp:note[parent::dig:info[parent::dig:collection]][$streamID='CA14']">
        <xsl:text disable-output-escaping="yes">&lt;!--</xsl:text>
        <xsl:copy-of select="." copy-namespaces="no"/>
        <xsl:text disable-output-escaping="yes">--&gt;</xsl:text>
    </xsl:template>

 <xsl:template match="glp:note[parent::case:headnote][$streamID='NZ04']">
        <caseinfo:caseinfo xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/">
            <note>
                <bodytext>
                <xsl:apply-templates/>
                </bodytext>
            </note>
        </caseinfo:caseinfo>
    </xsl:template>
    
    <!-- paul: this is a template that merges sibling glp:notes into <notes> wrapper.  add your stream id if you want to use it rather than the generic above 
    		JD: Note that in order to merge this must NOT be called from a for-each; see below template
    		JD: 2017-08-10: added 'leg:histnote' as well, as (at least in NZ06) these are grouped under the same <notes> wrapper.
    -->
	<xsl:template match="glp:note[$streamID=('AU10','NZ06','NZ13','NZ18')] | leg:histnote[$streamID=('AU10','NZ06','NZ13','NZ18')]" name="glp-note-mergesiblings" priority="2">
        <xsl:choose>
            <xsl:when test=".=''"/>
            <xsl:when test="parent::level or parent::heading/parent::level">
                <!-- these get mapped to prelim, which can't contain notes plural wrapper -->
                <xsl:call-template name="glp-note-generic"/>
            </xsl:when>
        	<!-- when this is the first note and there are following sibling notes to be included in it, create wrapper  -->
        	<xsl:when test="not(preceding-sibling::*[1][self::glp:note or self::leg:histnote]) and (following-sibling::glp:note or following-sibling::leg:histnote)">
                <notes xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                	<xsl:call-template name="glp-note-generic"/>
                	<!-- JD: replacing this for-each to (a) include leg:histnote and (b) limit to immediate siblings -->
                	<!--<xsl:for-each select="following-sibling::*[name()='glp:note']/preceding-sibling::glp:note">-->
                	<xsl:for-each select="following-sibling::glp:note[preceding-sibling::*[1][name()=('glp:note','leg:histnote')]]
                		| following-sibling::leg:histnote[preceding-sibling::*[1][name()=('glp:note','leg:histnote')]]">
                		<xsl:call-template name="glp-note-generic"/>
                	</xsl:for-each>
                </notes>
            </xsl:when>
        	<!-- when the immediate preceding sibling is a glp:note it will have been grouped above, do nothing -->
        	<xsl:when test="preceding-sibling::*[1][self::glp:note or self::leg:histnote]"/>
        	<!-- otherwise, process in generic fashion -->
            <xsl:otherwise>
                <xsl:call-template name="glp-note-generic"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
	
	
	<!-- JD: 2017-08-08: new template to group multiple contiguous <glp:note> and <leg:histnote> under <notes> 
		   when called from a for-each-group (e.g., under <leg:bodytext> created from template priority="30" in /modules/nonamespace/Rosetta_endnote-LxAdv-endnote.xsl)
	-->
	<xsl:template match="glp:note[$streamID=('NZ06','NZ13') and parent::leg:bodytext
		and not(preceding-sibling::*[1][name()=('glp:note','leg:histnote')])] 
		| leg:histnote[$streamID=('NZ06','NZ13') and parent::leg:bodytext
		and not(preceding-sibling::*[1][name()=('glp:note','leg:histnote')])] 
		" 
		name="glp-note-mergesiblings-from-loop" priority="3">
		<xsl:choose>
			<xsl:when test=".=''"/><!-- if no content do nothing -->
			<xsl:when test="parent::level or parent::heading/parent::level">
				<!-- these get mapped to prelim, which can't contain notes plural wrapper -->
				<xsl:call-template name="glp-note-generic"/>
			</xsl:when>
			<!-- when this is the first note and there are following sibling notes to be included in it, create wrapper  -->
			<xsl:when test="not(preceding-sibling::*[1][self::glp:note or self::leg:histnote])
				and (following-sibling::*[1][name()=('glp:note','leg:histnote')])">
				<notes xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- process the first note -->
					<xsl:call-template name="glp-note-generic"/>
					<!-- 
					group immediate sibling notes (logic modified from https://gist.github.com/empo/1105204 )
					-->
						<xsl:variable name="children" 
							select="following-sibling::glp:note | following-sibling::leg:histnote" />
						
						<xsl:for-each select="following-sibling::*">
							<xsl:variable name="index" 
								select="position()"/>	
							<xsl:if test="
								generate-id( . ) = generate-id( $children[$index] )">
								<xsl:call-template name="glp-note-generic"/>
							</xsl:if>
						</xsl:for-each>
				</notes>
			</xsl:when>
			<!-- when the immediate preceding sibling is a glp:note it will have been grouped above, do nothing -->
			<xsl:when test="preceding-sibling::*[1][self::*[name()=('glp:note','leg:histnote')]]"/>
			<!-- otherwise, process in generic fashion -->
			<xsl:otherwise>
				<xsl:call-template name="glp-note-generic"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="glp:note[$streamID=('AU14')]">
		<xsl:choose>
			<xsl:when test="self::glp:note[following-sibling::level | preceding-sibling::level]">
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:call-template name="AU14-glp-note"/>
				</bodytext>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="AU14-glp-note"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="AU14-glp-note">
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt"/>
			<xsl:apply-templates select="heading"/>
			<xsl:apply-templates select="contrib"/>
			<xsl:if test="child::*[not(self::heading)][not(self::refpt)][not(self::contrib)]">
				<bodytext>
					<xsl:apply-templates select="child::* except (heading | refpt | contrib)"/>
				</bodytext>
			</xsl:if>
		</note>
	</xsl:template>
	
	<!-- Awantika:2017-10-31- added template for AU01.
		If glp:note is the child of text then glp:note becomes inlinenote with attribute @notetype="editor-note" -->
	<xsl:template match="glp:note[parent::text][$streamID=('AU01', 'NZ03')]">
		<inlinenote>
			<xsl:attribute name="notetype" select="'editor-note'"/>
			<xsl:value-of select="."/>
		</inlinenote>
	</xsl:template>

</xsl:stylesheet>