<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Comm-Form-Pre_leg.histnote">
		<title>
			<sourcexml>leg:comntry</sourcexml>
			<lnpid>id-MY03-16413</lnpid>
		</title>
		<body>
			<section>
				<p><sourcexml>leg:comntry</sourcexml> becomes
						<targetxml>note[@notetype="historical"]/bodytext</targetxml> and populated
					as below: </p>
				<p>
					<sourcexml>leg:comntry</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp</targetxml>
					with optional attributes and child elements converted as: <ul>
						<li>
							<sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>
						</li>
						<li>
							<sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml>
						</li>
						<li>
							<sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml>
						</li>
						<li>
							<sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the first child in
							the sequence. Please refer to General Markup Section for handling
							<sourcexml>refpt</sourcexml>.</li>
						<li>
							<sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml>
						</li>
						<li>
							<sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml>
						</li>
					</ul>
					<ul>
						<li>
							<b>
								<sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
							<ul>
								<li>
									<sourcexml>level/bodytext/leg:comntry/level</sourcexml> becomes
									<targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml>
									with following attributes: <ul>
										<li>
											<sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>
										</li>
										<li>
											<sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml>
										</li>
										<li>
											<sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml>
										</li>
										<li>
											<sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must be the
											first child in the sequence. Please refer to General Markup Section
											for handling <sourcexml>refpt</sourcexml>.</li>
										<li>
											<sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml>
										</li>
										<li>
											<sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml>
										</li>
										<li>
											<sourcexml>level/bodytext</sourcexml> becomes
											<targetxml>annot:annotation/bodytext</targetxml>
										</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY03_Commentary-From-Prece\Comm-Form-Pre_leg.histnote.dita  -->
	<!--	<xsl:message>Comm-Form-Pre_leg.histnote.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:comntry">
		<primlaw:excerpt>
			<primlaw:level>
				<xsl:attribute name="leveltype">
					<xsl:text>unclassified</xsl:text>
				</xsl:attribute>
				<annot:annotations>
					<annot:annotation-grp>
						<xsl:attribute name="grptype">
							<xsl:text>COMMENTARY</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="includeintoc">
							<xsl:value-of select="./level[1]/@subdoc"/>
						</xsl:attribute>
						<xsl:attribute name="alternatetoccaption">
							<xsl:value-of select="./level[1]/@toc-caption"/>
						</xsl:attribute>
						<!-- <xsl:call-template name="subdoc"/>
			  <xsl:call-template name="toc-caption"/>-->
						<!-- <xsl:apply-templates select="@id"/>-->
						<!--<xsl:apply-templates/>-->
						<xsl:choose>
							<!--  <xsl:when test=".[ancestor::level][parent::bodytext][child::level/level]">
			    <!-\-<xsl:when test="ancestor::level and parent::bodytext and child::level/level">-\->
			      <annot:annotation>
			       
			            <xsl:apply-templates select="@* | node()"/>
			      </annot:annotation>
			    </xsl:when>-->
							<xsl:when test=".[ancestor::level][parent::bodytext][child::level]">
								<!-- Awantika: Commenting annot:annotation and creating it in level where parent is leg:comntry -->
								<!--<annot:annotation>-->
								<xsl:apply-templates select="@* | node()"/>
								<!--</annot:annotation>-->
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="@* | node()"/>
							</xsl:otherwise>
						</xsl:choose>
					</annot:annotation-grp>
				</annot:annotations>
			</primlaw:level>
		</primlaw:excerpt>
	</xsl:template>

</xsl:stylesheet>
