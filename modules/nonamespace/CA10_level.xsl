<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_level">
    <title><sourcexml>level</sourcexml>
        <lnpid>id-CA10-14614</lnpid></title>

    <body>
        <section>
            <title>General level handling</title>
            <ul>
                <li>Outer-most (top) <sourcexml>level</sourcexml> becomes
                        <targetxml>seclaw:level</targetxml>
                </li>
                <li>Descendent (nested) <sourcexml>level</sourcexml> becomes
                        <targetxml>seclaw:bodytext/seclaw:level</targetxml><ul>
                        <li><sourcexml>@subdoc</sourcexml> becomes
                                <targetxml>@includeintoc</targetxml></li>
                        <li><sourcexml>@toc-caption</sourcexml> becomes
                                <targetxml>@alternatetoccaption</targetxml></li>
                        <li>set <targetxml>@leveltype="unclassified"</targetxml>
                        </li>
                    </ul></li>
            </ul>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

 &lt;comm:body&gt;
    &lt;level leveltype="1"&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt;III. PART II OF THE ACT: BILLS OF EXCHANGE&lt;/title&gt;
        &lt;/heading&gt;
        &lt;level leveltype="1"&gt;
            &lt;heading align="center"&gt;
                &lt;title&gt;5. &lt;emph typestyle="bf"&gt;Capacity and Authority of Parties&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;level leveltype="3"&gt;
                &lt;heading align="left"&gt;
                    &lt;title searchtype="DOC-HEADING"&gt;
                        ...
                    &lt;/title&gt;
                &lt;/heading&gt;
                &lt;bodytext searchtype="COMMENTARY"&gt;
                ...
                &lt;/bodytext&gt;
                ...

        	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:body&gt;
  &lt;seclaw:level leveltype="unclassified"&gt;
              &lt;heading align="center"&gt;
                  &lt;title&gt;III. PART II OF THE ACT: BILLS OF EXCHANGE&lt;/title&gt;
              &lt;/heading&gt;
              ...
              &lt;seclaw:bodytext&gt;
                  &lt;seclaw:level leveltype="unclassified"&gt;
                      &lt;heading align="center"&gt;
                          &lt;title&gt;5. Capacity and Authority of Parties&lt;/title&gt;
                      &lt;/heading&gt;
                      &lt;seclaw:bodytext&gt;
                          &lt;seclaw:level leveltype="unclassified"&gt;
                              &lt;heading align="left"&gt;
                                  &lt;title&gt;
                                      ...
                                  &lt;/title&gt;
                              &lt;/heading&gt;
                              &lt;seclaw:bodytext&gt;
                              ...
                              &lt;/seclaw:bodytext&gt;
                              ...

	</codeblock>
        </example>
        
            <p>When source file is not having <sourcexml>refpt</sourcexml> as a child of either
                <sourcexml> leg:heading, leg:level, leg:level-vrnt, page, level</sourcexml> then
            conversion should generate <targetxml>ref:anchor</targetxml> element as a first child of
                <targetxml>seclaw:level</targetxml> in target.
                <targetxml>ref:anchor/@id="TOC00*"</targetxml>, for * Conversion should generate a
            unique numeric value and <targetxml>ref:anchor/@anchortype="local"</targetxml>.</p><note>Conversion should generate above <sourcexml>refpt</sourcexml> rule for all the
                <sourcexml>leg:heading, leg:level, leg:level-vrnt, page, level</sourcexml> elements
            those are having following scenario e.g:
                <sourcexml>leg:heading/@subdoc="true"</sourcexml>.</note>
        
        <example>
            <title>Source XML</title>
            <codeblock>
&lt;comm:body&gt;
    &lt;level leveltype="1" subdoc="true"&gt;
        &lt;heading align="left"&gt;
            &lt;title searchtype="DOC-HEADING"&gt;III. PART II OF THE ACT: BILLS OF EXCHANGE&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;
                 </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>
