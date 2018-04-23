<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator-annot">
    <title>*:citations to cttr:citations <lnpid>id-CA03-13223</lnpid></title>
    <body>
        <section>
            <title>Instructions</title>
            <p><sourcexml>cttr:citations</sourcexml>, <sourcexml>comm:citations</sourcexml>, and
                    <sourcexml>jrnl:citations</sourcexml> all become
                    <targetxml>cttr:citations</targetxml>.</p>
            <p>The various <sourcexml>*.citetext</sourcexml> containers are dropped, and the
                remaining <sourcexml>ci:cite</sourcexml> elements are merged into a single
                    <targetxml>lnci:cite</targetxml> markup within
                    <targetxml>cttr:citations</targetxml>.</p>
        </section>
        <example>
            <title>Source XML: High-level markup</title>
            <codeblock>
&lt;case:citations&gt;
	&lt;case:citetext&gt;
		&lt;ci:cite&gt;...&lt;/ci:cite&gt;
	&lt;/case:citetext&gt;
&lt;/case:citations&gt;

&lt;comm:citations&gt;
	&lt;comm:citetext&gt;
		&lt;ci:cite&gt;...&lt;/ci:cite&gt;
	&lt;/comm:citetext&gt;
&lt;/comm:citations&gt;

&lt;jrnl:citations&gt;
	&lt;jrnl:citetext&gt;
		&lt;ci:cite&gt;...&lt;/ci:cite&gt;
	&lt;/jrnl:citetext&gt;
&lt;/jrnl:citations&gt;      </codeblock>
            <title>Target XML: High-level markup</title>
            <codeblock>
&lt;cttr:citations&gt;
   &lt;lnci:cite&gt;...&lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
      </codeblock>
        </example>
        <section>
            <title>Merging multiple citations</title>
            <p>In order to standardize the markup and leverage existing stylesheets, multiple
                instances of <sourcexml>*:citations/ci:cite</sourcexml> elements must be merged into
                a single <targetxml>cttr:citations/lnci:cite</targetxml> element in the target. The
                children are processed as follows: <ul>
                    <li>Create a single <targetxml>lnci:cite/lnci:case</targetxml> element, and
                        populate it as follows: <ul>
                            <li>If there is an instance of
                                    <sourcexml>ci:cite/ci:case/ci:caseinfo</sourcexml>, convert it
                                to <targetxml>lnci:caseinfo</targetxml>, and process all children as
                                detailed in the instructions for <sourcexml>ci:cite</sourcexml> in
                                the General Markup section. <note>The citator schema only allows one
                                    instance of <targetxml>lnci:case/lnci:caseinfo</targetxml>. If
                                    multiple instances of
                                        <sourcexml>ci:cite/ci:case/ci:caseinfo</sourcexml> are
                                    found, we will need to create new rules to accomodate this
                                    markup.</note></li>
                            <li>Convert each <sourcexml>ci:cite/ci:case/ci:caseref</sourcexml>
                                element into a separate <targetxml>lnci:caseref</targetxml> element
                                in the target, and process all children as detailed in the
                                instructions for <sourcexml>ci:cite</sourcexml> in the General
                                Markup section.</li>
                        </ul></li>
                    <li>Create a single <targetxml>lnci:cite/lnci:content</targetxml> element, and
                        populate it as follows: <ul>
                            <li>Merge all instances of <sourcexml>ci:cite/ci:content</sourcexml>
                                element into a single <targetxml>lnci:content</targetxml> element in
                                the target, and separate each instance with a semicolon (';'). </li>  
                            <li>Convert each <sourcexml>ci:content/ci:span</sourcexml>
                                    element into a separate <targetxml>lnci:span</targetxml>
                                    element in the target, and separate each instance with a
                                    space (' ').</li>

                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML: Merging ci:cite elements</title>
            <codeblock>
