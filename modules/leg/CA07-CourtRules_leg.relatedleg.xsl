<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.relatedleg">
  <title>leg:relatedleg <lnpid>id-CA07-14030</lnpid></title>
  <body>
    <section>
      <p>
          <sourcexml>leg:relatedleg</sourcexml> with attribute <sourcexml>@type="parent"</sourcexml> becomes
        <targetxml>courtrule:head/primlaw:authority/primlaw:authority-item/textitem</targetxml>
      </p>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:relatedleg type="parent"&gt;The Saskatchewan Court of Appeal Rules&lt;/leg:relatedleg&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;courtrule:head&gt;
    &lt;primlaw:authority&gt;
        &lt;primlaw:authority-item&gt;
            &lt;textitem&gt;The Saskatchewan Court of Appeal Rules&lt;/textitem&gt;
        &lt;/primlaw:authority-item&gt;
    &lt;/primlaw:authority&gt;
&lt;/courtrule:head&gt;

      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2013-03-04: <ph id="change_20130304_SP">Removed CR number for <targetxml>primlaw:authority</targetxml>.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.relatedleg.dita  -->
	
	<xsl:template match="leg:relatedleg[@type='parent']">

		<!--  Original Target XPath:  courtrule:head/primlaw:authority/primlaw:authority-item/textitem   -->
		
			<primlaw:authority>
				<primlaw:authority-item>
					<textitem>
						<xsl:apply-templates select="@* | node()"/>
					</textitem>
				</primlaw:authority-item>
			</primlaw:authority>
		

	</xsl:template>


<xsl:template match="leg:relatedleg/@type"/>

</xsl:stylesheet>