<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-MX01-34012</lnpid></title>
  <body>
    <section>
      
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml>.  </p>
        
       
    </section>
      <example>
          <title>Source XML 1</title>
          <codeblock>
&lt;leg:level id="01011102.UNC.2"&gt;
    &lt;leg:level-vrnt leveltype="unclassified" subdoc="true" toc-caption="ANTECEDENTES"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;ANTECEDENTES&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;I. El artículo 123, primer párrafo, de la Constitución Política de los
                        Estados Unidos Mexicanos, establece que toda persona tiene derecho al
                        trabajo digno y socialmente útil; y que al efecto, se promoverán la creación
                        de empleos y la organización social para el trabajo, conforme a la ley.
                    &lt;/text&gt;
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
&lt;primlaw:level xml:id="01011102.UNC.2" includeintoc="true" alternatetoccaption="ANTECEDENTES" leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title&gt;ANTECEDENTES&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;I. El artículo 123, primer párrafo, de la Constitución Política de los
                Estados Unidos Mexicanos, establece que toda persona tiene derecho al
                trabajo digno y socialmente útil; y que al efecto, se promoverán la creación
                de empleos y la organización social para el trabajo, conforme a la ley.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;              
          </codeblock>
      </example>
      
      <section>
          <title>Changes</title>
          <p>2014-10-16:<ph id="change_20141016_PS">Created.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX01-Legislation\leg.heading.dita  -->
	<xsl:message>MX01-Legislation_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

</xsl:stylesheet>