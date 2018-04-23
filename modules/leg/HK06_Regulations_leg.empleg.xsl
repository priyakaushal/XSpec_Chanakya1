<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.empleg">
   <title>leg:empleg <lnpid>id-HK06-37410</lnpid></title>
   <body>
      <section>
        <ul>
        	<li><sourcexml>leg:empleg</sourcexml> <b>Becomes</b> <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml> and populated as: 
        		
        		<pre>
              <b>Source XML</b>

&lt;leg:level id="AOHK.057.SUBLEG_001.SCH2"&gt;
    &lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION SCHEDULE" subdoc="false" toc-caption="SCHEDULE 2"&gt;
        &lt;leg:heading&gt;
            &lt;desig searchtype="SCH-NUM"&gt;
                &lt;designum&gt;&lt;refpt id="AOHK.057.SUBLEG_001.SCH2" type="ext"/&gt;SCHEDULE 2&lt;/designum&gt;
            &lt;/desig&gt;
            &lt;leg:empleg&gt;[regulation 10]&lt;/leg:empleg&gt;
        &lt;/leg:heading&gt;
        ...
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

        		</pre>
        		<pre>
              <b>Target XML</b>


&lt;primlaw:level leveltype="schedule" includeintoc="true" alternatetoccaption="SCHEDULE 2"&gt;
    &lt;ref:anchor id="AOHK.057.SUBLEG_001.SCH2" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;SCHEDULE 2&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;primlaw:authority&gt;
        &lt;primlaw:authority-item&gt;
            &lt;textitem&gt;[regulation 10]&lt;/textitem&gt;
        &lt;/primlaw:authority-item&gt;
    &lt;/primlaw:authority&gt;
    .........
    .........
&lt;/primlaw:level&gt;

            </pre>
        		<note>The <sourcexml>leg:empleg</sourcexml> comes under <sourcexml>leg:heading</sourcexml> element in Rosetta but as per New Lexis <targetxml>primlaw:authority</targetxml> should be moved between <targetxml>primlaw:level</targetxml> and <targetxml>heading</targetxml> elements.</note>
        	</li>
		</ul>
      </section>
   </body>
	</dita:topic>


	<xsl:template match="leg:empleg">

		<!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
		<primlaw:authority>
			<primlaw:authority-item>
			    <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="node()"/>
				</textitem>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>

</xsl:stylesheet>