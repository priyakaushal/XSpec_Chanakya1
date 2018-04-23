<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.comntry2">
  <title>Nested <sourcexml>level</sourcexml> in <sourcexml>leg:comntry</sourcexml> <lnpid>id-UK06-28017</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:comntry/level/level</sourcexml> becomes
          <targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel</targetxml>
        with following attributes: <ul id="ul_hfm_zp2_hy">
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes
              <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the
            first child in the sequence. Please refer to General Markup Section for handling
              <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes
            <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
          <li><sourcexml>level/bodytext</sourcexml> becomes
              <targetxml>annot:annotationlevel/annot:bodytext</targetxml>
            <note><targetxml>annot:bodytext</targetxml> is required element in
                <targetxml>annot:annotationlevel</targetxml>. </note></li>
        </ul><note>If attribute <sourcexml>@leveltype</sourcexml> occurs within
            <sourcexml>level</sourcexml> then <sourcexml>@leveltype</sourcexml> will be suppressed
          from conversion.</note></p>
      <p>
        <note>
          <sourcexml>leg:comntry/level/level/level</sourcexml> becomes
            <targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel/annot:bodytext/annot:annotationlevel</targetxml>. </note>
      </p>
      <p> </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-12-16: <ph id="change_20161216_AS">Added instructions for <sourcexml>leg:comntry/level/level/level.</sourcexml></ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.comntry2.dita  -->

	<!-- Sudhanshu Srivastava :
	     Edited :- 19 June 2017.
	     Comments :- This is content specific module handling nested level inside leg:comntry.
	-->
	<!--<xsl:template match="leg:comntry/level/level/@id">
		<!-\-  Original Target XPath:  @xml:id   -\->
		<xsl:attribute name="xml:id" select="."/>
	</xsl:template>

	<xsl:template match="leg:comntry/level/level/@subdoc">
		<!-\-  Original Target XPath:  @includeintoc   -\->
		<xsl:attribute name="includeintoc" select="."/>
	</xsl:template>

	<xsl:template match="leg:comntry/level/level/@toc-caption">
		<!-\-  Original Target XPath:  @alternatetoccaption   -\->
		<xsl:attribute name="alternatetoccaption" select="."/>
	</xsl:template>

	<xsl:template match="leg:comntry/level/level/refpt">
		<!-\-  Original Target XPath:  ref:anchor   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>
	</xsl:template>-->

</xsl:stylesheet>