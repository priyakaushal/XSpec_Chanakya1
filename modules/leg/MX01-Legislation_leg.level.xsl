<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-MX01-34015</lnpid></title>
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
          <p><sourcexml>leg:level/@id</sourcexml> becomes
              <targetxml>primlaw:level/@xml:id</targetxml></p>
          <p><sourcexml>leg:level/leg:level-vrnt/@subdoc</sourcexml> becomes
                    <targetxml>primlaw:level/@includeintoc</targetxml></p>
          <p><sourcexml>leg:level/leg:level-vrnt/@toc-caption</sourcexml> becomes
                    <targetxml>primlaw:level/@alternatetoccaption</targetxml></p>
          <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than
        the tokenized list as shown above, the value will be set as
          <targetxml>@leveltype="unclassified"</targetxml>.</note>
        <pre>
&lt;leg:level id="02041306.ACT.1"&gt;
    &lt;leg:level-vrnt leveltype="act" subdoc="true"
        toc-caption="REGLAMENTO INTERIOR DE LA SECRETARIA DE DESARROLLO AGRARIO, TERRITORIAL Y URBANO."&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;REGLAMENTO INTERIOR DE LA SECRETARIA DE DESARROLLO AGRARIO, TERRITORIAL Y
                URBANO.&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="02041306.UNC.1"&gt;
                &lt;leg:level-vrnt leveltype="unclassified" subdoc="true"
                    toc-caption="Al margen un sello con el Escudo Nacional, que dice: Estados Unidos Mexicanos.- Presidencia de la República."&gt;
                    &lt;leg:heading&gt;
                        &lt;title&gt;Al margen un sello con el Escudo Nacional, que dice: Estados
                            Unidos Mexicanos.- Presidencia de la República.&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;ENRIQUE PEÑA NIETO, Presidente de los Estados Unidos
                                    Mexicanos, en ejercicio de la facultad que me confiere
                                    el artículo 89, fracción I de la Constitución Política
                                    de los Estados Unidos Mexicanos y con fundamento en los
                                    artículos 14, 18 y 41 de la Ley Orgánica de la
                                    Administración Pública Federal, he tenido a bien expedir
                                    el siguiente &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            ...
            ...
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

          <b>Becomes</b>


&lt;legis:body&gt;
    .......
    &lt;primlaw:level xml:id="02041306.ACT.1" includeintoc="true"
    alternatetoccaption="REGLAMENTO INTERIOR DE LA SECRETARIA DE DESARROLLO AGRARIO, TERRITORIAL Y URBANO."
    leveltype="act"&gt;
    &lt;heading&gt;
        &lt;title&gt;REGLAMENTO INTERIOR DE LA SECRETARIA DE DESARROLLO AGRARIO, TERRITORIAL Y
            URBANO.&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:level includeintoc="true"
        alternatetoccaption="Al margen un sello con el Escudo Nacional, que dice: Estados Unidos Mexicanos.- Presidencia de la República."
        leveltype="unclassified"&gt;
        &lt;heading&gt;
            &lt;title&gt;Al margen un sello con el Escudo Nacional, que dice: Estados Unidos
                Mexicanos.- Presidencia de la República.&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;ENRIQUE PEÑA NIETO, Presidente de los Estados Unidos Mexicanos, en
                    ejerciciode la facultad que me confiere el artículo 89, fracción I de la
                    ConstituciónPolítica de los Estados Unidos Mexicanos y con fundamento en
                    los artículos 14, 18y 41 de la Ley Orgánica de la Administración Pública
                    Federal, he tenido a bienexpedir el siguiente &lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;
.....
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX01-Legislation\leg.level.dita  -->
	<xsl:message>MX01-Legislation_leg.level.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="leg:level/@id">

		<!--  Original Target XPath:  primlaw:level/@xml:id   -->
		<primlaw:level>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/@subdoc">

		<!--  Original Target XPath:  primlaw:level/@includeintoc   -->
		<primlaw:level>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/@toc-caption">

		<!--  Original Target XPath:  primlaw:level/@alternatetoccaption   -->
		<primlaw:level>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>