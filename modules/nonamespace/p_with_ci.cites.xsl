<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita ci leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="usm_landingpgs-">
  <title><sourcexml>leg:bodytext/p</sourcexml> <lnpid>id-MY08-17624</lnpid></title>
  <body>
    <p>The first <sourcexml>p</sourcexml> element in a document causes a
        <targetxml>navaid:list/@style="default"</targetxml> to be opened
        (<targetxml>navaid:list/@style="default"</targetxml> start-tag is output). This element
      remains open while each next sibling is a <sourcexml>p</sourcexml> element. Once the next
      sibling is not <sourcexml>p</sourcexml> or the end of <sourcexml>leg:bodytext</sourcexml>
      occurs, the <sourcexml>navaid:list</sourcexml> is closed (<targetxml>navaid:list</targetxml>
      end-tag is output). While the <targetxml>navaid:list</targetxml> is open, each
        <sourcexml>p</sourcexml> is converted as follows. <ul>
        <li>The element <sourcexml>p</sourcexml> becomes <targetxml>index:entry</targetxml></li>
        <li>The element <sourcexml>p/text</sourcexml> becomes
            <targetxml>index:entry/index:locator</targetxml></li>
        <li>The element <sourcexml>text/ci:cite</sourcexml> becomes
            <targetxml>index:locator/lnci:cite</targetxml>. Please see the topic <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita"/> for details regarding
          the conversion of <sourcexml>ci:cite</sourcexml>.</li>
      </ul>
    </p>
    <section>
      <title>Source XML</title>
      <codeblock>

