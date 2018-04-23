<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.empleg">
  <title>leg:empleg <lnpid>id-UK22CS-36411</lnpid></title>
  <body>
    <section>
     <p><sourcexml>/COMMENTARYDOC/comm:body/level/bodytext/legfragment/leg:endmatter/leg:level/leg:level-vrnt/leg:heading/leg:empleg</sourcexml>
    becomes
     <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:bodytext/primlaw:level/primlaw:authority/primlaw:authority-item/base:textitem</targetxml>.
      <note><targetxml>primlaw:authority</targetxml> is a sibling of
     <targetxml>heading</targetxml>.</note>
   </p>
    </section>
    <example>
   <codeblock>

&lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="schedule"&gt;
            &lt;leg:heading&gt;
                &lt;title&gt;Schedule&lt;/title&gt;
                &lt;leg:empleg&gt;Article 2&lt;/leg:empleg&gt;
            &lt;/leg:heading&gt;
        &lt;/leg:level-vrnt&gt;
        .......................
    &lt;/leg:level&gt;

      </codeblock>
   <b>Becomes</b>
   <codeblock>

&lt;primlaw:level leveltype="schedule"&gt;
        &lt;heading&gt;
            &lt;title&gt;Schedule&lt;/title&gt;                                  
        &lt;/heading&gt;
        &lt;primlaw:authority&gt;
            &lt;primlaw:authority-item&gt;
                &lt;textitem&gt;Article 2&lt;/textitem&gt;
            &lt;/primlaw:authority-item&gt;
        &lt;/primlaw:authority&gt;
        ......................
    &lt;/primlaw:level&gt;

    </codeblock></example>
   <section>
    <title>Changes</title>
    <p>2015-10-13: <ph id="change_20151013_HP">Created</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\legis-leg.empleg.dita  -->
	<xsl:message>UK22CS_legis-leg.empleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="/COMMENTARYDOC/comm:body/level/bodytext/legfragment/leg:endmatter/leg:level/leg:level-vrnt/leg:heading/leg:empleg">

		<!--  Original Target XPath:  /seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:bodytext/primlaw:level/primlaw:authority/primlaw:authority-item/base:textitem   -->
		<seclaw:seclaw xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/">
			<seclaw:body>
				<seclaw:level>
					<seclaw:bodytext>
						<primlaw:excerpt>
							<primlaw:level>
								<primlaw:bodytext>
									<primlaw:level>
										<primlaw:authority>
											<primlaw:authority-item>
												<base:textitem xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
													<xsl:apply-templates select="@* | node()"/>
												</base:textitem>
											</primlaw:authority-item>
										</primlaw:authority>
									</primlaw:level>
								</primlaw:bodytext>
							</primlaw:level>
						</primlaw:excerpt>
					</seclaw:bodytext>
				</seclaw:level>
			</seclaw:body>
		</seclaw:seclaw>

	</xsl:template>

</xsl:stylesheet>