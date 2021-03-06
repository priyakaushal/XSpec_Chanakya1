<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum_leg.seriesnum">
  <title>leg:officialnum/leg:seriesnum <lnpid>id-MY05LL-17025</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum/leg:seriesnum</sourcexml> becomes
        <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier[@idtype="officialnum"]/primlawinfo:identifier-component</targetxml>
        with attribute <targetxml>[@type="seriesnum"]</targetxml></p> 
      <note>We have to retain the content of <sourcexml>leg:seriesnum</sourcexml> in target
        conversion as usual whether it has attribute
          <sourcexml>@ln.user-displayed="false"</sourcexml> or not.</note>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:seriesnum[@ln.user-displayed]</sourcexml></title>
      <codeblock>

&lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;USM_A000001y1961e
  &lt;leg:seriesnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;amendment 1&lt;/leg:seriesnum&gt;
&lt;/leg:officialnum&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:levelinfo&gt;
 &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;USM_A000001y1961e
        &lt;primlawinfo:identifier-component type="seriesnum"&gt;amendment 1&lt;/primlawinfo:identifier-component&gt;
    &lt;/primlawinfo:identifier&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/primlaw:levelinfo&gt;

       </codeblock>
    </example> 

    <note>For handling <b>@ln.user-displayed</b> attribute, refer the
      general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\leg.officialnum_leg.seriesnum.dita  -->
<!--	<xsl:message>MY05LL_Acts_leg.officialnum_leg.seriesnum.xsl requires manual development!</xsl:message> -->


	<xsl:template match="leg:info/leg:officialnum/leg:seriesnum">
		<primlawinfo:identifier-component type="seriesnum">
			<xsl:apply-templates/>
		</primlawinfo:identifier-component>
	</xsl:template>

</xsl:stylesheet>