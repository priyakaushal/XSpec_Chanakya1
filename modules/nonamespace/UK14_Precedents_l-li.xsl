<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:frm="http://www.lexis-nexis.com/glp/frm"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita frm ci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_l-li">
        <title>l/li <lnpid>id-UK14-30215</lnpid></title>
        <body>
            <section>
                <p><sourcexml>l/li</sourcexml> becomes <targetxml>list/listitem</targetxml> as
                    described in General Markup section.</p>
                <p><b>EXCEPT:</b> When target parent is <targetxml>form:bodytext</targetxml>,
                        <sourcexml>l/li</sourcexml> becomes
                        <targetxml>form:list/form:listitem</targetxml></p>
                <p>Attributes on <sourcexml>li</sourcexml> are optional and will occur only when
                    target is <targetxml>form:listitem</targetxml>. Attributes convert as follows: <ul>
                        <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                        <li><sourcexml>@optionalKey</sourcexml> becomes
                                <targetxml>@optionalKey</targetxml></li>
                        <li><sourcexml>@alternateKey</sourcexml> becomes
                                <targetxml>@alternateKey</targetxml></li>
                        <li><sourcexml>@alternateGroupKey</sourcexml> becomes
                                <targetxml>@alternateGroupKey</targetxml></li>
                    </ul></p>
            </section>
            <section>
                <p>
                    <b>
                        <u>Special Rule for lilabel "disc" and "line":</u>
                    </b>
                </p>
                <p><sourcexml>lilabel</sourcexml> becomes <targetxml>label</targetxml> as per
                    General Markup rules. When content is the word disc, transform to bullet symbol,
                    unicode &amp;#x2022; (html equivalent &amp;bull;). When content is the word
                    line, transform to en-dash unicode &amp;#x2013; (html &amp;ndash;).</p>
                <p><sourcexml>&lt;lilabel&gt;disc&lt;/lilabel&gt;</sourcexml> becomes
                        <targetxml>&lt;label&gt;&amp;#x2022;&lt;/label&gt;</targetxml>
                </p>
                <p><sourcexml>&lt;lilabel&gt;line&lt;/lilabel&gt;</sourcexml> becomes
                        <targetxml>&lt;label&gt;&amp;#x2013;&lt;/label&gt;</targetxml></p>
            </section>

            <pre>
        <b>EXAMPLE: Target parent is <targetxml>form:bodytext</targetxml></b>
            
<b><i>Source XML</i></b>

&lt;clause id="ukContentItem9c6647f9-c4aa-4233-95a7-00ead37f9c89"&gt;
    &lt;heading&gt;
        &lt;desig&gt;
            &lt;designum&gt;2&lt;/designum&gt;
        &lt;/desig&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;You will be expected...at:&lt;/text&gt;
    &lt;/p&gt;
    &lt;l&gt;
        &lt;li alternateKey="0021" id="li-00211"&gt;
            &lt;lilabel&gt;disc&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;Board meetings&lt;/text&gt;
            &lt;/p&gt;
            &lt;l&gt;
                &lt;li optionalKey="opt-N66155"&gt;
                    &lt;lilabel&gt;line&lt;/lilabel&gt;
                    &lt;p&gt;
                        &lt;text&gt;Regular and special sessions&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/li&gt;
            &lt;/l&gt;
        &lt;/li&gt;
        &lt;li alternateKey="0021" id="li-00212"&gt;
            &lt;lilabel&gt;disc&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;Board dinners&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/clause&gt;
 
<b><i>Target XML</i></b>

