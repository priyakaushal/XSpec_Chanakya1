<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.appendix-LxAdv_attachments_appendix">
    <title>case:appendix <lnpid>id-AU01-18209</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.appendix-LxAdv_attachments_appendix.dita#Rosetta_case.appendix-LxAdv_attachments_appendix/mapping"/>
        <example>
            <codeblock>
&lt;case:judgments&gt;
    ...
    &lt;case:appendix&gt;
        &lt;p&gt;
            &lt;text&gt;Attached is a copy of the relevant portion of the judgment of the Supreme&lt;nl/&gt;Court Equity Division in 
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Massoud v NRMA Insurance Ltd&lt;/emph&gt;&lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt; referred to at 655
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseinfo&gt;
                            &lt;ci:decisiondate year="2005"/&gt;
                        &lt;/ci:caseinfo&gt;
                        &lt;ci:caseref ID="cr002"&gt;
                            &lt;ci:reporter value="nswlr"/&gt;
                            &lt;ci:volume num="62"/&gt;
                            &lt;ci:page num="653"/&gt;
                        &lt;/ci:caseref&gt;
                        &lt;ci:caseref anaphref="cr002" spanref="cr002-01"&gt;
                            &lt;ci:pinpoint targettype="para" num="7"/&gt;
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                            &lt;ci:span spanid="cr002-01"&gt;[7]&lt;/ci:span&gt;
                        &lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:appendix&gt;
&lt;/case:judgments&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:opinions&gt;
    ...
    &lt;attachments&gt;
        &lt;appendix&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Attached is a copy of the relevant portion of the judgment of the Supreme&lt;proc:nl/&gt;Court Equity Division in 
                        &lt;lnci:cite type="case"&gt;
                            &lt;lnci:content&gt;
                                &lt;emph typestyle="it"&gt;Massoud v NRMA Insurance Ltd&lt;/emph&gt;
                            &lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt; referred to at 655
                        &lt;lnci:cite&gt;
                            &lt;lnci:case&gt;
                                &lt;lnci:caseinfo&gt;
                                    &lt;lnci:decisiondate year="2005"/&gt;
                                &lt;/lnci:caseinfo&gt;
                                &lt;lnci:caseref ID="cr002"&gt;
                                    &lt;lnci:reporter value="nswlr"/&gt;
                                    &lt;lnci:volume num="62"/&gt;
                                    &lt;lnci:page num="653"/&gt;
                                &lt;/lnci:caseref&gt;
                                &lt;lnci:caseref anaphref="cr002"&gt;
                                    &lt;lnci:pinpoint targettype="para" num="7"/&gt;
                                &lt;/lnci:caseref&gt;
                            &lt;/lnci:case&gt;
                            &lt;lnci:content&gt;[7]&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/appendix&gt;
    &lt;/attachments&gt;
&lt;/courtcase:opinions&gt;
           </codeblock>
        </example>
        <section>
            <p>If <sourcexml>case:embeddedcase</sourcexml> occurs within
                    <sourcexml>case:appendix</sourcexml> then conversion need to handle
                    <targetxml>courtcase:caseexcerpt</targetxml> by using
                    <targetxml>bodytext</targetxml> under <targetxml>appendix</targetxml> i.e,
                    <sourcexml>case:appendix/case:embeddedcase</sourcexml> becomes
                    <targetxml>attachments/appendix/bodytext/courtcase:caseexcerpt</targetxml>
            </p>
        </section>
        <example>
            <codeblock>
&lt;case:appendix&gt;
    &lt;case:embeddedcase id="1980_QD_R_411"&gt;
        &lt;case:content&gt;
            &lt;case:judgments&gt;
                &lt;case:judgment subdoc="true" toc-caption="Judgment 1"&gt;
                    &lt;case:judgmentbody&gt;
                        &lt;p&gt;
                            &lt;text&gt;This was an action...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/case:judgmentbody&gt;
                &lt;/case:judgment&gt;
            &lt;/case:judgments&gt;
        &lt;/case:content&gt;
    &lt;/case:embeddedcase&gt;
&lt;/case:appendix&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;attachments&gt;
    &lt;appendix&gt;
        &lt;bodytext&gt;
            &lt;courtcase:caseexcerpt xml:id="_1980_QD_R_411"&gt;
                &lt;courtcase:body&gt;
                    &lt;courtcase:opinions&gt;
                        &lt;courtcase:opinion includeintoc="true" alternatetoccaption="Judgment 1"&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;This was an action...&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/courtcase:opinion&gt;
                    &lt;/courtcase:opinions&gt;
                &lt;/courtcase:body&gt;    
            &lt;/courtcase:caseexcerpt&gt;
        &lt;/bodytext&gt;
    &lt;/appendix&gt;
