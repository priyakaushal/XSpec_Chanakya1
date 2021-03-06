<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-AR02-35013</lnpid></title>
  <body>
    <section>
      
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml>.  </p>
        
       
    </section>
      <example>
          <title>Source XML 1</title>
          <codeblock>
&lt;leg:level id="L0000027_chapter_1"&gt;
    &lt;leg:level-vrnt subdoc="true" leveltype="Chapter" toc-caption="CAPITULO I"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;CAPITULO I&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Naturaleza y funciones generales del Poder Judicial
                        NacionalLa Justicia Nacional procederá siempre aplicando
                        la Constitución y las leyes Nacionales, a la decisión de
                        las causas en que se versen intereses, actos o derechos
                        de Ministros o agentes públicos, de simples individuos,
                        de Provincia o de la Nación.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;              
          </codeblock>
      </example>
              <example>
          <title>Target XML 1</title>
          <codeblock>
&lt;primlaw:level xml:id="L0000027_chapter_1" includeintoc="true" alternatetoccaption="CAPITULO I" leveltype="chapter"&gt;
    &lt;heading&gt;
        &lt;title&gt;CAPITULO I&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Naturaleza y funciones generales del Poder Judicial
                    NacionalLa Justicia Nacional procederá siempre aplicando
                    la Constitución y las leyes Nacionales, a la decisión de
                    las causas en que se versen intereses, actos o derechos
                    de Ministros o agentes públicos, de simples individuos,
                    de Provincia o de la Nación.&lt;/text&gt;
       &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;              
          </codeblock>
      </example>
      
        <section>
            <title>Changes</title>
            <p>2014-12-05: <ph id="change_20141205_PS">Created.</ph></p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR02-Statcode\leg.heading.dita  -->
	<xsl:message>AR02-Statcode_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

</xsl:stylesheet>