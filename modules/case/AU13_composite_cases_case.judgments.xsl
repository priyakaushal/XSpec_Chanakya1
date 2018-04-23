<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judgments">
    <title>case:judgments <lnpid>id-AU13-20438</lnpid></title>
    <body>
        <section>
            <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgments</sourcexml> becomes 
                <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions</targetxml>. 
                The source attributes, which are
                optional, are treated as follows:<ul>
                    <li><sourcexml class="+ topic/keyword xml-d/sourcexml ">@subdoc</sourcexml> becomes 
                        <targetxml class="+ topic/keyword xml-d/targetxml ">@includeintoc</targetxml>.</li>
                    <li><sourcexml class="+ topic/keyword xml-d/sourcexml ">@toc-caption</sourcexml> becomes 
                        <targetxml class="+ topic/keyword xml-d/targetxml ">@alternatetoccaption</targetxml>.</li>
                </ul></p>
        </section>
        <example>
            <title><sourcexml>case:judgments</sourcexml> (<i>not</i> preceded by <sourcexml>case:typeofcase</sourcexml>)</title>
            <codeblock>

&lt;case:judgments&gt;
    &lt;case:judgment subdoc="true" toc-caption="Perram  J."&gt;
        &lt;case:courtinfo&gt;
            &lt;case:judges&gt;
                &lt;case:judge&gt;PRENDERGAST CJ&lt;/case:judge&gt;
            &lt;/case:judges&gt;
        &lt;/case:courtinfo&gt;
        &lt;case:judgmentbody&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Background&lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
                    &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by Combined Insurance Company of America (Combined) as insurance agents. In recent times, the five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South Wales claiming entitlements both to annual leave and long service leave. One of the principal issues to be resolved in those proceedings is the question of whether the agents were employees of Combined, as they contend, or rather independent contractors, as Combined contends. No doubt the resolution of that issue will involve a close consideration of a broad range of indicia. One of the matters to which Combined points is a term in its contract with each agent by which each agreed, or appears to have agreed, that his relationship with Combined was not one of employment.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/case:judgmentbody&gt;
    &lt;/case:judgment&gt;
&lt;/case:judgments&gt;

            </codeblock>
            <b>Becomes</b>
            <codeblock>

&lt;compcase:caseinstance&gt;
    &lt;compcase:caseinstancebody&gt;
        &lt;courtcase:opinions&gt;
            &lt;courtcase:opinion includeintoc="true" alternatetoccaption="Perram  J."&gt;
                &lt;courtcase:opinionby&gt;
                    &lt;person:judge&gt;PRENDERGAST CJ&lt;/person:judge&gt;
                &lt;/courtcase:opinionby&gt;
                &lt;bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Background&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;p&gt;
                            &lt;desig value="1"&gt;[1]&lt;/desig&gt;
                            &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by Combined Insurance Company of
                                America (Combined) as insurance agents. In recent times, the five have sued Combined in the Chief Industrial
                                Magistrates&amp;#x2019; Court of New South Wales claiming entitlements both to annual leave and long service leave. One of
                                the principal issues to be resolved in those proceedings is the question of whether the agents were employees of
                                Combined, as they contend, or rather independent contractors, as Combined contends. No doubt the resolution of that
                                issue will involve a close consideration of a broad range of indicia. One of the matters to which Combined points is a
                                term in its contract with each agent by which each agreed, or appears to have agreed, that his relationship with
                                Combined was not one of employment.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
            &lt;/courtcase:opinion&gt;
        &lt;/courtcase:opinions&gt;
    &lt;/compcase:caseinstancebody&gt;
