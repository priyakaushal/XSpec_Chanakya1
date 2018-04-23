<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  version="2.0" exclude-result-prefixes="dita leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
    <title>
      <sourcexml>leg:dates</sourcexml>
      <lnpid>id-UK22CF-39009</lnpid>
    </title>
    <body>
      <section>
        <p><sourcexml>leg:dates</sourcexml> becomes
            <targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates</targetxml>,
          and children are populated as below:</p>
        <ul>
          <li>
            <p><sourcexml>leg:enactdate</sourcexml> becomes
                <targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
              and children are described as below:</p>
            <ul>
              <li>
                <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                  attributes will be moved in the parent
                    <targetxml>primlawinfo:enactdate</targetxml> element and populated as below:</p>
                <ul>
                  <li>
                    <p><sourcexml>date/@day</sourcexml> becomes
                        <targetxml>primlawinfo:enactdate/@day</targetxml></p>
                  </li>
                  <li>
                    <p><sourcexml>date/@month</sourcexml> becomes
                        <targetxml>primlawinfo:enactdate/@month</targetxml></p>
                  </li>
                  <li>
                    <p><sourcexml>date/@year</sourcexml> becomes
                        <targetxml>primlawinfo:enactdate/@year</targetxml></p>
                    <p>
                      <b>Populating the attribute <targetxml>@normdate</targetxml></b>
                      <ul>
                        <li>If one or more of the three date values (year, month or day) are absent,
                          then <targetxml>primlawinfo:enactdate/@normdate</targetxml> should not be
                          populated.</li>
                        <li>The <targetxml>@normdate</targetxml> should be populated with the values
                          of date elements within New Lexis. </li>
                        <li>Using <sourcexml>leg:enactdate</sourcexml> as an example:
                          leg:enactdate/date/@year, leg:enactdate/date/@month and
                          leg:enactdate/date/@day concatenated and separated by a single hyphen. The
                          values of leg:enactdate/date/@month and leg:enactdate/date/@day should be
                          padded with zeroes so that they are 2 digits. </li>
                        <li>The format of the content of all <targetxml>date</targetxml> elements
                          must be in 'YYYY-MM-DD'.</li>
                      </ul>
                    </p>

                  </li>
                </ul>
                <note>The format of the content of <targetxml>primlawinfo:enactdate</targetxml>
                  elements must be in 'YYYY-MM-DD'</note>
                <note>If <sourcexml>leg:enactdate</sourcexml> has only PCDTA then convert
                    <sourcexml>leg:enactdate</sourcexml> into
                    <targetxml>primlawinfo:enactdate</targetxml>.</note>
                <note>When we have CDATA in <sourcexml>date</sourcexml> or
                    <sourcexml>primlawinfo:enactdate</sourcexml> element then CDATA will comes under
                    <targetxml>primlawinfo:enactdate</targetxml> in target.</note>
                <pre>
&lt;leg:dates&gt;
    &lt;leg:enactdate&gt;Made &lt;date day="26" month="03" year="2001"&gt;26 March 2001&lt;/date&gt;&lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>
                
&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:enactdate day="26" month="03" year="2001" normdate="2001-03-26"&gt;Made &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
    &lt;/primlawinfo:enactdate&gt;
