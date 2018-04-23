<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
  <title>leg:dates <lnpid>id-MY06-17211</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:dates</sourcexml> becomes <targetxml>primlawinfo:dates</targetxml> which will be the child of <targetxml>regulation:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/</targetxml>. And rest children are populated as below:</p>
      <ul>
        <li>
          <p><sourcexml>leg:enactdate</sourcexml> becomes <targetxml>/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml> and children are described as below:</p>
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
              <pre>

&lt;leg:dates&gt;
    &lt;leg:enactdate ln.user-displayed="false"&gt;
        &lt;date day="01" month="01" year="1961"&gt;01 January 1961&lt;/date&gt;
    &lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;


<b>Becomes</b>
                

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:enactdate day="01" month="01" year="1961" normdate="1961-01-01"/&gt;
&lt;/primlawinfo:dates&gt;

              </pre>
            </li>
          </ul>
        </li>
        <li>
          <p><sourcexml>leg:assentdate</sourcexml> becomes <targetxml>primlawinfo:assentdate</targetxml> and children are described as below:</p>
          <ul>
            <li>
              <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:assentdate</targetxml> element and populated as below:</p>
              <ul>
                <li>
                  <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:assentdate/@day</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:assentdate/@month</targetxml></p>
                </li>
                <li>
                  <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:assentdate/@year</targetxml></p>
                </li>
              </ul>
              <note>If <sourcexml>leg:assentdate</sourcexml> has only PCDTA then convert <sourcexml>leg:assentdate</sourcexml> into <targetxml>primlawinfo:assentdate</targetxml>.</note> 
              <note>The format of the content of <targetxml>primlawinfo:assentdate</targetxml> elements must be in 'YYYY-MM-DD'</note>
              <pre>

&lt;leg:dates&gt;
    &lt;leg:assentdate&gt;
        &lt;date day="01" month="01" year="1964"&gt;01 January 1964&lt;/date&gt;
    &lt;/leg:assentdate&gt;
&lt;/leg:dates&gt;


<b>Becomes</b>
                

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:assentdate day="01" month="01" year="1964" normdate="1964-01-01"&gt;
        &lt;date&gt;01 January 1964&lt;/date&gt;
    &lt;/primlawinfo:assentdate&gt;
&lt;/primlawinfo:dates&gt;

              </pre>
            </li>
          </ul>
        </li>
      </ul>
      <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are used for normalization, but the element content should remain the same.</note>
      <note>Conversion should not create adjacent <targetxml>primlawinfo:dates</targetxml>. Data should be merged to single <targetxml>primlawinfo:dates</targetxml>.</note>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY06_Regulations\leg.dates.dita  -->
<!--	<xsl:message>MY06_Regulations_leg.dates.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:dates">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="leg:dates/leg:enactdate">
  <xsl:choose>
    <xsl:when test="child::date">
      <xsl:apply-templates select="node()"/>  
    </xsl:when>
    <xsl:otherwise>
      <primlawinfo:enactdate>
      </primlawinfo:enactdate>
    </xsl:otherwise>
  </xsl:choose>  
    
    
  </xsl:template>
  
  <xsl:template match="leg:dates/leg:enactdate/date">
    <primlawinfo:enactdate>
      <xsl:apply-templates select="@*"/>
      <xsl:attribute name="normdate">
        <xsl:value-of select="concat(@year, '-', @month, '-', @day)"/>
      </xsl:attribute>
      <xsl:if test="parent::leg:enactdate[not(attribute::ln.user-displayed = 'false')]">
        <date-text>
          <xsl:apply-templates/>
        </date-text>
      </xsl:if>
    </primlawinfo:enactdate>
  </xsl:template>
  
  <xsl:template match="leg:dates/leg:assentdate">
    
    <xsl:apply-templates select="node()"/>
    
  </xsl:template>
  
  <xsl:template match="leg:dates/leg:assentdate/date">
    <primlawinfo:assentdate>
      <xsl:apply-templates select="@*"/>
      <xsl:attribute name="normdate">
        <xsl:value-of select="concat(@year, '-', @month, '-', @day)"/>
      </xsl:attribute>
      <xsl:if test="parent::leg:assentdate[not(attribute::ln.user-displayed = 'false')]">
        <date-text>
          <xsl:apply-templates/>
        </date-text>
      </xsl:if>
    </primlawinfo:assentdate>
  </xsl:template>
  
  <xsl:template match="date/@day|date/@month|date/@year">
    <xsl:copy-of select="."/>
  </xsl:template>

</xsl:stylesheet>