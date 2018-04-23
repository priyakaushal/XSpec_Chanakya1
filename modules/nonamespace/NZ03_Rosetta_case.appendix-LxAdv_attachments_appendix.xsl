<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.appendix-LxAdv_attachments_appendix">
    <title>case:appendix <lnpid>id-NZ03-23010</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.appendix-LxAdv_attachments_appendix.dita#Rosetta_case.appendix-LxAdv_attachments_appendix/mapping"/>
        <example>
            <codeblock>
&lt;case:appendix&gt;
    &lt;heading&gt;
        &lt;title&gt;FRUCOR &amp;#x2014; RED BULL TIMELINE&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;[&amp;#x201C;BSPR&amp;#x201D; means &amp;#x201C;BLUE SILVER POCKET ROCKET&amp;#x201D;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;NORMAL TEXT INDICATES EVIDENCE OF THE PLAINTIFF&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;ITALICS INDICATE EVIDENCE OF THE DEFENDANT]&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:appendix&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;attachments&gt;
    &lt;appendix&gt;
        &lt;heading&gt;
            &lt;title&gt;FRUCOR &amp;#x2014; RED BULL TIMELINE&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[&amp;#x201C;BSPR&amp;#x201D; means &amp;#x201C;BLUE SILVER POCKET ROCKET&amp;#x201D;&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;NORMAL TEXT INDICATES EVIDENCE OF THE PLAINTIFF&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;ITALICS INDICATE EVIDENCE OF THE DEFENDANT]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/appendix&gt;
&lt;/attachments&gt;
           </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.appendix-LxAdv_attachments_appendix.dita#Rosetta_case.appendix-LxAdv_attachments_appendix/changes"/>-->
        <!--<section>
            <title>Changes Specific to NZ03</title>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.appendix-LxAdv_attachments_appendix.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.appendix-LxAdv_attachments_appendix.xsl requires manual development!</xsl:message> -->
    <xsl:template match="case:appendix">
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
    </xsl:template>
</xsl:stylesheet>