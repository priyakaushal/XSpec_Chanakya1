<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:frm="http://www.lexis-nexis.com/glp/frm"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita frm leg">


	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.comntry">
		<title>
			<sourcexml>leg:comntry</sourcexml>
			<lnpid>id-UK07-28016</lnpid>
		</title>
		<body>
			<section>
				<p>
					<sourcexml>leg:comntry</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes and child elements converted as: <ul>
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
								<li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with optional attributes and child
									elements converted as: <ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
									</ul>
								</li>
								<li><sourcexml>leg:preamble/leg:bodytext/leg:comntry</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with optional attributes and
									child elements converted as: <ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
									</ul>
								</li>
								<li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml> with optional
									attributes and child elements converted as: <ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
										<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must be the first child in the sequence. Refer to the refpt section for more information.</li>
										<li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
										<li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
										<li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotation/bodytext</targetxml></li>
									</ul>
								</li>
								<li><sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/annot:annotationlevel/annot:bodytext</targetxml>. <note>If
										attribute <sourcexml>@leveltype</sourcexml> occurs within <sourcexml>leg:comntry/level</sourcexml> then <sourcexml>@leveltype</sourcexml> will be suppressed from conversion.</note>
								</li>
								<li><sourcexml>leg:comntry/level/bodytext/leg:comntry/bodytext/form</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/bodytext/form:form</targetxml> and children described as below: <ul>
										<li>Create <targetxml>form:document</targetxml> with <targetxml>[@annotated="false"]</targetxml>, <targetxml>[@official="false"]</targetxml> and <targetxml>[@typeofdoc="unnamed"]</targetxml>. All these attributes
											are required in <targetxml>form:document</targetxml>. Attribute <targetxml>@annotated</targetxml> and <targetxml>@official</targetxml> have boolean value. Attribute <targetxml>@typeofdoc</targetxml> have
											tokenized value.</li>
										<li><sourcexml>frm:body</sourcexml> becomes <targetxml>form:document/form:bodytext</targetxml>.</li>
										<li><sourcexml>form/frm:body/p</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p</targetxml>.</li>
										<li><sourcexml>form/frm:body/p/text</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
										<li><sourcexml>form/frm:body/l</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:list</targetxml></li>
										<li><sourcexml>frm:div</sourcexml> becomes <targetxml>form:div</targetxml> with required child element <targetxml>form:bodytext</targetxml> and it's wrapper element <sourcexml>frm:divs</sourcexml> will be suppressed
											in NewLexis target conversion. <sourcexml>frm:div</sourcexml> child elements described as below: <ul>
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
									<p><sourcexml>leg:comntry//level/@leveltype="analysis|amendments"</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp[@grptype="analysis|amendments"]</targetxml>.</p>
									<p><sourcexml>leg:comntry//level/@leveltype="amendments-group|amendments-subgroup|heading-amendments"</sourcexml> becomes
											<targetxml>annot:annotation-grp[@grptype="amendments-group|amendments-subgroup|heading-amendments"]</targetxml>.</p>
									<p><sourcexml>leg:comntry//level/@leveltype="amendment"</sourcexml> becomes <targetxml>annot:annotation[@annot-type="amendment"]</targetxml>.</p>
								</li>
							</ul>
							<note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the attribute's value <sourcexml>epmh/@typestyle="it"</sourcexml> or
									<sourcexml>epmh/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2017-06-13: <ph id="change_20170613_CSN">Instructions for <sourcexml>leg:comntry//level[@leveltype=(analysis|amendments|amendments-group|amendments-subgroup|heading-amendments|amendment)]</sourcexml> converts to
							<targetxml>annot:annotations//annot:annotation-grp[@grptype="analysis|amendments|amendments-group|amendments-subgroup|heading-amendments|amendment"]/annot:annotation. </targetxml>VSTS #290259</ph>
				</p>
				<p>2017-01-18: <ph id="change_20170118_AS">Instructions for <sourcexml>leg:comntry/level/@leveltype="analysis|amendments"</sourcexml> converts to
							<targetxml>annot:annotations/annot:annotation-grp[@grptype="analysis|amendments"]/annot:annotation. </targetxml>VSTS #216684</ph>
				</p>
				<p>2015-06-29: <ph id="change_20150629_AB"> Updated target mapping for <sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml>. Db issue.... #2339.</ph></p>
				<p>2015-08-25: <ph id="change_20150825_AB"> Added Conversion Instruction and examples for <sourcexml>leg:comntry/level/bodytext/leg:comntry/bodytext/form</sourcexml>. DB issue.... #2371.</ph></p>
			</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.comntry.dita  -->

	<!-- Sudhanshu Srivastava :
	     Edited :- 19 june 2017.
	     Comments :- This is conetent specific module handling leg:comntry.
	-->

	<xsl:template match="leg:comntry">
		<annot:annotations>
			<!-- if there is a note first put them all here -->
			<xsl:if test="*[1]/name() = 'note'">
				<annot:annotation-grp>
					<annot:annotation>
						<xsl:apply-templates select="note"/>
					</annot:annotation>
				</annot:annotation-grp>
			</xsl:if>
			<xsl:for-each-group select="level" group-adjacent="
					if (@leveltype) then
						@leveltype
					else
						'commentary'">
				<xsl:choose>
					<xsl:when test="current-grouping-key() = 'amendments'">
						<annot:annotation-grp>
							<xsl:attribute name="grptype" select="@leveltype"/>
							<xsl:apply-templates select="node()"/>
						</annot:annotation-grp>
					</xsl:when>
					<xsl:when test="current-grouping-key() = 'analysis'">
						<annot:annotation-grp>
							<xsl:attribute name="grptype" select="@leveltype"/>
							<annot:annotation>
								<xsl:apply-templates select="levelinfo | heading | bodytext | level"/>
							</annot:annotation>
						</annot:annotation-grp>
					</xsl:when>
					<xsl:when test="current-grouping-key() = 'commentary'">
						<annot:annotation-grp>
							<xsl:attribute name="grptype" select="'COMMENTARY'"/>
							<xsl:for-each select="current-group()">
								<annot:annotation>
									<xsl:apply-templates select="node()"/>
								</annot:annotation>
							</xsl:for-each>
						</annot:annotation-grp>
					</xsl:when>
					<!-- safety net - not sure what would fall here -->
					<xsl:otherwise>
						<xsl:apply-templates/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
			<!-- if note is not the first node, put them all here -->
			<!-- CSN - 2017-11-27 - VSTS Bug 377269 - added "note and" to avoid empty markup when there are no notes -->
			<xsl:if test="note and not(*[1]/name() = 'note')">
				<annot:annotation-grp>
					<annot:annotation>
						<xsl:apply-templates select="note"/>
					</annot:annotation>
				</annot:annotation-grp>
			</xsl:if>
		</annot:annotations>
	</xsl:template>

	<xsl:template match="leg:comntry/@subdoc">
		<xsl:attribute name="includeintoc" select="."/>
	</xsl:template>

	<xsl:template match="leg:comntry/@toc-caption">
		<xsl:attribute name="alternatetoccaption" select="."/>
	</xsl:template>

	<xsl:template match="level">
		<xsl:choose>
			<xsl:when test="@leveltype = ('amendments-group', 'amendments-subgroup', 'heading-amendments')">
				<annot:annotation-grp>
					<xsl:attribute name="grptype" select="@leveltype"/>
					<xsl:apply-templates select="node()"/>
				</annot:annotation-grp>
			</xsl:when>
			<xsl:when test="@leveltype = ('amendment')">
				<annot:annotation>
					<xsl:attribute name="annot-type" select="@leveltype"/>
					<xsl:apply-templates select="node()"/>
				</annot:annotation>
			</xsl:when>
			<xsl:otherwise>
				<annot:annotationlevel>
					<xsl:choose>
						<xsl:when test="level">
							<!-- CSN - 2017/10/24 - W*7031133 - put out heading BEFORE adding annot:bodytext -->
							<xsl:apply-templates select="heading"/>
							<annot:bodytext>
								<xsl:apply-templates select="bodytext/* | node() except (bodytext | heading)"/>
							</annot:bodytext>
						</xsl:when>
						<xsl:otherwise>
							<xsl:apply-templates select="node()"/>
							<xsl:if test="not(bodytext)">
								<annot:bodytext/>
							</xsl:if>
						</xsl:otherwise>
					</xsl:choose>
				</annot:annotationlevel>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
