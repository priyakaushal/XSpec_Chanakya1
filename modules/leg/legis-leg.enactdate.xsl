<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.enactdate">
  <title>leg:enactdate <lnpid>id-ST03-26624</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:enactdate</sourcexml> becomes <targetxml>primlawinfo:enactdate</targetxml>.
       <ul>
        <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:enactdate</targetxml> element.
         <ul>
          <li><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:enactdate/@day</targetxml></li>
          <li><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:enactdate/@month</targetxml></li>
          <li><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:enactdate/@year</targetxml></li>
         </ul>
        </li>
       </ul>
       <note>The formatting of the <targetxml>date-text</targetxml> should not be normalized to <b>YYYY-MM-DD</b>. The attributes are used for normalization, but the element <targetxml>primlawinfo:enactdate</targetxml> content should remain the same.</note>
       <note>Multiple <sourcexml>date</sourcexml> elements occur within
      <sourcexml>leg:enactdate</sourcexml> are mark-up errors and only the element around the actual
     date text will be used in conversion. And remaining <sourcexml>date</sourcexml> will be
     suppressed (not content) from conversion.</note>
    <note>If <sourcexml>leg:enactdate</sourcexml> has only PCDTA then convert
      <sourcexml>leg:enactdate</sourcexml> into <targetxml>primlawinfo:enactdate</targetxml>.</note>
   </p>
    </section>
    <example>
     <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:enactdate</sourcexml></title>
     <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:dates&gt;
   &lt;leg:enactdate&gt;Received Royal Assent: &lt;date day="23" month="05" year="1979"&gt;23 May 1979&lt;/date&gt;&lt;/leg:enactdate&gt;
  &lt;/leg:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

     </codeblock>
     <b>Becomes</b>
     <title>UK TARGET XML 1: Mapping of <sourcexml>leg:enactdate</sourcexml></title>
     <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;primlawinfo:dates&gt;
   &lt;primlawinfo:enactdate year="1979" month="05" day="23"&gt;Received Royal Assent: 
    &lt;date-text&gt;23 May 1979&lt;/date-text&gt;
   &lt;/primlawinfo:enactdate&gt;
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
    <title>UK SOURCE XML 2: Multiple <sourcexml>date</sourcexml> within <sourcexml>leg:enactdate</sourcexml></title>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:dates&gt;
   &lt;leg:enactdate&gt;
    &lt;date day="14" month="02" year="2001"&gt;Made&lt;/date&gt;
    &lt;date day="14" month="02" year="2001"&gt;     14th February 2001&lt;/date&gt;
   &lt;/leg:enactdate&gt;
  &lt;/leg:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

    </codeblock>
    <title>UK TARGET XML 2: Multiple <sourcexml>date</sourcexml> within <sourcexml>leg:enactdate</sourcexml></title>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;primlawinfo:dates&gt;
   &lt;primlawinfo:enactdate year="2001" month="02" day="14"&gt;Made
    &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0; 14th February 2001&lt;/date-text&gt;
   &lt;/primlawinfo:enactdate&gt;
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
    <title>UK SOURCE XML 3: When <sourcexml>leg:enactdate</sourcexml> has only PCDATA</title>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:dates&gt;
   &lt;leg:enactdate&gt;14/02/2001&lt;/leg:enactdate&gt;
  &lt;/leg:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

    </codeblock>
    <b>Becomes</b>
    <title>UK TARGET XML 3: When <sourcexml>leg:enactdate</sourcexml> has only PCDATA</title>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;primlawinfo:dates&gt;
   &lt;primlawinfo:enactdate&gt;14/02/2001&lt;/primlawinfo:enactdate&gt;
  &lt;/primlawinfo:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.enactdate.dita  -->
	<xsl:message>legis-leg.enactdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:enactdate">

		<!--  Original Target XPath:  primlawinfo:enactdate   -->
		<primlawinfo:enactdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>

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

</xsl:stylesheet>