&lt;leg:level id="USM.1011E.SUB.BUILDING_CONTROL"&gt;
  &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" toc-caption="BUILDING_CONTROL"&gt;
    &lt;leg:heading inline="true"&gt;
      &lt;desig searchtype="SECT-NUM"&gt;
        &lt;designum&gt;
          &lt;refpt id="USM.1011E.SUB.BUILDING_CONTROL" type="ext"/&gt;
          &lt;emph typestyle="bf"&gt;Principal Acts By Subject&lt;/emph&gt;
          &lt;nl/&gt;
          &lt;nl/&gt;
          &lt;emph typestyle="bf"&gt;&lt;nl/&gt;BUILDING CONTROL&lt;/emph&gt;
        &lt;/designum&gt;
      &lt;/desig&gt;
    &lt;/leg:heading&gt;
    &lt;leg:levelbody&gt;
      &lt;leg:bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                  &lt;ci:jurisinfo&gt;
                    &lt;ci:my/&gt;
                  &lt;/ci:jurisinfo&gt;
                  &lt;ci:hier&gt;
                    &lt;ci:hierlev label="act" num="663"&gt; &lt;/ci:hierlev&gt;
                  &lt;/ci:hier&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;
                  &lt;ci:standardname normpubcode="USM_PA"/&gt;
                &lt;/ci:sesslawref&gt;
              &lt;/ci:sesslaw&gt;
              &lt;ci:content&gt;BUILDING AND COMMON PROPERTY (MAINTENANCE AND MANAGEMENT) ACT 2007 Act
                663&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                  &lt;ci:jurisinfo&gt;
                    &lt;ci:my/&gt;
                  &lt;/ci:jurisinfo&gt;
                  &lt;ci:hier&gt;
                    &lt;ci:hierlev label="act" num="733"&gt; &lt;/ci:hierlev&gt;
                  &lt;/ci:hier&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;
                  &lt;ci:standardname normpubcode="USM_PA"/&gt;
                &lt;/ci:sesslawref&gt;
              &lt;/ci:sesslaw&gt;
              &lt;ci:content&gt;KAMPONG BHARU DEVELOPMENT CORPORATION ACT 2011 Act 733&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                  &lt;ci:jurisinfo&gt;
                    &lt;ci:my/&gt;
                  &lt;/ci:jurisinfo&gt;
                  &lt;ci:hier&gt;
                    &lt;ci:hierlev label="act" num="739"&gt; &lt;/ci:hierlev&gt;
                  &lt;/ci:hier&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;
                  &lt;ci:standardname normpubcode="USM_PA"/&gt;
                &lt;/ci:sesslawref&gt;
              &lt;/ci:sesslaw&gt;
              &lt;ci:content&gt;PERUMAHAN RAKYAT 1MALAYSIA ACT 2012 Act 739&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
          &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
              &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                  &lt;ci:jurisinfo&gt;
                    &lt;ci:my/&gt;
                  &lt;/ci:jurisinfo&gt;
                  &lt;ci:hier&gt;
                    &lt;ci:hierlev label="act" num="133"&gt; &lt;/ci:hierlev&gt;
                  &lt;/ci:hier&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;
                  &lt;ci:standardname normpubcode="USM_PA"/&gt;
                &lt;/ci:sesslawref&gt;
              &lt;/ci:sesslaw&gt;
              &lt;ci:content&gt;STREET, DRAINAGE AND BUILDING ACT 1974 Act 133&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/leg:bodytext&gt;
    &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML</title>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;ref:anchor id="USM.1011E.SUB.BUILDING_CONTROL" anchortype="global"/&gt;
  &lt;heading&gt;
    &lt;title&gt;Principal Acts By Subject&lt;/title&gt;
    &lt;subtitle&gt;BUILDING CONTROL&lt;/subtitle&gt;
  &lt;/heading&gt;
  &lt;navaid:list style="default"&gt;
    &lt;index:entry&gt;
      &lt;index:locator&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:jurisinfo&gt;
                &lt;lnci:my/&gt;
              &lt;/lnci:jurisinfo&gt;
              &lt;lnci:hier&gt;
                &lt;lnci:hierlev label="act" num="663"&gt; &lt;/lnci:hierlev&gt;
              &lt;/lnci:hier&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="USM_PA"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;BUILDING AND COMMON PROPERTY (MAINTENANCE AND MANAGEMENT) ACT 2007 Act
            663&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/index:locator&gt;
    &lt;/index:entry&gt;
    &lt;index:entry&gt;
      &lt;index:locator&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:jurisinfo&gt;
                &lt;lnci:my/&gt;
              &lt;/lnci:jurisinfo&gt;
              &lt;lnci:hier&gt;
                &lt;lnci:hierlev label="act" num="663"&gt; &lt;/lnci:hierlev&gt;
              &lt;/lnci:hier&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="USM_PA"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;BUILDING AND COMMON PROPERTY (MAINTENANCE AND MANAGEMENT) ACT 2007 Act
            663&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/index:locator&gt;
    &lt;/index:entry&gt;
    &lt;index:entry&gt;
      &lt;index:locator&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:jurisinfo&gt;
                &lt;lnci:my/&gt;
              &lt;/lnci:jurisinfo&gt;
              &lt;lnci:hier&gt;
                &lt;lnci:hierlev label="act" num="733"&gt; &lt;/lnci:hierlev&gt;
              &lt;/lnci:hier&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="USM_PA"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;KAMPONG BHARU DEVELOPMENT CORPORATION ACT 2011 Act 733&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/index:locator&gt;
    &lt;/index:entry&gt;
    &lt;index:entry&gt;
      &lt;index:locator&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:jurisinfo&gt;
                &lt;lnci:my/&gt;
              &lt;/lnci:jurisinfo&gt;
              &lt;lnci:hier&gt;
                &lt;lnci:hierlev label="act" num="739"&gt; &lt;/lnci:hierlev&gt;
              &lt;/lnci:hier&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="USM_PA"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;PERUMAHAN RAKYAT 1MALAYSIA ACT 2012 Act 739&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/index:locator&gt;
    &lt;/index:entry&gt;
    &lt;index:entry&gt;
      &lt;index:locator&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:jurisinfo&gt;
                &lt;lnci:my/&gt;
              &lt;/lnci:jurisinfo&gt;
              &lt;lnci:hier&gt;
                &lt;lnci:hierlev label="act" num="133"&gt; &lt;/lnci:hierlev&gt;
              &lt;/lnci:hier&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="USM_PA"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;STREET, DRAINAGE AND BUILDING ACT 1974 Act 133&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/index:locator&gt;
    &lt;/index:entry&gt;
  &lt;/navaid:list&gt;
&lt;/navaid:landingpagebody&gt;

        </codeblock>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\p_with_ci.cites.dita  -->
	<xsl:message>p_with_ci.cites.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:bodytext/p">

		<!--  Original Target XPath:  navaid:list/@style="default"   -->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>default</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  navaid:list/@style="default"   -->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>default</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="navaid:list">

		<!--  Original Target XPath:  navaid:list   -->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="p/text">

		<!--  Original Target XPath:  index:entry/index:locator   -->
		<index:entry>
			<index:locator>
				<xsl:apply-templates select="@* | node()"/>
			</index:locator>
		</index:entry>

	</xsl:template>

	<xsl:template match="text/ci:cite">

		<!--  Original Target XPath:  index:locator/lnci:cite   -->
		<index:locator>
			<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
				<xsl:apply-templates select="@* | node()"/>
			</lnci:cite>
		</index:locator>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>