&lt;form:clause&gt;
    &lt;ref:anchor id="ukContentItem9c6647f9-c4aa-4233-95a7-00ead37f9c89" anchortype="local"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;2&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;form:bodytext&gt;
        &lt;form:p&gt;
            &lt;form:text&gt;You will be expected...at:&lt;/form:text&gt;
        &lt;/form:p&gt;
        &lt;form:list&gt;
            &lt;form:listitem alternateKey="0021" xml:id="li-00211"&gt;
                &lt;label&gt;&amp;#x2022;&lt;/label&gt;
                &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                        &lt;form:text&gt;Board meetings&lt;/form:text&gt;
                    &lt;/form:p&gt;
                    &lt;form:list&gt;
                        &lt;form:listitem optionalKey="opt-N66155"&gt;
                            &lt;lilabel&gt;&amp;#x2013;&lt;/lilabel&gt;
                            &lt;form:bodytext&gt;
                                &lt;form:p&gt;
                                    &lt;form:text&gt;Regular and special sessions&lt;/form:text&gt;
                                &lt;/form:p&gt;
                            &lt;/form:bodytext&gt;
                        &lt;/form:listitem&gt;
                    &lt;/form:list&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:listitem&gt;
            &lt;form:listitem alternateKey="0021" xml:id="li-00212"&gt;
                &lt;label&gt;&amp;#x2022;&lt;/label&gt;
                &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                        &lt;form:text&gt;Board dinners&lt;/form:text&gt;
                    &lt;/form:p&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:listitem&gt;
        &lt;/form:list&gt;
    &lt;/form:bodytext&gt;