&lt;/primlawinfo:dates&gt;
              </pre>

              </li>
            </ul>
          </li>
          <li>
            <p><sourcexml>leg:effdate</sourcexml> becomes
                <targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml>
              and children are described as below:</p>
            <ul>
              <li>
                <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                  attributes will be moved in the parent <targetxml>primlawinfo:effdate</targetxml>
                  element and populated as below:</p>
                <ul>
                  <li>
                    <p><sourcexml>date/@day</sourcexml> becomes
                        <targetxml>primlawinfo:effdate/@day</targetxml></p>
                  </li>
                  <li>
                    <p><sourcexml>date/@month</sourcexml> becomes
                        <targetxml>primlawinfo:effdate/@month</targetxml></p>
                  </li>
                  <li>
                    <p><sourcexml>date/@year</sourcexml> becomes
                        <targetxml>primlawinfo:effdate/@year</targetxml></p>
                    <p>
                      <b>Populating the attribute <targetxml>@normdate</targetxml></b>
                      <ul>
                        <li>If one or more of the three date values (year, month or day) are absent,
                          then <targetxml>primlawinfo:enactdate/@normdate</targetxml> should not be
                          populated.</li>
                        <li>The <targetxml>@normdate</targetxml> should be populated with the values
                          of date elements within New Lexis. </li>
                        <li>Using <sourcexml>leg:enactdate</sourcexml> as an example:
                          leg:enactdate/date/@year, leg:enactdate/date/@month and
                          leg:enactdate/date/@day concatenated and separated by a single hyphen. The
                          values of leg:enactdate/date/@month and leg:enactdate/date/@day should be
                          padded with zeroes so that they are 2 digits. </li>
                        <li>The format of the content of all <targetxml>date</targetxml> elements
                          must be in 'YYYY-MM-DD'.</li>
                      </ul>
                    </p>
                  </li>
                </ul>
                <note>The format of the content of <targetxml>primlawinfo:effdate</targetxml>
                  elements must be in 'YYYY-MM-DD'</note>
                <note>Multiple date elements occur within <sourcexml>leg:effdate</sourcexml> are
                  mark-up errors and only the element around the actual date text will be used in
                  conversion. And remaining <sourcexml>date</sourcexml> will be suppressed (not
                  content) from conversion.</note>
                <note>If <sourcexml>leg:effdate</sourcexml> has only PCDTA then convert
                    <sourcexml>leg:effdate</sourcexml> into
                    <targetxml>primlawinfo:effdate</targetxml>.</note>
                <pre>
&lt;leg:dates&gt;
    &lt;leg:effdate&gt;Coming into force &lt;date day="31" month="03" year="2001"&gt;31 March
        2001&lt;/date&gt;&lt;/leg:effdate&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:effdate day="31" month="03" year="2001" normdate="2001-03-31"&gt;Coming into force &lt;date-text&gt;31 March
            2001&lt;/date-text&gt;
    &lt;/primlawinfo:effdate&gt;
&lt;/primlawinfo:dates&gt;
              </pre>
              </li>
            </ul>
          </li>
          <li>
            <p><sourcexml>leg:laidline</sourcexml> becomes
                <targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate</targetxml>
              and children are described as below:</p>
            <ul>
              <li>
                <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the
                  attributes will be moved in the parent
                    <targetxml>primlawinfo:presenteddate</targetxml> element and populated as
                  below:</p>
                <ul>
                  <li>
                    <p><sourcexml>date/@day</sourcexml> becomes
                        <targetxml>primlawinfo:presenteddate/@day</targetxml></p>
                  </li>
                  <li>
                    <p><sourcexml>date/@month</sourcexml> becomes
                        <targetxml>primlawinfo:presenteddate/@month</targetxml></p>
                  </li>
                  <li>
                    <p><sourcexml>date/@year</sourcexml> becomes
                        <targetxml>primlawinfo:presenteddate/@year</targetxml></p>
                  </li>
                </ul>
                <p>
                  <b>Populating the attribute <targetxml>@normdate</targetxml></b>
                  <ul>
                    <li>If one or more of the three date values (year, month or day) are absent,
                      then <targetxml>primlawinfo:enactdate/@normdate</targetxml> should not be
                      populated.</li>
                    <li>The <targetxml>@normdate</targetxml> should be populated with the values of
                      date elements within New Lexis. </li>
                    <li>Using <sourcexml>leg:enactdate</sourcexml> as an example:
                      leg:enactdate/date/@year, leg:enactdate/date/@month and
                      leg:enactdate/date/@day concatenated and separated by a single hyphen. The
                      values of leg:enactdate/date/@month and leg:enactdate/date/@day should be
                      padded with zeroes so that they are 2 digits. </li>
                    <li>The format of the content of all <targetxml>date</targetxml> elements must
                      be in 'YYYY-MM-DD'.</li>
                  </ul>
                </p>
                <note>The format of the content of <targetxml>primlawinfo:presenteddate</targetxml>
                  elements must be in 'YYYY-MM-DD'</note>
                <note>Multiple date elements occur within <sourcexml>leg:laidline</sourcexml> are
                  mark-up errors and only the element around the actual date text will be used in
                  conversion. And remaining <sourcexml>date</sourcexml> will be suppressed (not
                  content) from conversion.</note>
                <note>If <sourcexml>leg:laidline</sourcexml> has only PCDTA then convert
                    <sourcexml>leg:laidline</sourcexml> into
                    <targetxml>primlawinfo:presenteddate</targetxml>.</note>
                <pre>
