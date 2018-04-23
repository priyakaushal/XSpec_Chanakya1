<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname">
  <title>leg:officialname <lnpid>id-HK01-36819</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:officialname</sourcexml> becomes
        <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></p>      
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:officialname</sourcexml></title>
      <codeblock>

&lt;leg:officialname searchtype="LEGISLATION"&gt;ADMINISTRATIVE APPEALS RULES (CAP 1A)&lt;/leg:officialname&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:levelinfo&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;legisinfo:legisinfo&gt;
      &lt;legisinfo:names&gt;
         &lt;legisinfo:officialtitle&gt;ADMINISTRATIVE APPEALS RULES (CAP 1A)&lt;/legisinfo:officialtitle&gt;
      &lt;/legisinfo:names&gt;
    &lt;/legisinfo:legisinfo&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/primlaw:levelinfo&gt;

       </codeblock>
    </example>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
    <note>If <sourcexml>leg:officialname</sourcexml> has attribute
        <sourcexml>@ln.user-displayed="false"</sourcexml> in source then refer the general
      instruction of <xref href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita">ln.user-displayed</xref> attribute handling.</note>    
 <section>
       <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.officialname.dita  -->


	<xsl:template match="leg:info/leg:officialname">
		<legisinfo:names>
			<legisinfo:officialtitle>			  
				<xsl:apply-templates select="@*"/>
			  <xsl:if test="@ln.user-displayed='false'">
			    <xsl:attribute name="source">editoriallyassigned</xsl:attribute>
			  </xsl:if>
			  <xsl:apply-templates select="node() except refpt"/>
			</legisinfo:officialtitle>
		</legisinfo:names>
	</xsl:template>

  <xsl:template match="leg:officialname/@ln.user-displayed" />
	

</xsl:stylesheet>