&lt;/compcase:caseinstance&gt;


            </codeblock>
        </example>

        <section>
            <p>If <sourcexml>case:judgments</sourcexml> has <sourcexml>case:typeofcase</sourcexml> as a preceding sibling, then
                    <sourcexml>case:judgments</sourcexml> and the preceding <sourcexml>case:typeofcase</sourcexml> should map to the same target
                    <targetxml>compcase:body/compcase:caseinstance</targetxml>.</p>
        </section>
        <example>
            <title><sourcexml>case:judgments</sourcexml> preceded by <sourcexml>case:typeofcase</sourcexml></title>
            <codeblock>

&lt;case:content&gt;
    &lt;case:typeofcase&gt;
        &lt;heading&gt;
            &lt;title&gt;APPEAL&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;This was an appeal from a decision of Einstein J in the Equity Division&lt;nl/&gt;making certain declarations and orders concerning the
                rights of the vendor of a&lt;nl/&gt;hotel business over the poker machine entitlements attached to the hotelier's&lt;nl/&gt;licence...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:typeofcase&gt;
    &lt;case:judgments&gt;
        &lt;case:constituents&gt;
            &lt;heading&gt;
                &lt;title&gt;&lt;emph typestyle="it"&gt;Masters v Garcia&lt;/emph&gt; [2005] NSWCA 287&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;M L D Einfeld&lt;/emph&gt; QC and &lt;emph typestyle="it"&gt;RP L Lancaster&lt;/emph&gt;, for the appellants.&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;J J J Garnsey&lt;/emph&gt; QC and &lt;emph typestyle="it"&gt;A Hatzis&lt;/emph&gt;, for the respondents.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/case:constituents&gt;
        &lt;prelim&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/prelim&gt;
        &lt;case:dates&gt;
            &lt;case:decisiondate&gt;
                &lt;date year="2005" month="08" day="26"&gt;26 August 2005&lt;/date&gt;
            &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
        &lt;case:judgment subdoc="true" toc-caption="TOBIAS JA"&gt;
            &lt;case:courtinfo&gt;
                &lt;case:judges ln.user-displayed="false"&gt;TOBIAS JA&lt;/case:judges&gt;
            &lt;/case:courtinfo&gt;
            &lt;case:judgmentbody&gt;
                &lt;p&gt;
                    &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;TOBIAS JA&lt;/emph&gt; In this matter I have had the benefit of reading in draft the&lt;nl/&gt;judgment of
                        BastenJA. Subject to what appears hereunder, I agree with his&lt;nl/&gt;Honour that...&lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
        ...
    &lt;/case:judgments&gt;
&lt;/case:content&gt;

            </codeblock>
            <b>Becomes</b>
            <codeblock>

&lt;compcase:caseinstance&gt;
    &lt;compcase:caseinstancehead&gt;
        &lt;casesum:summaries&gt;
            &lt;casesum:editorialsummary&gt;
                &lt;casesum:overview&gt;
                    &lt;heading&gt;
                        &lt;title&gt;APPEAL&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;This was an appeal from a decision of Einstein J in the Equity Division&lt;proc:nl/&gt;making certain declarations and
                                orders concerning the rights of the vendor of a&lt;proc:nl/&gt;hotel business over the poker machine entitlements attached
                                to the hotelier's&lt;proc:nl/&gt;licence...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/casesum:overview&gt;
            &lt;/casesum:editorialsummary&gt;
        &lt;/casesum:summaries&gt;
    &lt;/compcase:caseinstancehead&gt;
    &lt;compcase:caseinstancebody&gt;
        &lt;courtcase:opinions&gt;
            &lt;courtcase:representation&gt;
                &lt;heading&gt;
                    &lt;title&gt;&lt;emph typestyle="it"&gt;Masters v Garcia&lt;/emph&gt; [2005] NSWCA 287&lt;/title&gt;
                &lt;/heading&gt;
                &lt;courtcase:arguments&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;&lt;emph typestyle="it"&gt;M L D Einfeld&lt;/emph&gt; QC and &lt;emph typestyle="it"&gt;RP L Lancaster&lt;/emph&gt;, for the
                                appellants.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/courtcase:arguments&gt;
                &lt;courtcase:arguments&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;&lt;emph typestyle="it"&gt;J J J Garnsey&lt;/emph&gt; QC and &lt;emph typestyle="it"&gt;A Hatzis&lt;/emph&gt;, for the respondents.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/courtcase:arguments&gt;
            &lt;/courtcase:representation&gt;
            &lt;courtcase:prelim&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;Cur adv vult&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/courtcase:prelim&gt;
            &lt;decision:decisiondate month="08" day="26" year="2005" normdate="2005-08-26"&gt;
                &lt;date-text&gt;26 August 2005&lt;/date-text&gt;
            &lt;/decision:decisiondate&gt;
            &lt;courtcase:opinion includeintoc="true" alternatetoccaption="TOBIAS JA"&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;desig value="1"&gt;[1]&lt;/desig&gt;
                        &lt;text&gt;&lt;emph typestyle="bf"&gt;TOBIAS JA&lt;/emph&gt; In this matter I have had the benefit of reading in draft the&lt;proc:nl/&gt;judgment of
                            BastenJA. Subject to what appears hereunder, I agree with his&lt;proc:nl/&gt;Honour that...&lt;/text&gt;
                    &lt;/p&gt;
                    ...
                &lt;/bodytext&gt;
            &lt;/courtcase:opinion&gt;
            ...
        &lt;/courtcase:opinions&gt;
    &lt;/compcase:caseinstancebody&gt;
