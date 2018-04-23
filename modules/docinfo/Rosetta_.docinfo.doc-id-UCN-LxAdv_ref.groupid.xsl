<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_refnum_refnumtype_UCN-LxAdv_ref_groupid">
    <title>docinfo:doc-id - ref:groupid <lnpid>id-CCCC-10506</lnpid></title>
    <body>
        <section>
            <note>This "UCN" rule applies for case citator only, e.g. when
                    <sourcexml>docinfo:selector</sourcexml> containing 'Statute' or 'Statutes' or
                'Regulation' or 'Regulations', case insensitive, the rule does not apply.</note>
            <p>For case citator, i.e. when there is no <sourcexml>docinfo:selector</sourcexml>
                containing 'Statute' or <sourcexml>docinfo:selector</sourcexml> containing
                'Regulation', <sourcexml>docinfo:doc-id</sourcexml> becomes
                    <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]</targetxml>.</p>
            <p>The content of <sourcexml>docinfo:doc-id</sourcexml>, prepended with the string
                "urn:ucn-1:", becomes the content of the <targetxml>ref:resourcekey</targetxml>
                attribute of <targetxml>ref:resourceid</targetxml>.</p>
        </section>
        <example>
            <title>Mapping of <targetxml>ref:resourceid[@ref:resourcekey]</targetxml></title>
            <codeblock>
&lt;docinfo:doc-id&gt;VIC_ACT_1998-25_PT1&lt;/docinfo:doc-id&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>


&lt;doc:docinfo doc-content-country="CA"&gt;
    &lt;!-- ...--&gt;
    &lt;doc:membership&gt;       
        &lt;ref:groupid group-type="ucn-1"&gt;
            &lt;ref:resourceid ref:resourcekey="urn:ucn-1:VIC_ACT_1998-25_PT1"/&gt; 
        &lt;/ref:groupid&gt;         
    &lt;/doc:membership&gt;
    ...
&lt;/doc:docinfo&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-12-31: <ph id="change_20141231_brt">Clarify 'Statutes' / 'Regulations' search to
                    be singular or plural. Addresses 4B item 396.</ph></p>
            <p>2014-12-18: <ph id="change_20141218_sep">Clarify Statutes / Regulation search to be
                    case insensitive. Addresses 4B item 396.</ph></p>
            <p>2014-12-16: <ph id="change_20141216_sep">Change to create "UCN" groupid for cases
                    only. Addresses P4.5 RFA #2090</ph></p>
            <p>2014-09-25: <ph id="change_20140925_brt">Created. Addresses P4.5 RFA #1914</ph></p>
        </section>
    </body>
	</dita:topic>
    
    <!-- Sudhanshu Srivastava drafted initially this on 23-May-2017. -->
	
    <xsl:template match="docinfo:doc-id" mode="membership">
		<!--  Original Target XPath:  doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]   -->
        <xsl:if test="not(following-sibling::docinfo:selector[contains(.,'Statute') or contains(.,'Statutes') or contains(.,'Regulation') or contains(.,'Regulations')])">
            <doc:membership>
                <ref:groupid group-type="ucn-1">
                    <ref:resourceid ref:resourcekey="urn:ucn-1:{.}"/>
                </ref:groupid>
            </doc:membership>
        </xsl:if>
	</xsl:template>
    
   <!-- <xsl:template match="docinfo:doc-id" mode="membership">
        <!-\-  Original Target XPath:  doc:docinfo/doc:membership/ref:groupid[@group-type="ucn-1"]   -\->
        <xsl:if test="not(following-sibling::docinfo:selector)">
            <doc:membership>
                <ref:groupid group-type="sameCase">
                    <ref:resourceid ref:resourcekey="urn:sameCase:{concat(following-sibling::docinfo:lbu-meta/docinfo:metaitem[@name='DPSI']/@value,'-',.)}"/>
                    <ref:resourceGroupMemberRanking isPrimaryDocument="false"/>
                </ref:groupid>
            </doc:membership>
        </xsl:if>
    </xsl:template>-->
</xsl:stylesheet>