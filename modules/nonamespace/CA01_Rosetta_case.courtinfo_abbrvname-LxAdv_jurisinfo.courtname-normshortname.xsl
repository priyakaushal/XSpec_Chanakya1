<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.courtinfo_abbrvname-LxAdv_jurisinfo.courtname-normshortname">
  <title>case:courtinfo/abbrvname <lnpid>id-CA01-12214</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:courtinfo/abbrvname</sourcexml> becomes
          <targetxml>jurisinfo:courtname[@normscheme="calongabbr"]/@normshortname</targetxml>.</p>
      <p>Any <sourcexml>nl</sourcexml> elements in <sourcexml>abbrvname</sourcexml> should be
        suppressed.</p>
    </section>
    <example>
      <codeblock>
&lt;case:courtinfo&gt;
    ...
    &lt;abbrvname ln.user-displayed="false"&gt;CAFCTD(1reInst)&lt;/abbrvname&gt;
    &lt;case:courtname&gt;Cour fédérale du Canada - Division de première instance&lt;nl/&gt; Saint-Jean, Nouveau-Brunswick&lt;/case:courtname&gt;
    ...
&lt;/case:courtinfo&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;jurisinfo:courtinfo&gt;
    ...
    &lt;jurisinfo:courtname normscheme="calongabbr" normshortname="CAFCTD(1reInst)"&gt;Cour fédérale du Canada - Division de première instance Saint-Jean,
    Nouveau-Brunswick&lt;/jurisinfo:courtname&gt;
    ...
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
    </example>
    <note><p><sourcexml>case:courtinfo/abbrvname</sourcexml> will also be mapped in
          <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.
        For more confirmation please see below examples.</p></note>
    <example>
      <codeblock>
&lt;case:courtinfo&gt;
    ...
    &lt;abbrvname ln.user-displayed="false"&gt;CAFCTD(1reInst)&lt;/abbrvname&gt;
    &lt;case:courtname&gt;Cour fédérale du Canada - Division de première instance&lt;nl/&gt; Saint-Jean, Nouveau-Brunswick&lt;/case:courtname&gt;
    ...
&lt;/case:courtinfo&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;jurisinfo:courtinfo&gt;
    ...
    &lt;jurisinfo:courtname normscheme="calongabbr" normshortname="CAFCTD(1reInst)"&gt;Cour fédérale du Canada - Division de première instance Saint-Jean,
        Nouveau-Brunswick&lt;/jurisinfo:courtname&gt;
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="CAFCTD(1reInst)"/&gt;
    ...
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-10-27: <ph id="change_20141027_PS">Added note and example to generate
            <targetxml>jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> markup in the
          target, Applicable on CA01.</ph></p>
      <p>2013-11-08: <ph id="change_20131108">Updated target mapping and example. This change
          immediately applies to CA01.</ph></p>
    </section>
  </body>
	</dita:topic>
    
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.courtinfo_abbrvname-LxAdv_jurisinfo.courtname-normshortname.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the case:courtinfo/abbrvname and creates the jurisinfo:courtname-->
	<xsl:template match="case:courtinfo/abbrvname">
        <xsl:attribute name="normshortname">
            <xsl:value-of select="."/>
        </xsl:attribute>
	</xsl:template>
    
</xsl:stylesheet>