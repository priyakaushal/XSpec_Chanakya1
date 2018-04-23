<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:frm="http://www.lexis-nexis.com/glp/frm"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita frm">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_COMMENTARYDOC_form-clause">
        <title>form <lnpid>id-CCCC-10552</lnpid>
        </title>
        <body>
            <section>
                <p><sourcexml>form[@id]</sourcexml> becomes <targetxml>form:form</targetxml>.</p>
                <p>And also create child <targetxml>form:info</targetxml> as follows, with the value of <sourcexml>form[@id]</sourcexml> mapped to <targetxml>@normval</targetxml> - </p>
                <p>
                    <targetxml>form:info/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode[@normval]</targetxml>
                </p>
                <ul id="ul_p22_3kx_gy">
                    <li><sourcexml>frm:body</sourcexml> becomes <targetxml>form:document/form:bodytext</targetxml>. Generate the following attributes with hard-coded values: <targetxml>form:document[@annotated="false"
                            @official="false" @typeofdoc="unnamed"]</targetxml>. <ul id="ul_tbj_3g2_hy">
                            <li><sourcexml>frm:description</sourcexml> becomes <targetxml>form:info/dc:description</targetxml>.</li>
                            <li><sourcexml>frm:divs</sourcexml> (plural) and <sourcexml>frm:div</sourcexml> (singular) have same conversion. Both become <targetxml>form:div/form:bodytext</targetxml>. Optional
                                    <sourcexml>@divtype</sourcexml> becomes <targetxml>@divtype</targetxml>.</li>
                            <li><sourcexml>frm:prompt</sourcexml> becomes <targetxml>form:prompt</targetxml></li>
                            <li><sourcexml>frm:optional</sourcexml> becomes <targetxml>form:optionalcontent</targetxml>. Optional <sourcexml>@id</sourcexml> becomes <targetxml>xml:id</targetxml>.</li>
                            <li><sourcexml>clause</sourcexml> becomes <targetxml>form:clause/form:bodytext</targetxml>, with optional attributes converted as follows:<ul id="ul_igr_hg2_hy">
                                    <li><sourcexml>@clause-type</sourcexml> becomes <targetxml>form:clause[@clausetype]</targetxml></li>
                                    <li><sourcexml>@preservenumbering</sourcexml> becomes <targetxml>form:clause[@preservenumbering]</targetxml>.</li>
                                    <li><sourcexml>@id</sourcexml> becomes <targetxml>form:clause[@xml:id]</targetxml>. </li>
                                </ul></li>
                        </ul></li>
                </ul>
            </section>
            <section>
                <note><targetxml>form:bodytext</targetxml> is a required child of <targetxml>form:div</targetxml> and <targetxml>form:clause</targetxml>. A heading is allowed as a direct child of
                        <targetxml>form:div</targetxml> and <targetxml>form:clause</targetxml> but anything else is child of <targetxml>form:bodytext</targetxml>. This includes nesting, for example
                        <sourcexml>clause/clause</sourcexml> becomes <targetxml>form:clause/form:bodytext/form:clause/form:bodytext</targetxml>.</note>
            </section>
            <section>
                <p><b>Special Rule for <targetxml>form</targetxml> namespace:</b> When target parent is <targetxml>form:bodytext</targetxml>, the following map to the <targetxml>form</targetxml> namespace:<ul
                        id="ul_zg2_3kx_gy">
                        <li><sourcexml>p/text</sourcexml> becomes <targetxml>form:p/form:text</targetxml></li>
                        <li><sourcexml>l/li</sourcexml> becomes <targetxml>form:list/form:listitem</targetxml></li>
                        <li><sourcexml>h</sourcexml> becomes <targetxml>form:h</targetxml></li>
                        <li><sourcexml>sigblock</sourcexml> becomes <targetxml>form:sigblock</targetxml>. When target is <targetxml>form:sigblock</targetxml>, children map as follows:<ul id="ul_gmt_h52_hy">
                                <li><sourcexml>p/text</sourcexml> becomes <targetxml>form:line</targetxml></li>
                                <li><sourcexml>p/table</sourcexml> becomes <targetxml>table</targetxml>, i.e. suppress <sourcexml>p</sourcexml></li>
                            </ul></li>
                    </ul></p>
            </section>
            <pre>
        <b>EXAMPLE 1:</b>
            
