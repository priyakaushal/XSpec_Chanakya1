<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_leg.levelbody">
		<title>leg.levelbody <lnpid>id-UK08OR-28814</lnpid></title>
		<body>
			<section>
				<ul>
					<li> The conversion of <sourcexml>leg:levelbody</sourcexml> depends
						upon its child elements: <ul>
							<li> If <sourcexml>leg:level</sourcexml> is the immediate child of
									<sourcexml>leg:levelbody</sourcexml> then it will become
									<targetxml>primlaw:level</targetxml> i.e,
									<sourcexml>leg:levelbody/leg:level</sourcexml> becomes
									<targetxml>primlaw:level</targetxml>. </li>
							<li> If <sourcexml>leg:bodytext</sourcexml> is the immediate child
								of <sourcexml>leg:levelbody</sourcexml> then it will become
									<targetxml>primlaw:bodytext</targetxml> i.e,
									<sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes
									<targetxml>primlaw:bodytext</targetxml>. </li>
						</ul>
					</li>
				</ul>
				<pre>
&lt;leg:body&gt;
  &lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="section"&gt;
      ...
    &lt;leg:levelbody&gt;
      &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="paragraph"&gt;
          &lt;leg:heading align="left"&gt;
            &lt;desig value="App1.1"&gt;
              &lt;designum&gt;App 1.1&lt;/designum&gt;
            &lt;/desig&gt;
          &lt;/leg:heading&gt;
          &lt;leg:levelbody&gt;
            &lt;leg:bodytext/&gt;
              &lt;leg:bodytext&gt;
                &lt;p&gt;
                   &lt;text&gt;&lt;emph typestyle="bf"&gt;Note:&lt;/emph&gt; The following
                   definitions relevant to the listing rules are
                   extracted from the Glossary.&lt;/text&gt;
                &lt;/p&gt;
                ...
              &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
          &lt;/leg:level-vrnt&gt;
        &lt;/leg:level&gt;
      &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
  &lt;/leg:level&gt;
&lt;/leg:body&gt;

<b>Becomes</b>
&lt;regulation:body&gt;
  &lt;primlaw:level leveltype="section"&gt;
    ...
    &lt;primlaw:level leveltype="paragraph"&gt;
      &lt;heading align="left"&gt;
        &lt;designum&gt;App 1.1&lt;/designum&gt;
      &lt;heading&gt;
      &lt;primlaw:bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;&lt;emph typestyle="bf"&gt;Note:&lt;/emph&gt; The following
          definitions relevant to the listing rules are
          extracted from the Glossary.&lt;/text&gt;
        &lt;/p&gt;
        ...
      &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
  &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;

      </pre>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg.levelbody.dita  -->

	<xsl:template match="leg:levelbody[name(child::*[1])='leg:level']">
		<!--  Original Target XPath:  primlaw:level   -->
		<!-- JD: since first child is leg:level, we will process that with /modules/leg/UK08_OPDOC_Regulation-leg.level.xsl; so no need to create 'primlaw:level' wrapper-->
		<!--<primlaw:level>-->
			<xsl:apply-templates select="@* | node()"/>
		<!--</primlaw:level>-->
	</xsl:template>

	<xsl:template match="leg:levelbody[name(child::*[1])='leg:bodytext']">
		<!--  Original Target XPath:  primlaw:bodytext   -->
		<!-- JD: since first child is leg:bodytext, we will process that with /modules/nonamespace/Rosetta_endnote-LxAdv-endnote.xsl; so no need to create 'primlaw:bodytext' wrapper-->
		<!--<primlaw:bodytext>-->
			<xsl:apply-templates select="@* | node()"/>
		<!--</primlaw:bodytext>-->
	</xsl:template>

</xsl:stylesheet>
