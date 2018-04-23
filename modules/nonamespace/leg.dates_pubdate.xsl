<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
  <title>leg:dates/pubdate <lnpid>id-MX02-33812</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates/pubdate[@display-name]</sourcexml> becomes
                    <targetxml>/legislaturerecord:legislaturerecord/doc:metadata/pubinfo:pubinfo/pubinfo:dates/date</targetxml> with attributes @date, @month and @year.</p>

<note>Drop <sourcexml>@display-name</sourcexml> attribute from <sourcexml>pubdate</sourcexml> and value of attribute <sourcexml>@display-name</sourcexml> will be a part of <targetxml>date</targetxml> element.</note>
    </section>

        <example>
            <title>Source XML </title>
            <codeblock>

&lt;leg:dates&gt;
    &lt;pubdate display-name="Fecha de publicacion"&gt;Miércoles 1 de enero de 2014&lt;/pubdate&gt;
&lt;/leg:dates&gt;

                 </codeblock>
           </example>
        <example>
            <title>Target XML </title>
            <codeblock>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate&gt;
		    &lt;date day="01" month="01" year="2014"&gt;Fecha de publicacion Miércoles 1 de enero de 2014&lt;/date&gt;
            &lt;/pubinfo:pubdate&gt;
        &lt;/pubinfo:dates&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

                 </codeblock>
           </example>
        <section>
            <title>Changes</title>
            <p>2014-10-16: Created.</p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX02-Gazette\leg.dates_pubdate.dita  -->
	<xsl:message>leg.dates_pubdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:dates/pubdate[@display-name]">

		<!--  Original Target XPath:  /legislaturerecord:legislaturerecord/doc:metadata/pubinfo:pubinfo/pubinfo:dates/date   -->
		<legislaturerecord:legislaturerecord xmlns:legislaturerecord="urn:x-lexisnexis:content:legislature-record:sharedservices:1">
			<doc:metadata xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
					<pubinfo:dates>
						<date>
							<xsl:apply-templates select="@* | node()"/>
						</date>
					</pubinfo:dates>
				</pubinfo:pubinfo>
			</doc:metadata>
		</legislaturerecord:legislaturerecord>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  date   -->
		<date>
			<xsl:apply-templates select="@* | node()"/>
		</date>

	</xsl:template>

	<xsl:template match="pubdate">

		<!--  Original Target XPath:  date   -->
		<date>
			<xsl:apply-templates select="@* | node()"/>
		</date>

	</xsl:template>

</xsl:stylesheet>