<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.juris">
  <title>leg:juris <lnpid>id-UK06-28043</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:juris/location/country</sourcexml> becomes <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes @codescheme="ISO-3166-1" and @countrycode="GB".</p>
      <p>And populated as below:</p>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-01-06 <ph id="change_20160106_AB">Created. RFA #2690</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.juris.dita  -->

	<xsl:template match="leg:juris">
		<!--  Original Target XPath:  jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:legisbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="location/country/node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:legisbodyinfo>
	</xsl:template>
</xsl:stylesheet>