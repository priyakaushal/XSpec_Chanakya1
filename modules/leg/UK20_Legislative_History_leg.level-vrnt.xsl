<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/">
        <title>leg:level-vrnt</title>
        <body>
            <section>
                <ul>
                    <li><sourcexml>leg:level-vrnt</sourcexml> becomes a passthrough element.</li>
                </ul>
            </section>
            
            <example>
                <title>Source XML 1 : For <sourcexml>leg:level-vrnt</sourcexml> as a passthrough element.</title>
                <codeblock>
                    
                    ...
                    
                    <b>Becomes</b>
                    
                    ...
                    
                </codeblock>
            </example>
        </body>
    </dita:topic>

    <!-- 20170426:  MCJ:  Manually created module. -->

 
    <xsl:template match="leg:level-vrnt">
        
        <primlaw:level>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:level>
        
    </xsl:template>
    
    <!-- copy the leveltype attribute to apply to the new primlaw:level. -->
    <!--<xsl:template match="leg:level-vrnt/@leveltype">
        <xsl:copy-of select="." />
    </xsl:template>-->
	
	<!-- JD: Note: CI does not mention valid @leveltype values; below pulled from schemadoc -->	
	<xsl:template match="leg:level-vrnt/@leveltype">
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test=".=('act', 'addendum', 'administrative-decision', 'agreement', 'amendment', 'annex', 'appendix', 'article', 'attachment', 'canon', 'chapter', 'clause', 'clausegroup', 'companion', 'constitution', 'convention', 'dictionary', 'division', 'endnote', 'exhibit', 'form', 'frontmatter', 'hierarchy-note', 'instrument', 'introduction', 'jurisdiction-variant', 'measure', 'order', 'paragraph', 'part', 'preamble', 'procedural-guide', 'regulation', 'regulatory-code', 'rule', 'schedule', 'scope-note', 'section', 'subarticle', 'subchapter', 'subclause', 'subdivision', 'subparagraph', 'subpart', 'subregulation', 'subschedule', 'subrule', 'subsection', 'subtitle', 'supplement', 'table-of-contents', 'title', 'topic', 'treaty', 'agency', 'subagency', 'unclassified', 'special-alert', 'special-unit', 'court-order', 'introduction', 'guidecard', 'guidecardgroup', 'landingpage', 'digestgroups', 'practicearea', 'subtopic', 'topictree', 'question', 'answer', 'questionanswergroup', 'supertopic', 'endmatter')">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="leveltype" select="'unclassified'"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>
	
    
</xsl:stylesheet>