<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.headnote-LxAdv_courtcase.head">
    <title>case:headnote <lnpid>id-CA01-12218</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/mapping"/>
        <example>
            <codeblock>
&lt;case:headnote&gt;
	...
&lt;/case:headnote&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:courtcase&gt;
    &lt;courtcase:head&gt;
        ...
    &lt;/courtcase:head&gt;
    ...
&lt;/courtcase:courtcase&gt;
       </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/changes"/>-->
        <!--<section>
            <title>Changes Specific to CA01</title>
            </section>-->

    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.headnote-LxAdv_courtcase.head.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the case:headnote and create the courtcase:head -->
    
    <!--<xsl:template match="case:headnote[parent::case:body]">
        <xsl:element name="courtcase:head">
            <xsl:apply-templates select="node() except case:length"/>
            <!-\-            <xsl:apply-templates select="case:info"/>
            <xsl:apply-templates select="catchwordgrp|case:priorhist|case:references|case:decisionsummary"/>
-\->        </xsl:element>
    </xsl:template>
   -->
    <xsl:template match="case:headnote[parent::case:body]">
        <xsl:element name="courtcase:head">
            <!--<xsl:variable name="courtcase_head">-->
            <xsl:for-each-group select="child::*" group-adjacent="if(name(.)='case:info' or name(.)='catchwordgrp' or name(.)='case:length') then 'caseinfo' else 'none'">
                <xsl:choose>
                    <xsl:when test="current-grouping-key()='caseinfo'">
                        <!--<xsl:variable name="countcase" select="count(child::node()) &gt; 1"></xsl:variable>-->
                        <xsl:choose>
                            <xsl:when test="child::case:constituents[not(preceding-sibling::*)][not(following-sibling::*)]"/>
                            <xsl:otherwise>
                                <!--<xsl:comment><xsl:value-of select="local-name()"/></xsl:comment>-->
                                <caseinfo:caseinfo>                            
                                    <xsl:apply-templates select="current-group()[name(.)!='case:length']"/>
                                </caseinfo:caseinfo>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:when> 
                    <xsl:when test="current-grouping-key()='none'">
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>
            <!--</xsl:variable>-->
          <!--  <xsl:apply-templates select="$courtcase_head" mode="head"/>-->
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="node()|@*" mode="head">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" mode="head"/>
        </xsl:copy>
    </xsl:template>
   
    <xsl:template match="caseinfo:caseinfo[normalize-space(.)='']" mode="head"/>
   
    <xsl:template match="case:headnote[parent::case:appendix]">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
	 

</xsl:stylesheet>