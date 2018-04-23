<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
  <title>leg:dates <lnpid>id-UK22CS-36409</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates</sourcexml> becomes
                    <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates</targetxml>,
                and children are populated as below:</p>
      <ul>
        <li>
          <p><sourcexml>leg:enactdate</sourcexml> becomes
                            <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
                        and children are described as below:</p>
          <ul>
            <li>
              <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:enactdate</targetxml> element and populated as below:</p>
              <ul>
                <li>
                  <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:enactdate/@day</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:enactdate/@month</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:enactdate/@year</targetxml></p>
                </li>
              </ul>
              <note>The format of the content of <targetxml>primlawinfo:enactdate</targetxml> elements must be in 'YYYY-MM-DD'</note>
              <note>If <sourcexml>leg:enactdate</sourcexml> has only PCDTA then convert <sourcexml>leg:enactdate</sourcexml> into <targetxml>primlawinfo:enactdate</targetxml>.</note>
                <note>When we have CDATA in <sourcexml>date</sourcexml> or <sourcexml>primlawinfo:enactdate</sourcexml> element then CDATA
                                will comes under <targetxml>primlawinfo:enactdate</targetxml> in
                                target.</note>
              <pre>
&lt;leg:dates&gt;
    &lt;leg:enactdate&gt;Made &lt;date day="26" month="03" year="2001"&gt;26 March 2001&lt;/date&gt;&lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>
                
&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:enactdate day="26" month="03" year="2001"&gt;Made &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
    &lt;/primlawinfo:enactdate&gt;
&lt;/primlawinfo:dates&gt;
              </pre>
              
            </li>
          </ul>
        </li>
        <li>
          <p><sourcexml>leg:effdate</sourcexml> becomes
                            <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml>
                        and children are described as below:</p>
          <ul>
            <li>
              <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:effdate</targetxml> element and populated as below:</p>
              <ul>
                <li>
                  <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:effdate/@day</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:effdate/@month</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:effdate/@year</targetxml></p>
                </li>
              </ul>
              <note>The format of the content of <targetxml>primlawinfo:effdate</targetxml> elements must be in 'YYYY-MM-DD'</note>
              <note>Multiple date elements occur within <sourcexml>leg:effdate</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml> will be suppressed (not content) from conversion.</note>
              <note>If <sourcexml>leg:effdate</sourcexml> has only PCDTA then convert <sourcexml>leg:effdate</sourcexml> into <targetxml>primlawinfo:effdate</targetxml>.</note>
              <pre>
&lt;leg:dates&gt;
    &lt;leg:effdate&gt;Coming into force &lt;date day="31" month="03" year="2001"&gt;31 March
        2001&lt;/date&gt;&lt;/leg:effdate&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:effdate day="31" month="03" year="2001"&gt;Coming into force &lt;date-text&gt;31 March
            2001&lt;/date-text&gt;
    &lt;/primlawinfo:effdate&gt;
&lt;/primlawinfo:dates&gt;
              </pre>
            </li>
          </ul>
        </li>
        <li>
          <p><sourcexml>leg:laidline</sourcexml> becomes
                            <targetxml>seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate</targetxml>
                        and children are described as below:</p>
          <ul>
            <li>
              <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:presenteddate</targetxml> element and populated as below:</p>
              <ul>
                <li>
                  <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:presenteddate/@day</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:presenteddate/@month</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:presenteddate/@year</targetxml></p>
                </li>
              </ul>
              <note>The format of the content of <targetxml>primlawinfo:presenteddate</targetxml> elements must be in 'YYYY-MM-DD'</note>
              <note>Multiple date elements occur within <sourcexml>leg:laidline</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml> will be suppressed (not content) from conversion.</note>
              <note>If <sourcexml>leg:laidline</sourcexml> has only PCDTA then convert <sourcexml>leg:laidline</sourcexml> into <targetxml>primlawinfo:presenteddate</targetxml>.</note>
              <pre>
&lt;leg:dates&gt;
    &lt;leg:laidline&gt;Laid before the House of Commons &lt;date day="26" month="03" year="2001"
        &gt;26 March 2001&lt;/date&gt;&lt;/leg:laidline&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>
                
&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:presenteddate day="26" month="03" year="2001"&gt;Laid before the House of Commons 
        &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
    &lt;/primlawinfo:presenteddate&gt;
&lt;/primlawinfo:dates&gt;
              </pre>
              
            </li>
          </ul>
        </li>
      </ul>
      <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are used for normalization, but the element content should remain the same.</note>
      <note>Conversion should not create adjacent <targetxml>primlawinfo:dates</targetxml>. Data should be merged to single <targetxml>primlawinfo:dates</targetxml>.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2015-10-13: <ph id="change_20151013_HP">Created</ph></p>
    </section> 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\leg.dates.dita  -->
	<xsl:message>UK22CS_leg.dates.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:dates">

		<!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates   -->
		<seclaw:body>
			<seclaw:level>
				<seclaw:bodytext>
					<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
						<primlaw:level>
							<primlaw:levelinfo>
								<primlawinfo:primlawinfo>
									<primlawinfo:dates>
										<xsl:apply-templates select="@* | node()"/>
									</primlawinfo:dates>
								</primlawinfo:primlawinfo>
							</primlaw:levelinfo>
						</primlaw:level>
					</primlaw:excerpt>
				</seclaw:bodytext>
			</seclaw:level>
		</seclaw:body>

	</xsl:template>

	<xsl:template match="leg:enactdate">

		<!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
		<seclaw:body>
			<seclaw:level>
				<seclaw:bodytext>
					<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
						<primlaw:level>
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
					</primlaw:excerpt>
				</seclaw:bodytext>
			</seclaw:level>
		</seclaw:body>

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

	<xsl:template match="primlawinfo:enactdate">

		<!--  Original Target XPath:  primlawinfo:enactdate/@day   -->
		<primlawinfo:enactdate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlawinfo:enactdate>

	</xsl:template>

	<xsl:template match="leg:effdate">

		<!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate   -->
		<seclaw:body>
			<seclaw:level>
				<seclaw:bodytext>
					<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
						<primlaw:level>
							<primlaw:levelinfo>
								<primlawinfo:primlawinfo>
									<primlawinfo:dates>
										<primlawinfo:effdate>
											<xsl:apply-templates select="@* | node()"/>
										</primlawinfo:effdate>
									</primlawinfo:dates>
								</primlawinfo:primlawinfo>
							</primlaw:levelinfo>
						</primlaw:level>
					</primlaw:excerpt>
				</seclaw:bodytext>
			</seclaw:level>
		</seclaw:body>

	</xsl:template>

	<xsl:template match="leg:laidline">

		<!--  Original Target XPath:  seclaw:body/seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate   -->
		<seclaw:body>
			<seclaw:level>
				<seclaw:bodytext>
					<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
						<primlaw:level>
							<primlaw:levelinfo>
								<primlawinfo:primlawinfo>
									<primlawinfo:dates>
										<primlawinfo:presenteddate>
											<xsl:apply-templates select="@* | node()"/>
										</primlawinfo:presenteddate>
									</primlawinfo:dates>
								</primlawinfo:primlawinfo>
							</primlaw:levelinfo>
						</primlaw:level>
					</primlaw:excerpt>
				</seclaw:bodytext>
			</seclaw:level>
		</seclaw:body>

	</xsl:template>

</xsl:stylesheet>