<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_leg-year">
    <title>leg:info/leg:year <lnpid>id-PH03-34620</lnpid></title>
 <body>
     <!--<p>
            <sourcexml>leg:info/leg:year</sourcexml> becomes
                <targetxml>admindecision:decisioninfo/admindecision:dates/admindecision:adopteddate[@year]/date-text</targetxml>
            <note><b>Source PCDATA</b> will be mapped to
                    <targetxml>admindecision:adopteddate/date-text</targetxml> and it will also be
                mapped to <targetxml>admindecision:adopteddate/[@year]</targetxml></note>
        </p>-->
     <p>
            <sourcexml>leg:info/leg:year</sourcexml> becomes
                <targetxml>admindoc:agencymaterialinfo/admindoc:dates/miscdate/@datetype="enactdate"</targetxml>
            <note><b>Source PCDATA</b> will be mapped to <targetxml>miscdate</targetxml> and it will
                also be mapped to <targetxml>miscdate/[@year]</targetxml></note><note>We have
                    <sourcexml>@year</sourcexml> in <sourcexml>enactdate</sourcexml> which have the
                same value as in <sourcexml>leg:year</sourcexml>. We are on the discussion to drop
                this <sourcexml>leg:year</sourcexml> from target conversion with LBU.</note>
        </p>
  <section>
   <title>Source XML</title>
   <pre>
   
        &lt;leg:info&gt;
            ....
            &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;2001&lt;/leg:year&gt;
            ....
        &lt;/leg:info&gt;
   
   </pre>
  </section>
  <p>Becomes</p>
  <section>
   <title>Target XML</title>
  <pre>
    
 &lt;admindoc:head&gt;
    &lt;admindoc:agencymaterialinfo&gt;
        &lt;admindoc:dates&gt;
            &lt;miscdate datetype="enactdate" year="2001"&gt;2001&lt;/miscdate&gt;
        &lt;/admindoc:dates&gt;
    &lt;/admindoc:agencymaterialinfo&gt;
&lt;/admindoc:head&gt;
   
  </pre>
      <!-- <pre>
   <![CDATA[
<admindoc:head>
    <admindecision:decisioninfo>
        <admindecision:dates>
            <admindecision:adopteddate year="2001">
                <date-text>2001</date-text>
            </admindecision:adopteddate>
        </admindecision:dates>
    </admindecision:decisioninfo>
</admindoc:head>
   
   ]]>
   </pre>-->
  </section>
  
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_leg-year.dita  -->
	<xsl:message>GPL_PH03_leg-year.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/leg:year">

		<!--  Original Target XPath:  admindoc:agencymaterialinfo/admindoc:dates/miscdate/@datetype="enactdate"   -->
		<admindoc:agencymaterialinfo>
			<admindoc:dates>
				<miscdate>
					<xsl:attribute name="datetype">
						<xsl:text>enactdate</xsl:text>
					</xsl:attribute>
				</miscdate>
			</admindoc:dates>
		</admindoc:agencymaterialinfo>

	</xsl:template>

	<xsl:template match="@year">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="enactdate">

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