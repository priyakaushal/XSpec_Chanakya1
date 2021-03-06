<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.length">
  <title>case:length <lnpid>id-AU13-20440</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:length</sourcexml> becomes
            <targetxml>/doc:docinfo/doc:doclength</targetxml>; the conversion also covers the
          attributes <targetxml>@num</targetxml> will contain the numeric value from source PCData,
            <targetxml>@source="conversion"</targetxml> and <targetxml>@unit</targetxml> will
          contain the textual value from source PCData.
          <pre xml:space="preserve">

&lt;case:length&gt;47 Paragraphs&lt;/case:length&gt;
<b>Becomes</b>

&lt;doc:docinfo&gt;
  ...
  &lt;doc:doclength num="47" source="conversion" unit="Paragraphs"/&gt;
&lt;/doc:docinfo&gt;
</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU13_composite_cases\case.length.dita  -->
	<xsl:message>AU13_composite_cases_case.length.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:length">

		<!--  Original Target XPath:  /doc:docinfo/doc:doclength   -->
		<doc:docinfo xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
			<doc:doclength>
				<xsl:apply-templates select="@* | node()"/>
			</doc:doclength>
		</doc:docinfo>

	</xsl:template>

</xsl:stylesheet>