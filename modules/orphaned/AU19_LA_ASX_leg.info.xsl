<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-AU19LA-22013</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>leg:info/leg:officialname</sourcexml>
          <b>becomes</b>
          <targetxml>admindoc:body/admindoc:info/admindoc:officialtitle</targetxml>. </li>
        <li> When <sourcexml>leg:officialname</sourcexml> comes with attribute
            <sourcexml>@ln.user-displayed="false"</sourcexml> then it becomes
            <targetxml>admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"].
          </targetxml> For handling @ln.user-displayed attribute, refer the general markup
          ln.user_displayed="false" section in the CI. </li>
        <li>
          <pre>
           <b><i>Example: Source XML 1</i></b>
        &lt;leg:info&gt;
           &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;Building Code of Australia &amp;#x2014; Volume 1&lt;/leg:officialname&gt;
        &lt;/leg:info&gt;

    
	</pre>
          <pre>
              <b><i>Example: Target XML 1</i></b>
                  

&lt;admindoc:body&gt;
  &lt;admindoc:info&gt;
    &lt;admindoc:officialtitle source="editoriallyassigned"&gt;Building Code of Australia — Volume 1&lt;/admindoc:officialtitle&gt;
  &lt;/admindoc:info&gt;
&lt;/admindoc:body&gt;

                
	</pre>
          <note>When <sourcexml>leg:officialname</sourcexml> element has attribute
              <sourcexml>@ln.user-displayed="false"</sourcexml> without any text inside the source
            markup. It should be suppressed and not converted into the output.</note>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_leg.info.dita  -->
	<xsl:message>AU19_LA_ASX_leg.info.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:officialname">

		<!--  Original Target XPath:  admindoc:body/admindoc:info/admindoc:officialtitle   -->
		<admindoc:body>
			<admindoc:info>
				<admindoc:officialtitle>
					<xsl:apply-templates select="@* | node()"/>
				</admindoc:officialtitle>
			</admindoc:info>
		</admindoc:body>

	</xsl:template>

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:  admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"].   -->
		<admindoc:info>
			<admindoc:officialtitle>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:officialtitle>
		</admindoc:info>

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:  admindoc:info/admindoc:officialtitle[@source="editoriallyassigned"].   -->
		<admindoc:info>
			<admindoc:officialtitle>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:officialtitle>
		</admindoc:info>

	</xsl:template>

</xsl:stylesheet>