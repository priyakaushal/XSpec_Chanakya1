<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.level">
    <title>dig:level <lnpid>id-CA14-35625</lnpid></title>

    <body>
        <section>
            <p><sourcexml>dig:level</sourcexml> becomes <targetxml>seclaw:body/seclaw:digestgrp</targetxml>.</p>
        </section>

        <example>
            <title>Example 1</title>
            <codeblock>
&lt;dig:level&gt;
    ...
&lt;/dig:level&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
    ...
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
       </codeblock>
        </example>
        
        
        <section>
            <p>When <sourcexml>dig:item/level</sourcexml> is a child of <sourcexml>dig:level</sourcexml> then <sourcexml>dig:item/level</sourcexml> become 
                <targetxml>seclaw:body/seclaw:level</targetxml>.
                <ul>
                    <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                    <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
            </ul></p>
            <p><sourcexml>level/note</sourcexml> becomes <targetxml>seclaw:level/seclaw:prelim/note/bodytext</targetxml>.</p>
            <p><sourcexml>bodytext</sourcexml> becomes <targetxml>seclaw:bodytext</targetxml>.</p>
            
            <note><p>If in source content attribute <sourcexml>@leveltype</sourcexml> under <sourcexml>dig:item/level[@leveltype]</sourcexml> is not present then in New
                    Lexis it will becomes
                        <targetxml>seclaw:body/seclaw:level[@leveltype=unclassified]
                    </targetxml>.</p></note>
            
            <note><p>In New Lexis Schema, <targetxml>seclaw:level</targetxml> can not nest. If a nested
                        <sourcexml>level</sourcexml> occurs in the input Rosetta XML then create a
                        <targetxml>seclaw:bodytext</targetxml> before the nested
                        <targetxml>seclaw:level</targetxml>.</p></note>
            
            <note><p>When <sourcexml>footnotegrp</sourcexml> is a child of <sourcexml>level/bodytext</sourcexml> then
                        <sourcexml>footnotegrp</sourcexml> becomes
                        <targetxml>seclaw:level/seclaw:bodytext/p/text/footnotegroup</targetxml> in
                    the target. For <sourcexml>footnotegrp</sourcexml> conversion, please refer
                    general markup section.</p></note>
        </section>
        
        <example>
            <title>Example 2</title>
            <codeblock>
&lt;dig:level&gt;
    &lt;dig:item&gt;
        &lt;level subdoc="true"
            toc-caption="REP AND WARRANTY INSURANCE IN CANADA: A MARKET-DRIVEN OPTION FOR M&amp;amp;A NEGOTIATIONS"&gt;
            &lt;heading&gt;
                &lt;title align="center"&gt;
                    &lt;nl/&gt;
                    &lt;emph typestyle="bf"&gt;REP AND WARRANTY INSURANCE IN CANADA: A MARKET-DRIVEN
                        OPTION FOR M&amp;amp;A NEGOTIATIONS&lt;/emph&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;note&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&amp;#x2014; Mark Adkins and Stefania Zilinskas, Blake,
                            Cassels &amp;amp; Graydon LLP. &amp;#xa9; Blake, Cassels &amp;amp; Graydon LLP.
                            Reproduced with permission.&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/note&gt;
            &lt;bodytext&gt;
                &lt;h&gt;
                    &lt;emph typestyle="bf"&gt;PRODUCT SPOTLIGHT&lt;/emph&gt;
                &lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;Be sure to check out what&amp;#x2019;s new this month!&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/dig:item&gt;
