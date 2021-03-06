<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.enactdate">
  <title>leg:enactdate <lnpid>id-ST04-26818</lnpid></title>
  <body>
    <section>
		<ul>
										        <li>
          <p><sourcexml>leg:enactdate</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml> and children are described as below:</p>
          <ul>
            <li>
              <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:enactdate</targetxml> element and populated as below:</p>
              <ul>
                <li>
                  <p><sourcexml>date/@day</sourcexml>, <sourcexml>date/@month</sourcexml> and
                      <sourcexml>date/@year</sourcexml> becomes
                      <targetxml>primlawinfo:enactdate[@normdate="YYYY-MM-DD"]</targetxml> with
                    standard date format.</p>
                </li>
                </ul>
              <note>The format of the content of
                  <targetxml>primlawinfo:enactdate[@normdate]</targetxml> with attribute value must
                be in 'YYYY-MM-DD' and this format is used for sorting purpose.</note>
              <note>Multiple date elements occur within <sourcexml>leg:enactdate</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml> will be suppressed (not content) from conversion.</note>
              <note>If <sourcexml>leg:enactdate</sourcexml> has only PCDTA then convert <sourcexml>leg:enactdate</sourcexml> into <targetxml>primlawinfo:enactdate</targetxml>.</note>
              <pre>
                <b><i>Source example based on UK content</i></b>

&lt;leg:dates&gt;
    &lt;leg:enactdate&gt;
        &lt;date day="21" month="06" year="2011"&gt;Made&lt;/date&gt;
        &lt;date day="21" month="06" year="2011"&gt; 21st June 2011&lt;/date&gt;
    &lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;


	</pre>
                <pre>

              <b><i>Target Example</i></b>
                

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:enactdate normdate="2011-06-21"&gt;Made
            &lt;date-text&gt;&amp;#x00A0;21st June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:enactdate&gt;
&lt;/primlawinfo:primlawinfo&gt;

              </pre>
            </li>
          </ul>
        </li>
		</ul>
    </section> 
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.enactdate.dita  -->
	<xsl:message>Regulation_leg.enactdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:enactdate">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->
		<regulation:head>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<primlawinfo:enactdate>
						<xsl:apply-templates select="@* | node()"/>
					</primlawinfo:enactdate>
				</primlawinfo:dates>
			</primlawinfo:primlawinfo>
		</regulation:head>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="date/@day">

		<!--  Original Target XPath:  primlawinfo:enactdate[@normdate="YYYY-MM-DD"]   -->
		<primlawinfo:enactdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  primlawinfo:enactdate[@normdate="YYYY-MM-DD"]   -->
		<primlawinfo:enactdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  primlawinfo:enactdate[@normdate="YYYY-MM-DD"]   -->
		<primlawinfo:enactdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>

	</xsl:template>

</xsl:stylesheet>