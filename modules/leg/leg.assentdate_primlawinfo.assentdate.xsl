<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.assentdate">
  <title>leg:assentdate <lnpid>id-CN01-15215</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates/leg:assentdate</sourcexml> becomes
          <targetxml>primlawinfo:assentdate</targetxml> with attributes
          <targetxml>@year</targetxml><targetxml>@month</targetxml><targetxml>@day</targetxml>.</p> 
         </section>
    <example>
      <title>Mapping of <sourcexml>leg:assentdate</sourcexml></title>
      <codeblock>

  &lt;leg:dates&gt;
       &lt;leg:assentdate&gt;2007-06-01&lt;/leg:assentdate&gt;
&lt;/leg:dates&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:assentdate year="2007" day="01" month="06"&gt;2007-06-01&lt;/primlawinfo:assentdate&gt;

       </codeblock>
    </example>  
 <section>
       <title>Changes</title>
       <p>2014-04-10: <ph id="change_20140410_brt">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN01-Legislation\leg.assentdate_primlawinfo.assentdate.dita  -->

	<xsl:template match="leg:dates/leg:assentdate">
		<!--  Original Target XPath:  primlawinfo:assentdate   -->
		<primlawinfo:assentdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:assentdate>
	</xsl:template>

</xsl:stylesheet>