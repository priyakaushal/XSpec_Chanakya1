<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.miscdate">
    <title>leg:miscdate <lnpid>id-AR01-34418</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:miscdate</sourcexml> becomes
                <targetxml>legis:body/primlawinfo:primlawinfo/primlawinfo:dates/miscdate</targetxml> with required attribute <targetxml>@datetype="miscdate"</targetxml>. 
                <ul>
                    <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                        attributes will be moved in the parent <targetxml>miscdate</targetxml>
                        element. <ul>
                            <li><sourcexml>date/@day</sourcexml> becomes
                                    <targetxml>miscdate/@day</targetxml></li>
                            <li><sourcexml>date/@month</sourcexml> becomes
                                    <targetxml>miscdate/@month</targetxml></li>
                            <li><sourcexml>date/@year</sourcexml> becomes
                                    <targetxml>miscdate/@year</targetxml></li>
                        </ul> Drop <sourcexml>@display-name</sourcexml> attribute from
                            <sourcexml>leg:miscdate</sourcexml>.</li>
                </ul></p>
            <p>the value of attribute <sourcexml>@display-name</sourcexml> will be a part of
                    <targetxml>date-text</targetxml> element.</p>
            <pre>

&lt;leg:dates&gt;
    &lt;leg:miscdate display-name="BOLETIN OFICIAL,"&gt;
        &lt;date year="1967" month="12" day="11"&gt; 11 de Diciembre de 1967&lt;/date&gt;
    &lt;/leg:miscdate&gt;
&lt;/leg:dates&gt;


	</pre>
	<pre>
<b>becomes</b>

&lt;primlawinfo:dates&gt;
    &lt;miscdate datetype="miscdate" day="11" month="12" year="1967"&gt;
        &lt;date-text&gt;BOLETIN OFICIAL, 11 de Diciembre de 1967&lt;/date-text&gt;
    &lt;/miscdate&gt;
&lt;/primlawinfo:dates&gt;

	</pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-12-05: <ph id="change_20141205_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR01-Legislation\leg.miscdate.dita  -->
	<xsl:message>AR01-Legislation_leg.miscdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:miscdate">

		<!--  Original Target XPath:  legis:body/primlawinfo:primlawinfo/primlawinfo:dates/miscdate   -->
		<legis:body>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<primlawinfo:dates>
					<miscdate>
						<xsl:apply-templates select="@* | node()"/>
					</miscdate>
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

		<!--  Original Target XPath:  miscdate/@day   -->
		<miscdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</miscdate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  miscdate/@month   -->
		<miscdate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</miscdate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  miscdate/@year   -->
		<miscdate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</miscdate>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

</xsl:stylesheet>