<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname">
    <title>leg:officialname <lnpid>id-MX01-34017</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:officialname</sourcexml> becomes
                    <targetxml>legis:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>.</p>
            <p>The value of attribute <sourcexml>@display-name</sourcexml> will be a part of
                    <targetxml>legisinfo:officialtitle</targetxml> element.</p>
            <pre>
&lt;leg:info&gt;
    &lt;leg:officialname display-name="Nombre completo:"&gt;Convenio de Coordinación para la ejecución de
        los programas y acciones del Servicio Nacional de Empleo (SNE) y el financiamiento del
        Programa de Apoyo al Empleo (PAE), que celebran la Secretaría del Trabajo y Previsión Social
        y el Estado de Nayarit.&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

<b>Becomes</b>

&lt;legis:body&gt;
    &lt;primlaw:level id="02041207.UNC.1" leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;Nombre completo: Convenio de Coordinación para la
                            ejecución de los programas y acciones del Servicio Nacional de Empleo
                            (SNE) y el financiamiento del Programa de Apoyo al Empleo (PAE), que
                            celebran la Secretaría del Trabajo y Previsión Social y el Estado de
                            Nayarit.&lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
&lt;/legis:body&gt;
       </pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-10-16: <ph id="change_20141016_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX01-Legislation\leg.officialname.dita  -->
	<xsl:message>MX01-Legislation_leg.officialname.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:  legis:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
		<legis:body>
			<primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
						<legisinfo:legisinfo>
							<legisinfo:names>
								<legisinfo:officialtitle>
									<xsl:apply-templates select="@* | node()"/>
								</legisinfo:officialtitle>
							</legisinfo:names>
						</legisinfo:legisinfo>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			</primlaw:level>
		</legis:body>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  legisinfo:officialtitle   -->
		<legisinfo:officialtitle>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:officialtitle>

	</xsl:template>

</xsl:stylesheet>