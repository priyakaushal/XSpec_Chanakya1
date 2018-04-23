<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    version="2.0" exclude-result-prefixes="dita courtcase case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_pgrp-to-LexisAdvance_pgrp">
    <title><sourcexml>pgrp</sourcexml> to <targetxml>pgrp</targetxml>
        <lnpid>id-CCCC-10431</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>pgrp</sourcexml> becomes <targetxml>pgrp</targetxml>.</p>
            <p>If <sourcexml>pgrp</sourcexml> comes with following attributes: <ul>
                    <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                    <li><sourcexml>@subdoc</sourcexml> becomes
                        <targetxml>@includeintoc</targetxml></li>
                    <li><sourcexml>@toc-caption</sourcexml> becomes
                            <targetxml>@alternatetoccaption</targetxml></li>
                </ul>
            </p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;pgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Background&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
        &lt;text&gt;
            The present applicants are five 
            individuals who at one time or another were engaged by Combined 
            Insurance Company of America (Combined) as insurance agents. 
            In recent times, the five have sued Combined in the 
            Chief Industrial Magistrates&amp;#x2019; Court of New South Wales claiming 
            entitlements both to annual leave and long service leave. 
            One of the principal issues to be resolved in those proceedings is 
            the question of whether the agents were employees of Combined, 
            as they contend, or rather independent contractors, as Combined contends. 
            No doubt the resolution of that issue will involve a close consideration 
            of a broad range of indicia. One of the matters to which 
            Combined points is a term in its contract with each agent by 
            which each agreed, or appears to have agreed, that his relationship 
            with Combined was not one of employment.
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;pnum count="2"&gt;[2]&lt;/pnum&gt;
        &lt;text&gt;
            That question is, therefore, now pending before the Chief 
            Industrial Magistrates Court. Notwithstanding that circumstance, 
            Combined has commenced the present proceeding in this court 
            seeking three heads of relief:
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;pgrp&gt;
    &lt;heading&gt;
        &lt;title&gt;Background&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;desig value="1" inline="true"&gt;[1]&lt;/desig&gt;
        &lt;text&gt;
            The present applicants are five 
            individuals who at one time or another were engaged by Combined 
            Insurance Company of America (Combined) as insurance agents. 
            In recent times, the five have sued Combined in the Chief Industrial 
            Magistrates&amp;#x2019; Court of New South Wales claiming entitlements 
            both to annual leave and long service leave. One of the principal 
            issues to be resolved in those proceedings is the question of whether 
            the agents were employees of Combined, as they contend, or rather 
            independent contractors, as Combined contends. No doubt the resolution
            of that issue will involve a close consideration of a broad range of indicia. 
            One of the matters to which Combined points is a term in its contract 
            with each agent by which each agreed, or appears to have agreed, that 
            his relationship with Combined was not one of employment.
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;desig value="2" inline="true"&gt;[2]&lt;/desig&gt;
        &lt;text&gt;
            That question is, therefore, now pending before the Chief
            Industrial Magistrates Court. Notwithstanding that circumstance,
            Combined has commenced the present proceeding in this court 
            seeking three heads of relief:
        &lt;/text&gt;
    &lt;/p&gt;  
