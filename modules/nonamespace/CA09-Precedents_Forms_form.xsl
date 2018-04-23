<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:frm="http://www.lexis-nexis.com/glp/frm"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita frm">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="form">
        <title>form <lnpid>id-CA09-14414</lnpid></title>
        <body>
            <p><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml>. The child
                elements are described below: <ul>
                    <li><sourcexml>frm:body</sourcexml> becomes
                            <targetxml>form:document/form:bodytext</targetxml> and
                            <targetxml>form:document</targetxml> element having some required
                        attrbutes: <ul>
                            <li><targetxml>@annotated</targetxml> with default attribute value
                                    '<b>false</b>', <targetxml>@official</targetxml> with default
                                attribute value '<b>false</b>' and <targetxml>@typeofdoc</targetxml>
                                with default attribute value '<b>unnamed</b>'.</li>
                        </ul> Other child elements are converted according below list: <ul>
                            <li><sourcexml>frm:caption</sourcexml> becomes
                                    <targetxml>form:caption</targetxml>.</li>
                            <li><sourcexml>frm:braceblock</sourcexml> becomes
                                    <targetxml>form:braceblock</targetxml>.</li>
                            <li><sourcexml>frm:bracein</sourcexml> becomes
                                    <targetxml>form:bracein</targetxml>.</li>
                            <li><sourcexml>frm:braceout</sourcexml> becomes
                                    <targetxml>form:braceout</targetxml>.</li>
                            <li><sourcexml>level/bodytext/p/text/frm:prompt</sourcexml> becomes
                                    <targetxml>seclaw:level/seclaw:bodytext/p/text/form:prompt</targetxml>.</li>
                            <li><sourcexml>form/bodytext/p/text</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml>.</li>
                            <li><sourcexml>frm:prompt</sourcexml> becomes
                                    <targetxml>form:prompt</targetxml>.</li>
                        </ul>
                        <note>If multiple paragraphs markup (i.e. <sourcexml>p/text</sourcexml>)
                            comes inside the “<sourcexml>frm:bracein</sourcexml>” or
                                “<sourcexml>frm:braceout</sourcexml>” in source documents then
                            conversion needs to convert all paragraphs in
                                <targetxml>form:line</targetxml>.</note>
                        <note>When input document is having multiple ‘<sourcexml>text</sourcexml>’
                            markup inside the single ’<sourcexml>p</sourcexml>’ then target
                            conversion need to just add anotther <targetxml>form:line</targetxml>
                            with extra self nested child <targetxml>proc:nl</targetxml> (i.e.
                                <targetxml>&lt;form:line&gt;&lt;proc:nl/&gt;&lt;/form:line&gt;</targetxml>).
                            See below example snippet for more reference:</note>
                        <p>See below Rosetta and NewLexis output examples for reference:</p></li>
                </ul>
            </p>

            <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;bodytext searchtype="COMMENTARY"&gt;
    &lt;p&gt;
        &lt;text&gt;TO: The Honourable, The Minister of Provincial Affairs and Attorney
            General&lt;/text&gt;
    &lt;/p&gt;
    ...
    &lt;form&gt;
        &lt;frm:body&gt;
            &lt;frm:caption&gt;
                &lt;frm:braceblock&gt;
                    &lt;frm:bracein&gt;
                        &lt;p&gt;
                            &lt;text align="left"&gt;WX, liquidator and executor of the Last Will and
                                Testament of the late TX and trustee of the &lt;nl/&gt;testamentary trust
                                created thereby, residing and domiciled at
                                .............&lt;nl/&gt;&amp;#x2013;and&amp;#x2013;&lt;/text&gt;
                            &lt;text align="left"&gt;SX, liquidator and executor of the Last Will and
                                Testament of the late TX and trustee of the &lt;nl/&gt;testamentary trust
                                created thereby, residing and domiciled at .............
                                &lt;nl/&gt;&amp;#x2013;and&amp;#x2013;&lt;/text&gt;
                            &lt;text align="left"&gt;DX, liquidator and executor of the Last Will and
                                Testament of the late TX and trustee of the &lt;nl/&gt;testamentary trust
                                created thereby, residing and domiciled at .............&lt;nl/&gt;&lt;emph
                                    typestyle="bf"&gt;Petitioners&lt;/emph&gt;&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text&gt;&amp;#x2013; and &amp;#x2013;&lt;/text&gt;
                        &lt;/p&gt;
                        …
                    &lt;/frm:bracein&gt;
                &lt;/frm:braceblock&gt;
            &lt;/frm:caption&gt;
        &lt;/frm:body&gt;
     &lt;/form&gt;
     ...
