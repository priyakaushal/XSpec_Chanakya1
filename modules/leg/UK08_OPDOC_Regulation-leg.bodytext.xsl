<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_leg.bodytext">
		<title>leg:bodytext <lnpid>id-UK08OR-28810</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>leg:bodytext</sourcexml> becomes
						<targetxml>primlaw:bodytext</targetxml>. </p>
				<pre>

&lt;op:body&gt;
  &lt;leg:body&gt;
    &lt;leg:level&gt;
      &lt;leg:level-vrnt leveltype="section"&gt;
        ...
        &lt;leg:levelbody&gt;
          &lt;leg:bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;An applicant for admission of certificates
              representing certain securities must comply with LR
              3.2 and LR &lt;emph typestyle="bf"&gt;&lt;emph
              typestyle="smcaps"&gt;3.4.4R&lt;/emph&gt;&lt;/emph&gt; to LR
              &lt;emph typestyle="bf"&gt;&lt;emph typestyle="smcaps"
              &gt;3.4.8R&lt;/emph&gt;&lt;/emph&gt; subject to the following
              modifications.&lt;/text&gt;
            &lt;/p&gt;
          &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
      &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
  &lt;/leg:body&gt;
&lt;/op:body&gt;

<b>Becomes</b>

&lt;regulation:regulation&gt;
  &lt;regulation:body&gt;
    &lt;primlaw:level @leveltype="section"&gt;
      ...
      &lt;primlaw:bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;An applicant for admission of certificates
          representing certain securities must comply with LR
          3.2 and LR &lt;emph typestyle="bf"&gt;&lt;emph
          typestyle="smcaps"&gt;3.4.4R&lt;/emph&gt;&lt;/emph&gt; to LR
          &lt;emph typestyle="bf"&gt;&lt;emph typestyle="smcaps"
          &gt;3.4.8R&lt;/emph&gt;&lt;/emph&gt; subject to the following
          modifications.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
  &lt;/regulation:body&gt;
&lt;/regulation:regulation&gt;

      </pre>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-leg.bodytext.dita  -->
	<!-- JD: 2017-07-12: NOTE: this template will probably never be fired due to a leg:bodytext priority="30" in /modules/nonamespace/Rosetta_endnote-LxAdv-endnote.xsl-->
	<xsl:template match="leg:bodytext">
		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>
	</xsl:template>

</xsl:stylesheet>
