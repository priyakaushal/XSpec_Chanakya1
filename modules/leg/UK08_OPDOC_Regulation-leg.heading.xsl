<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_leg.heading">
		<title>leg.heading <lnpid>id-UK08OR-28811</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>leg:heading</sourcexml> becomes
						<targetxml>heading</targetxml> and it's attribute
						<sourcexml>@align</sourcexml> become <targetxml>@align</targetxml>. </p>
				<pre>

&lt;leg:body&gt;
  &lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="section"&gt;
      &lt;leg:heading align="left"&gt;
        &lt;title&gt;
          &lt;emph typestyle="caps"&gt;
            &lt;emph typestyle="bf"&gt;LR App 1.1 Relevant definitions&lt;/emph&gt;
          &lt;/emph&gt;
        &lt;/title&gt;
        ...
      &lt;/leg:heading&gt;
      ...
    &lt;/leg:level-vrnt&gt;
  &lt;/leg:level&gt;
&lt;/leg:body&gt;

<b>Becomes</b>

&lt;regulation:body&gt;
  &lt;primlaw:level @leveltype="section"&gt;
    &lt;heading align="left"&gt;
      &lt;title&gt;
        LR App 1.1 Relevant definitions
      &lt;/title&gt;
      ...
    &lt;/heading&gt;
    ...
  &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;

      </pre>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg.heading.dita  -->

	<xsl:template match="leg:heading">
		<!--  Original Target XPath:  heading   -->
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="node() except refpt"/>
		</heading>
	</xsl:template>

	<xsl:template match="@align">
		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align" select="."/>
	</xsl:template>

</xsl:stylesheet>
