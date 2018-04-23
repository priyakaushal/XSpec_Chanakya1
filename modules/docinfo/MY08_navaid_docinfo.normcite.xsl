<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="usm_landingpgs-docinfo.normcite">
  <title><sourcexml>docinfo:normcite to ref:cite4thisresource</sourcexml> <lnpid>id-MY08-17608</lnpid></title>
  <body>
    <p>The element <sourcexml>/LEGDOC/docinfo/docinfo:normcite</sourcexml> becomes
        <targetxml>/navaid:landingpage/navaid:landingpagehead/ref:citations/ref:cite4thisresource[@citetype="normcite"]</targetxml>.
      Thus, when a <sourcexml>docinfo:normcite</sourcexml> element is present, the element
        <targetxml>navaid:landingpagehead</targetxml> and its child
        <targetxml>ref:citations</targetxml> must be created first to contain the
        <targetxml>ref:cite4thisresource</targetxml> element.</p>      
    <p>When converting <targetxml>ref:cite4thisresource</targetxml>, the child element
        <sourcexml>docinfo:normcite/ci:cite</sourcexml> becomes
        <targetxml>ref:cite4thisresource/lnci:cite</targetxml>, and the source attributes
        <targetxml>ci:cite/@searchtype</targetxml> and <targetxml>ci:cite/@type</targetxml> are
      dropped. Please see the topic <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/> for further details
      regarding the conversion of <sourcexml>ci:cite</sourcexml>.</p>
    <section>
      <title>Source XML</title>
      <codeblock>
&lt;LEGDOC ...&gt;
  &lt;docinfo partitionnum="LEG1"&gt;
    ...
    &lt;docinfo:normcite&gt;
      &lt;ci:cite searchtype="LEG-REF" type="cite4thisdoc"&gt;
        &lt;ci:sesslaw&gt;
          &lt;ci:sesslawinfo&gt;
            &lt;ci:jurisinfo&gt;
              &lt;ci:my/&gt;
            &lt;/ci:jurisinfo&gt;
            &lt;ci:hier&gt;
              &lt;ci:hierlev label="act" num="1"&gt;
                &lt;ci:hierlev label="section" num="201"/&gt;
              &lt;/ci:hierlev&gt;
            &lt;/ci:hier&gt;
          &lt;/ci:sesslawinfo&gt;
          &lt;ci:sesslawref&gt;
            &lt;ci:standardname normpubcode="USM_PA"/&gt;
          &lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;Act 1 Section 201&lt;/ci:content&gt;
      &lt;/ci:cite&gt;
    &lt;/docinfo:normcite&gt;
    ...
</codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>
&lt;navaid:landingpage&gt;
  &lt;navaid:landingpagehead&gt;
    &lt;ref:citations&gt;
      &lt;ref:cite4thisresource citetype="normcite"&gt;
        &lt;lnci:cite type="legislation"&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:jurisinfo&gt;
                &lt;lnci:my/&gt;
              &lt;/lnci:jurisinfo&gt;
              &lt;lnci:hier&gt;
                &lt;lnci:hierlev label="act" num="1"&gt;
                  &lt;lnci:hierlev label="year" num="1967"/&gt;
                &lt;/lnci:hierlev&gt;
              &lt;/lnci:hier&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="USM_PA"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;Act 1 of 1967&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;  
  &lt;/navaid:landingpagehead&gt;
  &lt;navaid:landingpagebody&gt;
  ...
</codeblock>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\docinfo.normcite.dita  -->
	<xsl:message>MY08_navaid_docinfo.normcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:normcite to ref:cite4thisresource">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagehead/ref:citations/ref:cite4thisresource[@citetype="normcite"]   -->
		<navaid:landingpage>
			<navaid:landingpagehead>
				<ref:citations>
					<ref:cite4thisresource>
						<xsl:apply-templates select="@* | node()"/>
					</ref:cite4thisresource>
				</ref:citations>
			</navaid:landingpagehead>
		</navaid:landingpage>

	</xsl:template>

	<xsl:template match="/LEGDOC/docinfo/docinfo:normcite">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagehead/ref:citations/ref:cite4thisresource[@citetype="normcite"]   -->
		<navaid:landingpage>
			<navaid:landingpagehead>
				<ref:citations>
					<ref:cite4thisresource>
						<xsl:apply-templates select="@* | node()"/>
					</ref:cite4thisresource>
				</ref:citations>
			</navaid:landingpagehead>
		</navaid:landingpage>

	</xsl:template>

	<xsl:template match="docinfo:normcite">

		<!--  Original Target XPath:  navaid:landingpagehead   -->
		<navaid:landingpagehead>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:landingpagehead>

	</xsl:template>

	<xsl:template match="docinfo:normcite/ci:cite">

		<!--  Original Target XPath:  ref:cite4thisresource/lnci:cite   -->
		<ref:cite4thisresource>
			<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
				<xsl:apply-templates select="@* | node()"/>
			</lnci:cite>
		</ref:cite4thisresource>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>