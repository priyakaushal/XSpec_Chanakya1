<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_leg.assentdate_to-LexAdv-primlawinfo.assentdate">
  <title>leg:assentdate <lnpid>id-MY07-17412</lnpid></title>
 <body>
   <section>
      <p><sourcexml>leg:dates/leg:assentdate</sourcexml> becomes
          <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate</targetxml>
        with optional attributes <targetxml>@year</targetxml>, <targetxml>@month</targetxml> and
          <targetxml>@day</targetxml>. <pre>
       
            &lt;leg:dates&gt;
                &lt;leg:assentdate&gt;01/01/1958&lt;/leg:assentdate&gt;
            &lt;/leg:dates&gt;
       
     </pre> Becomes <pre>
     
     &lt;primlawinfo:primlawinfo&gt;
            ....
            &lt;primlawinfo:dates&gt;
                    &lt;primlawinfo:assentdate day="01" month="01" year="1958"&gt;01/01/1958&lt;/primlawinfo:assentdate&gt;
            &lt;/primlawinfo:dates&gt;
           ....
    &lt;/primlawinfo:primlawinfo&gt;
     
     </pre>
        <sourcexml>leg:assentdate</sourcexml> children are described as below: <ul>
          <li><sourcexml>date</sourcexml> becomes <targetxml>date-text</targetxml> and the
            attributes will be moved in the parent <targetxml>primlawinfo:assentdate</targetxml>
            element and populated as below: <ul>
              <li><sourcexml>date/@day</sourcexml> becomes
                  <targetxml>primlawinfo:assentdate/@day</targetxml></li>
              <li><sourcexml>date/@month</sourcexml> becomes
                  <targetxml>primlawinfo:assentdate/@month</targetxml></li>
              <li><sourcexml>date/@year</sourcexml> becomes
                  <targetxml>primlawinfo:assentdate/@year</targetxml></li>
            </ul></li>
        </ul></p>
      <note>When <sourcexml>leg:assentdate</sourcexml> has attribute
          <sourcexml>@ln.user-displayed="false"</sourcexml> (i.e.
          <sourcexml>leg:assentdate[@ln.user-displayed="false"</sourcexml>]), that element is
        translated into the target but with the element content omitted. Only the attributes are
        populated. So there is no displayable content.</note>
      <pre>
       
       &lt;leg:dates&gt;
           &lt;leg:assentdate ln.user-displayed="false"&gt;
                  &lt;date day="01" month="02" year="2010"&gt;01 February 2010&lt;/date&gt;
           &lt;/leg:assentdate&gt;
       &lt;/leg:dates&gt;
       
     </pre> Becomes <pre>
     
     &lt;primlawinfo:primlawinfo&gt;
           &lt;primlawinfo:dates&gt;
                    &lt;primlawinfo:assentdate date="01" month="02" year="2010"/&gt;
            &lt;/primlawinfo:dates&gt;
     &lt;/primlawinfo:primlawinfo&gt;
     
     </pre>
   </section>
   <section>
     <title>Changes</title>
     <p>2013-11-14: <ph id="change_20131114_SSX">Created</ph>.</p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.assentdate_to-LexAdv-primlawinfo.assentdate.dita  -->
	<!--<xsl:message>MY07_Rosetta_leg.assentdate_to-LexAdv-primlawinfo.assentdate.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="leg:dates/leg:assentdate">

		<!--  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate   -->
		<primlawinfo:primlawinfo>
			<primlawinfo:dates>
				<primlawinfo:assentdate>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:assentdate>
			</primlawinfo:dates>
		</primlawinfo:primlawinfo>

	</xsl:template>

	<xsl:template match="leg:assentdate">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="date/@day">

		<!--  Original Target XPath:  primlawinfo:assentdate/@day   -->
		<primlawinfo:assentdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="."/>
			</xsl:attribute>
		</primlawinfo:assentdate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  primlawinfo:assentdate/@month   -->
		<primlawinfo:assentdate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="."/>
			</xsl:attribute>
		</primlawinfo:assentdate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  primlawinfo:assentdate/@year   -->
		<primlawinfo:assentdate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="."/>
			</xsl:attribute>
		</primlawinfo:assentdate>

	</xsl:template>

	<xsl:template match="leg:assentdate/@ln.user-displayed[. = 'false']"/>

	<!--<xsl:template match="leg:assentdate[@ln.user-displayed=&#34;false&#34;">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>