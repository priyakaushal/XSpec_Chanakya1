<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.judgments-LxAdv_courtcase.opinions">
    <title>case:judgments <lnpid>id-AU01-18227</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.judgments-LxAdv_courtcase.opinions.dita#Rosetta_case.judgments-LxAdv_courtcase.opinions/mapping"/>
        <section>
            <p>The optional attributes of <sourcexml>case:judgments</sourcexml> are handled as follows:<ul>
                    <li><sourcexml>case:judgments/@subdoc</sourcexml> becomes
                            <targetxml>courtcase:opinions/@includeintoc</targetxml>.</li>
                    <li><sourcexml>case:judgments/@toc-caption</sourcexml> becomes
                            <targetxml>courtcase:opinions/@alternatetoccaption</targetxml>.</li>
                </ul></p>
            <note>The child element <targetxml>attachments</targetxml> is used to house
                    <sourcexml>inlineobject</sourcexml> information in the opinions. The LBU
                indicated that this use case is for attachments.</note>
        </section>
        <example>
            <codeblock>
&lt;case:judgments&gt;
    ...
    &lt;inlineobject filename="g0607831d.gif" attachment="ln-server" type="image"/&gt;
    ...
&lt;/case:judgments&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:opinions&gt;
    ...
    &lt;attchments&gt;
        &lt;appendix&gt;
            &lt;bodytext&gt;
                &lt;figure&gt;
                    &lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="object-key"/&gt;
                                &lt;ref:key-value value="X-Y-g0607831d"/&gt;
                            &lt;/ref:locator-key&gt;
                            &lt;ref:locator-params&gt;
								&lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;proc:param name="object-type" value="image"/&gt;
								&lt;proc:param name="object-smi" value=""/&gt;
                            &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt;
                &lt;/figure&gt;
            &lt;/bodytext&gt;
        &lt;/appendix&gt;
    &lt;/attchments&gt;
    ...
&lt;/courtcase:opinions&gt;
       </codeblock>
        </example>
        <section><p>When <sourcexml>case:dates</sourcexml> appears as direct of
                    <sourcexml>case:judgments</sourcexml> then conversion need to omit tag
                    (<sourcexml>case:dates</sourcexml>) and retain content in this particular
                context and create <targetxml>decision:decisiondate</targetxml> as direct child of
                    <targetxml>courtcase:opinions</targetxml>, i.e.,
                    <sourcexml>case:judgments/case:dates/case:decisiondate</sourcexml> becomes
                    <targetxml>courtcase:opinions/decision:decisiondate</targetxml>.</p>
            <p>The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be
                populated with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
                    <sourcexml>case:decisiondate/date/@month</sourcexml> and
                    <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by
                a single hyphen. The values of <sourcexml>case:decisiondate/date/@month</sourcexml>
                and <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes
                so that they are 2 digits.</p>
            <note>If one or more of the three date values (year, month or day) are absent, then
                    <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
                populated.</note></section>
        <example>
            <codeblock>
&lt;case:judgments&gt;
    &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
            &lt;date year="1986" month="07" day="01"&gt;1 July 1986&lt;/date&gt; 
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    ...
&lt;/case:judgments&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:opinions&gt;
    &lt;decision:decisiondate day="01" month="07" year="1986" normdate="1986-07-01"&gt;
        &lt;date-text&gt;1 July 1986&lt;/date-text&gt; 
    &lt;/decision:decisiondate&gt;
    ...
&lt;/courtcase:opinions&gt;
       </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgments-LxAdv_courtcase.opinions.dita#Rosetta_case.judgments-LxAdv_courtcase.opinions/changes"/>-->
        <section>
            <title>Changes Specific to AU01</title>
            <p>2013-05-02: <ph id="change_20130502_SP">Updated target example to reflect changes per
                    latest Apollo markup.</ph></p>
            <p>2013-05-02: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.judgments-LxAdv_courtcase.opinions.dita  -->
    <!--SS: Done "AU01_Rosetta_case.judgments-LxAdv_courtcase.opinions"-->
    <xsl:template match="case:judgments">
        <courtcase:opinions>
            <xsl:choose>
                <xsl:when test="./@subdoc">
                    <xsl:attribute name="includeintoc">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="./@toc-caption">
                    <xsl:attribute name="alternatetoccaption">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="./@searchtype"/>
                <xsl:when test="child::inlineoject">
                    <attchments>
                        <appendix>
                            <bodytext>
                                <figure>
                                <xsl:apply-templates select="inlineobject"/>
                                </figure>
                            </bodytext>
                        </appendix>
                    </attchments>
                </xsl:when>
                <xsl:when test="child::case:dates and descendant::case:decisiondate">
                    <xsl:apply-templates select="case:decisiondate"/>
                </xsl:when>
            </xsl:choose>
            <xsl:apply-templates select="@* | node() except inlineobject except case:decisiondate"/>
        </courtcase:opinions>
    </xsl:template>
</xsl:stylesheet>