<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0" exclude-result-prefixes="dita case xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.constituents-LxAdv_courtcase.opinions_courtcase.representation">
    <title>case:constituents <lnpid>id-CCCC-12010</lnpid></title>
    <body>
        <section id="mapping">
            <p><sourcexml>case:constituents</sourcexml> becomes
                    <targetxml>courtcase:opinions/courtcase:representation</targetxml> with child
                elements handled as described below.</p>
            <note>There can be multiple <sourcexml>case:constituents</sourcexml> elements at different
                locations in a file (generally before and after the
                    <sourcexml>case:judgment</sourcexml>). These elements need to be maintained in the same
                locations. The general rule remains that the content order should be maintained from
                input to output.</note>
            <p><sourcexml>case:constituent</sourcexml> becomes
                    <targetxml>courtcase:opinions/courtcase:representation/courtcase:counsel</targetxml>.</p>
            <note>If <sourcexml>person</sourcexml> occurs inside
                    <sourcexml>case:constituent</sourcexml>, kindly refer to the instructions for
                    <sourcexml>person</sourcexml> in the General Markup section for guidance on
                handling of this scenario.</note>
        </section>
        <example>
            <title>Example: AU content</title>
            <codeblock>
&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;emph typestyle="it"&gt;A Leopold SC&lt;/emph&gt; and 
        &lt;emph typestyle="it"&gt;T Saunders&lt;/emph&gt; instructed by 
        &lt;emph typestyle="it"&gt;Allens Arthur Robinson&lt;/emph&gt; for the applicant (Combined Insurance Company of America t/as Combined Insurance Company of Australia).
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;
           </codeblock>
            <b>becomes</b>
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
        <example>
            <title>Example: NZ content</title>
            <codeblock>
&lt;case:constituents&gt;
    &lt;case:constituent constituenttype="counsel"&gt;J. K. Patterson, for the plaintiffs.&lt;/case:constituent&gt;
    &lt;case:constituent constituenttype="counsel"&gt;Tucker, for the first defendant.&lt;/case:constituent&gt;
    &lt;case:constituent constituenttype="counsel"&gt;R. E. Wylie, for the second, third and fourth defendants.&lt;/case:constituent&gt;
&lt;/case:constituents&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;J. K. Patterson, for the plaintiffs.&lt;/courtcase:counsel&gt;
    &lt;courtcase:counsel&gt;Tucker, for the first defendant.&lt;/courtcase:counsel&gt;
    &lt;courtcase:counsel&gt;R. E. Wylie, for the second, third and fourth defendants.&lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;
           </codeblock>
        </example>
        <example>
            <title>Example: UK content</title>
            <codeblock>
&lt;case:constituents&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;P Shepherd for the Appellant&lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;R Wood for the Respondents&lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
    &lt;case:constituent&gt;
        &lt;person&gt;
            &lt;name.text&gt;Clyde &amp;amp; Co; Hill Dickinson&lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/case:constituent&gt;
&lt;/case:constituents&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:opinions&gt;
    &lt;courtcase:representation&gt;
        &lt;courtcase:counsel&gt;
            &lt;person:counselor&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;
                        P Shepherd for the Appellant
                    &lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:counselor&gt;
        &lt;/courtcase:counsel&gt;
        &lt;courtcase:counsel&gt;
            &lt;person:counselor&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;
                        R Wood for the Respondents
                    &lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:counselor&gt;
        &lt;/courtcase:counsel&gt;
        &lt;courtcase:counsel&gt;
            &lt;person:counselor&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;
                        Clyde &amp;#x0026; Co; Hill Dickinson
                    &lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:counselor&gt;
        &lt;/courtcase:counsel&gt;
    &lt;/courtcase:representation&gt;
&lt;/courtcase:opinions&gt;
           </codeblock>
        </example>
        <section><p>Any other elements under <sourcexml>case:constituents</sourcexml> should be
                placed under
                    <targetxml>courtcase:opinions/courtcase:representation/courtcase:arguments/bodytext</targetxml>.
                For example,<ul>
                    <li><sourcexml>case:constituents/p</sourcexml> becomes
                            <targetxml>courtcase:representation/courtcase:arguments/bodytext/p</targetxml>.</li>
                    <li><sourcexml>case:constituents/pgrp</sourcexml> becomes <targetxml>
                            courtcase:opinions/courtcase:representation/courtcase:arguments/bodytext/pgrp</targetxml>.</li>
                </ul>
            </p></section>
        <example>
            <title>Example: AU content</title>
            <codeblock>
