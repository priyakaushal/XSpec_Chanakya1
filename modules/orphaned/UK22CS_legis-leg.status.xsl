<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.status">
  <title>leg:status <lnpid>id-UK22CS-36421</lnpid></title>
  <body>
    <section>
      <p><sourcexml>/COMMENTARYDOC/comm:body/level/bodytext/legfragment/leg:info/leg:status</sourcexml>
        becomes
          <targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml></p>
     <p><sourcexml>leg:status/@statuscode</sourcexml> becomes <targetxml>legisinfo:status@statuscode</targetxml> the attribute value in the Source XML is directly converted into the target XML output as shown in the example below.</p>
     <note>Conversion should not create adjacent <targetxml>legisinfo:statusgroup</targetxml>. Data should be merged to single <targetxml>legisinfo:statusgroup</targetxml>.</note>
    </section>
    <example>
      <codeblock>
    &lt;leg:info&gt;
        .............
       &lt;leg:status&gt;At the Court at Buckingham Palace, the 9th day of July 2008&lt;/leg:status&gt;
        &lt;leg:status&gt;Present,&lt;/leg:status&gt;
        &lt;leg:status&gt;The Queen's Most Excellent Majesty in Council&lt;/leg:status&gt;
        .............
    &lt;/leg:info&gt;

      </codeblock>
      <b>Becomes</b>
      <codeblock>

 &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            ..........................
            &lt;legisinfo:legisinfo&gt;
                .....................
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status&gt;
                        &lt;legisinfo:statustext&gt;At the Court at Buckingham Palace, the 9th day of July 2008 Present, The Queen's Most Excellent Majesty in Council&lt;/legisinfo:statustext&gt;
                    &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
            ................
        &lt;/primlawinfo:primlawinfo&gt;
    &lt;/primlaw:levelinfo&gt;

      </codeblock></example>
    <section>
      <title>Changes</title>
      <p>2015-10-13: <ph id="change_20151013_HP">Created</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\legis-leg.status.dita  -->
	<xsl:message>UK22CS_legis-leg.status.xsl requires manual development!</xsl:message> 

	<xsl:template match="/COMMENTARYDOC/comm:body/level/bodytext/legfragment/leg:info/leg:status">

		<!--  Original Target XPath:  /seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
		<seclaw:seclaw xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/">
			<seclaw:body>
				<seclaw:level>
					<seclaw:bodytext>
						<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<primlaw:level>
								<primlaw:levelinfo>
									<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
										<legisinfo:legisinfo>
											<legisinfo:statusgroup>
												<legisinfo:status>
													<legisinfo:statustext>
														<xsl:apply-templates select="@* | node()"/>
													</legisinfo:statustext>
												</legisinfo:status>
											</legisinfo:statusgroup>
										</legisinfo:legisinfo>
									</primlawinfo:primlawinfo>
								</primlaw:levelinfo>
							</primlaw:level>
						</primlaw:excerpt>
					</seclaw:bodytext>
				</seclaw:level>
			</seclaw:body>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="leg:status/@statuscode">

		<!--  Original Target XPath:  legisinfo:status@statuscode   -->
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

</xsl:stylesheet>