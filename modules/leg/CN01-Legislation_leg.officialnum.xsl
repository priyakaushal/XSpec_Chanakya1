<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
  <title>leg:officialnum <lnpid>id-CN01-15222</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:officialnum</sourcexml> becomes
          <targetxml>primlawinfo:identifier</targetxml> with required attribute
          <targetxml>@idtype="officialnum"</targetxml></p> 
      <note>For handling <b>@ln.user-displayed</b> attribute, refer the
        general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      <p><sourcexml>leg:officialnum/leg:seriesnum</sourcexml> becomes
          <targetxml>primlawinfo:identifier-component</targetxml> with  attribute
          <targetxml>@type="seriesnum"</targetxml></p>
     </section>
    <example>
      <title>Mapping of <sourcexml>leg:officialnum</sourcexml></title>
      <codeblock>

 &lt;leg:officialnum searchtype="LEGISLATION" ln.user-displayed="false"&gt;Order of the President of the People&amp;#x0027;s Republic of China 
       &lt;leg:year ln.user-displayed="false"&gt;&amp;#x005B;2006&amp;#x005D;&lt;/leg:year&gt;No. &lt;leg:seriesnum ln.user-displayed="false"&gt;54&lt;/leg:seriesnum&gt;
&lt;/leg:officialnum&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;Order of the President of the People's Republic of China [2006] 
           No.&lt;primlawinfo:identifier-component type="seriesnum"&gt;54&lt;/primlawinfo:identifier-component&gt;
&lt;/primlawinfo:identifier&gt;

       </codeblock>
    </example>  
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
 <section>
       <title>Changes</title>
       <p>2014-04-09: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN01-Legislation\leg.officialnum.dita  -->
	<xsl:message>CN01-Legislation_leg.officialnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:officialnum">

		<!--  Original Target XPath:  primlawinfo:identifier   -->
		<primlawinfo:identifier>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:identifier>

	</xsl:template>

	<xsl:template match="leg:officialnum/leg:seriesnum">

		<!--  Original Target XPath:  primlawinfo:identifier-component   -->
		<primlawinfo:identifier-component>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:identifier-component>

	</xsl:template>

	<xsl:template match="leg:officialnum">

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