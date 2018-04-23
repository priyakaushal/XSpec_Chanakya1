<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.judges">
		<title>case:judges <lnpid>id-UK02-27223</lnpid></title>
		<body>
			<section>
				<p> There are two scenarios for
						<sourcexml>/case:judges/case:judge</sourcexml> in Standard Rosetta
					along with NL Xpath: <ol class="- topic/ol ">
						<li class="- topic/li ">
							/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge,
								<b class="+ topic/ph hi-d/b ">NL Xpath:</b>
							/compcase:compositecourtcase/compcase:head/compcase:caseinstanceinfo/courtcase:panel/courtcase:judges/person:judge </li>
						<li class="- topic/li ">
							/CASEDOC/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge,
								<b class="+ topic/ph hi-d/b ">NL Xpath:</b>
							/compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge
						</li>
					</ol>
				</p>
			</section>


			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:judges&gt; &lt;case:judge&gt;SWIFT
					J.&lt;/case:judge&gt; &lt;/case:judges&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinionby&gt; &lt;person:judge&gt;SWIFT
					J.&lt;/person:judge&gt; &lt;/courtcase:opinionby&gt; OR
					&lt;courtcase:panel&gt; &lt;courtcase:judges&gt;
					&lt;person:judge&gt;SWIFT J.&lt;/person:judge&gt;
					&lt;/courtcase:judges&gt; &lt;/courtcase:panel&gt; </codeblock>
			</example>



			<note class="- topic/note "> Capture PCData for judges markup as is in New
				Lexis, For example: if there is a Rosetta <sourcexml
					class="+ topic/keyword xml-d/sourcexml ">case:judges</sourcexml>
				element and it just contains text then conversion needs to create
					<targetxml class="+ topic/keyword xml-d/targetxml "
					>courtcase:judges</targetxml> or <targetxml
					class="+ topic/keyword xml-d/targetxml "
					>courtcase:opinionby</targetxml> directly without
					<targetxml>person:judge</targetxml>.</note>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:judges&gt; SWIFT J &lt;/case:judges&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinionby&gt; SWIFT J
					&lt;/courtcase:opinionby&gt; OR &lt;courtcase:panel&gt;
					&lt;courtcase:judges&gt; SWIFT J &lt;/courtcase:judges&gt;
					&lt;/courtcase:panel&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.judges.dita  -->

	<xsl:template match="case:judges[ancestor::case:judgment]">
		<courtcase:opinionby>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:opinionby>
	</xsl:template>

	<xsl:template match="case:judges[not(ancestor::case:judgment)]">
		<courtcase:panel>
			<courtcase:judges>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:judges>
		</courtcase:panel>
	</xsl:template>

	<xsl:template match="case:judge">
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>
	</xsl:template>

</xsl:stylesheet>
