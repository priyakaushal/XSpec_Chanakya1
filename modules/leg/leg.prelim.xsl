<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.prelim">
  <title>leg:prelim <lnpid>id-AR01-34420</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:prelim</sourcexml> becomes
          <targetxml>legis:body/primlaw:level/primlaw:prelim</targetxml> and create
          <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.</p>
      <pre>

&lt;leg:prelim&gt;
     &lt;p&gt;
         &lt;text&gt;El Senado y Cámara de Diputados.&lt;/text&gt;
     &lt;/p&gt;
     ...
&lt;/leg:prelim&gt;

<b>Becomes</b>


&lt;legis:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:prelim&gt;
            &lt;p&gt;
                 &lt;text&gt;El Senado y Cámara de Diputados.&lt;/text&gt;
            &lt;/p&gt;
            ...
        &lt;/primlaw:prelim&gt;
    &lt;/primlaw:level&gt;
&lt;/legis:body&gt;

        </pre>      
    </section>
        <section>
            <title>Changes</title>
            <p>2014-12-05: <ph id="change_20141205_SS">Created.</ph></p>
        </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR01-Legislation\leg.prelim.dita  -->

	<xsl:template match="leg:prelim">
		<!--  Original Target XPath:  legis:body/primlaw:level/primlaw:prelim   -->
		<!--<legis:body>
			<primlaw:level>-->
				<primlaw:prelim>
					<xsl:apply-templates select="@* | node()"/>
				</primlaw:prelim>
			<!--</primlaw:level>
		</legis:body>-->

	</xsl:template>

</xsl:stylesheet>