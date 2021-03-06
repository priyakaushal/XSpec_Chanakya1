<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.effdate">
    <title>leg:effdate <lnpid>id-AR02-35011</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:effdate</sourcexml> becomes
                    <targetxml>legis:body/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml>. <ul>
                    <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                        attributes will be moved in the parent
                            <targetxml>primlawinfo:effdate</targetxml> element. <ul>
                            <li><sourcexml>date/@day</sourcexml> becomes
                                    <targetxml>primlawinfo:effdate/@day</targetxml></li>
                            <li><sourcexml>date/@month</sourcexml> becomes
                                    <targetxml>primlawinfo:effdate/@month</targetxml></li>
                            <li><sourcexml>date/@year</sourcexml> becomes
                                    <targetxml>primlawinfo:effdate/@year</targetxml></li>
                        </ul> Drop <sourcexml>@display-name</sourcexml> attribute from
                            <sourcexml>leg:effdate</sourcexml>.</li>
                </ul></p>
            <p>the value of attribute <sourcexml>@display-name</sourcexml> will be a part of
                    <targetxml>date-text</targetxml> element.</p>
            <pre>

&lt;leg:dates&gt;
    &lt;leg:effdate display-name="Sanción:"&gt;&lt;date&gt; 22/10/98&lt;/date&gt;&lt;/leg:effdate&gt;
&lt;/leg:dates&gt;


	</pre>
	<pre>
<b>becomes</b>

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:effdate day="22" month="10" year="0098"&gt;
        &lt;date-text&gt;Sanción: 22/10/98&lt;/date-text&gt;
    &lt;/primlawinfo:effdate&gt;
&lt;/primlawinfo:dates&gt;

	</pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-12-05: <ph id="change_20141205_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR02-Statcode\leg.effdate.dita  -->
	<xsl:message>AR02-Statcode_leg.effdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:effdate">

		<!--  Original Target XPath:  legis:body/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate   -->
		<legis:body>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<primlawinfo:effdate>
						<xsl:apply-templates select="@* | node()"/>
					</primlawinfo:effdate>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</legis:body>

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