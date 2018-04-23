<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.length-LxAdv_doc.doclength">
  <title>case:length <lnpid>id-CCCC-12043</lnpid></title>
  <body>
    <section id="mapping">
      <p><sourcexml>case:length</sourcexml> becomes
          <targetxml>doc:metadata/doc:docinfo/doc:doclength</targetxml>. The attributes of
          <targetxml>doc:doclength</targetxml> are populated as follows: <ul>
          <li><targetxml>doc:doclength/@num</targetxml> is populated with the numeric content in
              <sourcexml>case:length</sourcexml>.</li>
          <li><targetxml>doc:doclength/@unit</targetxml> is populated with the textual content in
              <sourcexml>case:length</sourcexml>.</li>
          <li><targetxml>doc:doclength/@source</targetxml> is populated with the value
            "conversion".</li>
        </ul>
        <pre xml:space="preserve">

&lt;case:length&gt;47 Paragraphs&lt;/case:length&gt;
<b>Becomes</b>

&lt;doc:docinfo&gt;
  ...
  &lt;doc:doclength num="47" source="conversion" unit="Paragraphs"/&gt;
&lt;/doc:docinfo&gt;
</pre>
      </p>
    </section>
    <section id="changes">
      <title>Common Changes</title>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\conref_content\Rosetta_case.length-LxAdv_doc.doclength.dita  -->
	

	<xsl:template match="case:length">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:doclength   -->
				<doc:doclength>
				  <xsl:attribute name="source">conversion</xsl:attribute>
				  <xsl:analyze-string select="." regex="(.*)\s(.*)">
				    <xsl:matching-substring>
				      <xsl:attribute name="num" select="regex-group(1)"/>
				      <xsl:attribute name="unit" select="regex-group(2)"/>
				    </xsl:matching-substring>
				    <xsl:non-matching-substring>
				      <xsl:attribute name="num" select="."/>
				    </xsl:non-matching-substring>
				  </xsl:analyze-string>
				</doc:doclength>

	</xsl:template>

</xsl:stylesheet>