&lt;case:constituents&gt;
    &lt;p&gt;
        &lt;text&gt;Solicitors: Anderssen Lawyers for the Appellants; McInnes Wilson Lawyers for the Respondent; King &amp;amp; Co Solicitors for the Second to Twelfth Respondents.  MGMW&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:constituents&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:representation&gt;
    &lt;courtcase:arguments&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Solicitors: Anderssen Lawyers for the Appellants; McInnes Wilson Lawyers for the Respondent; King &amp;amp; Co Solicitors for the Second to Twelfth Respondents.  MGMW&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/courtcase:arguments&gt;
&lt;/courtcase:representation&gt;
           </codeblock>
        </example>
        <example>
            <title>Example: UK content</title>
            <codeblock>
&lt;case:constituents&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;The course of business was, to the knowledge of all the directors,
                to supply agents with laudatory prospectuses and other documents,
                mostly prepared by &lt;emph typestyle="it"&gt;Feigan&lt;/emph&gt;, to be used
                for the purpose of inducing persons to take shares, and it is no
                defence for a director to say that he allowed this to go on without
                examining the papers to see whether they were honest or
                fraudulent.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;In &lt;emph typestyle="it"&gt;Peek v. Gurney&lt;/emph&gt; the House of Lords,
                though they held that the bill must be dismissed because the
                Plaintiff was not an original allottee of shares, yet expressed an
                opinion that &lt;emph typestyle="it"&gt;Barclay&lt;/emph&gt;, one of the
                directors of &lt;emph typestyle="it"&gt;Overend, Gurney, &amp;amp; Co&lt;/emph&gt;.,
                was liable for the misrepresentations contained in a prospectus, in
                the preparation and issuing of which he had taken no part, and which
                he had never read. As against the company the Plaintiff is entitled,
                upon the pleadings as they stand, to claim rescission of the
                contract to take shares. But, if necessary, we ask leave to
                amend&lt;/text&gt;
        &lt;/p&gt;
        &lt;footnotegrp&gt;
            &lt;footnote fntoken="0"&gt;
                &lt;fnbody&gt;
                    &lt;p&gt;
                        &lt;text&gt;(1)     Law Rep. 6 H. L. 377.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/fnbody&gt;
            &lt;/footnote&gt;
            ...
        &lt;/footnotegrp&gt;
        ...
    &lt;/pgrp&gt;
&lt;/case:constituents&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:opinions&gt;
    &lt;courtcase:representation&gt;
        &lt;courtcase:arguments&gt;
            &lt;bodytext&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;The course of business was, to the knowledge of all the directors,
                            to supply agents with laudatory prospectuses and other documents,
                            mostly prepared by &lt;emph typestyle="it"&gt;Feigan&lt;/emph&gt;, to be used
                            for the purpose of inducing persons to take shares, and it is no
                            defence for a director to say that he allowed this to go on without
                            examining the papers to see whether they were honest or
                            fraudulent.&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;In &lt;emph typestyle="it"&gt;Peek v. Gurney&lt;/emph&gt; the House of Lords,
                            though they held that the bill must be dismissed because the
                            Plaintiff was not an original allottee of shares, yet expressed an
                            opinion that &lt;emph typestyle="it"&gt;Barclay&lt;/emph&gt;, one of the
                            directors of &lt;emph typestyle="it"&gt;Overend, Gurney, &amp;#x0026; Co&lt;/emph&gt;.,
                            was liable for the misrepresentations contained in a prospectus, in
                            the preparation and issuing of which he had taken no part, and which
                            he had never read. As against the company the Plaintiff is entitled,
                            upon the pleadings as they stand, to claim rescission of the
                            contract to take shares. But, if necessary, we ask leave to
                            amend&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;footnotegroup&gt;
                                &lt;footnote&gt;
                                    &lt;ref:anchor id="_1234"/&gt;
                                    &lt;bodytext&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;(1)     Law Rep. 6 H. L. 377.&lt;/text&gt;
                                        &lt;/p&gt;
                                    &lt;/bodytext&gt;
                                &lt;/footnote&gt;
                                ...
                            &lt;/footnotegroup&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;        
                    ...
                &lt;/pgrp&gt;
            &lt;/bodytext&gt;
        &lt;/courtcase:arguments&gt;
    &lt;/courtcase:representation&gt;
