<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="pubdate">
  <title>pubdate <lnpid>id-AR03-34822</lnpid></title>
  <body>
    <section>
      <p><sourcexml>pubdate</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml>. <ul>
                    <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                        attributes will be moved in the parent
                            <targetxml>primlawinfo:effdate</targetxml> element. <ul>
                            <li><sourcexml>date/@day</sourcexml> becomes
                                    <targetxml>pubinfo:pubdate/date/@day</targetxml></li>
                            <li><sourcexml>date/@month</sourcexml> becomes
                                    <targetxml>pubinfo:pubdate/date/@month</targetxml></li>
                            <li><sourcexml>date/@year</sourcexml> becomes
                                    <targetxml>pubinfo:pubdate/date/@year</targetxml></li>
                        </ul>The value of attribute <sourcexml>@display-name</sourcexml> will be a
                        part of <targetxml>date</targetxml> element.</li>
                </ul></p>
      <pre>
&lt;leg:dates&gt;
    &lt;pubdate display-name="Publicación en el B.O."&gt;
        &lt;date year="2010" month="01" day="06"&gt; 06/01/2010&lt;/date&gt;
    &lt;/pubdate&gt;
&lt;/leg:dates&gt;

<b>becomes</b>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate day="06" month="01" year="2010"&gt;
                &lt;date-text&gt;Publicación en el B.O. 06/01/2010&lt;/date-text&gt;
            &lt;/pubinfo:pubdate&gt;
        &lt;/pubinfo:dates&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
</pre>
    </section>
    <section>
      <title>Changes</title>
        <p>2014-12-05:<ph id="change_20141205_AS"> Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\pubdate.dita  -->
	<xsl:message>AR03-Regulation_pubdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="pubdate">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate   -->
		<doc:metadata>
			<pubinfo:pubinfo>
				<pubinfo:dates>
					<pubinfo:pubdate>
						<xsl:apply-templates select="@* | node()"/>
					</pubinfo:pubdate>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="date/@day">

		<!--  Original Target XPath:  pubinfo:pubdate/date/@day   -->
		<pubinfo:pubdate>
			<date>
				<xsl:attribute name="day">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</date>
		</pubinfo:pubdate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  pubinfo:pubdate/date/@month   -->
		<pubinfo:pubdate>
			<date>
				<xsl:attribute name="month">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</date>
		</pubinfo:pubdate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  pubinfo:pubdate/date/@year   -->
		<pubinfo:pubdate>
			<date>
				<xsl:attribute name="year">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</date>
		</pubinfo:pubdate>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  date   -->
		<date>
			<xsl:apply-templates select="@* | node()"/>
		</date>

	</xsl:template>

</xsl:stylesheet>