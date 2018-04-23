<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.categories">
  <title>leg:categories <lnpid>id-UK06-28014</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:categories/leg:heading/subtitle</sourcexml> becomes <targetxml>classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
        and populated as below:</p>
      <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or
          <sourcexml>subtitle</sourcexml> with the attribute's value
          <sourcexml>epmh/@typestyle="it"</sourcexml> or <sourcexml>epmh/@typestyle="un"</sourcexml>
        will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL
        conversion.</note>
      <note>If <sourcexml>h</sourcexml> direct child of <sourcexml>leg:categories</sourcexml> then
        conversion needs to mapped in target
          <targetxml>classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
        Refer source and target examples:</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-08-19: <ph id="change_20160819_SS">Added new instruction for handling input <sourcexml>leg:categories/h</sourcexml>.</ph></p>
      <p>2015-08-12: <ph id="change_20150812_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.categories.dita  -->
	 
	<!-- Sudhanshu Srivastava :
	     Edited :- 15 June 2017.
	     Comments :- This is content specific module handling leg:categories.
	
	-->
	<xsl:template match="leg:categories/leg:heading/subtitle">

		<!--  Original Target XPath:  classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classification classscheme="leg:categories">
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="emph[parent::subtitle or parent::title]">

		<!--  Original Target XPath:  classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<xsl:choose>
			<xsl:when test="@typestyle=('it','un')">
				<emph typestyle="{@typestyle}">
					<xsl:apply-templates select="node()"/>
				</emph>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="node()"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="leg:categories/h">
		<!--  Original Target XPath:  classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classification classscheme="leg:categories">
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>
	</xsl:template>
</xsl:stylesheet>