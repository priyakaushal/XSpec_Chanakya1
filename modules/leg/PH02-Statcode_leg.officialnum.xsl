<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
  <title>leg:officialnum <lnpid>id-PH02-33218</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier</targetxml> with required attribute <targetxml>@idtype="officialnum"</targetxml></p> 
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:officialnum</sourcexml></title>
      <codeblock>

&lt;leg:officialnum&gt;Act No. 2657, 1916&lt;/leg:officialnum&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:identifier idtype="officialnum"&gt;Act No. 2657, 1916&lt;/primlawinfo:identifier&gt;
 &lt;/primlawinfo:primlawinfo&gt;   

       </codeblock>
    </example>
    <note>If <sourcexml>leg:officialnum</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as usual (as if the
      <sourcexml>@ln.user-displayed</sourcexml> did not exist).</note>
    <section>
      <title>Changes:</title>
      <p>2014-11-05: <ph id="change_20141105_ss">Added "primlawinfo:primlawinfo" markup with child elements inside the StatCode Schema through the chnage request [#DAMS2014072202462900] and remove CR note.</ph></p>
      <p>2014-08-08: <ph id="change_20140808_ss">Created</ph></p>
    </section>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH02-Statcode\leg.officialnum.dita  -->
	<xsl:message>PH02-Statcode_leg.officialnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialnum">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:identifier>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:identifier>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>