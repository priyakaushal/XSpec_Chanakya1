<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita classify caseinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_page-to-LexisAdvance_ref.page">
    <title><sourcexml>page</sourcexml> to <targetxml>ref:page</targetxml>
        <lnpid>id-CCCC-10426</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>page</sourcexml> becomes <targetxml>ref:page</targetxml> and also create
                    <targetxml>doc:docinfo/doc:pagination/doc:pagination-scheme</targetxml> and
                attributes are mapped as follows: <ul>
                    <li><sourcexml>page/@count</sourcexml> becomes
                            <targetxml>ref:page/@num</targetxml></li>
                    <li><sourcexml>page/@reporter</sourcexml> becomes
                            <targetxml>ref:page/@page-scheme</targetxml> and
                            <targetxml>doc:pagination-scheme/@page-scheme</targetxml></li>
                    <li><targetxml>ref:page/@page-scheme-type</targetxml> and
                            <targetxml>doc:pagination-scheme/@page-scheme-type</targetxml> should be
                        set to "reporter-abbreviation"</li>
                    <li><sourcexml>page/@text</sourcexml> should be dropped. </li>
                    <li><sourcexml>page/@subdoc</sourcexml> becomes
                            <targetxml>ref:page/@includeintoc</targetxml>. </li>
                </ul>
            </p>
        </section>

        <note>Do not create multiple <i>identical</i>
            <targetxml>doc:pagination-scheme</targetxml>. Source may have multiple
                <sourcexml>page</sourcexml> with identical <sourcexml>@reporter</sourcexml> value.
            Create only one <targetxml>doc:pagination-scheme</targetxml> for each unique
                <sourcexml>@reporter</sourcexml> value.</note>

        <note>According to the LBU, the presentation spec expects the page references to generate
            the displayable reporter part from the citation. The <sourcexml>@text</sourcexml> is
            dropped because the stylesheet is expected to generate the displayable portion of the
            page break.</note>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;page count="3" reporter="alr" subdoc="true" text="256 ALR 1 at "/&gt;
...
&lt;page count="4" reporter="alr" subdoc="true" text="256 ALR 1 at "/&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;ref:page num="3" page-scheme="alr" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;
...
&lt;ref:page num="4" page-scheme="alr" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;

and

&lt;doc:docinfo&gt;
    &lt;doc:pagination&gt;
        &lt;doc:pagination-scheme page-scheme="alr" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;/doc:pagination&gt;
&lt;/doc:docinfo&gt;
	</codeblock>
        </example>

        <p>
            <b>If comma ( , ) or periods ( . ) occurs in attribute value of count i.e,
                    <sourcexml>page/@count</sourcexml> then comma or period should be stripped out
                (removed) from target attribute value i.e, <targetxml>ref:page/@num</targetxml>.</b>
        </p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;page reporter="bpr" count="23,043" text="12 BPR 23,041 at " subdoc="true" /&gt;
		</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>
&lt;ref:page num="23043" page-scheme="bpr" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;

and 

&lt;doc:docinfo&gt;
    &lt;doc:pagination&gt;
        &lt;doc:pagination-scheme page-scheme="bpr" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;/doc:pagination&gt;
&lt;/doc:docinfo&gt;
	</codeblock>
        </example>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;page text="(2009) 1(2) JML 159–172 at" count="16…4" reporter="JML" /&gt;
		</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>
&lt;ref:page num="164" page-scheme="JML" page-scheme-type="reporter-abbreviation"/&gt;

and 

&lt;doc:docinfo&gt;
    &lt;doc:pagination&gt;
        &lt;doc:pagination-scheme page-scheme="JML" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;/doc:pagination&gt;
&lt;/doc:docinfo&gt;
	</codeblock>
        </example>
        <p>
            <b>If space occurs in attribute value of reporter i.e,
                    <sourcexml>page/@reporter</sourcexml> then underscore( _ ) should be used at the
                place of space in target attribute value i.e,
                <targetxml>ref:page/@page-scheme</targetxml> and <targetxml>doc:pagination-scheme/@page-scheme</targetxml>.</b>
        </p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;page reporter="Fam LR" count="1033" text="10 Fam LR 1032 at " subdoc="true"/&gt;
		</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>
&lt;ref:page num="1033" page-scheme="Fam_LR" page-scheme-type="reporter-abbreviation" includeintoc="true"/&gt;
	
and 
	
&lt;doc:docinfo&gt;
    &lt;doc:pagination&gt;
        &lt;doc:pagination-scheme page-scheme="Fam_LR" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;/doc:pagination&gt;
