<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_leg-dates">
    <title>leg:dates/leg:enactdate <lnpid>id-PH03-34612</lnpid></title>
 <body>
     <p><sourcexml>leg:dates/leg:enactdate</sourcexml> becomes <targetxml>admindoc:agencymaterialinfo/admindoc:dates/miscdate/@datetype="enactdate"</targetxml></p>
     <p><sourcexml>leg:dates/leg:enactdate/date/@day</sourcexml> becomes <targetxml>miscdate/@day</targetxml> </p>
     <p><sourcexml>leg:dates/leg:enactdate/date/@month</sourcexml> becomes <targetxml>miscdate/@month</targetxml> </p>
     <p><sourcexml>leg:dates/leg:enactdate/date/@year</sourcexml> becomes <targetxml>miscdate/@year</targetxml> </p>
     <!--<note><sourcexml>@display-name="Enactment date"</sourcexml> value will be prepend in <targetxml>miscdate</targetxml>. Please See the example</note>-->
     <note><sourcexml>leg:enactdate/@display-name</sourcexml> will be suppressed in target conversion</note>
  <section>
   <title>Source XML</title>
   <pre>
   
    &lt;leg:dates&gt;
             &lt;leg:enactdate display-name="Enactment date" ln.user-displayed="false"&gt;
                 &lt;date day="14" month="07" year="1992"&gt;14 July 1992&lt;/date&gt;
             &lt;/leg:enactdate&gt;
    &lt;/leg:dates&gt;
   
   </pre>
  </section>
  <p>Becomes</p>
  <section>
   <title>Target XML</title>
   <pre>
   
&lt;admindoc:head&gt;
    &lt;admindoc:agencymaterialinfo&gt;
        &lt;admindoc:dates&gt;
            &lt;miscdate datetype="enactdate" day="14" year="1992" month="07"&gt;14 July 1992
            &lt;/miscdate&gt;
        &lt;/admindoc:dates&gt;
    &lt;/admindoc:agencymaterialinfo&gt;
&lt;/admindoc:head&gt;
   
   
   </pre>
  </section>
  
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_leg-dates.dita  -->
	<xsl:message>GPL_PH03_leg-dates.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:dates/leg:enactdate">

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

	<xsl:template match="leg:dates/leg:enactdate/date/@day">

		<!--  Original Target XPath:  miscdate/@day   -->
		<miscdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</miscdate>

	</xsl:template>

	<xsl:template match="leg:dates/leg:enactdate/date/@month">

		<!--  Original Target XPath:  miscdate/@month   -->
		<miscdate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</miscdate>

	</xsl:template>

	<xsl:template match="leg:dates/leg:enactdate/date/@year">

		<!--  Original Target XPath:  miscdate/@year   -->
		<miscdate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</miscdate>

	</xsl:template>

	<xsl:template match="leg:enactdate/@display-name">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>