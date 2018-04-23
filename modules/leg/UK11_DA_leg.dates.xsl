<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita dig leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_leg.dates">
  <title>leg:dates, leg:assentdate, leg:enactdate <lnpid>id-UK11DA-29426</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates</sourcexml> becomes
          <targetxml>abstract:head/primlawinfo:primlawinfo/primlawinfo:dates</targetxml> with
        children as follows:</p>
      <ul>
        <li><sourcexml>leg:assentdate</sourcexml> becomes
            <targetxml>primlawinfo:assentdate</targetxml>.<ul>
            <li>If child <sourcexml>date</sourcexml> present: <sourcexml>leg:assentdate/date[@day
                @month @year]</sourcexml> becomes <targetxml>primlawinfo:assentdate[@day @month
                @year]/date-text</targetxml>.</li>
          </ul></li>
        <li><sourcexml>leg:enactdate</sourcexml> becomes
            <targetxml>primlawinfo:enactdate</targetxml>.<ul>
            <li>If child <sourcexml>date</sourcexml> present: <sourcexml>leg:enactdate/date[@day
                @month @year]</sourcexml> becomes <targetxml>primlawinfo:enactdate[@day @month
                @year]/date-text</targetxml>.</li>
          </ul></li>
      </ul>
    </section>
    <note>The <sourcexml>date</sourcexml> attributes (@day @month @year) are optional. Expected in
      target only if present in source.</note>
    <note><sourcexml>leg:assentdate</sourcexml> and <sourcexml>leg:enactdate</sourcexml> may have
      attribute <sourcexml>@display-name</sourcexml>. The attribute is suppressed.</note>
    <note><targetxml>abstract:head</targetxml> is a required child of
        <targetxml>abstract:abstract</targetxml>. Source <sourcexml>dig:cite</sourcexml>,
        <sourcexml>leg:dates</sourcexml>, <sourcexml>leg:govoffice</sourcexml>,
        <sourcexml>leg:categories</sourcexml>, and <sourcexml>dig:type</sourcexml> map within
        <targetxml>abstract:head</targetxml>. If none is present, create
        <targetxml>abstract:head</targetxml> as an empty element.</note>
    <pre>
              <b><i>Example 1: child <sourcexml>date</sourcexml> without attributes</i></b>

<b><i>Source XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:dates&gt;
        &lt;leg:assentdate&gt;
          &lt;date&gt;1 May 2012&lt;/date&gt;
        &lt;/leg:assentdate&gt;
        &lt;leg:enactdate&gt;
          &lt;date&gt;In part on 2 May 2012; rest to be appointed&lt;/date&gt;
        &lt;/leg:enactdate&gt;
      &lt;/leg:dates&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 

<b><i>Target XML</i></b>
    
&lt;abstract:head&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:assentdate&gt;
        &lt;date-text&gt;1 May 2012&lt;/date-text&gt;
      &lt;/primlawinfo:assentdate&gt;
      &lt;primlawinfo:enactdate&gt;
        &lt;date-text&gt;In part on 2 May 2012; rest to be appointed&lt;/date-text&gt;
      &lt;/primlawinfo:enactdate&gt;
    &lt;/primlawinfo:dates&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/abstract:head&gt;

                </pre>
    <pre>
              <b><i>Example 2: child <sourcexml>date</sourcexml> with attributes</i></b>
                  <i>(Also illustrates pcdata plus <sourcexml>date</sourcexml>)</i>

<b><i>Source XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:dates&gt;
        &lt;leg:assentdate&gt;
          &lt;date day="01" month="05" year="2012"&gt;1 May 2012&lt;/date&gt;
        &lt;/leg:assentdate&gt;
        &lt;leg:enactdate&gt;In part on &lt;date day="02" month="05" year="2012"&gt;2 May 2012&lt;/date&gt;; 
                         rest to be appointed&lt;/leg:enactdate&gt;
      &lt;/leg:dates&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 

<b><i>Target XML</i></b>
    
&lt;abstract:head&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:assentdate day="01" month="05" year="2012"&gt;
        &lt;date-text&gt;1 May 2012&lt;/date-text&gt;
      &lt;/primlawinfo:assentdate&gt;
      &lt;primlawinfo:enactdate day="02" month="05" year="2012"&gt;In part on &lt;date-text&gt;2 May 2012&lt;/date-text&gt;; 
            rest to be appointed&lt;/primlawinfo:enactdate&gt;
    &lt;/primlawinfo:dates&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/abstract:head&gt;

                </pre>
    <pre>
              <b><i>Example 3: no child <sourcexml>date</sourcexml></i></b>
                <i>(Also illustrates <sourcexml>@display-name</sourcexml> suppressed)</i>

<b><i>Source XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:dates&gt;
        &lt;leg:assentdate display-name="Royal Assent Date"&gt;1 May 2012&lt;/leg:assentdate&gt;
        &lt;leg:enactdate display-name="Commencement date"&gt;In part on 2 May 2012; 
               rest to be appointed&lt;/leg:enactdate&gt;
      &lt;/leg:dates&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 

<b><i>Target XML</i></b>
    
&lt;abstract:head&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:assentdate&gt;1 May 2012&lt;/primlawinfo:assentdate&gt;
      &lt;primlawinfo:enactdate&gt;In part on 2 May 2012; rest to be appointed&lt;/primlawinfo:enactdate&gt;
    &lt;/primlawinfo:dates&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/abstract:head&gt;

                </pre>

    <section>
      <title>Changes</title>
      <p>2014-10-14: <ph id="change_20141014_jhm">Rules and examples modified to accommodate
          variations in Oct 2014 redelivery: semantic date without child date, semantic date with
          pcdata plus child date, child date with attributes.</ph></p>
      <p>2014-10-13: <ph id="change_20141013_jhm">Minor, not a rule change. Adjusted note about when
          to create empty abstract:head element. Updated list of source elements that convert to
          abstract:head.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_leg.dates.dita  -->
	 

  <xsl:template match="leg:dates">
    <primlawinfo:primlawinfo>
      <primlawinfo:dates>
        <xsl:apply-templates select="@* | node()"/>
      </primlawinfo:dates>
    </primlawinfo:primlawinfo>
    
  </xsl:template>
  
  <xsl:template match="leg:assentdate">
    <primlawinfo:assentdate>
      <xsl:apply-templates select="date/@*"/>
      <xsl:apply-templates select="@* | node()"/>
    </primlawinfo:assentdate>
  </xsl:template>
  
  
  
  <xsl:template match="leg:enactdate">
    <primlawinfo:enactdate>
      <xsl:apply-templates select="date/@*"/>
      <xsl:apply-templates select="node()"/>
    </primlawinfo:enactdate>
    
  </xsl:template>
  
  <xsl:template match="leg:assentdate/@display-name|leg:enactdate/@display-name"/>
  

	
	
	
</xsl:stylesheet>