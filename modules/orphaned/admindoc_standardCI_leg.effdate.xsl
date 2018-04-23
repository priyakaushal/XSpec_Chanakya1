<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_leg.effdate">
  <title>leg:effdate <lnpid>id-ST08-31612</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:effdate</sourcexml> becomes
        <targetxml>admindoc:head/admindoc:agencymaterialinfo/admindoc:dates/admindoc:effdate</targetxml>.</p>
      <pre>
              <b><i>Source XML</i></b>

&lt;leg:body&gt;
  &lt;leg:info&gt;
    &lt;leg:dates&gt;
      &lt;leg:effdate&gt;2 July 2004; amended 1 January 2010&lt;/leg:effdate&gt;
    &lt;/leg:dates&gt;
  &lt;/leg:info&gt;
&lt;/leg:body&gt;
            </pre>
      <pre>
              <b><i>Target XML</i></b>

&lt;admindoc:head&gt;
  &lt;admindoc:agencymaterialinfo&gt;
    &lt;admindoc:dates&gt;
      &lt;admindoc:effdate&gt;2 July 2004; amended 1 January 2010&lt;/admindoc:effdate&gt;
    &lt;/admindoc:dates&gt;
  &lt;/admindoc:agencymaterialinfo&gt;
&lt;/admindoc:head&gt;

            </pre>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_leg.effdate.dita  -->
	<xsl:message>admindoc_standardCI_leg.effdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:effdate">

		<!--  Original Target XPath:  admindoc:head/admindoc:agencymaterialinfo/admindoc:dates/admindoc:effdate   -->
		<admindoc:head>
			<admindoc:agencymaterialinfo>
				<admindoc:dates>
					<admindoc:effdate>
						<xsl:apply-templates select="@* | node()"/>
					</admindoc:effdate>
				</admindoc:dates>
			</admindoc:agencymaterialinfo>
		</admindoc:head>

	</xsl:template>

</xsl:stylesheet>