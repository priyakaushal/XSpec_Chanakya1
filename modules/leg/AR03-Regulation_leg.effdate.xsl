<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.effdate">
    <title>leg:effdate <lnpid>id-AR03-34812</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:effdate</sourcexml> becomes
                    <targetxml>regulation:body/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml>. <ul>
                    <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                        attributes will be moved in the parent
                            <targetxml>primlawinfo:effdate</targetxml> element. <ul>
                            <li><sourcexml>date/@day</sourcexml> becomes
                                    <targetxml>primlawinfo:effdate/@day</targetxml></li>
                            <li><sourcexml>date/@month</sourcexml> becomes
                                    <targetxml>primlawinfo:effdate/@month</targetxml></li>
                            <li><sourcexml>date/@year</sourcexml> becomes
                                    <targetxml>primlawinfo:effdate/@year</targetxml></li>
                        </ul> The value of attribute <sourcexml>@display-name</sourcexml> will be a
                        part of <targetxml>date-text</targetxml> element.</li>
                </ul></p>
            <pre>&lt;leg:dates&gt;
    &lt;leg:effdate display-name="Fecha de entrada en vigor"&gt;
        &lt;date day="03" month="04" year="2013"&gt;03 de abril de 2013&lt;/date&gt;
    &lt;/leg:effdate&gt;
&lt;/leg:dates&gt;

<b>becomes</b>

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:effdate day="03" month="04" year="2013"&gt;
        &lt;date-text&gt;Fecha de entrada en vigor 03 de abril de 2013&lt;/date-text&gt;
    &lt;/primlawinfo:effdate&gt;
&lt;/primlawinfo:dates&gt;
</pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-12-05:<ph id="change_20141205_AS">Created</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\leg.effdate.dita  -->
	<xsl:message>AR03-Regulation_leg.effdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:effdate">

		<!--  Original Target XPath:  regulation:body/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate   -->
		<regulation:body>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<primlawinfo:effdate>
						<xsl:apply-templates select="@* | node()"/>
					</primlawinfo:effdate>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</regulation:body>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="date/@day">

		<!--  Original Target XPath:  primlawinfo:effdate/@day   -->
		<primlawinfo:effdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:effdate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  primlawinfo:effdate/@month   -->
		<primlawinfo:effdate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:effdate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  primlawinfo:effdate/@year   -->
		<primlawinfo:effdate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:effdate>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

</xsl:stylesheet>