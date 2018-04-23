<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum_leg.seriesnum">
  <title>leg:officialnum/leg:seriesnum <lnpid>id-IN02-15621</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum/leg:seriesnum</sourcexml> becomes
            <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier[@idtype="officialnum"]/primlawinfo:identifier-component</targetxml>
        with attribute <targetxml>[@type="seriesnum"]</targetxml></p> 
      <note>We have to retain always the content of <sourcexml>leg:seriesnum</sourcexml> in target conversion as usual whether it has attribute <sourcexml>@ln.user-displayed</sourcexml> or not.</note>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:seriesnum[@ln.user-displayed]</sourcexml></title>
      <codeblock>

&lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;A000001y1961e
  &lt;leg:seriesnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;amendment 1&lt;/leg:seriesnum&gt;
&lt;/leg:officialnum&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;A000001y1961e
        &lt;primlawinfo:identifier-component type="seriesnum"&gt;amendment 1&lt;/primlawinfo:identifier-component&gt;
    &lt;/primlawinfo:identifier&gt;
 &lt;/primlawinfo:primlawinfo&gt;   

       </codeblock>
    </example> 
    <note>For handling <b>@ln.user-displayed</b> attribute, refer the
      general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN02-Regulations\leg.officialnum_leg.seriesnum.dita  -->
	<xsl:message>IN02-Regulations_leg.officialnum_leg.seriesnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialnum/leg:seriesnum">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier[@idtype="officialnum"]/primlawinfo:identifier-component   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:identifier>
				<primlawinfo:identifier-component>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:identifier-component>
			</primlawinfo:identifier>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:seriesnum">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:seriesnum[@ln.user-displayed]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>