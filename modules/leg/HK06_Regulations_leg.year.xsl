<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.year">
  <title>leg:year <lnpid>id-HK06-37420</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:year</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
        with attribute <targetxml>@year</targetxml>.</p> 
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:info/leg:year</sourcexml></title>
      <codeblock>

&lt;leg:year searchtype="LEGISLATION"&gt;1973&lt;/leg:year&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:primlawinfo&gt;
   &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:enactdate year="1973"&gt;1973&lt;/primlawinfo:enactdate&gt;
    &lt;/primlawinfo:dates&gt;
 &lt;/primlawinfo:primlawinfo&gt;   

       </codeblock>
    </example>  
    <example>
      <title>Mapping of <sourcexml>leg:info/leg:year@ln.user-displayed="false"</sourcexml></title>
      <codeblock>

&lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1980&lt;/leg:year&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:primlawinfo&gt;
   &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:enactdate year="1980"/&gt;
    &lt;/primlawinfo:dates&gt;
 &lt;/primlawinfo:primlawinfo&gt;   

       </codeblock>
    </example>  
   
    <note>For handling <b>@ln.user-displayed</b> attribute, refer the
      general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
 <section>
      <title>Changes</title>
      <p>2016-04-19: Created.</p>
    </section> 
  </body>

	</dita:topic>


  <xsl:template match="leg:info/leg:year[@ln.user-displayed='true' or not(@ln.user-displayed)]">
    
    <!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
    <primlawinfo:dates>
      <primlawinfo:enactdate>
        <xsl:attribute name="year">
          <xsl:value-of select="."/>
        </xsl:attribute>
        <xsl:apply-templates select="@* | node()"/>
      </primlawinfo:enactdate>
    </primlawinfo:dates>
    
    
  </xsl:template>   
</xsl:stylesheet>