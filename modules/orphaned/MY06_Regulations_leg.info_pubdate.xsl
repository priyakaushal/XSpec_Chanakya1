<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info_pubdate">
  <title>leg:info/pubdate <lnpid>id-MY06-17215</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/pubdate</sourcexml>  becomes <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month, day, year]</targetxml>.</p> 
      
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:dates</sourcexml></title>
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
    <note>When <sourcexml>ln.user-displayed="false"</sourcexml> appears on any date element (i.e. <sourcexml>pubdate[@ln.user-displayed="false"]</sourcexml>), that
      element is translated into the target but with the element content omitted. Only the attributes are populated. So there is
      no displayable content.</note>
    <note>If input having <sourcexml>pubdate</sourcexml> without <sourcexml>@ln.user-displayed</sourcexml> attribute then its mapped with <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month, @day, @year]</targetxml> and content should be captured in <targetxml>date-text</targetxml> markup.</note>
 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY06_Regulations\leg.info_pubdate.dita  -->
	<xsl:message>MY06_Regulations_leg.info_pubdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info/pubdate">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month,day,year]   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<pubinfo:pubdat>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdat>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="leg:dates">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month,@day,@year]   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<pubinfo:pubdat>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdat>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month,@day,@year]   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<pubinfo:pubdat>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdat>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="pubdate[@ln.user-displayed=&#34;false&#34;]">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month,@day,@year]   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<pubinfo:pubdat>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdat>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="pubdate">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month,@day,@year]   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<pubinfo:pubdat>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdat>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdat[@month,@day,@year]   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<pubinfo:pubdat>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdat>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>