&lt;case:citations&gt;
        &lt;case:citetext&gt;
            &lt;ci:cite&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cref00001759" spanref="cspan00001759"&gt;
                        &lt;ci:reporter value="NJ"/&gt;
                        &lt;ci:edition&gt;
                            &lt;ci:date year="1981"/&gt;
                        &lt;/ci:edition&gt;
                        &lt;ci:refnum num="123"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="cspan00001759"&gt;[1981] N.J. No. 123&lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
            &lt;ci:cite&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cref00001760" spanref="cspan00001760"&gt;
                        &lt;ci:reporter value="NFPR"/&gt;
                        &lt;ci:volume num="35"/&gt;
                        &lt;ci:page num="339"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="cspan00001760"&gt;35 Nfld. &amp;amp; P.E.I.R.
                        339&lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
            &lt;ci:cite&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cref00001761" spanref="cspan00001761"&gt;
                        &lt;ci:reporter value="ILR"/&gt;
                        &lt;ci:edition&gt;
                            &lt;ci:date year="1982"/&gt;
                        &lt;/ci:edition&gt;
                        &lt;ci:page num="932"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="cspan00001761"&gt;[1982] I.L.R. 932&lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
            &lt;ci:cite&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cref00001762"&gt;
                        &lt;ci:reporter value="ILR"/&gt;
                        &lt;ci:edition&gt;
                            &lt;ci:date year="1982"/&gt;
                        &lt;/ci:edition&gt;
                    &lt;/ci:caseref&gt;
                    &lt;ci:caseref spanref="cspan00001762" anaphref="cref00001762"&gt;
                        &lt;ci:refnum num="1-1543"/&gt;
                    &lt;/ci:caseref&gt;
                    &lt;ci:caseref spanref="cspan00001763" anaphref="cref00001762"&gt;
                        &lt;ci:page num="932"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;ci:span spanid="cspan00001762"&gt;[1982] I.L.R. para.
                        1-1543&lt;/ci:span&gt;
                    &lt;ci:span spanid="cspan00001763"&gt; at 932 &lt;/ci:span&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/case:citetext&gt;
    &lt;/case:citations&gt;      </codeblock>
            <title>Target XML: Merging ci:cite elements</title>
            <codeblock>
        &lt;cttr:citations&gt;
                    &lt;lnci:cite&gt;
                        &lt;lnci:case&gt;
                            &lt;lnci:caseref ID="cref00001759"&gt;
                                &lt;lnci:reporter value="NJ"/&gt;
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1981"/&gt;
                                &lt;/lnci:edition&gt;
                                &lt;lnci:refnum num="123"/&gt;
                            &lt;/lnci:caseref&gt;
                            &lt;lnci:caseref ID="cref00001760"&gt;
                                &lt;lnci:reporter value="NFPR"/&gt;
                                &lt;lnci:volume num="35"&gt; &lt;/lnci:volume&gt;
                                &lt;lnci:page num="339"/&gt;
                            &lt;/lnci:caseref&gt;
                            &lt;lnci:caseref ID="cref00001761"&gt;
                                &lt;lnci:reporter value="ILR"/&gt;
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1982"/&gt;
                                &lt;/lnci:edition&gt;
                                &lt;lnci:page num="932"/&gt;
                            &lt;/lnci:caseref&gt;
                            &lt;lnci:caseref ID="cref00001762"&gt;
                                &lt;lnci:reporter value="ILR"/&gt;
                                &lt;lnci:edition&gt;
                                    &lt;lnci:date year="1982"/&gt;
                                &lt;/lnci:edition&gt;
                            &lt;/lnci:caseref&gt;
                            &lt;lnci:caseref anaphref="cref00001762"&gt;
                                &lt;lnci:refnum num="1-1543"/&gt;
                            &lt;/lnci:caseref&gt;
                            &lt;lnci:caseref anaphref="cref00001762"&gt;
                                &lt;lnci:page num="932"/&gt;
                            &lt;/lnci:caseref&gt;
                        &lt;/lnci:case&gt;
                        &lt;lnci:content&gt;
                             &lt;lnci:span spanid="cspan00001759"&gt;[1981] N.J. No. 123&lt;/lnci:span&gt;; &lt;lnci:span spanid="cspan00001760"&gt;35 Nfld. &amp;amp; P.E.I.R. 339&lt;/lnci:span&gt;; &lt;lnci:span spanid="cspan00001761"&gt;[1982] I.L.R. 932&lt;/lnci:span&gt;; &lt;lnci:span spanid="cspan00001762"&gt;[1982] I.L.R. para. 1-1543&lt;/lnci:span&gt; &lt;lnci:span spanid="cspan00001763"&gt; at 932&lt;/lnci:span&gt;
                        &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;
                &lt;/cttr:citations&gt;
        
      </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-07-10: <ph id="change_20150710_brt">Modified the instructions for merging
                    multiple <sourcexml>*:citations/ci:cite</sourcexml> elements to a single
                        <targetxml>cttr:citations/lnci:cite</targetxml> element in the target. The new
                    instructions add a semicolon only between adjacent
                        <sourcexml>ci:cite/ci:content</sourcexml> elements, not between each
                        <sourcexml>ci:content/ci:span</sourcexml> element. Addresses WT#
                    304818.</ph></p>
            <p>2014-09-29: <ph id="change_20140929_brt">Added instructions and new example for
                    merging multiple <sourcexml>*:citations/ci:cite</sourcexml> elements to a single
                        <targetxml>cttr:citations/lnci:cite</targetxml> element in the target.
                    Addresses R4.5 RFA #1836.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_citations-to-LxAdv_cttr.citations.dita  -->
