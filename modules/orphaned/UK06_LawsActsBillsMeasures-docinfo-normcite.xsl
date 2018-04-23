<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-docinfo-normcite">
  <title>docinfo:normcite <lnpid>id-UK06-28010</lnpid></title>
  <body>
    <section>
      <p><sourcexml>docinfo:normcite/ci:cite/ci:content</sourcexml> becomes <targetxml>ref:citations/ref:cite4thisresource[@citetype]/ref:nonciteidentifier/[@normprotocol]</targetxml>. Attributes value should be set to:
        <ul>
          <li><targetxml>ref:cite4thisresource[@citetype="normcite"]</targetxml></li>
          <li><targetxml>ref:nonciteidentifier[@normprotocol"unspecified"]</targetxml></li>
        </ul>
        <note>If <sourcexml>ci:cite</sourcexml> occurred without <sourcexml>@type</sourcexml> within <sourcexml>docinfo:normcite</sourcexml> then it is data error and conversion needs to follow same instruction as given above. </note>
        And populated as below:</p>
    </section>
    <section>
      <note>If <sourcexml>docinfo:normcite/ci:cite/@type="cite4thisdoc"</sourcexml> and
          <sourcexml>docinfo:normcite/ci:cite/@type="parallel"</sourcexml> then it will be mapped as
          <targetxml>ref:citations/ref:cite4thisresource[@citetype="parallel"]/ref:nonciteidentifier/[@normprotocol="unspecified"
          @CITE-DEF]</targetxml> For more clarification please refer the example. Please refer below
        example Source and Target XML3 for more clarification.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-10-12: <ph id="change_20161012_AS">Added instruction for handling input
            <sourcexml>ci:cite/@type="cite4thisdoc"</sourcexml> and
            <sourcexml>ci:cite/@type="parallel"</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-docinfo-normcite.dita  -->
	 
   <!-- Sudhanshu Srivastava :
        Edited : 16 June 2017.
        Comments : This is content specific module handling docinfo:normcite.
   -->
<!--	<xsl:template match="docinfo:normcite">
		<ref:citations>
		<xsl:choose>
			<xsl:when test="count(ci:cite) = 2">
				<xsl:for-each select="*">
					<ref:cite4thisresource>
						<xsl:attribute name="citetype" select="if(@type='cite4thisdoc') then 'normcite' else 'parallel'"/>
						<ref:nonciteidentifier normprotocol="'unspecified'">
							<xsl:apply-templates select="ci:content/node()"/>
						</ref:nonciteidentifier>
					</ref:cite4thisresource>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<ref:cite4thisresource citetype="normcite">
						<ref:nonciteidentifier normprotocol="'unspecified'">
							<xsl:apply-templates select="ci:cite/ci:content/node()"/>
						</ref:nonciteidentifier>
					</ref:cite4thisresource>
			</xsl:otherwise>
		</xsl:choose>
		</ref:citations>
	</xsl:template>
-->


</xsl:stylesheet>