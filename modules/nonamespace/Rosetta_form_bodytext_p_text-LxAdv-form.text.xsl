<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_form_bodytext_p_text-to-LexisAdvance_form.text">
    <title><sourcexml>form/bodytext/p/text</sourcexml> to <targetxml>form:text</targetxml> <lnpid>id-CCCC-10326</lnpid></title>
    <body>
        <section>
            <p><sourcexml>form/bodytext/p/text</sourcexml> becomes <targetxml>form:text</targetxml>.</p>
        </section>
        <example>
            <title>Source XML</title>
        <codeblock>

&lt;form&gt;
    &lt;bodytext searchtype="FORM"&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="bf"&gt;THIS AGREEMENT&lt;/emph&gt; 
                is made on&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;
                &amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;
                &amp;#160;&amp;#160; 2010
            &lt;/text&gt;
        &lt;/p&gt;
    .......
    .......
        &lt;h align="center"&gt;
            1.&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; 
            The Independent Expert has been appointed by the parties under clause
            .. of the Agreement to assist in resolving the dispute or to 
            resolve the dispute by determining the meaning of clause &amp;hellip;&amp;#160; of
            the Agreement and also to determine which party or parties should 
            pay the costs of and incidental to the resolution of the dispute.
        &lt;/h&gt;
        &lt;h align="center"&gt;
            2.&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160;&amp;#160; 
            The Independent Expert has accepted the appointment, and will assist
            in determining or will determine the dispute in accordance with the 
            terms of this agreement.
        &lt;/h&gt;
    ........
    ........
        &lt;h align="center"&gt;&amp;#160;&lt;/h&gt;
    &lt;/bodytext&gt;
&lt;/form&gt;

        </codeblock>
        </example>
        <example>
            <title>Target XML</title>
        <codeblock>

&lt;form:form&gt;
    &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
        &lt;form:bodytext&gt;
            &lt;form:p&gt;
                &lt;form:text&gt;
                    &lt;emph typestyle="bf"&gt;THIS AGREEMENT&lt;/emph&gt; 
                    is made on&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
                    &amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
                    &amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; 2010
                &lt;/form:text&gt;
            &lt;/form:p&gt;
                ......
                ......
            &lt;form:h align="center"&gt;
                1.&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
                The Independent Expert has been appointed by the parties under clause .. 
                of the Agreement to assist in resolving the dispute or to resolve 
                the dispute by determining the meaning of clause &amp;#x2026;&amp;#x00A0;  
                of the Agreement and also to determine which party or parties 
                should pay the costs of and incidental to the resolution of the dispute.
            &lt;/form:h&gt;
            &lt;form:h align="center"&gt;
                2.&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
                The Independent Expert has accepted the appointment, and will 
                assist in determining or will determine the dispute in accordance
                with the terms of this agreement.
            &lt;/form:h&gt;
                ......
                ......
            &lt;form:h align="center"&gt;&amp;#x00A0;&lt;/form:h&gt;
        &lt;/form:bodytext&gt;
    &lt;/form:document&gt;
&lt;/form:form&gt;

        </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2012-08-30: Created. </p>
        </section>
    </body>
	</dita:topic>
    <!--RS: 02-01-2018 Added Choose Condition for blockquote/p/text Webstar #7078783 -->
    <xsl:template match="text[parent::p[(parent::blockquote|parent::bodytext)[not(ancestor::fnbody)][ancestor::form[ancestor::COMMENTARYDOC|ancestor::LEGDOC]]]]">
<xsl:choose>
    <xsl:when test="parent::p[parent::blockquote]">
        <text>
        <xsl:apply-templates select="@* | node()"/>
        </text>
    </xsl:when>
    <xsl:otherwise>
        <!--  Original Target XPath:  form:text   -->
        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text> 
    </xsl:otherwise>
</xsl:choose>
       
		

	</xsl:template>

    <xsl:template match="text[$streamID=('UK14', 'UK12')][parent::p[(parent::blockquote)[ancestor::form[ancestor::COMMENTARYDOC]]]]" priority="2">
        <!-- WPK: form:text is not schema valid within blockquote/p -->
        
        <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </text>
        
    </xsl:template>
    
</xsl:stylesheet>