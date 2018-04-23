<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.constituents">
    <title>case:constituents <lnpid>id-AU13-20423</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:constituents</sourcexml> becomes
                        <targetxml>/compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:representation</targetxml>
                    below mentioned is the child element. <note>There can be separate <sourcexml>case:constituents</sourcexml> at different locations
                        in the file (generally before and after the <sourcexml>case:judgments</sourcexml>) which needs to be maintained in that
                        location. The general rule remains that the content order should be maintained from input to output.</note>
                    <ul>
                        <li>
                            <sourcexml>case:constituent</sourcexml> becomes <targetxml>courtcase:representation/courtcase:counsel</targetxml>
                            <note>If <sourcexml>person</sourcexml> occurs inside <sourcexml>case:constituent</sourcexml>, kindly refer to the
                                instructions for <sourcexml>person</sourcexml> in the General Markup section for guidance on handling of this
                                scenario.</note>
                        </li>
                    </ul>
                    <pre xml:space="preserve">

&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;emph typestyle="it"&gt;A Leopold SC&lt;/emph&gt; and 
        &lt;emph typestyle="it"&gt;T Saunders&lt;/emph&gt; instructed by 
        &lt;emph typestyle="it"&gt;Allens Arthur Robinson&lt;/emph&gt; for the applicant (Combined Insurance Company of America t/as Combined Insurance Company of Australia).
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

<b>Becomes</b>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
        &lt;emph typestyle="it"&gt;A Leopold SC&lt;/emph&gt; and 
        &lt;emph typestyle="it"&gt;T Saunders&lt;/emph&gt; instructed by 
        &lt;emph typestyle="it"&gt;Allens Arthur Robinson&lt;/emph&gt; for the applicant (Combined Insurance Company of America t/as Combined Insurance Company of Australia).
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;
                    </pre>
                    <ul>
                        <li>If <sourcexml>case:constituent</sourcexml> has an attribute <sourcexml>@constituenttype</sourcexml>, the attribute should
                            be dropped.</li>
                    </ul>
                    <pre xml:space="preserve">

&lt;case:constituents&gt;
    &lt;case:constituent constituenttype="counsel&gt;Cornford for the plaintiff.&lt;/case:constituent&gt;
    &lt;case:constituent constituenttype="counsel&gt;Sainsbury and E H Lee for the defendant.&lt;/case:constituent&gt;
&lt;/case:constituents&gt;

<b>Becomes</b>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;Cornford for the plaintiff.&lt;/courtcase:counsel&gt;
    &lt;courtcase:counsel&gt;Sainsbury and E H Lee for the defendant.&lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;
                    </pre>
                    <note> Any other elements under <sourcexml>case:constituents</sourcexml> should be placed under
                            <targetxml>courtcase:representation/courtcase:arguments/bodytext</targetxml>. For example
                            <sourcexml>case:constituents/p</sourcexml> becomes
                            <targetxml>courtcase:representation/courtcase:arguments/bodytext/p</targetxml>.</note>
                    <pre xml:space="preserve">

&lt;case:constituents&gt;
    &lt;p&gt;
        &lt;text&gt;Solicitors: Anderssen Lawyers for the Appellants; McInnes Wilson Lawyers for the Respondent; King &amp;amp; Co Solicitors for the Second to Twelfth Respondents.  MGMW&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:constituents&gt;

<b>Becomes</b>

&lt;courtcase:representation&gt;
    &lt;courtcase:arguments&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Solicitors: Anderssen Lawyers for the Appellants; McInnes Wilson Lawyers for the Respondent; King &amp;amp; Co Solicitors for the Second to Twelfth Respondents.  MGMW&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:arguments&gt;
&lt;/courtcase:representation&gt;

</pre>
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>



	<xsl:template match="case:constituents">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:representation   -->
			<courtcase:representation>
				<xsl:for-each-group select="*" group-adjacent="if (self::case:constituent|self::page) then 0 else 1">
					<xsl:choose>
						<xsl:when test="current-grouping-key()=0">
							<xsl:for-each select="current-group()">
								<xsl:apply-templates select="."/>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
						    <courtcase:arguments>
						        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						            <xsl:for-each select="current-group()">
						                <xsl:apply-templates select="."/>
						            </xsl:for-each>
						        </bodytext>
						    </courtcase:arguments>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each-group>
				
			</courtcase:representation>

	</xsl:template>


	<xsl:template match="case:constituent">

		<!--  Original Target XPath:  courtcase:representation/courtcase:counsel   -->
			<courtcase:counsel>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:counsel>	

	</xsl:template>

	<xsl:template match="case:constituent/@constituenttype"/>

</xsl:stylesheet>