<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.year">
  <title>leg:year <lnpid>id-ST08-31623</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:year</sourcexml> becomes
          <targetxml>admindecision:decisioninfo/admindecision:dates/admindecision:adopteddate[@year]/date-text</targetxml>.</p>
      <note>Source pcdata maps to <targetxml>date-text</targetxml> and is also used to populate
          <targetxml>admindecision:adopteddate[@year]</targetxml>.</note>
      <pre>
              <b><i>Source XML</i></b>

&lt;leg:body&gt;
  &lt;leg:info&gt;
    &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;2005&lt;/leg:year&gt;
  &lt;/leg:info&gt;
&lt;/leg:body&gt;
            </pre>
      <pre>
              <b><i>Target XML</i></b>

&lt;admindoc:head&gt;
  &lt;admindecision:decisioninfo&gt;
    &lt;admindecision:dates&gt;
      &lt;admindecision:adopteddate year="2005"&gt;
        &lt;date-text&gt;2005&lt;/date-text&gt;
      &lt;/admindecision:adopteddate&gt;
    &lt;/admindecision:dates&gt;
  &lt;/admindecision:decisioninfo&gt;
&lt;/admindoc:head&gt;

            </pre>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.year.dita  -->
	<xsl:message>admindoc_standardCI_leg.year.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:year">

		<!--  Original Target XPath:  admindecision:decisioninfo/admindecision:dates/admindecision:adopteddate[@year]/date-text   -->
		<admindecision:decisioninfo>
			<admindecision:dates>
				<admindecision:adopteddate>
					<date-text>
						<xsl:apply-templates select="@* | node()"/>
					</date-text>
				</admindecision:adopteddate>
			</admindecision:dates>
		</admindecision:decisioninfo>

	</xsl:template>

</xsl:stylesheet>