&lt;/dig:level&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:level includeintoc="true"
        alternatetoccaption="REP AND WARRANTY INSURANCE IN CANADA: A MARKET-DRIVEN OPTION FOR M&amp;#x2016;A NEGOTIATIONS"&gt;
        &lt;heading&gt;
            &lt;title align="center"&gt;
                &lt;proc:nl/&gt;
                &lt;emph typestyle="bf"&gt;REP AND WARRANTY INSURANCE IN CANADA: A MARKET-DRIVEN OPTION
                    FOR M&amp;#x2016;A NEGOTIATIONS&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:prelim&gt;
            &lt;note&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;&amp;#x2014; Mark Adkins and Stefania Zilinskas, Blake,
                                Cassels &amp;amp; Graydon LLP. &amp;#xa9; Blake, Cassels &amp;amp; Graydon LLP.
                                Reproduced with permission.&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/seclaw:prelim&gt;
        &lt;seclaw:bodytext&gt;
            &lt;h&gt;
                &lt;emph typestyle="bf"&gt;PRODUCT SPOTLIGHT&lt;/emph&gt;
            &lt;/h&gt;
            &lt;p&gt;
                &lt;text&gt;Be sure to check out what&amp;#x2019;s new this month!&lt;/text&gt;
            &lt;/p&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
       </codeblock>
        </example>
        
        <p>When source file is not having <sourcexml>refpt</sourcexml> as a child of either
                <sourcexml> level</sourcexml> then conversion should generate
                <targetxml>ref:anchor</targetxml> element as a first child of
                <targetxml>seclaw:level</targetxml> in target.
                <targetxml>ref:anchor/@id="TOC00*"</targetxml>, for * Conversion should generate a
            unique numeric value and <targetxml>ref:anchor/@anchortype="local"</targetxml>.</p><note>Conversion should generate above <sourcexml>refpt</sourcexml> rule for all the
                <sourcexml>level</sourcexml> elements those are having following scenario e.g:
                <sourcexml>level/@subdoc="true"</sourcexml>.</note>
        
        <example>
            <title>Source XML</title>
            <codeblock>
&lt;dig:level&gt;
    &lt;dig:item&gt;
        &lt;level subdoc="true"
            toc-caption="REP AND WARRANTY INSURANCE IN CANADA: A MARKET-DRIVEN OPTION FOR M&amp;amp;A NEGOTIATIONS"
        &gt; &lt;/level&gt; ... &lt;/dig:item&gt;