&lt;/compcase:caseinstance&gt;

            </codeblock>
        </example>
        
        <section>
            <note class="- topic/note ">When <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml> appears as direct child of
                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgments</sourcexml> then conversion needs to omit the tag 
                (<sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml>) and retain content in this particular context and create
                <targetxml class="+ topic/keyword xml-d/targetxml ">decision:decisiondate</targetxml> as direct child of 
                <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:opinions</targetxml>, i.e., 
                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:judgments/case:dates/case:decisiondate</sourcexml> becomes 
                <targetxml class="+ topic/keyword xml-d/targetxml ">courtcase:opinions/decision:decisiondate</targetxml>.</note>
            <p>
                The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be populated with the values of
                <sourcexml>case:decisiondate/date/@year</sourcexml>, <sourcexml>case:decisiondate/date/@month</sourcexml> and
                <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a single hyphen. The values of
                <sourcexml>case:decisiondate/date/@month</sourcexml> and <sourcexml>case:decisiondate/date/@day</sourcexml> should be
                padded with zeroes so that they are 2 digits. 
                <note>If one or more of the three date values (year, month or day) are absent, then <targetxml>decision:decisiondate/@normdate</targetxml>
                    should <b>not</b> be populated.</note>
            </p>
        </section>
        <example>
            <title><sourcexml>case:dates</sourcexml> as a child of <sourcexml>case:judgments</sourcexml></title>
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
            <b>Becomes</b>
            <codeblock>

&lt;courtcase:opinions&gt;
    &lt;decision:decisiondate day="01" month="07" year="1986" normdate="1986-07-01"&gt;
        &lt;date-text&gt;1 July 1986&lt;/date-text&gt; 
    &lt;/decision:decisiondate&gt;
    ...
&lt;/courtcase:opinions&gt;

            </codeblock>
        </example>
        
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU13_composite_cases\case.judgments.dita  -->
	
	<xsl:template match="case:judgments">

		<!--  Original Target XPath:  compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions   -->
					<courtcase:opinions>
						<xsl:apply-templates select="@* | node()"/>
					</courtcase:opinions>

	</xsl:template>

    <xsl:template match="case:judgments/@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
		    <xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

    <xsl:template match="case:judgments/@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>


    <xsl:template match="case:dates[parent::case:judgments]">

		<!--  Original Target XPath:  decision:decisiondate   -->
		<xsl:apply-templates select="@* | node()"/>		

	</xsl:template>

	

</xsl:stylesheet>