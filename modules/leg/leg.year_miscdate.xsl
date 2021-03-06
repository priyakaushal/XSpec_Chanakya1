<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.year-miscdate">
  <title>leg:year <lnpid>id-CN02-31821</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:year</sourcexml> becomes
          <targetxml>miscdate[@datetype="enactdate"]</targetxml> with attribute
          <targetxml>@year</targetxml>.</p> 
      <p>Suppress <sourcexml>@ln.user-displayed="false"</sourcexml> and <sourcexml>@searchtype</sourcexml>.</p>
         </section>
    <example>
      <title>Mapping of <sourcexml>leg:year</sourcexml></title>
      <codeblock>

  &lt;leg:year searchtype="LEGISLATION" ln.user-displayed="false"&gt;2006&lt;/leg:year&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

   &lt;miscdate datetype="enactdate" year="2006"&gt;2006&lt;/miscdate&gt;

       </codeblock>
    </example>  
 <section>
       <title>Changes</title>
       <p>2014-05-05: <ph id="change_20140410_brt">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN02-Regulations\leg.year_miscdate.dita  -->
	<xsl:message>leg.year_miscdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:year">

		<!--  Original Target XPath:  miscdate[@datetype="enactdate"]   -->
		<miscdate>
			<xsl:apply-templates select="@* | node()"/>
		</miscdate>

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:year">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>