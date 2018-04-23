<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.empleg-LxAdv-primlaw.authority-item">
  <title>leg:empleg <lnpid>id-HK04-36612</lnpid></title>
  <body>
    <section>
   <ul>
     
      <li><sourcexml>leg:empleg</sourcexml> becomes
                        <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml> and
                    populated as: <note>The <targetxml>primlaw:authority</targetxml> will be sibling
                        of <targetxml>heading</targetxml>.</note>
                    <pre>

&lt;leg:level id="AOHK.CAP04A.O62.SCH2"&gt;
    &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION SCHEDULE" subdoc="false" toc-caption="SECOND SCHEDULE"&gt;
        &lt;leg:heading&gt;
            &lt;leg:empleg&gt;[rule 32]&lt;/leg:empleg&gt;
            &lt;title&gt;SECOND SCHEDULE&lt;/title&gt;
            ....
        &lt;/leg:heading&gt;
        .....
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
              

<b>Becomes</b>

&lt;primlaw:level xml:id="AOHK.CAP04A.O62.SCH2" includeintoc="false" alternatetoccaption="SECOND SCHEDULE" leveltype="schedule"&gt;
    &lt;heading&gt;
        &lt;title&gt;SECOND SCHEDULE&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:authority&gt;
        &lt;primlaw:authority-item&gt;
            &lt;textitem&gt;[rule 32]&lt;/textitem&gt;
        &lt;/primlaw:authority-item&gt;
    &lt;/primlaw:authority&gt;
&lt;/primlaw:level&gt;

            </pre>
                </li>
     </ul>
    </section> 
      <section>
          <title>Changes</title>
          <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
      </section>
  </body>
	</dita:topic>

	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
			    <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>

	<!-- JD: 2017-08-08: Added for NZ06 (adds <bodytext> wrapper)
	"leg:empleg becomes primlaw:authority/primlaw:authority-item/bodytext/textitem"
	-->
	<xsl:template match="leg:empleg[$streamID='NZ06']">
		<primlaw:authority>
			<primlaw:authority-item>
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</bodytext>
			</primlaw:authority-item>
		</primlaw:authority>		
	</xsl:template>
	

</xsl:stylesheet>