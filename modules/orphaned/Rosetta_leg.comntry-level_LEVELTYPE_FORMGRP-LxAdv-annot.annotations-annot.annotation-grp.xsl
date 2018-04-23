<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic>
  <title><sourcexml>leg:comntry/level @leveltype="formgrp"</sourcexml> to <targetxml>annot:annotations/annot:annotation-grp/annot:annotation</targetxml> </title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>@leveltype="formgrp"</sourcexml>
            <b>becomes</b>
            <targetxml>annot:annotation</targetxml> with optional attributes and  child elements
            converted as: <ul>
              <li><sourcexml>@subdoc</sourcexml>
                <b>becomes</b>
                <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml>
                <b>becomes</b>
                <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>heading/@searchtype</sourcexml>
                is suppressed.
              </li>
              <li><sourcexml>refpt</sourcexml>
                <b>becomes</b>
                <targetxml>ref:anchor</targetxml> and must be the first child in the sequence.
                Refer to the <xref href="Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref>
                section for more information.</li>
              <li><sourcexml>heading/edpnum</sourcexml>
                <b>becomes</b>
                <targetxml>heading/desig</targetxml></li>
              <li><sourcexml>heading/title</sourcexml>
                <b>becomes</b>
                <targetxml>heading/title</targetxml></li>
              <li><sourcexml>bodytext</sourcexml>
                <b>becomes</b>
                <targetxml>bodytext</targetxml></li>
            </ul>
            
            </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-level_LEVELTYPE_PARA0-LxAdv-annot.annotations-annot.annotation-grp.dita  -->

	<xsl:template match="level[ancestor::leg:comntry][@leveltype='formgrp']">
		<annot:annotation>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt | heading/descendant::refpt | bodytext/refpt"/>
			<xsl:apply-templates select="node() except refpt"/>
		</annot:annotation>
	</xsl:template>	
  


</xsl:stylesheet>