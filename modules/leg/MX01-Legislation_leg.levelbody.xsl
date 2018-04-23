<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-MX01-34016</lnpid></title>
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
             <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>
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
....
&lt;/leg:levelbody&gt;

<b>Become</b>
&lt;primlaw:level id="02041306.UNC.1" includeintoc="true"
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
             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

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

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>
&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;ENRIQUE PEÑA NIETO, Presidente de los Estados Unidos Mexicanos, en
            ejerciciode la facultad que me confiere el artículo 89, fracción I de la
            ConstituciónPolítica de los Estados Unidos Mexicanos y con fundamento en
            los artículos 14, 18y 41 de la Ley Orgánica de la Administración Pública
            Federal, he tenido a bienexpedir el siguiente &lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
     <section>
       <title>Changes</title>
       <p>2014-10-16:<ph id="change_20141016_PS">Created.</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX01-Legislation\leg.levelbody.dita  -->
	<xsl:message>MX01-Legislation_leg.levelbody.xsl requires manual development!</xsl:message> 

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