&lt;/doc:docinfo&gt;
	</codeblock>
        </example>
        <p><b>If <sourcexml>page</sourcexml> is a child of <sourcexml>li</sourcexml>, then the
                    <targetxml>ref:page</targetxml> should be placed at the beginning of the
                following <targetxml>label</targetxml> in the target.</b></p>
        <example>
            <title>Source XML</title>
            <codeblock>
&lt;l&gt;
    &lt;li&gt;
        &lt;lilabel&gt;(a)&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;if subparagraph (1)(b)(i) applies &amp;#x2013; under the provision of the new corporations legislation that corresponds to the relevant
                old provision; or&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;page reporter="Qd R" count="147" text="[2004] 1 Qd R 146 at " subdoc="true"/&gt;
        &lt;lilabel&gt;(b)&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt;if subparagraph (1)(b)(ii) applies &amp;#x2013; as, or connected with, a prosecution for an offence against the provision of the new
                corporations legislation that corresponds to the relevant old provision.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
&lt;/l&gt;
	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>
&lt;list&gt;
    &lt;listitem&gt;
        &lt;label&gt;(a)&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;if subparagraph (1)(b)(i) applies &amp;#x2013; under the provision of the new corporations legislation that corresponds to the
                    relevant old provision; or&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;listitem&gt;
        &lt;label&gt;&lt;ref:page page-scheme-type="reporter-abbreviation" page-scheme="Qd_R" num="147" includeintoc="true"/&gt;(b)&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;if subparagraph (1)(b)(ii) applies &amp;#x2013; as, or connected with, a prosecution for an offence against the provision of the new
                    corporations legislation that corresponds to the relevant old provision.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
&lt;/list&gt;

and

&lt;doc:docinfo&gt;
    &lt;doc:pagination&gt;
        &lt;doc:pagination-scheme page-scheme="Qd_R" page-scheme-type="reporter-abbreviation"/&gt;
    &lt;/doc:pagination&gt;
