<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_leg.comntry2">
  <title>Nested <sourcexml>level</sourcexml> occurred in <sourcexml>leg:comntry</sourcexml> <lnpid>id-NZ09-24214</lnpid></title>
  <body>
    <section>
      <p><sourcexml>level/bodytext/leg:comntry/level/level</sourcexml> becomes <targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel</targetxml> with following attributes:
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Please refer to General Markup Section for handling <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
          <li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotationlevel/annot:bodytext</targetxml>
            <note><targetxml>annot:bodytext</targetxml> is required element in <targetxml>annot:annotationlevel</targetxml>.</note>
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_leg.comntry2.dita  -->
	<xsl:message>NZ09_Comm_Form_Prec_Text_Comm-Form-Pre_leg.comntry2.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel   -->
		<seclaw:level>
			<seclaw:bodytext>
				<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<primlaw:level>
						<annot:annotations>
							<annot:annotation-grp>
								<annot:annotation>
									<annot:annotationlevel>
										<xsl:apply-templates select="@* | node()"/>
									</annot:annotationlevel>
								</annot:annotation>
							</annot:annotation-grp>
						</annot:annotations>
					</primlaw:level>
				</primlaw:excerpt>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="leg:comntry">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel   -->
		<seclaw:level>
			<seclaw:bodytext>
				<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<primlaw:level>
						<annot:annotations>
							<annot:annotation-grp>
								<annot:annotation>
									<annot:annotationlevel>
										<xsl:apply-templates select="@* | node()"/>
									</annot:annotationlevel>
								</annot:annotation>
							</annot:annotation-grp>
						</annot:annotations>
					</primlaw:level>
				</primlaw:excerpt>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/bodytext/leg:comntry/level/level">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel   -->
		<seclaw:level>
			<seclaw:bodytext>
				<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
					<primlaw:level>
						<annot:annotations>
							<annot:annotation-grp>
								<annot:annotation>
									<annot:annotationlevel>
										<xsl:apply-templates select="@* | node()"/>
									</annot:annotationlevel>
								</annot:annotation>
							</annot:annotation-grp>
						</annot:annotations>
					</primlaw:level>
				</primlaw:excerpt>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="heading/edpnum">

		<!--  Original Target XPath:  heading/desig   -->
		<heading>
			<desig>
				<xsl:apply-templates select="@* | node()"/>
			</desig>
		</heading>

	</xsl:template>

	<xsl:template match="heading/title">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="level/bodytext">

		<!--  Original Target XPath:  annot:annotationlevel/annot:bodytext   -->
		<annot:annotationlevel>
			<annot:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</annot:bodytext>
		</annot:annotationlevel>

	</xsl:template>

</xsl:stylesheet>