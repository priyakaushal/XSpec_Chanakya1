<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	exclude-result-prefixes="dita case xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.judges">
		<title>case:judges <lnpid>id-UK01-27032</lnpid></title>
		<body>
			<section>
				<p> There are two scenarios for <sourcexml>/case:judges/case:judge</sourcexml> in Standard Rosetta along with NL
					Xpath: <ol>
						<li> /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge, <b>NL Xpath:</b>
							/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/courtcase:panel/courtcase:judges/person:judge </li>
						<li> /CASEDOC/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge,
								<b>NL Xpath:</b>
							/courtcase:courtcase/courtcase:body/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge
						</li>
					</ol>
				</p>
				<note>Any occurrences of the attribute <sourcexml>@ln.user-displayed</sourcexml> in
						<sourcexml>case:judges</sourcexml> or <sourcexml>case:judge</sourcexml> should be suppressed.</note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:judges&gt; &lt;case:judge&gt;GREENE LJ.&lt;/case:judge&gt; &lt;/case:judges&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinionby&gt; &lt;person:judge&gt;GREENE LJ.&lt;/person:judge&gt;
					&lt;/courtcase:opinionby&gt; OR &lt;courtcase:panel&gt; &lt;courtcase:judges&gt; &lt;person:judge&gt;GREENE
					LJ.&lt;/person:judge&gt; &lt;/courtcase:judges&gt; &lt;/courtcase:panel&gt; </codeblock>
			</example>

			<section>
				<p> Any <sourcexml>nl</sourcexml> element inside <sourcexml>case:judge</sourcexml> should be suppressed. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:info&gt; &lt;case:courtinfo&gt; &lt;case:judges&gt; &lt;case:judge&gt;JUDGES SKOURIS
					(PRESIDENT), JANN, TIMMERMANS, ROSAS AND BAY LARSEN (PRESIDENTS OF CHAMBER), SILVA DE LAPUERTA, SCHIEMANN,
					MAKARCZYK, KURIS, JUHÁSZ, Ó CAOIMH (RAPPORTEUR), LINDH AND BONICHOT&lt;nl/&gt;ADVOCATE GENERAL RUIZ-JARABO
					COLOMER&lt;/case:judge&gt; &lt;/case:judges&gt; &lt;/case:courtinfo&gt; &lt;/case:info&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;caseinfo:caseinfo&gt; &lt;courtcase:panel&gt; &lt;courtcase:judges&gt;
					&lt;person:judge&gt;JUDGES SKOURIS (PRESIDENT), JANN, TIMMERMANS, ROSAS AND BAY LARSEN (PRESIDENTS OF
					CHAMBER), SILVA DE LAPUERTA, SCHIEMANN, MAKARCZYK, KURIS, JUHÁSZ, Ó CAOIMH (RAPPORTEUR), LINDH AND BONICHOT
					ADVOCATE GENERAL RUIZ-JARABO COLOMER&lt;/person:judge&gt; &lt;/courtcase:judges&gt; &lt;/courtcase:panel&gt;
					&lt;/caseinfo:caseinfo&gt; </codeblock>
			</example>



			<section>
				<p> Capture PCData for judges markup as is in New Lexis, For example: if there is a Rosetta
						<sourcexml>case:judges</sourcexml> element and it just contains text then conversion needs to create
						<targetxml>courtcase:judges</targetxml> or <targetxml>courtcase:opinionby</targetxml> directly without
						<targetxml>person:judge</targetxml>. </p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:judges&gt;LORD WRIGHT MR, ROMER AND GREENE LJJ&lt;/case:judges&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinionby&gt; LORD WRIGHT MR, ROMER AND GREENE LJJ &lt;/courtcase:opinionby&gt; OR
					&lt;courtcase:panel&gt; &lt;courtcase:judges&gt; LORD WRIGHT MR, ROMER AND GREENE LJJ
					&lt;/courtcase:judges&gt; &lt;/courtcase:panel&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2013-02-20: <ph id="change_20130220_DSF">Added a note regarding the suppression of
							<sourcexml>@ln.user-displayed</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.judges.dita  -->

	<xsl:template match="case:judges[parent::case:courtinfo/parent::case:info]">
		<!--  Original Target XPath:  courtcase:judges   -->
		<courtcase:panel>
			<courtcase:judges>
					<xsl:apply-templates select="@* | node()"/>
			</courtcase:judges>
		</courtcase:panel>
	</xsl:template>

	<xsl:template match="case:judge/@ln.user-displayed"/>

	<xsl:template match="case:judges[parent::case:courtinfo/parent::case:judgment]">
		<!--  Original Target XPath:  courtcase:judges   -->
		<courtcase:opinionby>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:opinionby>
	</xsl:template>

	<xsl:template match="nl[parent::case:judge]"/>
	
	<xsl:template match="case:judge">
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>When <xd:i class="sourceXML">case:judge</xd:i> has a child <xd:i class="sourceXML">fnr</xd:i> then
			output as person:judge/person:peron/person:name.text, as this allows <xd:b class="targetXML">footnote-ref</xd:b>.</xd:p>
		</xd:desc>
	</xd:doc>
	
	<xsl:template match="case:judge[fnr]">
		<person:judge>
			<person:person>
				<person:name.text>
					<xsl:apply-templates/>
				</person:name.text>
			</person:person>
		</person:judge>
	</xsl:template>


</xsl:stylesheet>