&lt;/doc:docinfo&gt;
	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-01-05: <ph id="change_20150105_AK">Defined handling for page/@count if period (.) occurs in the value.</ph></p>
            <p>2011-12-15: Created.</p>
            <p>2012-01-05: Defined handling for page/@count if comma occurs in the value.</p>
            <p>2012-01-05: Defined handling for page/@reporter if space occurs in the value.</p>
            <p>2012-02-07: Added a note for dropping <sourcexml>page/@text</sourcexml>.</p>
            <p>2012-02-15: Added mapping for <sourcexml>@subdoc</sourcexml>.</p>
            <p>2012-03-02: Corrected the value of <targetxml>@page-scheme-type</targetxml> from
                reporterabbreviation to reporter-abbreviation.</p>
            <p>2012-04-16: Defined handling for /CASEDOC/case:body/case:headnote/page between two
                decisionsummary as sibling.</p>
            <p>2012-05-09: Added instructions for handling <sourcexml>li/page</sourcexml>. </p>
            <p>2012-08-23: Moved instruction for <sourcexml>page</sourcexml> occurring between
                decisionsummary elements to separate module
                LNInternational\common\Rosetta_page_with_preceding-following-siblings_case.decisionsummary.dita. </p>
            <p>2012-10-05: Corrected the spelling of "attribute".</p>
            <p>2014-06-03: <ph id="change_20140603_PS">Added instruction and example to generate
                        <targetxml>doc:pagination/doc:pagination-scheme</targetxml> in target and
                    this immediately applies to all LNI streams.</ph></p>
        </section>
       
    </body>
	</dita:topic>

    

    <!-- CSN - 2018-03-07 - Webstar 7135509 - UK03 can handle a page in catchwordgrp -->
	<xsl:template match="page[not(ancestor::entry) and not(parent::catchwordgrp or parent::catchwords)] |
	                     page[$streamID='UK03'][not(ancestor::entry) and not(parent::catchwords)]" name="page-generic">
      	  <xsl:if test="@count!='' and matches(translate(@count,',.…',''),'^\d+$')">
                        <!-- don't process if there is no value converted to @num (invalid), or if source @count is not a digit -->
                        <xsl:element name="ref:page">
                            <xsl:attribute name="num">
                                <xsl:value-of select="translate(@count,',.…','')"/>
                            </xsl:attribute>
                            <xsl:if test="@reporter!=''">
                                <xsl:attribute name="page-scheme">
                                    <xsl:value-of select="translate(@reporter,' ','_')"/>
                                </xsl:attribute>
                            </xsl:if>
                            <xsl:if test="@subdoc!=''">
                                <xsl:attribute name="includeintoc">
                                    <xsl:value-of select="@subdoc"/>
                                </xsl:attribute>
                            </xsl:if>
                            <xsl:attribute name="page-scheme-type">
                                <xsl:text>reporter-abbreviation</xsl:text>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:if>
                </xsl:template>
  
    <xsl:template match="page[$streamID='HK03'][parent::case:headnote | parent::case:info | parent::catchwords]" priority="1">
        <!--[parent::case:info and $streamID='HK03'][not(parent::catchwords and $streamID='HK03')]-->
        <xsl:if test="parent::case:info">
            <classify:classification>
                <classify:classitem>
                    <classify:classitem-identifier>
                        <classify:classname>
                            <xsl:element name="ref:page">
                                <xsl:attribute name="num">
                                    <xsl:value-of select="translate(@count,',.…','')"/>
                                 </xsl:attribute>
                                    <xsl:if test="@reporter!=''">
                                        <xsl:attribute name="page-scheme">
                                            <xsl:value-of select="translate(@reporter,' ','_')"/>
                                        </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@subdoc!=''">
                                        <xsl:attribute name="includeintoc">
                                            <xsl:value-of select="@subdoc"/>
                                        </xsl:attribute>
                                    </xsl:if>
                                    <xsl:attribute name="page-scheme-type">
                                        <xsl:text>reporter-abbreviation</xsl:text>
                                     </xsl:attribute>
                            </xsl:element>
                        </classify:classname>
                    </classify:classitem-identifier>
                </classify:classitem>
            </classify:classification>
        </xsl:if>
        <xsl:if test="parent::catchwords">
                <classify:classitem>
                    <classify:classitem-identifier>
                        <classify:classname>
                            <xsl:element name="ref:page">
                                <xsl:attribute name="num">
                                    <xsl:value-of select="translate(@count,',.…','')"/>
                                </xsl:attribute>
                                <xsl:if test="@reporter!=''">
                                    <xsl:attribute name="page-scheme">
                                        <xsl:value-of select="translate(@reporter,' ','_')"/>
                                    </xsl:attribute>
                                </xsl:if>
                                <xsl:if test="@subdoc!=''">
                                    <xsl:attribute name="includeintoc">
                                        <xsl:value-of select="@subdoc"/>
                                    </xsl:attribute>
                                </xsl:if>
                                <xsl:attribute name="page-scheme-type">
                                    <xsl:text>reporter-abbreviation</xsl:text>
                                </xsl:attribute>
                            </xsl:element>
                        </classify:classname>
                    </classify:classitem-identifier>
                </classify:classitem>
        </xsl:if>
        <xsl:if test="parent::case:headnote">
                        <xsl:element name="ref:page">
                            <xsl:attribute name="num">
                                <xsl:value-of select="translate(@count,',.…','')"/>
                            </xsl:attribute>
                            <xsl:if test="@reporter!=''">
                                <xsl:attribute name="page-scheme">
                                    <xsl:value-of select="translate(@reporter,' ','_')"/>
                                </xsl:attribute>
                            </xsl:if>
                            <xsl:if test="@subdoc!=''">
                                <xsl:attribute name="includeintoc">
                                    <xsl:value-of select="@subdoc"/>
                                </xsl:attribute>
                            </xsl:if>
                            <xsl:attribute name="page-scheme-type">
                                <xsl:text>reporter-abbreviation</xsl:text>
                            </xsl:attribute>
                        </xsl:element>
        </xsl:if>
    </xsl:template>
    <!--Satbir: Generate this template for handling the 'exception timestamp' error while during the transforming of input files-->
    <xsl:template match="page[ancestor::entry]"/>
    
    <!-- 20171017 JL: for when page is a child of seclaw:bodytext -->
    
    <xsl:template match="page[parent::bodytext[parent::level]][$streamID=('AU05' , 'NZ09')]" priority="2">
        <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:call-template name="page-generic"/>
        </textitem>
    </xsl:template>
    
    <!-- Webstar 7043871 - CSN - 20171108 - adding page wrapper for schema validity. CI does not address this so matching DT. -->
    <xsl:template match="page[parent::case:info][$streamID=('UK01')]" priority="2">
        <note notetype="other" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:call-template name="page-generic"/>
            </bodytext>
        </note>
    </xsl:template>
    
</xsl:stylesheet>