<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-MX02-33816</lnpid></title>
   <body>
      <section>
        <p><sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes
                    <targetxml>primlaw:level</targetxml> which has a required attribute
                    <targetxml>@leveltype</targetxml> and its values are tokenized as below:</p>
          <ul>
            <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
            <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
          </ul>
          <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
          
          <p>Below are the unique values for <sourcexml>@leveltype</sourcexml> found in the source documents and the corresponding mapping in NewLexis.</p>
          <ul>
              <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="part"]</sourcexml> becomes
                  <targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="chapter"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="act"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="section"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
            <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="unclassified"]</sourcexml> becomes
            <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
          </ul>
          <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than
        the tokenized list as shown above, the value will be set as
          <targetxml>@leveltype="unclassified"</targetxml>.</note>
            <p>Target <targetxml>primlaw:level</targetxml> markup comes with following attributes:
                    <ul id="ul_zd5_dms_tp">
                    <li><sourcexml>leg:level@id</sourcexml> becomes
                            <targetxml>primlaw:level@xml:id</targetxml>.</li>
                    <li><sourcexml>leg:level-vrnt@subdoc</sourcexml> becomes
                            <targetxml>primlaw:level@includeintoc</targetxml>.</li>
                    <li><sourcexml>leg:level-vrnt@toc-caption </sourcexml>becomes
                            <targetxml>primlaw:level@alternatetoccaption</targetxml>.</li>
                </ul>
            </p>
</section>

        <example>
            <title>Source XML </title>
            <codeblock>

&lt;leg:level id="dof01104.SEC.1323"&gt;
    &lt;leg:level-vrnt subdoc="true" leveltype="section" toc-caption="ArtÃ­culo 11."&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;ArtÃ­culo 11.&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;&lt;text&gt;Se requerirÃ¡ autorizaciÃ³n de la SecretarÃ­a para la organizaciÃ³n de las Sociedades Controladoras y la constituciÃ³n y 
                funcionamiento de Grupos Financieros. Estas autorizaciones serÃ¡n otorgadas o denegadas discrecionalmente por dicha SecretarÃ­a, 
                oyendo la opiniÃ³n del Banco de MÃ©xico y, segÃºn corresponda, en virtud de los integrantes del Grupo Financiero que pretenda 
                organizarse, de las Comisiones Nacionales Bancaria y de Valores, de Seguros y Fianzas o del Sistema de Ahorro para el Retiro.&lt;/text&gt;&lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Por su naturaleza, dichas autorizaciones serÃ¡n intransmisibles.
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;La SecretarÃ­a, una vez que, en su caso, otorgue la autorizaciÃ³n a que se...&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Estas autorizaciones asÃ­ como sus modificaciones, se publicarÃ¡n, a costa del
                        interesado, en el Diario Oficial de la FederaciÃ³n.
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;La autorizaciÃ³n a que se refiere el presente artÃ­culo se otorgarÃ¡ sin
                        perjuicio de los procedimientos que, en su caso, deban efectuarse ante la
                        ComisiÃ³n Federal de Competencia EconÃ³mica o cualquier otra autoridad.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
           </example>

        <example>
            <title>Target XML </title>
            <codeblock>

&lt;legislaturerecord:body&gt;
    &lt;legislaturerecord:bodytext&gt;
        &lt;primlaw:level xml:id="dof01104.SEC.1323" includeintoc="true" leveltype="section" alternatetoccaption="ArtÃ­culo 11."&gt;
        &lt;heading&gt;
            &lt;title&gt;ArtÃ­culo 11.&lt;/title&gt;
        &lt;/heading&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;&lt;text&gt;Se requerirÃ¡ autorizaciÃ³n de la SecretarÃ­a para la organizaciÃ³n de las Sociedades Controladoras y la constituciÃ³n 
                y funcionamiento de Grupos Financieros. Estas autorizaciones serÃ¡n otorgadas o denegadas discrecionalmente por dicha SecretarÃ­a,
                oyendo la opiniÃ³n del Banco de MÃ©xico y, segÃºn corresponda, en virtud de los integrantes del Grupo Financiero que pretenda 
                organizarse, de las Comisiones Nacionales Bancaria y de Valores, de Seguros y Fianzas o del Sistema de Ahorro para el Retiro.&lt;/text&gt;&lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Por su naturaleza, dichas autorizaciones serÃ¡n intransmisibles.
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;La SecretarÃ­a, una vez que, en su caso, otorgue la autorizaciÃ³n a que se...&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Estas autorizaciones asÃ­ como sus modificaciones, se publicarÃ¡n, a costa del
                        interesado, en el Diario Oficial de la FederaciÃ³n.
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;La autorizaciÃ³n a que se refiere el presente artÃ­culo se otorgarÃ¡ sin
                        perjuicio de los procedimientos que, en su caso, deban efectuarse ante la
                        ComisiÃ³n Federal de Competencia EconÃ³mica o cualquier otra autoridad.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;
  &lt;legislaturerecord:bodytext&gt;
&lt;/legislaturerecord:body&gt;

                 </codeblock>
           </example>
     <section>
       <title>Changes</title>
       <p>2014-10-16: Created</p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX02-Gazette\leg.level.dita  -->
	<xsl:message>MX02-Gazette_leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;part&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="part"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;chapter&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="chapter"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;act&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="act"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;section&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="section"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt[@leveltype=&#34;unclassified&#34;]">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level@id">

		<!--  Original Target XPath:  primlaw:level@xml:id   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt@subdoc">

		<!--  Original Target XPath:  primlaw:level@includeintoc   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt@toc-caption ">

		<!--  Original Target XPath:  primlaw:level@alternatetoccaption   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>