<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info_pubdate">
  <title>leg:info/pubdate <lnpid>id-MY05LL-17018</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/pubdate</sourcexml>  becomes <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month, day, year]</targetxml>.</p> 
      <note>When <sourcexml>ln.user-displayed="false"</sourcexml> appears on any date element (i.e. <sourcexml>pubdate[@ln.user-displayed="false"]</sourcexml>), that
        element is translated into the target but with the element content omitted. Only the attributes are populated. So there is
        no displayable content.</note>
    </section>
    <example>
      <title>Mapping of <sourcexml>pubdate</sourcexml> with attribute
          <sourcexml>@ln.user-displayed</sourcexml></title>
      <codeblock>

&lt;leg:info&gt;
  &lt;pubdate ln.user-displayed="false" display-name="Published date"&gt;
      &lt;date day="27" month="02" year="1969"&gt;27 February, 1969&lt;/date&gt;
  &lt;/pubdate&gt;
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
      <title>Mapping of <sourcexml>pubdate</sourcexml> without
          <sourcexml>@ln.user-displayed</sourcexml> attribute</title>
      <codeblock>

&lt;leg:info&gt;
  &lt;pubdate display-name="Published date"&gt;
    &lt;date day="27" month="03" year="1969"&gt;27 March,1969&lt;/date&gt;
  &lt;/pubdate&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;doc:metadata&gt;
   &lt;pubinfo:pubinfo&gt;
     &lt;pubinfo:dates&gt;
        &lt;pubinfo:pubdate month="03" day="27" year="1969"&gt;
          &lt;date-text&gt;Published date: 27 March,1969&lt;/date-text&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\leg.info_pubdate.dita  -->
<!--	<xsl:message>leg.info_pubdate.xsl requires manual development!</xsl:message> -->

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
	
</xsl:stylesheet>