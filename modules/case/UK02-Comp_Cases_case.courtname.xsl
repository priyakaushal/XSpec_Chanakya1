<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.courtname">
		<title>case:courtname <lnpid>id-UK02-27214</lnpid></title>
		<body>
			<section>
				<ul>
					<li class="- topic/li ">
						<sourcexml class="+ topic/keyword xml-d/sourcexml "
							>case:courtname</sourcexml> becomes <targetxml
							class="+ topic/keyword xml-d/targetxml "
							>compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
					</li>
				</ul>
			</section>


			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:courtinfo&gt; &lt;case:courtname&gt;KING'S BENCH
					DIVISION&lt;/case:courtname&gt; ... &lt;/case:courtinfo&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:head&gt; &lt;compcase:caseinstanceinfo&gt;
					&lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:courtname&gt;KING'S BENCH
					DIVISION&lt;/jurisinfo:courtname&gt; ... &lt;/jurisinfo:courtinfo&gt;
					&lt;/compcase:caseinstanceinfo&gt; &lt;/compcase:head&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.courtname.dita  -->

	<xsl:template match="case:courtname">
		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:courtname   -->
		<jurisinfo:courtname xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

</xsl:stylesheet>
