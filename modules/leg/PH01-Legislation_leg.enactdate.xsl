<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.enactdate">
    <title>leg:enactdate <lnpid>id-PH01-33410</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:enactdate</sourcexml> becomes
                    <targetxml>legis:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>. <ul>
                    <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                        attributes will be moved in the parent
                            <targetxml>primlawinfo:enactdate</targetxml> element. <ul>
                            <li><sourcexml>date/@day</sourcexml> becomes
                                    <targetxml>primlawinfo:enactdate/@day</targetxml></li>
                            <li><sourcexml>date/@month</sourcexml> becomes
                                    <targetxml>primlawinfo:enactdate/@month</targetxml></li>
                            <li><sourcexml>date/@year</sourcexml> becomes
                                    <targetxml>primlawinfo:enactdate/@year</targetxml></li>
                            <li>Drop <sourcexml>@display-name</sourcexml>  and
                                    <sourcexml>@ln.user-displayed</sourcexml> attribute from
                                    <sourcexml>leg:enactdate</sourcexml>.</li>
                        </ul>
                    </li>
                </ul>
                <note>
                    <p>The formatting of the <targetxml>date-text</targetxml> should not be
                        normalized to <b>YYYY-MM-DD</b>. The attributes are used for normalization,
                        but the element <targetxml>primlawinfo:enactdate</targetxml> content should
                        remain the same.</p>
                </note></p>
            
            <pre>
&lt;leg:dates&gt;
    &lt;leg:enactdate display-name="Enactment date" ln.user-displayed="false"&gt;
        &lt;date day="03" month="10" year="1900"&gt;3 October 1900&lt;/date&gt;
    &lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;

<b>becomes</b>

&lt;legis:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;primlawinfo:dates&gt;
                    &lt;primlawinfo:enactdate year="1900" month="10" day="3"&gt;
                        &lt;date-text&gt;3 October 1900&lt;/date-text&gt;
                    &lt;/primlawinfo:enactdate&gt;
                &lt;/primlawinfo:dates&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
&lt;/legis:body&gt;
</pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-08-07: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH01-Legislation\leg.enactdate.dita  -->
	<xsl:message>PH01-Legislation_leg.enactdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:enactdate">

		<!--  Original Target XPath:  legis:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
		<legis:body>
			<primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo>
						<primlawinfo:dates>
							<primlawinfo:enactdate>
								<xsl:apply-templates select="@* | node()"/>
							</primlawinfo:enactdate>
						</primlawinfo:dates>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			</primlaw:level>
		</legis:body>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="date/@day">

		<!--  Original Target XPath:  primlawinfo:enactdate/@day   -->
		<primlawinfo:enactdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:enactdate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  primlawinfo:enactdate/@month   -->
		<primlawinfo:enactdate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:enactdate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  primlawinfo:enactdate/@year   -->
		<primlawinfo:enactdate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:enactdate>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

</xsl:stylesheet>