&lt;/courtcase:opinions&gt;
           </codeblock>
        </example>
        <!--<section>
            <title>Changes</title>
        </section>-->
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.constituents-LxAdv_courtcase.opinions_courtcase.representation.dita  -->

	<!--  Original Target XPath:  courtcase:opinions/courtcase:representation   -->
	<xsl:template match="case:constituents">
			<courtcase:representation>
				<xsl:for-each select="child::*">
					<xsl:choose>
						<xsl:when test="self::case:constituent">
							<xsl:apply-templates select="."/>
						</xsl:when>
						<xsl:otherwise>
							<courtcase:arguments>
								<bodytext>
									<xsl:apply-templates select="." />		
								</bodytext>
							</courtcase:arguments>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</courtcase:representation>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>heading not allowed within bodytext; map to h</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="heading[parent::case:constituents]">
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Output the children of title within the 'h' created above.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="title[not( normalize-space( . ) = '' ) and parent::heading/parent::case:constituents]" priority="1">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="case:constituent">
		<!--  Original Target XPath:  courtcase:opinions/courtcase:representation/courtcase:counsel   -->
		<!--<xsl:choose>
		    <xsl:when test="child::person">		       
		        <courtcase:counsel>
		        	<!-\- JD: 2017-06-16: removing <person:counselor> wrapper, added by Rosetta_case.constituent_person-LxAdv-person.counselor_person.person.xsl -\->
		            <!-\-<person:counselor>-\->
		                <xsl:apply-templates select="@* | node()"/>
		            <!-\-</person:counselor>-\->		            
		        </courtcase:counsel>
		    </xsl:when>
		    <xsl:otherwise>-->
		        <courtcase:counsel>
		            <xsl:apply-templates select="@* except @constituenttype | node()"/>
		        </courtcase:counsel>
		    <!--</xsl:otherwise>
		</xsl:choose>-->
	</xsl:template>
    
   <!-- <xsl:template match="case:constituents[child::p | child::pgrp]">
       <!-\- <courtcase:opinions>-\->
        <courtcase:representation>
	        <courtcase:arguments>
	            <bodytext>
	                <xsl:apply-templates select="@* | node()"/>
	            </bodytext>
	        </courtcase:arguments>
        </courtcase:representation>
        <!-\-</courtcase:opinions>-\->
    </xsl:template>-->
	
    <!--<xsl:template match="case:judgment">
        
		<!-\-  Original Target XPath:  courtcase:opinions/courtcase:representation/courtcase:counsel   -\->
		<courtcase:opinions>
			<courtcase:representation>
				<courtcase:counsel>
					<xsl:apply-templates select="@* | node()"/>
				</courtcase:counsel>
			</courtcase:representation>
		</courtcase:opinions>
		
	</xsl:template>-->
    
<!--
	<xsl:template match="person">

		<!-\-  Original Target XPath:  courtcase:opinions/courtcase:representation/courtcase:arguments/bodytext   -\->
		<courtcase:opinions>
			<courtcase:representation>
				<courtcase:arguments>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</courtcase:arguments>
			</courtcase:representation>
		</courtcase:opinions>

	</xsl:template>-->


	<!--<xsl:template match="case:constituents/p">

		<!-\-  Original Target XPath:  courtcase:representation/courtcase:arguments/bodytext/p   -\->
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

	<xsl:template match="case:constituents/pgrp">

		<!-\-  Original Target XPath:  courtcase:opinions/courtcase:representation/courtcase:arguments/bodytext/pgrp   -\->
		<courtcase:opinions>
			<courtcase:representation>
				<courtcase:arguments>
					<bodytext>
						<pgrp>
							<xsl:apply-templates select="@* | node()"/>
						</pgrp>
					</bodytext>
				</courtcase:arguments>
			</courtcase:representation>
		</courtcase:opinions>

	</xsl:template>-->

</xsl:stylesheet>