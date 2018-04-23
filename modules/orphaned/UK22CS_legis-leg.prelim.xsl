<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.prelim">
 <title>leg:prelim <lnpid>id-UK22CS-36419</lnpid></title>
 <body>
  <section>
   <p><sourcexml>leg:body/leg:prelim</sourcexml> becomes
     <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:prelim[@leveltype="unclassified"]</targetxml>
   </p>
  </section>
  <example>
   <codeblock>

    &lt;leg:prelim&gt;
        &lt;p&gt;
            &lt;text&gt;Made by Order in Council under
                .....
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:prelim&gt;

   </codeblock>
   <b>Becomes</b>
   <codeblock>
   &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:prelim&gt;
            &lt;p&gt;
                &lt;text&gt; Made by Order in Council under 
                .....                    
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:prelim&gt;
    &lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <section>
   <title>Changes</title>
   <p>2015-10-08: <ph id="change_20151008_HP">Created</ph></p>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\legis-leg.prelim.dita  -->
	<xsl:message>UK22CS_legis-leg.prelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body/leg:prelim">

		<!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:prelim[@leveltype="unclassified"]   -->
		<seclaw:body>
			<seclaw:level>
				<seclaw:bodytext>
					<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
						<primlaw:level>
							<primlaw:prelim>
								<xsl:apply-templates select="@* | node()"/>
							</primlaw:prelim>
						</primlaw:level>
					</primlaw:excerpt>
				</seclaw:bodytext>
			</seclaw:level>
		</seclaw:body>

	</xsl:template>

</xsl:stylesheet>