&lt;/bodytext&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:level leveltype="unclassified"&gt;
    &lt;seclaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;TO: The Honourable, The Minister of Provincial Affairs and Attorney
                General&lt;/text&gt;
        &lt;/p&gt;
        ...
        &lt;form:form&gt;
            &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                &lt;form:bodytext&gt;
                    &lt;form:caption&gt;
                        &lt;form:braceblock&gt;
                            &lt;form:bracein&gt;
                                &lt;form:line align="left"&gt;WX, liquidator and executor of the Last Will and
                                    Testament of the late TX and trustee of the &lt;proc:nl/&gt;testamentary trust
                                    created thereby, residing and domiciled at
                                    .............&lt;proc:nl/&gt;&amp;#x2013;and&amp;#x2013;&lt;/form:line&gt;
                                &lt;form:line align="left"&gt;&lt;proc:nl/&gt;&lt;/form:line&gt;
                                &lt;form:line align="left"&gt;SX, liquidator and executor of the Last Will and
                                    Testament of the late TX and trustee of the &lt;proc:nl/&gt;testamentary trust
                                    created thereby, residing and domiciled at .............
                                    &lt;proc:nl/&gt;&amp;#x2013;and&amp;#x2013;&lt;/form:line&gt;
                                &lt;form:line align="left"&gt;&lt;proc:nl/&gt;&lt;/form:line&gt;
                                &lt;form:line align="left"&gt;DX, liquidator and executor of the Last Will and
                                    Testament of the late TX and trustee of the &lt;proc:nl/&gt;testamentary trust
                                    created thereby, residing and domiciled at .............&lt;proc:nl/&gt;&lt;emph
                                        typestyle="bf"&gt;Petitioners&lt;/emph&gt;&lt;/form:line&gt;
                                        &lt;/form:line&gt;
                                &lt;form:line&gt;&amp;#x2013; and &amp;#x2013;&lt;/proc:nl&gt;&lt;/form:line&gt;
                            &lt;/form:bracein&gt;
                        &lt;/form:braceblock&gt;
                    &lt;/form:caption&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:document&gt;
        &lt;/form:form&gt;
        ...
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

    </pre>
            <section>
                <title>Changes</title>
                <p>2016-04-01: <ph id="change_20160401_SS">Instruction added for handling input
                        scenario "<sourcexml>form</sourcexml>" with child elements</ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA09-Precedents_Forms\form.dita  -->
    <!--<xsl:message>form.xsl requires manual development!</xsl:message> -->

    <xsl:template match="form">
        <!--  Original Target XPath:  form:form   -->
        <form:form>
            <xsl:apply-templates select="@* | node()"/>
        </form:form>
    </xsl:template>

    <xsl:template match="frm:body">
        <!--  Original Target XPath:  form:document/form:bodytext   -->
        <form:document>
            <xsl:attribute name="annotated">false</xsl:attribute>
            <xsl:attribute name="official">false</xsl:attribute>
            <xsl:attribute name="typeofdoc">unnamed</xsl:attribute>
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:document>
    </xsl:template>

    <xsl:template match="frm:caption">
        <!--  Original Target XPath:  form:caption   -->
        <form:caption>
            <xsl:apply-templates select="@* | node()"/>
        </form:caption>
    </xsl:template>

    <xsl:template match="frm:braceblock">
        <!--  Original Target XPath:  form:braceblock   -->
        <form:braceblock>
            <xsl:apply-templates select="@* | node()"/>
        </form:braceblock>
    </xsl:template>

    <xsl:template match="frm:bracein">
        <!--  Original Target XPath:  form:bracein   -->
        <form:bracein>
            <xsl:apply-templates select="@* | node()"/>
        </form:bracein>
    </xsl:template>

    <xsl:template match="frm:braceout">
        <!--  Original Target XPath:  form:braceout   -->
        <form:braceout>
            <xsl:apply-templates select="@* | node()"/>
        </form:braceout>
    </xsl:template>

    <xsl:template match="frm:bracein/p">
        <!--  Original Target XPath:  form:line   -->
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="frm:braceout/p">
        <!--  Original Target XPath:  form:line   -->
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

    <xsl:template match="frm:bracein/p/text">
        <!--  Original Target XPath:  form:line   -->        
        <form:line>           
            <xsl:apply-templates select="@* | node()"/>
        </form:line>
        <xsl:if test="following-sibling::text">
            <form:line align="left"><proc:nl/></form:line>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="frm:bracein/p/text/@align">
        <!--  Original Target XPath:  form:line   -->        
        <xsl:attribute name="align">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="frm:braceout/p/text">
        <!--  Original Target XPath:  form:line   -->
        <form:line>
            <xsl:apply-templates select="@* | node()"/>
        </form:line>
    </xsl:template>
    
    <xsl:template match="form/frm:body/frm:caption/frm:braceblock/frm:braceout/p/text/@align"/>
</xsl:stylesheet>
