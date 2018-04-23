<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.effdate">
  <title>leg:effdate <lnpid>id-ST03-26622</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:effdate</sourcexml> becomes <targetxml>primlawinfo:effdate</targetxml>.
        <ul>
          <li><sourcexml>date</sourcexml> becomes <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:effdate</targetxml> element and populated as below:
            <ul>
              <li><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:effdate/@day</targetxml></li>
              <li><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:effdate/@month</targetxml></li>
              <li><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:effdate/@year</targetxml></li>
            </ul>
          </li>
        </ul>
       <note>The formatting of the <targetxml>date-text</targetxml> should not be normalized to <b>YYYY-MM-DD</b>. The attributes are used for normalization, but the element <targetxml>primlawinfo:effdate</targetxml> content should remain the same.</note>
        <note>Multiple <sourcexml>date</sourcexml> elements occuring within <sourcexml>leg:effdate</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. Remaining <sourcexml>date</sourcexml> elements will be suppressed (not content) from conversion.</note>
        <note>If <sourcexml>leg:effdate</sourcexml> has only PCDTA then convert <sourcexml>leg:effdate</sourcexml> into <targetxml>primlawinfo:effdate</targetxml>.</note>
      </p>
    </section>
    <example>
     <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:effdate</sourcexml></title>
     <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:dates&gt;
   &lt;leg:effdate&gt;Passed: &lt;date day="10" month="07" year="1979"&gt;10 July 1979&lt;/date&gt;&lt;/leg:effdate&gt;
  &lt;/leg:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

     </codeblock>
     <b>Becomes</b>
     <title>UK TARGET XML 1: Mapping of <sourcexml>leg:effdate</sourcexml></title>
     <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;primlawinfo:dates&gt;
   &lt;primlawinfo:effdate year="1979" month="07" day="10"&gt;Passed: 
    &lt;date-text&gt;10 July 1979&lt;/date-text&gt;
   &lt;/primlawinfo:effdate&gt;
  &lt;/primlawinfo:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

     </codeblock>
    </example>
   <example>
    <title>UK SOURCE XML 2: Multiple <sourcexml>date</sourcexml> within <sourcexml>leg:effdate</sourcexml></title>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:dates&gt;
   &lt;leg:effdate&gt;Coming into 
    &lt;date day="16" month="02" year="2001"&gt;force&lt;/date&gt;
    &lt;date day="16" month="02" year="2001"&gt;     16th February 2001&lt;/date&gt;
   &lt;/leg:effdate&gt;
  &lt;/leg:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

    </codeblock>
    <b>Becomes</b>
    <title>UK TARGET XML 2: Multiple <sourcexml>date</sourcexml> within <sourcexml>leg:effdate</sourcexml></title>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;primlawinfo:dates&gt;
   &lt;primlawinfo:effdate year="2001" month="02" day="16"&gt;Coming into force 
    &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; 16th February 2001&lt;/date-text&gt;
   &lt;/primlawinfo:effdate&gt;
  &lt;/primlawinfo:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

    </codeblock>
   </example>
   <example>
    <title>CANADA SOURCE XML 3: Mapping of <sourcexml>leg:effdate</sourcexml></title>
    <codeblock>

&lt;leg:dates&gt;
 &lt;leg:effdate&gt;[eff since July 1, 2012](Current Version)&lt;/leg:effdate&gt;
&lt;/leg:dates&gt;
     
    </codeblock>
    <b>Becomes</b>
    <title>CANADA TARGET XML 3: Mapping of <sourcexml>leg:effdate</sourcexml></title>
    <codeblock>

&lt;primlawinfo:dates&gt;
 &lt;primlawinfo:effdate&gt;&amp;#x005B;eff since July 1, 2012&amp;#x005D;&amp;#x0028;Current Version&amp;#x0029;&lt;/primlawinfo:effdate&gt;
&lt;/primlawinfo:dates&gt;
     
    </codeblock>
   </example>
   <section>
    <title>Changes</title>
    <p>2013-08-14: <ph id="change_20130814_AB">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.effdate.dita  -->
	<xsl:message>legis-leg.effdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:effdate">

		<!--  Original Target XPath:  primlawinfo:effdate   -->
		<primlawinfo:effdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:effdate>

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

</xsl:stylesheet>