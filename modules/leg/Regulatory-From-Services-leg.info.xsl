<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-From-Services-leg.info">
   <title>leg:info <lnpid>id-NZ12-24815</lnpid></title>
   <body>
      <section>
        <p><sourcexml>leg:info</sourcexml> <b>becomes</b> <targetxml>admindoc:info</targetxml> and child elements as described below:
          <ul>
            <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialname</sourcexml> <b>becomes</b> <targetxml>/admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialtitle</targetxml>.
              <note>If <sourcexml>/LEGDOC/leg:body/leg:info/leg:officialname</sourcexml> has comes with attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then it <b>becomes</b> <targetxml>/admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"]</targetxml>.</note>
            </li>
            
            <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialnum</sourcexml> <b>becomes</b> <targetxml>/admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialnum</targetxml>.
              <note>If <sourcexml>/LEGDOC/leg:body/leg:info/leg:officialnum</sourcexml> has comes with attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then it <b>becomes</b> <targetxml>/admindoc:admindoc/admindoc:body/admindoc:info/admindoc:officialnum[@source="editoriallyassigned"]</targetxml>.</note>
              <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <b>ln.user_displayed="false"</b> section in the CI.</note>
            </li>
          </ul>
          <pre>
            <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:body&gt;
 &lt;leg:info&gt;
  &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;HUMAN ASSISTED REPRODUCTIVE TECHNOLOGY (FEES) REGULATIONS 2005&lt;/leg:officialname&gt;
  &lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;Act No. 210, 2005&lt;/leg:officialnum&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt;

              </pre>
          <pre>
            <b><i>Example: Target XML 1</i></b>
                  

&lt;admindoc:body&gt;
  &lt;admindoc:info&gt;
    &lt;admindoc:officialtitle source="editoriallyassigned"&gt;HUMAN ASSISTED REPRODUCTIVE TECHNOLOGY (FEES) REGULATIONS 2005&lt;/admindoc:officialtitle&gt;
    &lt;admindoc:officialnum source="editoriallyassigned"&gt;Act No. 210, 2005&lt;/admindoc:officialnum&gt;
  &lt;/admindoc:info&gt;
  &lt;!-- ETC. --&gt;
&lt;/admindoc:body&gt;

          </pre>
          <note>When <sourcexml>leg:officialname</sourcexml> and <sourcexml>leg:officialnum</sourcexml> element has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> without any text inside the source markup. It should be suppressed and not converted into the output.</note>
        </p>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ12_Regulatory_Material_From_Services\Regulatory-From-Services-leg.info.dita  -->

	<xsl:template match="leg:info">
		<admindoc:info>
			<xsl:apply-templates select="@* | node() except (leg:year | leg:juris | leg:dates)"/>
		</admindoc:info>
	</xsl:template>

	<xsl:template match="leg:officialname">
	  <!--let's not output it if it's empty, to match DT -->
	  <xsl:if test="node()">
		<admindoc:officialtitle>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:officialtitle>
	  </xsl:if>
	</xsl:template>

	<xsl:template match="leg:officialname/@ln.user-displayed | leg:officialnum/@ln.user-displayed">
		<xsl:if test=".='false'">
			<xsl:attribute name="source">editoriallyassigned</xsl:attribute>
		</xsl:if>
	</xsl:template>

		

	<xsl:template match="leg:officialnum">
		<admindoc:officialnum>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:officialnum>
	</xsl:template>

	
</xsl:stylesheet>