<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.year">
  <title>leg:year <lnpid>id-MY05LB-16821</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:year</sourcexml>  becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml> with attribute <targetxml>@year</targetxml>.</p> 
      <note>If input document have <sourcexml>leg:year</sourcexml> with same value in given xpaths
        (i.e. <sourcexml>leg:info/leg:year</sourcexml> and
        <sourcexml>leg:officialnum/leg:year</sourcexml>) then we should tranform the first scenrio
        <sourcexml>leg:info/leg:year</sourcexml> in target conversion and suppressed the second
        scenario.</note>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:year</sourcexml></title>
      <codeblock>

&lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1974&lt;/leg:year&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:primlawinfo&gt;
   &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:enactdate year="1974"/&gt;
    &lt;/primlawinfo:dates&gt;
 &lt;/primlawinfo:primlawinfo&gt;   

       </codeblock>
    </example>  
   
    <note>For handling <b>@ln.user-displayed</b> attribute, refer the
      general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LB_Bills\leg.year.dita  -->
<!--	<xsl:message>MY05LB_Bills_leg.year.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:info/leg:year[not(@ln.user-displayed)]" priority="2">
		<primlawinfo:dates>
			<primlawinfo:enactdate>
				<xsl:apply-templates select="@*"/>
				<xsl:attribute name="year">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</primlawinfo:enactdate>
		</primlawinfo:dates>
	</xsl:template>
  
  <xsl:template match="leg:year/@searchtype"/>
	
</xsl:stylesheet>