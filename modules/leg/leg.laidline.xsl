<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.laidline">
  <title>leg:laidline <lnpid>id-ST04-26829</lnpid></title>
  <body>
    <section>

						

          <p><sourcexml>leg:laidline</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate</targetxml> and children are described as below:</p>
          <ul>
            <li>
              <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:presenteddate</targetxml> element and populated as below:</p>
              <ul>
                <li>
                    <p><sourcexml>date/@day</sourcexml>, <sourcexml>date/@month</sourcexml> and <sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:presenteddate[@normdate]</targetxml> with attrubute must be in "YYYY-MM-DD". </p>
                </li>
              </ul>
              <note>The format of the content of
                            <targetxml>primlawinfo:presenteddate[@normdate]</targetxml> with
                        attribute value must be in 'YYYY-MM-DD' and this format is used for sorting
                        purposes.</note>
              <note>Multiple date elements occur within <sourcexml>leg:laidline</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml> will be suppressed (not content) from conversion.</note>
              <note>If <sourcexml>leg:laidline</sourcexml> has only PCDTA then convert <sourcexml>leg:laidline</sourcexml> into <targetxml>primlawinfo:presenteddate</targetxml>.</note>
              <pre>
                   <b><i>Source example based on UK content</i></b>

&lt;leg:dates&gt;
    &lt;leg:laidline&gt;Laid before Parliament &lt;date day="28" month="06" year="2011"&gt;28th June 2011&lt;/date&gt;&lt;/leg:laidline&gt;
&lt;/leg:dates&gt;



	</pre>
                <pre>

              <b><i>Target Example</i></b>
                

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        ..........
        &lt;primlawinfo:presenteddate normdate="2011-06-28"&gt;Laid before Parliament&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
            &lt;date-text&gt;28th June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
        ............
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;

              </pre>
              
            </li>
          </ul>
     
     
      <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are used for normalization, but the element content should remain the same.</note>
      <p>If multiple <sourcexml>leg:dates</sourcexml> elements occur within <sourcexml>leg:info</sourcexml> element, then conversion need to create single instance of <targetxml>primlawinfo:dates</targetxml> during conversion and all children will be populated within it. Please see below example:</p>
      <pre>
          <b><i>Source example based on UK content</i></b>

&lt;leg:info&gt;
    ........
    &lt;leg:dates&gt;
        &lt;leg:enactdate&gt;
            &lt;date day="21" month="06" year="2011"&gt;Made&lt;/date&gt;
            &lt;date day="21" month="06" year="2011"&gt;     21st June 2011&lt;/date&gt;
        &lt;/leg:enactdate&gt;
    &lt;/leg:dates&gt;
    &lt;leg:dates&gt;
        &lt;leg:laidline&gt;Laid before Parliament     &lt;date day="28" month="06" year="2011"&gt;28th June 2011&lt;/date&gt;
        &lt;/leg:laidline&gt;
    &lt;/leg:dates&gt;
    &lt;leg:dates&gt;
        &lt;leg:effdate&gt;Coming into &lt;date day="25" month="07" year="2011"&gt;force&lt;/date&gt;
            &lt;date day="25" month="07" year="2011"&gt;     25th July 2011&lt;/date&gt;
        &lt;/leg:effdate&gt;
    &lt;/leg:dates&gt;
    ........
&lt;/leg:info&gt;


	</pre>
                <pre>

              <b><i>Target Example</i></b>
        

&lt;primlawinfo:primlawinfo&gt;
    ........
    &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:enactdate year="2011" month="06" day="21"&gt;Made
            &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;21st June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:enactdate&gt;
        &lt;primlawinfo:presenteddate year="2011" month="06" day="28"&gt;Laid before Parliament&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
            &lt;date-text&gt;28th June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
        &lt;primlawinfo:effdate year="2011" month="07" day="25"&gt;Coming into force
            &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;25th July 2011&lt;/date-text&gt;
        &lt;/primlawinfo:effdate&gt;
    &lt;/primlawinfo:dates&gt;
    ........
&lt;/primlawinfo:primlawinfo&gt;

        
      </pre>
      <note>Conversion should not create adjacent <targetxml>primlawinfo:dates</targetxml>. Data should be merged to single <targetxml>primlawinfo:dates</targetxml>.</note>
    </section> 
      <section>
          <title>Changes</title>
          <p>YYYY-MM-DD: ______________________________________________________________________.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.laidline.dita  -->
	<xsl:message>leg.laidline.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:laidline">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate   -->
		<regulation:head>
			<primlawinfo:primlawinfo>
				<primlawinfo:dates>
					<primlawinfo:presenteddate>
						<xsl:apply-templates select="@* | node()"/>
					</primlawinfo:presenteddate>
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

		<!--  Original Target XPath:  primlawinfo:presenteddate[@normdate]   -->
		<primlawinfo:presenteddate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:presenteddate>

	</xsl:template>

	<xsl:template match="date/@month">

		<!--  Original Target XPath:  primlawinfo:presenteddate[@normdate]   -->
		<primlawinfo:presenteddate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:presenteddate>

	</xsl:template>

	<xsl:template match="date/@year">

		<!--  Original Target XPath:  primlawinfo:presenteddate[@normdate]   -->
		<primlawinfo:presenteddate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:presenteddate>

	</xsl:template>

	<xsl:template match="leg:dates">

		<!--  Original Target XPath:  primlawinfo:dates   -->
		<primlawinfo:dates>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:dates>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlawinfo:dates   -->
		<primlawinfo:dates>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:dates>

	</xsl:template>

</xsl:stylesheet>