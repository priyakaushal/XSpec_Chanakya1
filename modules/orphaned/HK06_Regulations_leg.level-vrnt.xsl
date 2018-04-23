<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

<!-- *********************** -->
	<!-- DO NOT USE THIS MODULE -->
	<!-- This is handled in '/leg/leg.level-LxAdv-primlaw.level.xsl' -->
<!-- *********************** -->
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-vrnt">
    <title>leg:level-vrnt <lnpid>id-HK06-37415</lnpid></title>
    <body>
        <section>
            <sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its contents will be
            retained in conversion <note>In New Lexis <targetxml>primlaw:level</targetxml> element
                is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
                    <sourcexml>leg:level-vrnt</sourcexml>. So element
                    <sourcexml>leg:level-vrnt</sourcexml> will be omitted from conversion and
                attributes <sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will become
                    <targetxml>primlaw:level/@leveltype</targetxml> with its value,
                    <sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will be suppressed,
                    <sourcexml>/leg:level-vrnt/@subdoc</sourcexml> will become
                    <targetxml>primlaw:level/@includeintoc</targetxml> with its value and
                    <sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will become
                    <targetxml>/primlaw:level/@alternatetoccaption</targetxml> with all its
                value.</note>
        </section>
<section>
      <title>Changes</title>
      <p>2016-04-19: Created.</p>
</section> 
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK06_Regulations\leg.level-vrnt.dita  -->
	<xsl:message>HK06_Regulations_leg.level-vrnt.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level/@leveltype   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  primlaw:level/@leveltype   -->
		<primlaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@searchtype">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="/leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  /primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>