&lt;leg:dates&gt;
    &lt;leg:laidline&gt;Laid before the House of Commons &lt;date day="26" month="03" year="2001"
        &gt;26 March 2001&lt;/date&gt;&lt;/leg:laidline&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>
                
&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:presenteddate day="26" month="03" year="2001" normdate="2001-03-26"&gt;Laid before the House of Commons 
        &lt;date-text&gt;26 March 2001&lt;/date-text&gt;
    &lt;/primlawinfo:presenteddate&gt;
&lt;/primlawinfo:dates&gt;
              </pre>

              </li>
            </ul>
          </li>
        </ul>
        <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes
          are used for normalization, but the element content should remain the same.</note>
        <note>Conversion should not create adjacent <targetxml>primlawinfo:dates</targetxml>. Data
          should be merged to single <targetxml>primlawinfo:dates</targetxml>.</note>
      </section>
      <section>
        <title>Changes</title>
        <p>2016-10-28 <ph id="change_20161028_SS">Added instruction for
              <targetxml>@normdate</targetxml> attribute that falls on various NL date
            elements.</ph></p>
        <p>2016-09-19: <ph id="change_20160919_RS">Created</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\leg.dates.dita  -->

  <xsl:template match="leg:dates">

    <!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates   -->

      
                <primlawinfo:dates>
                  <xsl:apply-templates select="@* | node()"/>
                </primlawinfo:dates>
    


  </xsl:template>

  <xsl:template match="leg:enactdate">

    <!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate   -->

    <primlawinfo:enactdate>
      <xsl:if test="./date/@day and ./date/@month and ./date/@year">
        <xsl:attribute name="normdate" select="concat(./date/@year, '-', ./date/@month, '-', ./date/@day)"/>
      </xsl:if>
      <xsl:apply-templates select="@* | node()"/>
    </primlawinfo:enactdate>

  </xsl:template>

  
  
  <xsl:template match="leg:effdate">

    <!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate   -->   
             
    <primlawinfo:effdate>
      <xsl:if test="./date/@day and ./date/@month and ./date/@year">
        <xsl:attribute name="normdate" select="concat(./date/@year, '-', ./date/@month, '-', ./date/@day)"/>
      </xsl:if>
        <xsl:apply-templates select="@* | node()"/>
    </primlawinfo:effdate>                  

  </xsl:template>

  <xsl:template match="leg:laidline">

    <!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate   -->
  
                    <primlawinfo:presenteddate>
                      <xsl:if test="./date/@day and ./date/@month and ./date/@year">
                        <xsl:attribute name="normdate" select="concat(./date/@year, '-', ./date/@month, '-', ./date/@day)"/>
                      </xsl:if>
                      <xsl:apply-templates select="@* | node()"/>
                    </primlawinfo:presenteddate>

  </xsl:template>

  <xsl:template match="@day">
    <xsl:copy-of select="."/>
  </xsl:template>
  
  <xsl:template match="@month">
    <xsl:copy-of select="."/>
  </xsl:template>
  
  <xsl:template match="@year">
    <xsl:copy-of select="."/>
  </xsl:template>

</xsl:stylesheet>
