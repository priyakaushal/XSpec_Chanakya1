<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.constituents">
    <title>case:constituents <lnpid>id-ST05-28414</lnpid></title>
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
                </li>
            </ul>
        </section>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>


&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;emph typestyle="it"&gt;A Leopold SC&lt;/emph&gt; and 
        &lt;emph typestyle="it"&gt;T Saunders&lt;/emph&gt; instructed by 
        &lt;emph typestyle="it"&gt;Allens Arthur Robinson&lt;/emph&gt; for the applicant (Combined Insurance Company of America t/as Combined Insurance Company of Australia).
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
        &lt;emph typestyle="it"&gt;A Leopold SC&lt;/emph&gt; and 
        &lt;emph typestyle="it"&gt;T Saunders&lt;/emph&gt; instructed by 
        &lt;emph typestyle="it"&gt;Allens Arthur Robinson&lt;/emph&gt; for the applicant (Combined Insurance Company of America t/as Combined Insurance Company of Australia).
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;
                    
           </codeblock>
       </example>
        
        <section>
        
                    <ul>
                        <li>If <sourcexml>case:constituent</sourcexml> has an attribute <sourcexml>@constituenttype</sourcexml>, the attribute should
                            be dropped.</li>
                    </ul>
        </section>
        
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>


&lt;case:constituents&gt;
    &lt;case:constituent constituenttype="counsel&gt;Cornford for the plaintiff.&lt;/case:constituent&gt;
    &lt;case:constituent constituenttype="counsel&gt;Sainsbury and E H Lee for the defendant.&lt;/case:constituent&gt;
&lt;/case:constituents&gt;


           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>


&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;Cornford for the plaintiff.&lt;/courtcase:counsel&gt;
    &lt;courtcase:counsel&gt;Sainsbury and E H Lee for the defendant.&lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;
                   
           </codeblock>
       </example>
                    <note> Any other elements under <sourcexml>case:constituents</sourcexml> should be placed under
                            <targetxml>courtcase:representation/courtcase:arguments/bodytext</targetxml>. For example
                            <sourcexml>case:constituents/p</sourcexml> becomes
                            <targetxml>courtcase:representation/courtcase:arguments/bodytext/p</targetxml>.</note>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>

&lt;case:constituents&gt;
    &lt;p&gt;
        &lt;text&gt;Solicitors: Anderssen Lawyers for the Appellants; McInnes Wilson Lawyers for the Respondent; King &amp;amp;amp; Co Solicitors for the Second to Twelfth Respondents.  MGMW&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:constituents&gt;


           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>


&lt;courtcase:representation&gt;
    &lt;courtcase:arguments&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Solicitors: Anderssen Lawyers for the Appellants; McInnes Wilson Lawyers for the Respondent; King &amp;amp;amp; Co Solicitors for the Second to Twelfth Respondents.  MGMW&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:arguments&gt;
&lt;/courtcase:representation&gt;

           </codeblock>
       </example>
       <section>
           <title>Changes</title>
           <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
       </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.constituents.dita  -->
	<xsl:message>Compcase_case.constituents.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:constituents">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:representation   -->
		<compcase:compositecourtcase xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:body>
				<compcase:caseinstance>
					<compcase:caseinstancebody>
						<courtcase:opinions>
							<courtcase:representation>
								<xsl:apply-templates select="@* | node()"/>
							</courtcase:representation>
						</courtcase:opinions>
					</compcase:caseinstancebody>
				</compcase:caseinstance>
			</compcase:body>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="case:judgments">

		<!--  Original Target XPath:  courtcase:representation/courtcase:counsel   -->
		<courtcase:representation>
			<courtcase:counsel>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:counsel>
		</courtcase:representation>

	</xsl:template>

	<xsl:template match="case:constituent">

		<!--  Original Target XPath:  courtcase:representation/courtcase:counsel   -->
		<courtcase:representation>
			<courtcase:counsel>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:counsel>
		</courtcase:representation>

	</xsl:template>

	<xsl:template match="person">

		<!--  Original Target XPath:  courtcase:representation/courtcase:arguments/bodytext   -->
		<courtcase:representation>
			<courtcase:arguments>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</courtcase:arguments>
		</courtcase:representation>

	</xsl:template>

	<xsl:template match="@constituenttype">

		<!--  Original Target XPath:  courtcase:representation/courtcase:arguments/bodytext   -->
		<courtcase:representation>
			<courtcase:arguments>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</courtcase:arguments>
		</courtcase:representation>

	</xsl:template>

	<xsl:template match="case:constituents/p">

		<!--  Original Target XPath:  courtcase:representation/courtcase:arguments/bodytext/p   -->
		<courtcase:representation>
			<courtcase:arguments>
				<bodytext>
					<p>
						<xsl:apply-templates select="@* | node()"/>
					</p>
				</bodytext>
			</courtcase:arguments>
		</courtcase:representation>

	</xsl:template>

</xsl:stylesheet>