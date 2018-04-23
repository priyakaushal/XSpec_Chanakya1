<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.year">
  <title>leg.year <lnpid>id-HK04-36621</lnpid></title>
  <body>
    <section>
          <sourcexml>leg:info/leg:year</sourcexml> becomes
            <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
          with attribute <targetxml>@year</targetxml>.
      <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      <pre>

   &lt;leg:info&gt;
          &lt;leg:year searchtype="LEGISLATION" ln.user-displayed="false"&gt;1956&lt;/leg:year&gt;
   &lt;/leg:info&gt;

               </pre>
      <b>Becomes</b>
      <pre>

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
          &lt;primlawinfo:enactdate year="1956"/&gt;
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;

                </pre>
    </section>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <section>
      <title>Changes</title>
      <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="leg:info/leg:year[not(@ln.user-displayed)]">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
			<primlawinfo:dates>
				<primlawinfo:enactdate>
				  <xsl:attribute name="year">
				    <xsl:value-of select="."/>
				  </xsl:attribute>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:enactdate>
			</primlawinfo:dates>
		

	</xsl:template>

</xsl:stylesheet>