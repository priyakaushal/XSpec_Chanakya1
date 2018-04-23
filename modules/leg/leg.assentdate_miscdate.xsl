<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.assentdate-miscdate">
  <title>leg:assentdate <lnpid>id-CN02-31815</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates/leg:assentdate</sourcexml> becomes
          <targetxml>miscdate[@datetype="assentdate"]</targetxml> with attributes
          <targetxml>@year</targetxml>, <targetxml>@month</targetxml>,
        <targetxml>@day</targetxml>.</p> 
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

 &lt;miscdate datetype="assentdate" year="2007" day="01" month="06"&gt;2007-06-01&lt;/miscdate&gt;

       </codeblock>
    </example>  
 <section>
       <title>Changes</title>
       <p>2014-04-10: <ph id="change_20140410_brt">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN02-Regulations\leg.assentdate_miscdate.dita  -->
	<xsl:message>leg.assentdate_miscdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:dates/leg:assentdate">

		<!--  Original Target XPath:  miscdate[@datetype="assentdate"]   -->
		<miscdate>
			<xsl:apply-templates select="@* | node()"/>
		</miscdate>

	</xsl:template>

	<xsl:template match="leg:assentdate">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>