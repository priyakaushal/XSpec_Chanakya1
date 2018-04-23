<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum-LxAdv-primlawinfo.identifier">
  <title>leg.officialnum <lnpid>id-HK04-36620</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:info/leg:officialnum</sourcexml> becomes
          <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier</targetxml>
        with required attribute <targetxml>@idtype="officialnum"</targetxml> and with optional attribute <targetxml>@source="editoriallyassigned</targetxml>
        <note>For handling <b>@ln.user-displayed</b> attribute, refer the general
          markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
        <pre>

        &lt;leg:officialnum searchtype="LEGISLATION" ln.user-displayed="false"&gt;
              Act No. 98, 1956
              .....
        &lt;/leg:officialnum&gt;

        </pre>
        <b>Becomes</b>
        <pre>
        
        &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;
                Act No. 98, 1956
                .....
        &lt;/primlawinfo:identifier&gt;
        
        </pre>
      </p>
    </section> 
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <section>
      <title>Changes</title>
      <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>


  <xsl:template match="leg:info/leg:officialnum[not(@ln.user-displayed)]">

		<!--  Original Target XPath:  primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier   -->
				<primlawinfo:identifier>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:identifier>

	</xsl:template>

</xsl:stylesheet>