<b><i>SOURCE XML</i></b>

&lt;form&gt;
    &lt;heading&gt;
        &lt;title&gt;Cover letter to accompany Companies House form MR01 (Particulars of a charge)
        &lt;/title&gt;
        &lt;note notetype="instruction" searchtype="COMMENTARY"&gt;
          &lt;p id="d577e715"&gt;
             &lt;text&gt;Form MR01 is the appropriate form to use to register a charge at Companies House when the charge is:
             &lt;/text&gt;
         &lt;/p&gt;
        &lt;/note&gt;
    &lt;/heading&gt;
    &lt;frm:description&gt;This is a precedent letter which can be used to accompany Companies House form MR01 when submitting a charge to Companies House for registration in accordance with Part 25 of the Companies Act 2006
    &lt;/frm:description&gt;
    &lt;frm:body&gt;
        &lt;frm:divs&gt;
            &lt;frm:div divtype="body"&gt;
                &lt;p id="d577e19"&gt;
                    &lt;text&gt;
                        &lt;frm:prompt id="d577e21" optionalKey="opt-N65580"&gt;
                            &lt;emph typestyle="caps"&gt;To be printed on the headed paper of the entity submitting the form mr01
                            &lt;/emph&gt;
                        &lt;/frm:prompt&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;frm:optional id="d153135e20"&gt;
                    &lt;p id="d577e48"&gt;
                        &lt;text&gt;The Registrar of Companies
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/frm:optional&gt;
                &lt;clause clause-type="number" id="d577e235"&gt;
                    &lt;clause id="d577e330"&gt;
                      &lt;p id="d577e334"&gt;
                        &lt;text&gt;We enclose:
                        &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/clause&gt;
                &lt;/clause&gt;
            &lt;/frm:div&gt;
        &lt;/frm:divs&gt;
    &lt;/frm:body&gt;
&lt;/form&gt;
    

 
<b><i>TARGET XML</i></b>

&lt;form:form&gt;
    &lt;heading&gt;
        &lt;title&gt;Cover letter to accompany Companies House form MR01 (Particulars of a charge)&lt;/title&gt;
        &lt;note notetype="instruction"&gt;
          &lt;p xml:id="d577e715"&gt;
             &lt;text&gt;Form MR01 is the appropriate form to use to register a charge at Companies House when the charge is:
               &lt;/text&gt;
          &lt;/p&gt;
        &lt;/note&gt;
    &lt;/heading&gt;
    &lt;form:info&gt;
        &lt;classify:classification&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode normval="precedent"/&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
        &lt;dc:description&gt;This is a precedent letter which can be used to accompany Companies House form MR01 when submitting a charge to Companies House for registration in accordance with Part 25 of the Companies Act 2006
        &lt;/dc:description&gt;
    &lt;/form:info&gt;
    &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
        &lt;form:bodytext&gt;
            &lt;form:div&gt;
                &lt;form:bodytext&gt;
                    &lt;form:div divtype="body"&gt;
                        &lt;form:bodytext&gt;
                            &lt;form:p&gt;
                                &lt;form:text&gt;
                                    &lt;form:prompt&gt;
                                        &lt;emph typestyle="caps"&gt;To be printed on the headed paper of the entity submitting the form mr01&lt;/emph&gt;
                                    &lt;/form:prompt&gt;
                                &lt;/form:text&gt;
                            &lt;/form:p&gt;
                            &lt;form:optionalcontent xml:id="d153135e20"&gt;
                                &lt;form:p xml:id="d577e48"&gt;
                                    &lt;form:text&gt;The Registrar of Companies
                                    &lt;/form:text&gt;
                                &lt;/form:p&gt;
                            &lt;/form:optionalcontent&gt;
                            &lt;form:p xml:id="d577e216"&gt;
                                &lt;form:text&gt;Dear Sirs
                                &lt;/form:text&gt;
                            &lt;/form:p&gt;
                            &lt;form:clause clausetype="number" xml:id="d577e235"&gt;
                                &lt;form:bodytext&gt;
                                    &lt;form:clause xml:id="d577e330"&gt;
                                        &lt;form:bodytext&gt;
                                           &lt;form:p xml:id="d577e334"&gt;
                                                &lt;form:text&gt;We enclose:
                                                &lt;/form:text&gt;
                                            &lt;/form:p&gt;
                                        &lt;/form:bodytext&gt;
                                    &lt;/form:clause&gt;
                                &lt;/form:bodytext&gt;
                            &lt;/form:clause&gt;
                        &lt;/form:bodytext&gt;
                    &lt;/form:div&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:div&gt;
        &lt;/form:bodytext&gt;
    &lt;/form:document&gt;
