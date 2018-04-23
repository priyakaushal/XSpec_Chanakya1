<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.miscdate">
  <title>leg:miscdate <lnpid>id-CA07-14024</lnpid></title>
  <body>
    <section>
		<p>
		    <sourcexml>leg:dates/leg:miscdate</sourcexml> becomes
		      <targetxml>primlawinfo:dates/miscdate</targetxml> and 
		    required attribute <targetxml>@datetype</targetxml> should be set to "miscdate".
		</p>
    </section>
      
      <example>
          <title>Source XML</title>
          <codeblock>

&lt;leg:dates&gt;
    &lt;leg:miscdate&gt;Registration 24 November, 2004&lt;/leg:miscdate&gt;
&lt;/leg:dates&gt;

    </codeblock>
      </example>
      
      <example>
          <title>Target XML</title>
          <codeblock>

&lt;primlawinfo:dates&gt;
    &lt;miscdate datetype="miscdate"&gt;Registration 24 November, 2004&lt;/miscdate&gt;
&lt;/primlawinfo:dates&gt;

    </codeblock>
      </example>
      
      <note>Attribute <sourcexml>@subseqdoc</sourcexml> should be suppressed from conversion.</note>
      
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.miscdate.dita  -->

	<xsl:template match="leg:dates/leg:miscdate">

		<!--  Original Target XPath:  primlawinfo:dates/miscdate   -->
		<primlawinfo:dates>
			<miscdate datetype="miscdate">
				<xsl:apply-templates select="@* | node()"/>
			</miscdate>
		</primlawinfo:dates>

	</xsl:template>

	<xsl:template match="@subseqdoc">
			<xsl:value-of select="."/>


	</xsl:template>

</xsl:stylesheet>