<!-- Sudhanshu Srivastava : Initially drafted on 30 May 2017, If changes required , please update accordingly. -->	 
    
    
    <!-- This template is handling case:citations element inside ctt:annot. -->
    <xsl:template match="*:citations">
        <!--  Original Target XPath:  cttr:caseinfo/cttr:citations   -->
        <cttr:citations>
            <xsl:apply-templates/>
        </cttr:citations>
    </xsl:template>
    
    <xsl:template match="*:citetext">
         <!-- Original Target XPath:  lnci:cite-->   
        <xsl:apply-templates select="ci:cite" mode="merge"/>
    </xsl:template>
    
    
    <!-- This template is merging all the ci:case elements and all ci:content element inside lnci:cite element. -->
    <xsl:template match="*:cite[parent::*:citetext and not(preceding-sibling::*[1][self::*:cite])]" mode="merge" priority="2">
        <!--  Original Target XPath:  lnci:cite   -->
        <lnci:cite>
            <!-- Awantika: 2018-01-31- self-closing lnci:case was created when input does not have ci:case in it. Webstar # 7094622 -->
            <xsl:if test="ci:case">
            <lnci:case>
                <xsl:variable name="caseinfo">
                    <xsl:sequence select="ci:case/ci:caseinfo|following-sibling::ci:cite/ci:case/ci:caseinfo"/>
                </xsl:variable>

                <xsl:apply-templates select="$caseinfo/ci:caseinfo[1]"/>
                <xsl:apply-templates select="ci:case/ci:caseref|following-sibling::ci:cite/ci:case/ci:caseref" mode="merge"/>
                
            </lnci:case>
            </xsl:if>
            <lnci:content>
                <xsl:apply-templates select="ci:content|following-sibling::ci:cite/ci:content" mode="merge"/>
                
            </lnci:content>
        </lnci:cite>
    </xsl:template>
    
    <xsl:template match="*:caseref" mode="merge">
        <lnci:caseref>
            <xsl:if test="@ID">
            <xsl:attribute name="ID">
                <xsl:value-of select="@ID"/>
            </xsl:attribute>
            </xsl:if>
            <xsl:if test="@anaphref">
                <xsl:attribute name="anaphref">
                    <xsl:value-of select="@anaphref"/>
                </xsl:attribute>
            </xsl:if>
        <xsl:apply-templates select="node()" mode="merge"/>
        </lnci:caseref>
    </xsl:template>
    
    <xsl:template match="*:caseinfo" mode="merge">
        <lnci:caseinfo>
            <xsl:apply-templates select="node()"/>
        </lnci:caseinfo>
    </xsl:template>
    
    
    <xsl:template match="*:content" mode="merge">
        <xsl:apply-templates select="node()" mode="merge"/>
        <xsl:if test="parent::ci:cite/following-sibling::ci:cite">
        <xsl:text>;</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="*:span" mode="merge">
        <lnci:span>
            <xsl:attribute name="spanid">
                <xsl:value-of select="@spanid"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </lnci:span>
    </xsl:template>
    
    <xsl:template match="*:reporter" mode="merge">
        <lnci:reporter>
            <xsl:attribute name="value" select="@value">
            </xsl:attribute>
        </lnci:reporter>
    </xsl:template>
    
    <xsl:template match="*:edition" mode="merge">
        <lnci:edition>
            <lnci:date>
            <xsl:attribute name="year" select="ci:date/@year">
                
            </xsl:attribute>
            </lnci:date>
        </lnci:edition>
    </xsl:template>
    
    <xsl:template match="*:refnum" mode="merge">
        <lnci:refnum num="{@num}"></lnci:refnum>
    </xsl:template>
    
    <xsl:template match="*:pinpoint" mode="merge">
        <lnci:pinpoint><xsl:copy-of select="attribute::node()"/></lnci:pinpoint>
    </xsl:template>
    
    <xsl:template match="*:volume" mode="merge">
        <lnci:volume num="{@num}"></lnci:volume>
    </xsl:template>
    
    <xsl:template match="*:page" mode="merge">
        <lnci:page num="{@num}"></lnci:page>
    </xsl:template>
    
    <xsl:template match="*:hier" mode="merge">
        <lnci:hier>
           <xsl:apply-templates select="node()" mode="merge"/>
        </lnci:hier>
    </xsl:template>
    
    <xsl:template match="*:hierlev" mode="merge">
        <lnci:hierlev num="{@num}" label="{@label}">
            <xsl:apply-templates select="node()" mode="merge"></xsl:apply-templates>
        </lnci:hierlev>
    </xsl:template>

    <xsl:template match="*:cite" mode="merge" priority="1"/>

</xsl:stylesheet>