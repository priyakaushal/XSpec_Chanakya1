<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.author">
	    <title>case:author <lnpid>id-HK09-39409</lnpid></title>
    <body>
        <section>
            <p>All occurrences of <sourcexml>case:author</sourcexml> should be mapped to
                    <targetxml>note/byline</targetxml> in the target document in the same content
                sequence that exists in the source document.</p>
            <p>The children of <sourcexml>case:author</sourcexml> should be handled according to the
                relevant instructions from the General Markup section.</p>
        </section>
        <example>
            <codeblock>
&lt;case:author&gt;
    &lt;person&gt;
        &lt;name.text&gt;SAM ROSEWARNE&lt;/name.text&gt;
        &lt;role&gt;BARRISTER&lt;/role&gt;
    &lt;/person&gt;
&lt;/case:author&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>

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

           </codeblock>
        </example>
        <example>
            <title>If input document with occurrence of <sourcexml>case:author</sourcexml> mapped
                with <targetxml>note/byline</targetxml> after the
                    <targetxml>courtcase:opinions</targetxml> and inside the
                    <targetxml>compcase:caseinstancebody</targetxml> for content sequence that
                exists in the source document.</title>
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
            <b>becomes</b>
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
        &lt;/compcase:caseinstancebody&gt;
    &lt;/compcase:caseinstance&gt;
    &lt;!-- next case --&gt;
    &lt;compcase:caseinstance&gt;
        ...
    &lt;/compcase:caseinstance&gt;
&lt;/compcase:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-08-08 <ph id="change_20140808_SS">Updated the instructions with special
                    directions for the placement of <targetxml>note/byline</targetxml> after the
                        <targetxml>courtcase:opinions</targetxml> inside the
                        <targetxml>compcase:caseinstancebody</targetxml> in Australian documents and
                    an example demonstrating this.</ph></p>
            <p>2014-07-17 <ph id="change_20140717_SS">Delete the instructions with special
                directions for the placement of <targetxml>note/byline</targetxml> in Australian
                documents and an example demonstrating this.</ph></p>
            <p>2013-05-17 <ph id="change_20130517_DSF">Updated the instructions with special
                    directions for the placement of <targetxml>note/byline</targetxml> in Australian
                    documents and an example demonstrating this.</ph></p>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="case:author">

		<!--  Original Target XPath:  note/byline   -->
		<note>
			<byline>
				<xsl:choose>
				    <xsl:when test="person">
				        <person:contributor>
				            <xsl:attribute name="contributor-type">author</xsl:attribute>
				            <xsl:apply-templates select="@* | node()"/>
				        </person:contributor>
				    </xsl:when>
				    <xsl:otherwise>
				        <xsl:apply-templates select="@* | node()"/>
				    </xsl:otherwise>
				</xsl:choose>
			</byline>
		</note>

	</xsl:template>

</xsl:stylesheet>