&lt;/form:clause&gt;

                </pre>
            <section>
                <title>Changes</title>
                <p>2013-11-12: <ph id="change_20131112_jm">Added special rule to transform
                            <sourcexml>lilabel</sourcexml> content "disc" and "line" to unicode code
                        for bullet and en-dash. Required for Presentation. Responds to LBU request.
                        Limited to UK14. Webteam 245501.</ph></p>
                <p>2013-11-11: <ph id="change_20131111_jm">Illustrative. Ancillary to this section.
                        Corrected example to show <sourcexml>clause[@id]</sourcexml> mapped to
                            <targetxml>ref:anchor[@id]</targetxml>.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_l-li.dita  -->
    <!--<xsl:message>UK14_Precedents_l-li.xsl requires manual development!</xsl:message>-->

    <!--    <xsl:template match="li[not(parent::l[(parent::clause) or (parent::div)])]">

		<!-\-  Original Target XPath:  list/listitem   -\->
			<listitem>
				<xsl:apply-templates select="@* | node()"/>
			</listitem>
	</xsl:template>-->

    <xsl:template match="l" priority="50">
        <xsl:choose>
            <xsl:when test="ancestor::defdesc and ancestor::form and not(ancestor::note) and $streamID='UK14'">
                <form:list>
                    <xsl:apply-templates select="node()"/>
                </form:list>
            </xsl:when>
            <xsl:when test="((ancestor::clause or ancestor::frm:div or ancestor::frm:optional or ancestor::frm:alternate or ancestor::bodytext[parent::level/@leveltype='shared-note']) and (not((ancestor::note) or (ancestor::entry) or (ancestor::defdesc) or (ancestor::defterm) or (ancestor::blockquote) or (ancestor::footnotegrp))))">
                <form:list>
                    <xsl:apply-templates select="node()"/>
                </form:list>
            </xsl:when>
            <xsl:otherwise>
                <list>
                    <xsl:apply-templates select="node()"/>
                </list>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="refpt[parent::li and ancestor::defdesc and ancestor::form and $streamID='UK14']" priority="50">
        <!-- ref:anchor within form:listitem is not schema valid.  (it is schema valid for base:listitem) -->             
        <xsl:comment>ref:anchor suppressed for schema validity: <xsl:value-of select="@id"/></xsl:comment>
    </xsl:template>
    
    <xsl:template match="l/li" priority="50">

        <!--  Original Target XPath:  form:listitem   -->
        <xsl:choose>
            <xsl:when test="ancestor::defdesc and ancestor::form and not(parent::l/ancestor::note) and $streamID='UK14'">
                <form:listitem>
                    <xsl:apply-templates select="lilabel"/>
                    <form:bodytext>
                        <xsl:apply-templates select="node() except lilabel"/>
                    </form:bodytext>
                </form:listitem>
            </xsl:when>
            <xsl:when test="parent::l[((ancestor::clause or ancestor::bodytext[parent::level/@leveltype='shared-note'] or ancestor::frm:div or ancestor::frm:optional or ancestor::frm:alternate) and (not((ancestor::note) or (ancestor::defdesc) or (ancestor::defterm) or (ancestor::footnotegrp) or (ancestor::entry) or (ancestor::blockquote))))]">
                <form:listitem>
                    <xsl:apply-templates select="@*, refpt"/>
                    <xsl:apply-templates
                        select="node() except (refpt |p[preceding-sibling::*[1][self::p]]| (note[@notetype = 'instruction'][preceding-sibling::p] | l[preceding-sibling::p]))"
                    />
                    <xsl:if test="not(*[not(self::lilabel) and not(self::refpt)])">
                        <!-- WPK.  webstar 7057284 : if there are no nodes besides lilabel and refpt, then we need empty bodytext for schema validity -->
                        <form:bodytext/>
                    </xsl:if>
                </form:listitem>
            </xsl:when>
            <xsl:otherwise>
                <listitem>
                    <xsl:apply-templates select="@*, refpt"/>
                    <xsl:apply-templates
                        select="node() except (l | refpt | blockquote[preceding-sibling::*[1][self::p]]|(note[@notetype = 'instruction'][preceding-sibling::p]) | p[preceding-sibling::note[(@notetype = 'instruction' or @notetype='commentary')]]|(p[(parent::li) or (parent::defdesc)][preceding-sibling::p][following-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]]]))"
                    />
                    <xsl:if test="child::l[not(preceding-sibling::p)]">
                        <bodytext>
                            <xsl:apply-templates select="child::l"/>
                        </bodytext>
                    </xsl:if>
                </listitem>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="li/@optionalKey">

        <!--  Original Target XPath:  @optionalKey   -->
        <xsl:attribute name="optionalKey">
            <xsl:value-of select="."/>
        </xsl:attribute>

    </xsl:template>

    <xsl:template match="li/@alternateKey">

        <!--  Original Target XPath:  @alternateKey   -->
        <xsl:attribute name="alternateKey">
            <xsl:value-of select="."/>
        </xsl:attribute>

    </xsl:template>

    <xsl:template match="li/@alternateGroupKey">

        <!--  Original Target XPath:  @alternateGroupKey   -->
        <xsl:attribute name="alternateGroupKey">
            <xsl:value-of select="."/>
        </xsl:attribute>

    </xsl:template>

    <xsl:template match="lilabel" priority="50">

        <!--  Original Target XPath:  label   -->
        <label>
            <xsl:apply-templates select="@* | node()"/>
        </label>

    </xsl:template>

    <xsl:template
        match="p[not(preceding-sibling::p)][not(preceding-sibling::note[(@notetype = 'instruction' or @notetype='commentary')])][parent::li[(parent::l[((ancestor::clause or ancestor::frm:div or ancestor::frm:optional or ancestor::bodytext[parent::level/@leveltype='shared-note'] or ancestor::frm:alternate) and (not((ancestor::note) or (ancestor::defdesc) or (ancestor::entry) or (ancestor::defterm) or (ancestor::footnotegrp) or (ancestor::blockquote))))])]]"
        priority="2">
        <xsl:choose>
            <xsl:when test="child::note">
                <form:bodytext>
                    <form:p>
                        <xsl:apply-templates select="@* | node() except note"/>
                    </form:p>
                    <xsl:apply-templates select="note"/>
                </form:bodytext>
            </xsl:when>
            <xsl:when test="following-sibling::*[1][self::p]">
                <form:bodytext>
                    <form:p>
                        <xsl:apply-templates select="@* | node()"/>
                    </form:p>
                    <xsl:if test="following-sibling::l">
                        <xsl:apply-templates select="following-sibling::l"/>
                    </xsl:if>
                    <xsl:apply-templates select="following-sibling::p" mode="bodytext_wrapper"/>
                </form:bodytext>
            </xsl:when>
            <xsl:otherwise>
                <form:bodytext>
                    <form:p>
                        <xsl:apply-templates select="@* | node()"/>
                    </form:p>
                        <xsl:apply-templates select="following-sibling::l"/>  
                </form:bodytext>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template
        match="text[parent::p[not(preceding-sibling::note[(@notetype = 'instruction' or @notetype='commentary')])][parent::li[(parent::l[((ancestor::clause or ancestor::frm:div or ancestor::frm:optional or ancestor::bodytext[parent::level/@leveltype='shared-note'] or ancestor::frm:alternate) and (not((ancestor::note) or (ancestor::defdesc) or (ancestor::defterm) or (ancestor::entry) or (ancestor::footnotegrp) or (ancestor::blockquote))))])]]][not(child::note[@notetype='instruction'])]"
        priority="50">
        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text>
    </xsl:template>
    
    
    <xsl:template
        match="p[not(preceding-sibling::p)][not(preceding-sibling::note[(@notetype = 'instruction' or @notetype='commentary')])][(parent::li[(parent::l[(ancestor::note) or (ancestor::defdesc) or (ancestor::defterm) or (ancestor::footnotegrp) or (ancestor::entry) or (ancestor::blockquote) or (ancestor::bodytext[parent::level/@leveltype='section' or parent::level/@leveltype='chapter' or parent::level/@leveltype='subsection' or parent::level/@leveltype='appendix'])])])]"
        priority="2">
        <xsl:choose>
            <xsl:when test="following-sibling::*[1][self::p]">
                <bodytext>
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                    <xsl:if test="following-sibling::l">
                        <xsl:apply-templates select="following-sibling::l"/>
                    </xsl:if>
                    <xsl:apply-templates select="following-sibling::p[not(following-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]])][not(child::note[(@notetype = 'instruction') or (@notetype='commentary')])]" mode="bodytext_wrapper"/>
                    <xsl:apply-templates select="following-sibling::p[(parent::li) or (parent::defdesc)][following-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]]]"></xsl:apply-templates>
                </bodytext>
            </xsl:when>
            <xsl:otherwise>
                <bodytext>
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                    <xsl:if test="following-sibling::l or following-sibling::blockquote">
                        <xsl:apply-templates select="(following-sibling::l | following-sibling::blockquote)"/>
                    </xsl:if>
                </bodytext>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="p[not(following-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]])]" mode="bodytext_wrapper">
        <xsl:choose>
            <xsl:when test="parent::li[(parent::l[((ancestor::clause or ancestor::frm:div or ancestor::frm:optional or ancestor::frm:alternate) and (not((ancestor::note) or (ancestor::defdesc) or (ancestor::defterm) or (ancestor::blockquote))))])] and child::note">
                <form:p>
                    <xsl:apply-templates select="@* | node() except note"/>
                </form:p>
                <xsl:apply-templates select="note"/>
            </xsl:when>
            <xsl:when test="parent::li[(parent::l[((ancestor::clause or ancestor::frm:div or ancestor::frm:optional or ancestor::bodytext[parent::level/@leveltype='shared-note'] or ancestor::frm:alternate) and (not((ancestor::note) or (ancestor::defdesc) or (ancestor::entry) or (ancestor::defterm) or (ancestor::blockquote))))])]">
                <form:p>
                    <xsl:apply-templates select="@* | node() except note"/>
                </form:p>
                <xsl:apply-templates select="note"/>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <xsl:apply-templates select="@* | node() except defterm|note"/>
                </p>
                <xsl:apply-templates select="note"/> 
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template
        match="p[preceding-sibling::lilabel][not(preceding-sibling::note[(@notetype = 'instruction' or @notetype='commentary')])]"
        priority="1"> 
    </xsl:template>

    <xsl:template match="li/@id" priority="2">
        <xsl:attribute name="xml:id">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    

<xsl:template match="link[@refpt][not(@type or @smi or @filename)]" priority="2">
        <ref:lnlink>
            <ref:marker>
                <xsl:choose>
                    <xsl:when test="$streamID='CA02-CC'">
                        <xsl:value-of select="."/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="node()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </ref:marker>
            <ref:locator>
                <xsl:attribute name="anchoridref">
                    <xsl:value-of select="@refpt"/>
                </xsl:attribute>
            </ref:locator>
        </ref:lnlink>
    </xsl:template> 
    
    <xsl:template match="li/@optionalKey" priority="100"/>

</xsl:stylesheet>
