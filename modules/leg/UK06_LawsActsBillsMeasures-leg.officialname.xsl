<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.officialname">
  <title>leg:officialname <lnpid>id-UK06-28030</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialname</sourcexml> becomes <targetxml>legisinfo:officialtitle</targetxml> and populated as below:
        
        <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>leg:officialname</sourcexml> with the attribute's value <sourcexml>epmh/@typestyle="it"</sourcexml> or <sourcexml>epmh/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
      </p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.officialname.dita  -->
	
	<!-- Sudhanshu Srivastava 
	Edited : 14 June 2017.
	Comments : This is content specific module handling leg:officialname.
	-->
	<xsl:template match="leg:officialname">
		<!--  Original Target XPath:  legisinfo:officialtitle   -->
		<legisinfo:names>
			<legisinfo:officialtitle>
				<xsl:apply-templates select="node()"/>
			</legisinfo:officialtitle>
		</legisinfo:names>
	</xsl:template>

	<xsl:template match="leg:officialname/emph">
		<!--  Original Target XPath:     -->
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
</xsl:stylesheet>