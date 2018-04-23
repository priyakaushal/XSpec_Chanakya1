<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1" version="2.0"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.prelim">
		<title>
			<sourcexml>leg:prelim</sourcexml>
			<lnpid>id-UK22CF-39019</lnpid>
		</title>
		<body>
			<section>
				<p><sourcexml>leg:body/leg:prelim</sourcexml> becomes
						<targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:prelim[@leveltype="unclassified"]</targetxml>
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\legis-leg.prelim.dita  -->


	

		<!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:prelim[@leveltype="unclassified"]   -->

		<xsl:template match="leg:prelim">
			<xsl:choose>
				<xsl:when test="parent::legfragment">
					<xsl:element name="primlaw:level">
						<xsl:attribute name="leveltype">
							<xsl:text>unclassified</xsl:text>
						</xsl:attribute>
						<xsl:element name="primlaw:prelim">
							<xsl:apply-templates select="@* |node()"/>
						</xsl:element>
					</xsl:element>
				</xsl:when>   
				<xsl:otherwise>
					<xsl:element name="primlaw:prelim">
						<xsl:apply-templates select="@* |node()"/>
					</xsl:element>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:template>

	<xsl:template match="leg:body/leg:prelim">

		<!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:prelim[@leveltype="unclassified"]   -->
		<funddoc:body>
			<primlaw:level
				xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
				<primlaw:bodytext>
					<primlaw:excerpt>
						<primlaw:level>
							<primlaw:prelim>
								<xsl:apply-templates select="@* | node()"/>
							</primlaw:prelim>
						</primlaw:level>
					</primlaw:excerpt>
				</primlaw:bodytext>
			</primlaw:level>
		</funddoc:body>

	</xsl:template>

</xsl:stylesheet>