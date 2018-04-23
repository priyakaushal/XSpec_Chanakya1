<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.author">
    <title>case:author <lnpid>id-ST05-28410</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:author</sourcexml> becomes
                    <targetxml>compcase:body/note/byline</targetxml>.</p>
            <note>If <sourcexml>person</sourcexml> occurs inside <sourcexml>case:author</sourcexml>, kindly refer to person section for handling of this scenario.</note>
            <p>The children of <sourcexml>case:author</sourcexml> should be handled according to the
                relevant instructions from the General Markup section.</p>

            <p>For <b><i>Australian</i></b> documents, the first occurrence of
                    <sourcexml>case:author</sourcexml> should be mapped to
                    <targetxml>note/byline</targetxml> inside the first
                    <targetxml>compcase:caseinstancehead</targetxml>, following
                    <targetxml>casesum:summaries</targetxml> (if it exists). Any subsequent
                occurrences of <sourcexml>case:author</sourcexml> should be mapped to
                    <targetxml>note/byline</targetxml> in the target document in the same content
                sequence that exists in the source document.</p>
            <p>For <b><i>New Zealand</i></b> documents, all occurrences of
                    <sourcexml>case:author</sourcexml> should be mapped to
                    <targetxml>note/byline</targetxml> in the target document in the same content
                sequence that exists in the source document.</p>
           
        </section>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>
&lt;case:author&gt;
    &lt;person&gt;
        &lt;name.text&gt;SAM ROSEWARNE&lt;/name.text&gt;
        &lt;role&gt;BARRISTER&lt;/role&gt;
    &lt;/person&gt;
&lt;/case:author&gt;
           </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>
&lt;compcase:body&gt;
    &lt;note&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;SAM ROSEWARNE&lt;/person:name.text&gt;
                    &lt;role&gt;BARRISTER&lt;/role&gt;
                &lt;/person:person&gt;
            &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/note&gt;
&lt;/compcase:body&gt;
           </codeblock>
        </example>
        <example>
            <title>Source XML: Australian document with first occurrence of <sourcexml>case:author</sourcexml>
                mapped to <targetxml>compcase:caseinstancehead/note/byline</targetxml></title>
            <codeblock>
&lt;docinfo&gt;
    &lt;docinfo:doc-country iso-cc="AU"/&gt;
&lt;/docinfo&gt;
...
&lt;case:content&gt;
    &lt;case:typeofcase&gt;
        &lt;heading&gt;
            &lt;title&gt;SUMMONS&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/case:typeofcase&gt;
    &lt;case:judgments&gt;
        &lt;case:constituents&gt;
            &lt;p&gt;
                &lt;text&gt;The facts relevant to this report sufficiently appear in the judgment
                        reported&lt;emph typestyle="it"&gt;infra&lt;/emph&gt;.&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;K. D. Dorney&lt;/emph&gt;, for the applicants.&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;D. R. Cooper&lt;/emph&gt;, for the respondent.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/case:constituents&gt;
        &lt;prelim&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;
                        &lt;emph typestyle="it"&gt;Curia advisari vult&lt;/emph&gt;
                    &lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/prelim&gt;
        &lt;case:judgment&gt; ... &lt;/case:judgment&gt;
        &lt;case:order&gt; ... &lt;/case:order&gt;
        &lt;case:constituents&gt; ... &lt;/case:constituents&gt;
    &lt;/case:judgments&gt;
    &lt;case:author&gt;
        &lt;person&gt;
            &lt;name.text&gt;C. G. S. L. Jensen,&lt;/name.text&gt;
            &lt;role&gt;BARRISTER-AT-LAW.&lt;/role&gt;
        &lt;/person&gt;
    &lt;/case:author&gt;
    &lt;!-- next case --&gt;
    &lt;case:typeofcase&gt; ... &lt;/case:typeofcase&gt;
    &lt;cae:judgments&gt; ... &lt;/cae:judgments&gt;
    ...
&lt;/case:content&gt;
           </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>
&lt;compcase:body&gt;
    &lt;compcase:caseinstance&gt;
        &lt;compcase:caseinstancehead&gt;
            &lt;casesum:summaries&gt;
                &lt;casesum:editorialsummary&gt;
                    &lt;casesum:overview&gt;
                        &lt;heading&gt;
                            &lt;title&gt;SUMMONS&lt;/title&gt;
                        &lt;/heading&gt;
                    &lt;/casesum:overview&gt;
                &lt;/casesum:editorialsummary&gt;
            &lt;/casesum:summaries&gt;
            &lt;note&gt;
                &lt;byline&gt;
                    &lt;person:contributor contributor-type="author"&gt;
                        &lt;person:person&gt;
                            &lt;person:name.text&gt;C. G. S. L. Jensen,&lt;/person:name.text&gt;
                            &lt;role&gt;BARRISTER-AT-LAW.&lt;/role&gt;
                        &lt;/person:person&gt;
                    &lt;/person:contributor&gt;
                &lt;/byline&gt;
            &lt;/note&gt;
        &lt;/compcase:caseinstancehead&gt;
        &lt;compcase:caseinstancebody&gt;
            &lt;courtcase:opinions&gt;
                &lt;courtcase:representation&gt;
                    &lt;courtcase:arguments&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The facts relevant to this report sufficiently appear in the
                                    judgment reported&lt;emph typestyle="it"&gt;infra&lt;/emph&gt;.&lt;/text&gt;
                            &lt;/p&gt;
                            &lt;p&gt;
                                &lt;text&gt;&lt;emph typestyle="it"&gt;K. D. Dorney&lt;/emph&gt;, for the
                                    applicants.&lt;/text&gt;
                            &lt;/p&gt;
                            &lt;p&gt;
                                &lt;text&gt;&lt;emph typestyle="it"&gt;D. R. Cooper&lt;/emph&gt;, for the
                                    respondent.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/courtcase:arguments&gt;
                &lt;/courtcase:representation&gt;
                &lt;courtcase:prelim&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;
                                &lt;emph typestyle="it"&gt;Curia advisari vult&lt;/emph&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/courtcase:prelim&gt;
                ...
            &lt;/courtcase:opinions&gt;
        &lt;/compcase:caseinstancebody&gt;
    &lt;/compcase:caseinstance&gt;
    &lt;compcase:caseinstance&gt;
        ...
    &lt;/compcase:caseinstance&gt;
    ...
&lt;/compcase:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.author.dita  -->
	<xsl:message>Compcase_case.author.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:author">

		<!--  Original Target XPath:  compcase:body/note/byline   -->
		<compcase:body>
			<note>
				<byline>
					<xsl:apply-templates select="@* | node()"/>
				</byline>
			</note>
		</compcase:body>

	</xsl:template>

	<xsl:template match="person">

		<!--  Original Target XPath:  note/byline   -->
		<note>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</note>

	</xsl:template>

</xsl:stylesheet>