<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates_pubdate">
  <title>pubdate <lnpid>id-MY05LB-16812</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates/pubdate</sourcexml> becomes
          <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml>.</p> 
      <note>When <sourcexml>pubdate</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> (i.e. <sourcexml>pubdate[@ln.user-displayed="false"</sourcexml>]), that element is translated into the target but with the element
        content omitted. Only the attributes are populated. So there is no displayable content.</note>
    </section>
    
    <example>
      <title>Mapping of <sourcexml>pubdate</sourcexml> with <sourcexml>[@ln.user-displayed="false"]</sourcexml> attribute</title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:dates&gt;
      &lt;pubdate ln.user-displayed="false" display-name="Published date"&gt;
          &lt;date day="27" month="02" year="1969"&gt;27 February, 1969&lt;/date&gt;
      &lt;/pubdate&gt;
  &lt;/leg:dates&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;doc:metadata&gt;
   &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:dates&gt;
        &lt;pubinfo:pubdate month="02" day="27" year="1969"/&gt;
      &lt;/pubinfo:dates&gt;
   &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

       </codeblock>
    </example>
    
    
    
   <section>
     <p>If input having <sourcexml>pubdate</sourcexml> without
       <sourcexml>@ln.user-displayed</sourcexml> attribute then its mapped with
       <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month, day,
         year]</targetxml> and content should be captured in <targetxml>date-text</targetxml>
       markup with added text "<b>Published date: </b>".</p>
   </section>
    <example>
      <title>Mapping of <sourcexml>pubdate</sourcexml> without <sourcexml>[@ln.user-displayed="false"]</sourcexml> attribute</title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:dates&gt;
      &lt;pubdate display-name="Published date"&gt;
        &lt;date day="28" month="10" year="1976"&gt;28 October, 1976&lt;/date&gt;
      &lt;/pubdate&gt;
  &lt;/leg:dates&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;doc:metadata&gt;
   &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:dates&gt;
        &lt;pubinfo:pubdate month="10" day="28" year="1976"&gt;
            &lt;date-text&gt;Published date: 28 October, 1976&lt;/date-text&gt;
        &lt;/pubinfo:pubdate&gt;
      &lt;/pubinfo:dates&gt;
   &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

       </codeblock>
    </example>
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LB_Bills\leg.dates_pubdate.dita  -->
<!--	<xsl:message>MY05LB_Bills_leg.dates_pubdate.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:info/pubdate">
		<pubinfo:pubinfo>
			<pubinfo:dates>
				<pubinfo:pubdate>
					<xsl:attribute name="month">
						<xsl:value-of select="./date/@month"/>
					</xsl:attribute>
					<xsl:attribute name="day">
						<xsl:value-of select="./date/@day"/>
					</xsl:attribute>
					<xsl:attribute name="year">
						<xsl:value-of select="./date/@year"/>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="./@ln.user-displayed = 'false'"/>
						<xsl:when test="./@display-name = 'Published date'">
							<date-text>
								<xsl:value-of select="concat(./@display-name, ': ', ./date)"/>
							</date-text>
						</xsl:when>
					</xsl:choose>
				</pubinfo:pubdate>
			</pubinfo:dates>
		</pubinfo:pubinfo>
	</xsl:template>
	
	<xsl:template match="leg:dates/pubdate">
		<pubinfo:pubinfo>
			<pubinfo:dates>
				<pubinfo:pubdate>
					<xsl:attribute name="month">
						<xsl:value-of select="./date/@month"/>
					</xsl:attribute>
					<xsl:attribute name="day">
						<xsl:value-of select="./date/@day"/>
					</xsl:attribute>
					<xsl:attribute name="year">
						<xsl:value-of select="./date/@year"/>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="./@ln.user-displayed = 'false'"/>
						<xsl:when test="./@display-name = 'Published date'">
							<date-text>
								<xsl:value-of select="./date"/>
							</date-text>
						</xsl:when>
					</xsl:choose>
				</pubinfo:pubdate>
			</pubinfo:dates>
		</pubinfo:pubinfo>
	</xsl:template>
</xsl:stylesheet>