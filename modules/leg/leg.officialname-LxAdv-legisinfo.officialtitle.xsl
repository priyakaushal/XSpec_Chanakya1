<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname-LxAdv-legisinfo.officialtitle">
  <title>leg.officialname <lnpid>id-HK04-36619</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:officialname</sourcexml> becomes
        <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>.</p>
      <p>
        <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita">ln.user_displayed="false"</xref> section in the CI.</note>
      </p>
      <pre>
  
&lt;leg:info&gt;
    &lt;leg:officialname searchtype="LEGISLATION" ln.user-displayed="false"&gt;ADOPTION RULES(CAP 290A)&lt;/leg:officialname&gt;
        ...
&lt;/leg:info&gt;
    
</pre>
      <b>Becomes</b>
      <pre>
      
    &lt;legisinfo:legisinfo&gt;
          &lt;legisinfo:names&gt;
                &lt;legisinfo:officialtitle source="editoriallyassigned"&gt;ADOPTION RULES(CAP 290A)&lt;/legisinfo:officialtitle&gt;
          &lt;/legisinfo:names&gt;
    &lt;/legisinfo:legisinfo&gt;


</pre>
    </section> 
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <section>
      <title>Changes</title>
      <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>

  <xsl:template match="leg:info/leg:officialname[not(@ln.user-displayed)]">

		<!--  Original Target XPath:  legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   -->
			<legisinfo:names>
				<legisinfo:officialtitle>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:officialtitle>
			</legisinfo:names>
		

	</xsl:template>

</xsl:stylesheet>