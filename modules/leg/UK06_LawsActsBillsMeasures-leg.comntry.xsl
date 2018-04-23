<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.comntry">
  <title><sourcexml>leg:comntry</sourcexml> <lnpid>id-UK06-28016</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>leg:comntry</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes and child elements converted as:
					<ul>
						<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
						<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
						<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
						<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Please refer to General Markup Section for handling <sourcexml>refpt</sourcexml>.</li>
						<li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
						<li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
					</ul>
					
					<ul>
						<li><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
							
							<ul>
								<li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with optional attributes and child elements converted as:
									<ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
									</ul>
								</li>
								
								<li><sourcexml>leg:preamble/leg:bodytext/leg:comntry</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with optional attributes and child elements converted as:
									<ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
									</ul>
								</li>
								
								<li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml> with optional attributes and child elements converted as:
									<ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
										<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must be the first child in the sequence. Refer to the refpt section for more information.</li>
										<li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
										<li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
										<li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotation/bodytext</targetxml></li>
									</ul>
								</li>
								<li><sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/annot:annotationlevel/annot:bodytext</targetxml>.
									<note>If attribute <sourcexml>@leveltype</sourcexml> occurs within <sourcexml>leg:comntry/level</sourcexml> then <sourcexml>@leveltype</sourcexml> will be suppressed from conversion.</note>
								</li>
								<li><sourcexml>leg:comntry/level/bodytext/leg:comntry/bodytext/form</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/bodytext/form:form</targetxml> and children described as below:
									<ul>
										<li>Create <targetxml>form:document</targetxml> with <targetxml>[@annotated="false"]</targetxml>, <targetxml>[@official="false"]</targetxml> and <targetxml>[@typeofdoc="unnamed"]</targetxml>. All these attributes are required in <targetxml>form:document</targetxml>. Attribute <targetxml>@annotated</targetxml> and <targetxml>@official</targetxml> have boolean value. Attribute <targetxml>@typeofdoc</targetxml> have tokenized value.</li>
										<li><sourcexml>frm:body</sourcexml> becomes <targetxml>form:document/form:bodytext</targetxml>.</li>
										<li><sourcexml>form/frm:body/p</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p</targetxml>.</li>
										<li><sourcexml>form/frm:body/p/text</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
										<li><sourcexml>form/frm:body/l</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:list</targetxml></li>
										<li><sourcexml>frm:div</sourcexml> becomes <targetxml>form:div</targetxml> with required child element <targetxml>form:bodytext</targetxml> and it's wrapper element <sourcexml>frm:divs</sourcexml> will be suppressed in NewLexis target conversion. <sourcexml>frm:div</sourcexml> child elements described as below:
											<ul>
												<li><sourcexml>frm:div/heading</sourcexml> becomes <targetxml>form:div/heading</targetxml></li>
												<li><sourcexml>frm:div/heading/title</sourcexml> becomes <targetxml>form:div/heading/title</targetxml></li>
												<li><sourcexml>frm:div/p</sourcexml> becomes <targetxml>form:div/form:bodytext/form:p</targetxml>.</li>
												<li><sourcexml>frm:div/p/text</sourcexml> becomes <targetxml>form:div/form:bodytext/form:p/form:text</targetxml></li>
												<li><sourcexml>frm:div/l</sourcexml> becomes <targetxml>form:div/form:bodytext/form:list</targetxml></li>
											</ul>
										</li>
									</ul>
									<note>Refer to General Markup Section for handling of <sourcexml>form</sourcexml> children (including mixed content).</note>
								</li>
								<li>
									<p><sourcexml>leg:comntry//level/@leveltype="analysis|amendments"</sourcexml> becomes
										<targetxml>annot:annotations/annot:annotation-grp[@grptype="analysis|amendments"]</targetxml>.</p>
									<p><sourcexml>leg:comntry//level/@leveltype="amendments-group|amendments-subgroup|heading-amendments"</sourcexml>
										becomes
										<targetxml>annot:annotation-grp[@grptype="amendments-group|amendments-subgroup|heading-amendments"]</targetxml>.</p>
									<p><sourcexml>leg:comntry//level/@leveltype="amendment"</sourcexml> becomes <targetxml>annot:annotation[@annot-type="amendment"]</targetxml>.</p>
								</li>
							</ul>
							<note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the attribute's value <sourcexml>epmh/@typestyle="it"</sourcexml> or <sourcexml>epmh/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2017-06-13: <ph id="change_20170613_CSN">Instructions for
					<sourcexml>leg:comntry//level[@leveltype=(analysis|amendments|amendments-group|amendments-subgroup|heading-amendments|amendment)]</sourcexml> converts to
					<targetxml>annot:annotations//annot:annotation-grp[@grptype="analysis|amendments|amendments-group|amendments-subgroup|heading-amendments|amendment"]/annot:annotation.
					</targetxml>VSTS #290259</ph>
				</p>
				<p>2017-01-18: <ph id="change_20170118_AS">Instructions for
					<sourcexml>leg:comntry/level/@leveltype="analysis|amendments"</sourcexml> converts to
					<targetxml>annot:annotations/annot:annotation-grp[@grptype="analysis|amendments"]/annot:annotation.
					</targetxml>VSTS #216684</ph>
				</p>
				<p>2015-06-29: <ph id="change_20150629_AB">
					Updated target mapping for <sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml>. Db issue.... #2339.</ph></p>
				<p>2015-08-25: <ph id="change_20150825_AB">
					Added Conversion Instruction and examples for <sourcexml>leg:comntry/level/bodytext/leg:comntry/bodytext/form</sourcexml>. DB issue.... #2371.</ph></p>
			</section>
		</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.comntry.dita  -->
	
	<!-- Sudhanshu Srivastava :
	     Edited :- 19 june 2017.
	     Comments :- This is conetent specific module handling leg:comntry.
	--> 

	<xsl:template match="form">
			<form:form>
				<xsl:apply-templates select="@* | node()"/>
			</form:form>
	</xsl:template>

	<xsl:template match="frm:body">
		<!--  Original Target XPath:  form:document/form:bodytext   -->
		<form:document>
			<form:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</form:bodytext>
		</form:document>
	</xsl:template>

	<xsl:template match="p[parent::frm:body/ancestor::form] | p[parent::frm:div]">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
					<form:p>
						<xsl:apply-templates select="@* | node()"/>
					</form:p>
	</xsl:template>

	<xsl:template match="text[parent::p/ancestor::form] | text[parent::p/parent::frm:div]">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p/form:text   -->
						<form:text>
							<xsl:apply-templates select="@* | node()"/>
						</form:text>
	</xsl:template>

	<xsl:template match="l[parent::frm:body/ancestor::form] | l[parent::frm:div]">
		<!--  Original Target XPath:  form:form/form:document/form:bodytext/form:list   -->
					<form:list>
						<xsl:apply-templates select="@* | node()"/>
					</form:list>
	</xsl:template>

	<xsl:template match="frm:div">
		<!--  Original Target XPath:  form:div   -->
		<form:div>
			<form:bodytext>
			<xsl:apply-templates select="@* | node()"/>
			</form:bodytext>
		</form:div>
	</xsl:template>

	<xsl:template match="frm:divs"/>

</xsl:stylesheet>