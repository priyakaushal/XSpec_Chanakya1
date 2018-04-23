<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_PH_leg.year_ln.user-displayed-LxAdv-SUPPRESS">
  <title>leg:year[@ln.user-displayed="false"] <lnpid>id-CCCC-10502</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>leg:year</sourcexml> comes with attribute
          [<sourcexml>@ln.user-displayed="false"</sourcexml>] and it should be suppressed in target
        conversion because <sourcexml>leg:enactdate</sourcexml> makrup have hold the same year value
        (means year value available inside both markup). Refer below input and target examples:</p>
        
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:year[@ln.user-displayed="false"] for PH01 and PH02 </sourcexml>
      </title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:dates&gt;
    &lt;leg:enactdate display-name="Enactment date" ln.user-displayed="false"&gt;
        &lt;date day="18" month="12" year="1889"&gt;18 December 1889&lt;/date&gt;
    &lt;/leg:enactdate&gt;
  &lt;/leg:dates&gt;
  &lt;!--....--&gt;
  &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1889&lt;/leg:year&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
  &lt;primlaw:levelinfo&gt;
      &lt;primlawinfo:primlawinfo&gt;
          &lt;primlawinfo:dates&gt;
              &lt;primlawinfo:enactdate year="1889" month="12" day="18"/&gt;
          &lt;/primlawinfo:enactdate&gt;
      &lt;/primlawinfo:dates&gt;
    &lt;/primlawinfo:primlawinfo&gt;
  &lt;/primlaw:levelinfo&gt;
&lt;/primlaw:level&gt;
 &lt;!--....--&gt;
 &lt;!--Suppressed leg:year in target mapping--&gt;

        </codeblock>
    </example>
    <example>
      <title>Mapping of <sourcexml>leg:year[@ln.user-displayed="false"] for PH03 </sourcexml>
      </title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:dates&gt;
      &lt;leg:enactdate display-name="Enactment date" ln.user-displayed="false"&gt;
         &lt;date day="22" month="07" year="1995"&gt;22 July 1995&lt;/date&gt;
      &lt;/leg:enactdate&gt;
  &lt;/leg:dates&gt;
  &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1995&lt;/leg:year&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

  &lt;admindoc:agencymaterialinfo&gt;
    &lt;admindoc:dates&gt;
      &lt;miscdate datetype="enactdate" day="22" month="07" year="1995"&gt;&lt;date-text&gt;22 July 1995&lt;/date-text&gt;&lt;/miscdate&gt;
    &lt;/admindoc:dates&gt;
  &lt;/admindoc:agencymaterialinfo&gt;
  &lt;!--Suppressed leg:year in target mapping--&gt;

        </codeblock>
    </example>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except
      for the citation element.</note>
    <section>
      <title>Changes:</title>
      <p>2014-08-08: Created</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_PH_leg.year_ln.user-displayed-LxAdv-SUPPRESS.dita  -->
	<xsl:message>Rosetta_PH_leg.year_ln.user-displayed-LxAdv-SUPPRESS.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:year">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:enactdate">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:year[@ln.user-displayed=&#34;false&#34;] for PH01 and PH02 ">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:year[@ln.user-displayed=&#34;false&#34;] for PH03 ">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>