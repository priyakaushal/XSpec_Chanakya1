<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0" 
                exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="level">
        <title>level <lnpid>id-UK20-35810</lnpid></title>
        <body>
            <section>
                <p><sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml> and
                    attribute <sourcexml>level/@leveltype</sourcexml> will become
                        <targetxml>seclaw:level/@leveltype</targetxml>. Per Precedents/Forms samples,
                    attribute <sourcexml>level/@leveltype</sourcexml> contain value
                        <sourcexml>level[@leveltype="annotation"]</sourcexml> , so during conversion the
                    value of <targetxml>seclaw:level/@leveltype</targetxml> will be mapped with the
                    value <targetxml>seclaw:level/@leveltype="unclassified"</targetxml> and the content
                    that is going under it in the Source will get go under
                        <targetxml>seclaw:bodytext/note/bodytext</targetxml> in the Target. </p>
                <ul>
                    <li>Outer-most (top) <sourcexml>level</sourcexml> becomes
                            <targetxml>seclaw:level</targetxml>
                    </li>
                    <li>Descendent (nested) <sourcexml>level</sourcexml> becomes
                            <targetxml>seclaw:bodytext/seclaw:level</targetxml></li>
                </ul>
                <p><sourcexml>bodytext</sourcexml> becomes
                    <targetxml>seclaw:bodytext</targetxml></p>
                <p>For more confirmation please see below examples:</p>
                
                <b>Example: 1.</b>
                <pre>

                    &lt;COMMENTARYDOC&gt;
                        &lt;comm:body&gt;
                            &lt;level leveltype="section"&gt;
                            ........
                                &lt;level leveltype="annotation"&gt;
                                    &lt;bodytext searchtype="COMMENTARY"&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;The following notes derive from those printed in Halsbury's Statutes Vol 06(2) (2012 reissue), title Children and Family Law.
                                            &lt;/text&gt;
                                        &lt;/p&gt;
                                    .......
                                &lt;/bodytext&gt;
                            &lt;/level&gt;
                            ........
                            &lt;/level&gt;
                        &lt;/comm:body&gt;
                    &lt;/COMMENTARYDOC&gt;


                    <b>Becomes</b>
           

                    &lt;seclaw:seclaw seclawtype="form" xml:lang="en-UK"&gt;
                        &lt;seclaw:body&gt;
                            &lt;seclaw:level leveltype="section"&gt;
                            .........
                            &lt;seclaw:bodytext&gt;
                                &lt;seclaw:level leveltype="unclassified"&gt;
                                    &lt;seclaw:bodytext&gt;
                                        &lt;note&gt;
                                            &lt;bodytext&gt;
                                                &lt;p&gt;
                                                    &lt;text&gt;The following notes derive from those printed in Halsbury's Statutes Vol 06(2) (2012 reissue), title Children and Family Law.
                                                    &lt;/text&gt;
                                                &lt;/p&gt;
                                             &lt;/bodytext&gt;
                                         &lt;/note&gt;    
                                    ........
                                    &lt;/seclaw:bodytext&gt;
                                &lt;/seclaw:level&gt;
                             &lt;/seclaw:level&gt;     
                         &lt;/seclaw:body&gt;
                        
                        ..........
                    &lt;/seclaw:seclaw&gt;

                </pre>

                <b>Example 2.</b>

                <pre>

                    &lt;comm:body&gt;
                        &lt;level leveltype="schedule"&gt;
                            &lt;heading align="center" searchtype="LEGISLATION"&gt;
                                &lt;title&gt;[SCHEDULE 4B
                                &lt;/title&gt;
                            &lt;/heading&gt;
                            &lt;level leveltype="part"&gt;
                                &lt;heading align="center" searchtype="LEGISLATION"&gt;
                                    &lt;title&gt;PART I THE CASES
                                    &lt;/title&gt;
                                &lt;/heading&gt;
                            
                            &lt;/level&gt;
                        &lt;/level&gt;
                    &lt;/comm:body&gt;
            
                    &lt;b&gt;becomes&lt;/b&gt;


                    &lt;seclaw:seclaw seclawtype="form" xml:lang="en-UK"&gt;
                        &lt;seclaw:body&gt;
                            &lt;seclaw:level leveltype="schedule"&gt;
                                &lt;seclaw:bodytext&gt;
                                    &lt;heading align="center"&gt;
                                        &lt;title&gt;[SCHEDULE 4B&lt;/title&gt;
                                    &lt;/heading&gt;
                                        &lt;seclaw:level leveltype="part"&gt;
                                                &lt;seclaw:bodytext&gt;
                                                    &lt;heading align="center"&gt;
                                                        &lt;title&gt;PART I THE CASES&lt;/title&gt;
                                                    &lt;/heading&gt;
                                                &lt;/seclaw:bodytext&gt;    
                                         &lt;seclaw:level&gt;
                                        
                                    ........
                                &lt;/seclaw:bodytext&gt;
                            &lt;/seclaw:level&gt;
                        &lt;/seclaw:body&gt;
                    &lt;/seclaw:seclaw&gt;

                </pre>
            </section>
        </body>
	</dita:topic>


	<xsl:template match="level">
	    <!-- Original Target XPath:  seclaw:level   -->
	    <xsl:variable name="tmpLevelType">
	        <xsl:call-template name="createSeclawLeveltype">
	            <xsl:with-param name="input" select="./@leveltype" />
	        </xsl:call-template>
	    </xsl:variable>

		<seclaw:level>
		    <xsl:attribute name="leveltype"><xsl:value-of select="$tmpLevelType" /></xsl:attribute>
		    <xsl:apply-templates select="heading" />
				<xsl:apply-templates select="levelinfo"/>
        <seclaw:bodytext>
        	<xsl:apply-templates select="* except (heading,levelinfo)"/>
        </seclaw:bodytext>
		</seclaw:level>
	</xsl:template>
    
    <xsl:template name="createSeclawLeveltype">
        <xsl:param name="input">unclassified</xsl:param>
        
        <!--<xsl:choose>
            <xsl:when test="./$input='annotation'">unclassified</xsl:when>
            <xsl:when test="./$input"><xsl:value-of select="$input" /></xsl:when>
            <xsl:otherwise>unclassified</xsl:otherwise>
        </xsl:choose>-->
    	<!-- JD: Note: CI does not mention valid @leveltype values; below pulled from schemadoc -->	
    			<xsl:choose>
    				<xsl:when test="$input=('act', 'addendum', 'administrative-decision', 'agreement', 'amendment', 'annex', 'appendix', 'article', 'attachment', 'canon', 'chapter', 'clause', 'clausegroup', 'companion', 'constitution', 'convention', 'dictionary', 'division', 'endnote', 'exhibit', 'form', 'frontmatter', 'hierarchy-note', 'instrument', 'introduction', 'jurisdiction-variant', 'measure', 'order', 'paragraph', 'part', 'preamble', 'procedural-guide', 'regulation', 'regulatory-code', 'rule', 'schedule', 'scope-note', 'section', 'subarticle', 'subchapter', 'subclause', 'subdivision', 'subparagraph', 'subpart', 'subregulation', 'subschedule', 'subrule', 'subsection', 'subtitle', 'supplement', 'table-of-contents', 'title', 'topic', 'treaty', 'agency', 'subagency', 'unclassified', 'special-alert', 'special-unit', 'court-order', 'introduction', 'guidecard', 'guidecardgroup', 'landingpage', 'digestgroups', 'practicearea', 'subtopic', 'topictree', 'question', 'answer', 'questionanswergroup', 'supertopic', 'endmatter')">
    					<xsl:value-of select="$input"/>
    				</xsl:when>
    				<xsl:otherwise>
    					<xsl:value-of select="'unclassified'"/>
    				</xsl:otherwise>
    			</xsl:choose>
    	
    </xsl:template>
    
    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="level/@leveltype">

		...  Original Target XPath:  seclaw:level/@leveltype   ...
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="level[@leveltype=&#34;annotation&#34;]">

		...  Original Target XPath:  seclaw:level/@leveltype   ...
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template> -->

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  seclaw:bodytext   -->
		<!-- <seclaw:bodytext> -->
			<xsl:apply-templates />
		<!-- </seclaw:bodytext> -->

	</xsl:template>

</xsl:stylesheet>