&lt;/form:form&gt;


        </pre>
            <pre>
        <b>EXAMPLE 2</b>
            
<b><i>SOURCE XML</i></b>
&lt;form id="precedent-extract"&gt;
    &lt;frm:body&gt;
        &lt;p&gt;
            &lt;text&gt;EEC type-approval number of the technical unit&lt;fnr
                fnrtoken="d62418e44" fntoken="d62418e243"&gt;1&lt;/fnr&gt;: .&lt;/text&gt;
        &lt;/p&gt;
        &lt;clause&gt;
            &lt;heading&gt;
                &lt;desig value="1."&gt;
                    &lt;designum&gt;1.&lt;/designum&gt;
                &lt;/desig&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;Trade name or mark: .&lt;/text&gt;
            &lt;/p&gt;
        &lt;/clause&gt;
        &lt;clause&gt;
            &lt;heading&gt;
                &lt;desig value="2."&gt;
                    &lt;designum&gt;2.&lt;/designum&gt;
                &lt;/desig&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;Type: .&lt;/text&gt;
            &lt;/p&gt;
        &lt;/clause&gt;
        .....
    &lt;/frm:body&gt;
&lt;/form&gt;
            


<b><i>TARGET XML</i></b>

&lt;form:form&gt;
    &lt;form:info&gt;
        &lt;classify:classification&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode normval="precedent-extract"/&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;        
    &lt;/form:info&gt;
    &lt;form:document&gt;
        &lt;form:bodytext&gt;
            &lt;form:p&gt;
                &lt;form:text&gt;
                    EEC type-approval number of the technical unit
                    &lt;footnote-ref anchoridref="d62418e243"&gt;
                        &lt;ref:anchor id="d62418e44"/&gt;
                        &lt;label&gt;1&lt;/label&gt;
                    &lt;/footnote-ref&gt;
                &lt;/form:text&gt;
            &lt;/form:p&gt;
            &lt;form:clause&gt;
                &lt;heading&gt;
                    &lt;desig value="1"&gt;1&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                        &lt;form:text&gt;Trade name or mark: .
                        &lt;/form:text&gt;
                    &lt;/form:p&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:clause&gt;
            &lt;form:clause&gt;
                &lt;heading&gt;
                    &lt;desig value="2"&gt;2&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                        &lt;form:text&gt;Type: .
                        &lt;/form:text&gt;
                    &lt;/form:p&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:clause&gt;
        &lt;/form:bodytext&gt;
    &lt;/form:document&gt;
