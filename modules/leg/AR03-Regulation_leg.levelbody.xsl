<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-AR03-34817</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
            <ul>
              <li>
                If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:level</targetxml> i.e, 
                <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
              </li>
              <li>
                If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
              </li>
            </ul>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML : </title>
             <codeblock>

&lt;leg:levelbody&gt;    
    &lt;leg:level id="211999_unclassified_1"&gt;
        &lt;leg:level-vrnt subdoc="true" leveltype="unclassified" toc-caption="VISTO"&gt;
            &lt;leg:heading&gt;
                &lt;title&gt;VISTO&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;la Ley N. 25.064 de Presupuesto General de la
                            Administración Nacional para el año 1999, y &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;


            </codeblock>
               <title>Target XML : </title>
               <codeblock>

&lt;primlaw:level xml:id="211999_unclassified_1" includeintoc="true"
    alternatetoccaption="VISTO"
    leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title&gt;VISTO&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;la Ley N. 25.064 de Presupuesto General de la
                Administración Nacional para el año 1999, y&lt;/text&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt; 

              </codeblock>
           </example>
       <example>
           <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
           <codeblock>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Prorrógase hasta el 1º de enero de 2008, las
                suspensiones dispuestas por el artículo 1º del Decreto
                Nº 390/03 y prorrogadas por el artículo 1º del Decreto
                Nº 809/04, el artículo 1º del Decreto Nº 788/05 y el
                artículo 1º del Decreto Nº 940/06, respecto del
                restablecimiento de los DOS (2) puntos porcentuales
                correspondientes al aporte personal de los trabajadores
                en relación de dependencia, ordenado por el artículo 2º
                del Decreto Nº 2203/02, oportunamente reducido por el
                artículo 15 del Decreto Nº 1387/01, modificado por el
                artículo 5º del Decreto Nº 1676/01.-&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                 </codeblock>
       </example>
       
       <example>
           <title>Target XML 2:</title>
           <codeblock>
&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;Prorrógase hasta el 1º de enero de 2008, las
                suspensiones dispuestas por el artículo 1º del Decreto
                Nº 390/03 y prorrogadas por el artículo 1º del Decreto
                Nº 809/04, el artículo 1º del Decreto Nº 788/05 y el
                artículo 1º del Decreto Nº 940/06, respecto del
                restablecimiento de los DOS (2) puntos porcentuales
                correspondientes al aporte personal de los trabajadores
                en relación de dependencia, ordenado por el artículo 2º
                del Decreto Nº 2203/02, oportunamente reducido por el
                artículo 15 del Decreto Nº 1387/01, modificado por el
                artículo 5º del Decreto Nº 1676/01.-&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
       </example>
    
     <section>
       <title>Changes</title>
         <p>2014-12-05:<ph id="change_20141205_AS">Created.</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\leg.levelbody.dita  -->
	<xsl:message>AR03-Regulation_leg.levelbody.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>