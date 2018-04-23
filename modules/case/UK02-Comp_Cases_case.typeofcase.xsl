<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.typeofcase">
		<title>case:typeofcase <lnpid>id-UK02-27232</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:typeofcase</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>/compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancehead/casesum:summaries/casesum:editorialsummary/casesum:overview</targetxml>
				</p>
				<note class="- topic/note ">Always use <targetxml
						class="+ topic/keyword xml-d/targetxml ">bodytext</targetxml> and
					don't use <targetxml class="+ topic/keyword xml-d/targetxml "
						>p</targetxml> as an immediate child of <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>casesum:overview</targetxml>. </note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:typeofcase&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Introduction&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt;The Minister of Health appealed.&lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/case:typeofcase&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;casesum:overview&gt; &lt;bodytext&gt; &lt;h&gt; &lt;emph
					typestyle="bf"&gt;Introduction&lt;/emph&gt; &lt;/h&gt; &lt;pgrp&gt;
					&lt;p&gt; &lt;text&gt;The Minister of Health appealed.&lt;/text&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/casesum:overview&gt;
				</codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.typeofcase.dita  -->

	<xsl:template match="case:typeofcase">
		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancehead/casesum:summaries/casesum:editorialsummary/casesum:overview   -->
		<compcase:caseinstance>
			<compcase:caseinstancehead>
				<casesum:summaries>
					<casesum:editorialsummary>
						<casesum:overview>
							<bodytext
								xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:apply-templates select="@* | node()"/>
							</bodytext>
						</casesum:overview>
					</casesum:editorialsummary>
				</casesum:summaries>
			</compcase:caseinstancehead>
		</compcase:caseinstance>
	</xsl:template>

</xsl:stylesheet>
