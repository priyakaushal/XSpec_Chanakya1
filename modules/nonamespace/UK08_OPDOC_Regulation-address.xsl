<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_address">
		<title>address <lnpid>id-UK08OR-28807</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml>address</sourcexml> becomes
						<targetxml>location:address</targetxml>. The child elements of
						<sourcexml>address</sourcexml> are converted as following: <ul>
						<li>
							<sourcexml>address/address.qualifier</sourcexml> becomes
								<targetxml>location:address/location:address.line</targetxml>. </li>
						<li>
							<sourcexml>address/street</sourcexml> becomes
								<targetxml>location:address/location:street</targetxml>. </li>
						<li>
							<sourcexml>address/city</sourcexml> becomes
								<targetxml>location:address/location:city</targetxml>. </li>
						<li>
							<sourcexml>address/postalcode</sourcexml> becomes
								<targetxml>location:address/location:postalcode</targetxml>. </li>
						<li>
							<sourcexml>address/phone</sourcexml> becomes
								<targetxml>location:address/contact:phone</targetxml>. </li>
					</ul>
				</p>
				<pre>
&lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="part"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;address&gt;
              &lt;address.qualifier&gt;
                The Panel on Takeovers and Mergers
              &lt;/address.qualifier&gt;
              &lt;street&gt;10 Paternoster Square&lt;/street&gt;
              &lt;city&gt;London&lt;/city&gt;
              &lt;postalcode&gt;EC4M 7DY&lt;/postalcode&gt;
              &lt;phone&gt;Fax: 020 7236 7005&lt;/phone&gt;
              &lt;phone&gt;Telephone: 020 7382 9026&lt;/phone&gt;&lt;/address&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;


<b>Becomes</b>

&lt;primlaw:level leveltype="part"&gt;
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;location:address&gt;
                        &lt;location:address.line&gt;
                            The Panel on Takeovers and Mergers
                        &lt;/location:address.line&gt;
                        &lt;location:street&gt;10 Paternoster Square&lt;/location:street&gt;
                        &lt;location:city&gt;London&lt;/location:city&gt;
                        &lt;location:postalcode&gt;EC4M 7DY&lt;/location:postalcode&gt;
                        &lt;contact:phone&gt;Fax: 020 7236 7005&lt;/contact:phone&gt;
                        &lt;contact:phone&gt;Telephone: 020 7382 9026&lt;/contact:phone&gt;&lt;/address&gt;
                    &lt;/location:address&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;

      </pre>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-address.dita  -->

	<xsl:template match="address">
		<!--  Original Target XPath:  location:address   -->
		<location:address>
			<xsl:apply-templates select="@* | node()"/>
		</location:address>
	</xsl:template>

	<xsl:template match="address/address.qualifier">
		<!--  Original Target XPath:  location:address/location:address.line   -->
			<location:address.line>
				<xsl:apply-templates select="@* | node()"/>
			</location:address.line>
	</xsl:template>

	<xsl:template match="address/street">
		<!--  Original Target XPath:  location:address/location:street   -->
			<location:street>
				<xsl:apply-templates select="@* | node()"/>
			</location:street>
	</xsl:template>

	<xsl:template match="address/city">
			<location:city>
				<xsl:apply-templates select="@* | node()"/>
			</location:city>
	</xsl:template>

	<xsl:template match="address/postalcode">
			<location:postalcode>
				<xsl:apply-templates select="@* | node()"/>
			</location:postalcode>
	</xsl:template>

	<xsl:template match="address/phone">
			<contact:phone
				xmlns:contact="http://www.lexisnexis.com/xmlschemas/content/shared/contact/1/">
				<xsl:apply-templates select="@* | node()"/>
			</contact:phone>
	</xsl:template>

</xsl:stylesheet>