&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="unclassified"&gt;
        &lt;ref:anchor id="TOC001" anchortype="local"/&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt;III. PART II OF THE ACT: BILLS OF EXCHANGE&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
             </codeblock>
        </example>
       
        <section>
            <title>Changes</title>
            <p>2016-06-17: <ph id="change_20160617_AS">Updated target element mapping when source is
                    not having <sourcexml>refpt</sourcexml> as a child of <sourcexml>leg:heading,
                        leg:heading, leg:level, leg:level-vrnt, page, level</sourcexml> or other
                    elements having <sourcexml>@subdoc="true"</sourcexml>and note for generation of
                        <targetxml>ref:anchor</targetxml> based on
                        <sourcexml>@subdoc="true"</sourcexml> value.</ph></p>
            <p>2014-06-04: <ph id="change_20140604_jm">Not a rule change. Not directly related to
                        <sourcexml>level</sourcexml>. Target sample mistakenly showed bold emphasis
                    as child of title. Now removed to reflect common rules for emph within
                    title.</ph></p>            
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_level.dita  -->
	<!--<xsl:message>CA10_level.xsl requires manual development!</xsl:message>--> 

	<!--<xsl:template match="level">

		<!-\-  Original Target XPath:  seclaw:level   -\->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!-\-  Original Target XPath:  @includeintoc   -\->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!-\-  Original Target XPath:  @alternatetoccaption   -\->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="refpt">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match=" leg:heading, leg:level, leg:level-vrnt, page, level">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="leg:heading, leg:level, leg:level-vrnt, page, level">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="leg:heading/@subdoc=&#34;true&#34;">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="leg:heading,&#xA;                        leg:heading, leg:level, leg:level-vrnt, page, level">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="@subdoc=&#34;true&#34;">

		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>-->

    <xsl:template match="level[parent::comm:body]">
        <seclaw:level>
            <xsl:attribute name="leveltype">
                <xsl:text>unclassified</xsl:text>
            </xsl:attribute>
           <!-- <xsl:call-template name="refanchor"/>-->
            <xsl:apply-templates select="heading"/>
            <xsl:apply-templates select="/COMMENTARYDOC/comm:info[child::contrib]" mode="contrib"/>
            <xsl:apply-templates select="node() except (level[@subdoc='true'][preceding-sibling::level[@subdoc='true']],level[@subdoc='true'][preceding-sibling::*[1][name()='bodytext']],heading)"/>
        </seclaw:level>
    </xsl:template>
    
    <xsl:template match="level[parent::level]">
        <xsl:choose>
            <xsl:when test="child::heading/title/emph/refpt|child::heading/title/refpt">
                <seclaw:bodytext>
                    <seclaw:level>
                        <xsl:attribute name="leveltype">
                            <xsl:text>unclassified</xsl:text>
                        </xsl:attribute>
                        <xsl:apply-templates select="child::heading/title/emph/refpt"/>
                        <xsl:apply-templates select="child::heading/title/refpt"/>
                        <xsl:apply-templates select="@*|node() except (level[preceding-sibling::bodytext] |  level[@subdoc='true'][preceding-sibling::level[@subdoc='true']]) "/>
                    </seclaw:level>
                </seclaw:bodytext>
            </xsl:when>
            <xsl:otherwise>
                <seclaw:bodytext>
                    <seclaw:level>
                        <xsl:attribute name="leveltype">
                            <xsl:text>unclassified</xsl:text>
                        </xsl:attribute>
                        <xsl:apply-templates select="@*|node() except (level[preceding-sibling::bodytext] |  level[@subdoc='true'][preceding-sibling::level[@subdoc='true']]) "/>
                    </seclaw:level>
                </seclaw:bodytext>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="@subdoc">
        <xsl:attribute name="includeintoc">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="@toc-caption">
        <xsl:attribute name="alternatetoccaption">
            <xsl:value-of select="."/>
        </xsl:attribute>
        
    </xsl:template>
    
    <xsl:template match="level/@leveltype"/>
    
    <xsl:template match="emph[child::refpt][parent::title or parent::text ]">
        <xsl:apply-templates select="node() except refpt"/>
    </xsl:template>
    
    <xsl:template match="@searchtype"/>
    
</xsl:stylesheet>