&lt;/form:form&gt;            

        </pre>

            <section>
                <title>Changes</title>
                <p>2016-12-16: <ph id="change_20161216_AS"> Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_UK_form_LexAdv_form_form.dita  -->
    <!-- <xsl:message>Rosetta_UK_form_LexAdv_form_form.xsl requires manual development!</xsl:message> -->

    <xsl:template match="form/@id"/>

    <xsl:template match="form">
        <form:form>
            <xsl:apply-templates select="@id"/>
            <xsl:apply-templates select="heading"/>
            <xsl:if test="@id">
                <form:info>
                    <classify:classification>
                        <classify:classitem>
                            <classify:classitem-identifier>
                                <classify:classcode>
                                    <xsl:attribute name="normval" select="@id"/>
                                </classify:classcode>
                            </classify:classitem-identifier>
                        </classify:classitem>
                    </classify:classification>
                </form:info>
            </xsl:if>
            <xsl:apply-templates select="@* | node() except heading"/>
        </form:form>
    </xsl:template>

    <xsl:template match="frm:body">
        <!--  Original Target XPath:  form:document/form:bodytext   -->
        <form:document>
            <xsl:attribute name="annotated">
                <xsl:text>false</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="official">
                <xsl:text>false</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="typeofdoc">
                <xsl:text>unnamed</xsl:text>
            </xsl:attribute>
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:document>
    </xsl:template>

    <xsl:template match="frm:description">
        <!--  Original Target XPath:  form:info/dc:description   -->
        <form:info>
            <dc:description xmlns:dc="http://purl.org/dc/elements/1.1/">
                <xsl:apply-templates select="@* | node()"/>
            </dc:description>
        </form:info>

    </xsl:template>

    <xsl:template match="frm:divs | frm:div">
        <!--  Original Target XPath:  form:div/form:bodytext   -->
        <form:div>
            <xsl:apply-templates select="@*"/>
            <form:bodytext>
                <xsl:apply-templates select="node()"/>
            </form:bodytext>
        </form:div>
    </xsl:template>

    <xsl:template match="frm:prompt">
        <!--  Original Target XPath:  form:prompt   -->
        <form:prompt>
            <xsl:apply-templates select="@* | node()"/>
        </form:prompt>
    </xsl:template>

    <xsl:template match="frm:optional">
        <!--  Original Target XPath:  form:optionalcontent   -->
        <form:optionalcontent>
            <xsl:apply-templates select="@* | node()"/>
        </form:optionalcontent>
    </xsl:template>

    <xsl:template match="clause[parent::frm:body]">
        <form:clause>
            <xsl:apply-templates select="heading"/>
            <form:bodytext>
                <xsl:apply-templates select="@* | node() except heading"/>
            </form:bodytext>
        </form:clause>
    </xsl:template>

    <xsl:template match="@clause-type">
        <xsl:attribute name="clausetype" select="."/>
    </xsl:template>

    <xsl:template match="@preservenumbering">
        <xsl:attribute name="preservenumbering" select="."/>
    </xsl:template>

    <xsl:template match="p[parent::frm:body/ancestor::form][child::table]"/>

    <xsl:template match="p[parent::frm:body] | p[parent::frm:div] | p[parent::clause]">
        <form:p>
            <xsl:apply-templates select="@* | node()"/>
        </form:p>
    </xsl:template>

    <xsl:template match="text[parent::p/ancestor::form][not(parent::p/parent::sigblock)] | text[parent::p/parent::frm:div]">
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p/form:text   -->
        <form:text>
            <xsl:apply-templates select="@* | node()"/>
        </form:text>
    </xsl:template>

    <xsl:template match="l[parent::frm:body/ancestor::form] | l[parent::frm:div]">
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:list   -->
        <form:list>
            <xsl:apply-templates select="@* | node()"/>
        </form:list>
    </xsl:template>

    <xsl:template match="li[ancestor::form]">
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:list   -->
        <form:listitem>
            <xsl:apply-templates select="@* | node()"/>
        </form:listitem>
    </xsl:template>

    <xsl:template match="h[ancestor::form]">
        <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:list   -->
        <form:h>
            <xsl:apply-templates select="@* | node()"/>
        </form:h>
    </xsl:template>

    <xsl:template match="frm:div">
        <!--  Original Target XPath:  form:div   -->
        <form:div>
            <form:bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </form:bodytext>
        </form:div>
    </xsl:template>

    <xsl:template match="frm:divs"/>
</xsl:stylesheet>