&lt;/attachments&gt;
           </codeblock>
        </example>
        
        <section>
            <p>When <sourcexml>sigblock</sourcexml> is a child of <sourcexml>case:appendix</sourcexml> then <sourcexml>case:appendix/sigblock/p/text/person/name.text</sourcexml> becomes <targetxml>attachments/appendix/bodytext/note/byline/person:person/person:name.text</targetxml>.</p>
            </section>
            <example>
                <codeblock>
&lt;case:appendix&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person&gt;
                    &lt;name.text&gt;David Ritter&lt;/name.text&gt;
                &lt;/person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/sigblock&gt;
&lt;/case:appendix&gt;
           </codeblock>
                <b>becomes</b>
                <codeblock>
&lt;attachments&gt;
    &lt;appendix&gt;
        &lt;bodytext&gt;
            &lt;note&gt;
                &lt;byline&gt;
                    &lt;person:person&gt;
                        &lt;person:name.text&gt;David Ritter&lt;/person:name.text&gt;
                    &lt;/person:person&gt;
                &lt;/byline&gt;
            &lt;/note&gt;
        &lt;/bodytext&gt;
    &lt;/appendix&gt;
&lt;/attachments&gt;
           </codeblock>
            </example>

        
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.appendix-LxAdv_attachments_appendix.dita#Rosetta_case.appendix-LxAdv_attachments_appendix/changes"/>-->
        <section>
            <title>Changes Specific to AU01</title>
            <p>2013-11-12: <ph id="change_20131112_PS">Added Instruction and example when <sourcexml>sigblock</sourcexml> is a child of <sourcexml>case:appendix</sourcexml>: Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</ph></p>
            <p>2012-08-23: Modified example to use an underscore instead of the two digit country
                code for <targetxml>xml:id</targetxml>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.appendix-LxAdv_attachments_appendix.dita -->

    <!-- SS: Done - case:appendix -->
   <!-- <xsl:template match="case:appendix">
        <attachments>
            <appendix> 
                <xsl:if test="child::heading">
                    <xsl:apply-templates select="heading"/>                   
                </xsl:if>
                <xsl:if test="node() except heading">
                    <bodytext>
                        <xsl:if test="child::case:appendix">
                            <xsl:apply-templates select="case:embeddedcase"/>
                        </xsl:if>
                        <xsl:apply-templates select="@* | node() except heading"/>
                    </bodytext>
                </xsl:if>
            </appendix>
        </attachments>
    </xsl:template>-->
    
    <!-- Awantika: Updated template for embededcase and sigblock -->
    <xsl:template match="case:appendix">
        <attachments>
            <appendix> 
                <xsl:if test="child::heading">
                    <xsl:apply-templates select="heading"/>                   
                </xsl:if>
                <xsl:if test="node() except heading">
                    <bodytext>
                        <xsl:if test="child::case:embeddedcase">
                            <xsl:apply-templates select="case:appendix/case:embeddedcase"/>
                        </xsl:if>
                        <xsl:if test="child::sigblock">
                            <note>
                                <byline>
                                    <xsl:apply-templates select="descendant::person"/>
                                </byline>
                            </note>
                        </xsl:if>
                        <xsl:apply-templates select="@* | node() except heading except sigblock except case:embeddedcase"/>
                    </bodytext>
                </xsl:if>
            </appendix>
        </attachments>
    </xsl:template>
    
	<!--<xsl:template match="case:appendix[not(child::case:embeddedcase or child::sigblock)]">
		<attachments>
			<appendix>
				<xsl:apply-templates/>
			</appendix>
		</attachments>
	</xsl:template>

	<xsl:template match="case:appendix[child::case:embeddedcase]">
		<attachments>
			<appendix>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</appendix>
		</attachments>
	</xsl:template>


	<xsl:template match="case:appendix[child::sigblock]">
		<attachments>
			<appendix>
				<bodytext>
					<note>
						<byline>
							<person:person xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
								<person:name.text>
									<xsl:apply-templates select="@* | node()"/>
								</person:name.text>
							</person:person>
						</byline>
					</note>
				</bodytext>
			</appendix>
		</attachments>
	</xsl:template>-->

</xsl:stylesheet>