&lt;/dig:level&gt;
                 </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:level includeintoc="true"
        alternatetoccaption="REP AND WARRANTY INSURANCE IN CANADA: A MARKET-DRIVEN OPTION FOR M&amp;#x2016;A NEGOTIATIONS"&gt;
        &lt;ref:anchor id="TOC001" anchortype="local"/&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

             </codeblock>
        </example> 
        
        <section>
            <title>Changes</title>
            <p>2016-06-17: <ph id="change_20160617_AS">Updated target element mapping when source is
                    not having <sourcexml>refpt</sourcexml> as a child of
                        <sourcexml>level</sourcexml> or other elements having
                        <sourcexml>@subdoc="true"</sourcexml>and note for generation of
                        <targetxml>ref:anchor</targetxml> based on
                        <sourcexml>@subdoc="true"</sourcexml> value.</ph></p>
            <p>2016-06-16: <ph id="change_20160616_RS">Added note for
                        <sourcexml>@leveltype</sourcexml> under
                        <sourcexml>dig:item/level[@leveltype]</sourcexml>, Applicable on
                CA14.</ph></p>
            <p>2016-05-05: <ph id="change_20160505_PS">Added note when <sourcexml>footnotegrp</sourcexml> is a child of 
                    <sourcexml>level/bodytext</sourcexml>, Applicable on CA14.</ph></p>
            <p>2016-04-28: 
                <ph id="change_20160428_PS">Added instruction and example when
                        <sourcexml>dig:level</sourcexml> having child
                        <sourcexml>dig:item/level</sourcexml>. Applicable on CA14.</ph></p>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\dig.level.dita  -->
	<!--<xsl:message>CA14-Emerging_Issues_dig.level.xsl requires manual development!</xsl:message>--> 


    <!-- Vikas Rohilla : Updated the Template -->
    <xsl:template match="dig:level[not(child::dig:item/level)]">
        <seclaw:digestgrp>
            <xsl:apply-templates select="@* | node()"/>
        </seclaw:digestgrp>
    </xsl:template>
 
    
    <!-- Vikas Rohilla : Updated the Template -->
    <xsl:template match="dig:level[child::dig:item/level]">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the level and the not parent level    -->
    <xsl:template match="level[not(parent::level)]">
        <seclaw:level>
            <xsl:if test="not(@leveltype)">
                <xsl:attribute name="leveltype">
                    <xsl:text>unclassified</xsl:text>
                </xsl:attribute>    
            </xsl:if>
            <xsl:apply-templates select="@*"/>
            <xsl:if test="@subdoc">
            <xsl:call-template name="refanchor"/>
            </xsl:if>
            <xsl:apply-templates select="node()"/>	   
        </seclaw:level>
    </xsl:template>
    
    <!--Vikas Rohilla : Tempalte to match the first level and parent is level   -->
    <xsl:template match="level[parent::level][not(preceding-sibling::*[1][self::level or self::bodytext])]" priority="25">
        <seclaw:bodytext>
            <seclaw:level>
                <xsl:if test="not(@leveltype)">
                    <xsl:attribute name="leveltype">
                        <xsl:text>unclassified</xsl:text>
                    </xsl:attribute>    
                </xsl:if>
                <xsl:apply-templates select="@*"/>
                <xsl:if test="@subdoc">
                    <xsl:call-template name="refanchor"/>
                </xsl:if>
                <xsl:apply-templates select="node()"/>	   
            </seclaw:level> 
            <xsl:if test="following-sibling::*[1][self::level]">
                <xsl:call-template name="wrapp-level">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::level]"/>
                </xsl:call-template>
            </xsl:if>
        </seclaw:bodytext>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template name wrap-level for wrap all in single node   -->
    <xsl:template name="wrapp-level">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="wrap-level"/>
        <xsl:if test="$node/following-sibling::*[1][self::level]">
            <xsl:call-template name="wrapp-level">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::level]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    
    <!-- Vikas Rohilla : Template to match the level with the attribute mode wrap-level  -->
    <xsl:template match="level" mode="wrap-level">
        <seclaw:level>
            <xsl:if test="not(@leveltype)">
                <xsl:attribute name="leveltype">
                    <xsl:text>unclassified</xsl:text>
                </xsl:attribute>    
            </xsl:if>
            <xsl:apply-templates select="@*"/>
            <xsl:if test="@subdoc">
                <xsl:call-template name="refanchor"/>
            </xsl:if>
            <xsl:apply-templates select="node()"/>	
        </seclaw:level>
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the @subdoc and create @includeintoc    -->
    <xsl:template match="level/@subdoc">    
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

    <!-- Vikas Rohilla : Template to match the level/@toc-caption and create the @alternatetoccaption  -->
    <xsl:template match="level/@toc-caption">
	    <xsl:attribute name="alternatetoccaption">
		    <xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

<!--Vikas Rohilla : Template to match the @leveltype and copy in target-->
    <xsl:template match="level/@leveltype">
        <xsl:copy-of select="."/>
	</xsl:template>
    
    <!-- Vikas Rohilla : supressed level/@searchtype   -->
    <xsl:template match="level/@searchtype"/>
    
    <!-- Vikas Rohilla : supressed level in the current mode handeld in to wrap-level mode     -->
    <xsl:template match="level[parent::level]"/>
    
    <!--Vikas Rohilla : Template to ref:anchor when no refpt element -->
    <xsl:template name="refanchor">
        <xsl:element name="ref:anchor">
            <xsl:attribute name="id">
                <xsl:text>TOC00</xsl:text>
                <xsl:number count="level[@subdoc]" level="any" format="1"/>
            </xsl:attribute>
            <xsl:attribute name="anchortype">
                <xsl:text>local</xsl:text>
            </xsl:attribute>
            <xsl:text xml:space="preserve"> </xsl:text>
        </xsl:element>
    </xsl:template>
    

</xsl:stylesheet>