&lt;/pgrp&gt;

	</codeblock>
        </example>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;pgrp id="BCA.C5.CHECK"&gt;
 &lt;heading&gt;
  &lt;title&gt;Check List for Lease prior to Lodgment (LPI August 2007)&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;pgrp xml:id="BCA.C5.CHECK"&gt;
 &lt;heading&gt;
  &lt;title&gt;Check List for Lease prior to Lodgment (LPI August 2007)&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </codeblock>
        </example>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;pgrp subdoc="true" toc-caption="Contributors"&gt;
 &lt;heading&gt;&lt;title&gt;Authors&lt;/title&gt;&lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;pgrp includeintoc="true" alternatetoccaption="Contributors"&gt;
 &lt;heading&gt;&lt;title&gt;Authors&lt;/title&gt;&lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/pgrp&gt; 
        
    </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2015-03-17: <ph id="change_20150317_AK">An attribute <targetxml>@inline</targetxml>
                    get added with <targetxml>desig</targetxml> element even when the
                        source<sourcexml>pnum</sourcexml> is not having that
                        attribute<sourcexml>@inline</sourcexml> Applicable on CA12 only.</ph></p>
            <p>2015-02-24: <ph id="change_20150224_AK">Example updated as per new rule an attribute
                        <targetxml>@inline</targetxml>get added with
                    <targetxml>desig</targetxml>element when the source<sourcexml>pnum</sourcexml>is
                    not having that attribute<sourcexml>@inline</sourcexml>
                </ph></p>
            <p>2011-12-15: Created.</p>
            <p>2013-03-14: <ph id="change_20130314_ab">Add instruction and example
                        <sourcexml>pgrp/@id</sourcexml>.</ph></p>
            <p>2014-02-11: <ph id="change_20140211_ab">Add instruction and example
                        <sourcexml>pgrp/@subdoc</sourcexml> and
                        <sourcexml>pgrp/@toc-caption</sourcexml>. Support Discussion Board: NZ09
                    Commentary, Form and Precedents</ph></p>
        </section>
       <!-- <xsltinclusion>
            <xsl:stylesheet version="2.0">
                <!-\- BRT: this template is in the otherwise condition in base.xsl, but added the attributes to that template. 
                    This rule is similar to a rule in another topic in which pggrp is converted to pggrp.
             -\->
                <xsl:template match="pgrp">
                    <xsl:element name="pgrp">
                        <xsl:if test="@id">
                            <xsl:attribute name="xml:id">
                                <xsl:value-of select="@id"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@subdoc">
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="@subdoc"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@toc-caption">
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="@toc-caption"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates/>
                    </xsl:element>
                </xsl:template>
            </xsl:stylesheet>
        </xsltinclusion>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_pgrp-LxAdv-pgrp.dita  -->
	<!--<xsl:message>Rosetta_pgrp-LxAdv-pgrp.xsl requires manual development!</xsl:message> -->

                <!-- BRT: this template is in the otherwise condition in base.xsl, but added the attributes to that template. 
                    This rule is similar to a rule in another topic in which pggrp is converted to pggrp.
             -->
                <xsl:template match="pgrp">
                    <xsl:element name="pgrp" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                        <xsl:if test="@id">
                               <xsl:apply-templates select="@id"/>                            
                        </xsl:if>
                        <xsl:if test="@subdoc">
                            <xsl:attribute name="includeintoc">
                                <xsl:value-of select="@subdoc"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@toc-caption">
                            <xsl:attribute name="alternatetoccaption">
                                <xsl:value-of select="@toc-caption"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:apply-templates/>
                    </xsl:element>   
                </xsl:template>
    
    
    
                    <!-- Vikas Rohilla : Template to match the pgrp and the parrent case:constituents and the streamID UK03   -->
                  <xsl:template match="pgrp[parent::case:constituents][$streamID=('UK03', 'UK04')]">
                      <courtcase:arguments>
                          <bodytext>
                              <pgrp>
                                  <xsl:apply-templates/>
                              </pgrp>
                          </bodytext>
                      </courtcase:arguments>
                  </xsl:template>
    <!-- Satbir : Template for creating textitem as a wrapper of ref:link-->
    <xsl:template match="pgrp[child::link][$streamID='AU18']">
                <pgrp>
                    <xsl:for-each select="node()">
                        <xsl:choose>
                            <xsl:when test="self::link">
                                <textitem>
                                    <xsl:apply-templates select="self::link"/>
                                </textitem>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="."/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </pgrp>
    </xsl:template>
            
    <!-- Awantika: update to create wrapper around pgrp -->
    <!--Awantika: Removed this and added it to case:appendix -->
   <!-- <xsl:template xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="pgrp[parent::case:appendix and $streamID='HK03']">
        <xsl:variable name="name" select="local-name()"/>
        
        
        <xsl:if test="local-name(preceding-sibling::*[position()=1]) != $name">
            <bodytext>
            <pgrp>
                <xsl:apply-templates />
                
                <!-\- Match the next sibling if it has the same name -\->
                <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="nextpg"/>
            </pgrp>
            </bodytext>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template match="pgrp" mode="nextpg">
        <xsl:variable name="name" select="local-name()"/>
        <pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><xsl:apply-templates /></pgrp>
        <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="nextpg"/>
    </xsl:template>-->
            
</xsl:stylesheet>