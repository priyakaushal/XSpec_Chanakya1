<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num">
  <title>leg:num <lnpid>id-CA05-13627</lnpid></title>
  <body>
    <section>
		<ul>
			<li> If <sourcexml>leg:num</sourcexml> comes with attribute
                        <sourcexml>[@ln.user-displayed="false"]</sourcexml> and element contains
                    text <b>(i.e. solsak)</b> in rosetta document then it should be converted in
                        <targetxml>classify:classification[@classscheme="contenttype"]/classify:classitem/classify:classitem-identifier/classify:classname[@normval="legislation"]</targetxml>
                    <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:info subseqdoc="true"&gt;
	&lt;leg:num ln.user-displayed="false"&gt;solsak&lt;/leg:num&gt;
&lt;/leg:info&gt;

		</pre>
                    <pre>
              <b><i>Example: Target Markup</i></b>
            

&lt;classify:classification classscheme="contenttype"&gt;
   &lt;classify:classitem&gt;
      &lt;classify:classitem-identifier&gt;
          &lt;classify:classname normval="legislation"/&gt;
      &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </pre>
                    <note>Attribute <sourcexml>@subseqdoc</sourcexml> should be suppressed from
                        conversion.</note>
                </li>
		</ul>
    </section> 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.num.dita  -->
	<xsl:message>leg.num.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:num">

		<!--  Original Target XPath:  classify:classification[@classscheme="contenttype"]/classify:classitem/classify:classitem-identifier/classify:classname[@normval="legislation"]   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="[@ln.user-displayed=&#34;false&#34;]">

		<!--  Original Target XPath:  classify:classification[@classscheme="contenttype"]/classify:classitem/classify:classitem-identifier/classify:classname[@normval="legislation"]   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

	<xsl:template match="@subseqdoc">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>