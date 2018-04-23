<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.dates">
  <title>case:dates <lnpid>id-AU13-20430</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:dates</sourcexml> becomes
            <targetxml>/compcase:head/compcase:caseinstanceinfo/decision:dates</targetxml>
          <ul>
            <li>
              <sourcexml>case:hearingdates</sourcexml> becomes
                <targetxml>decision:dates/decision:argueddate</targetxml>
              <note>This likely not a complete date, rather just a day. Do not attempt to place a
                complete date if there is not sufficient content in source (year, month and day). It
                should remain PCDATA. See example.</note>
            </li>
            <li>
              <sourcexml>case:decisiondate</sourcexml> becomes
                <targetxml>decision:dates/decision:decisiondate</targetxml> populated with below
              mentioned attributes: <sourcexml>case:decisiondate/date/@day</sourcexml> becomes
                <targetxml>decision:decisiondate/@day</targetxml>,
                <sourcexml>case:decisiondate/date/@month</sourcexml> becomes
                <targetxml>decision:decisiondate/@month</targetxml> and
                <sourcexml>case:decisiondate/date/@year</sourcexml> becomes
                <targetxml>decision:decisiondate/@year</targetxml>
              <p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be
                populated with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
                  <sourcexml>case:decisiondate/date/@month</sourcexml> and
                  <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a
                single hyphen. The values of <sourcexml>case:decisiondate/date/@month</sourcexml>
                and <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes
                so that they are 2 digits. <note>If one or more of the three date values (year,
                  month or day) are absent, then
                    <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
                  populated.</note>
              </p>
              <ul>
                <li>
                  <sourcexml>date</sourcexml> becomes
                    <targetxml>decision:dates/decision:decisiondate/date-text</targetxml>
                </li>
              </ul>
              <pre xml:space="preserve">

  &lt;case:dates&gt;
    &lt;case:hearingdates&gt;8, &lt;/case:hearingdates&gt;
    &lt;case:decisiondate&gt;
      &lt;date day="20" month="05" year="2009"&gt;20 May 2009&lt;/date&gt;
    &lt;/case:decisiondate&gt;
  &lt;/case:dates&gt;
<b>Becomes</b>

  &lt;decision:dates&gt;
    &lt;decision:argueddate&gt;8, &lt;/decision:argueddate&gt;
    &lt;decision:decisiondate day="20" month="05" year="2009" normdate="2009-05-20"&gt;
      &lt;date-text&gt;20 May 2009&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
  &lt;/decision:dates&gt;
</pre>
            </li>

            <li>
              <b>Example where complete date occurs within case:hearingdate:</b>
              <sourcexml>case:hearingdates</sourcexml> becomes
                <targetxml>decision:dates/decision:argueddate</targetxml> populated with below
              mentioned attributes: <sourcexml>case:hearingdates/date/@day</sourcexml> becomes
                <targetxml>decision:argueddate/@day</targetxml>,
                <sourcexml>case:hearingdates/date/@month</sourcexml> becomes
                <targetxml>decision:argueddate/@month</targetxml> and
                <sourcexml>case:hearingdates/date/@year</sourcexml> becomes
                <targetxml>decision:argueddate/@year</targetxml>
              <ul>
                <li>
                  <sourcexml>date</sourcexml> becomes
                    <targetxml>decision:dates/decision:argueddate/date-text</targetxml>
                </li>
              </ul>
              <pre xml:space="preserve">

&lt;case:hearingdates&gt;
  &lt;date day="12" month="05" year="2000"&gt;12 May 2000&lt;/date&gt;
&lt;/case:hearingdates&gt;

<b>Becomes</b>

&lt;decision:argueddate day="12" month="05" year="2000"&gt;
  &lt;date-text&gt;12 May 2000&lt;/date-text&gt;
&lt;/decision:argueddate&gt;
</pre>
              <note>when <sourcexml>@ln.user-displayed="false“</sourcexml> appears on a date element
                (i.e, <sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml>), that
                element is translated into the target but with the element content omitted. Only the
                attributes are populated. So there is no display content.</note>
              <pre xml:space="preserve">

&lt;case:dates&gt;
  &lt;case:decisiondate ln.user-displayed="false"&gt;
    &lt;date year="1995" month="04" day="28"&gt;28 April 1995&lt;/date&gt; 
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>

&lt;decision:dates&gt;  
  &lt;decision:decisiondate day="28" month="04" year="1995" normdate="1995-04-28"/&gt;
&lt;/decision:dates&gt;

</pre>
            </li>
            <li>If <sourcexml>case:hearingdates</sourcexml> has multiple <sourcexml>date</sourcexml>
              children, then each <sourcexml>date</sourcexml> should become
                <targetxml>decision:arguedate</targetxml>. If there are punctuation marks between
                <sourcexml>date</sourcexml> elements, then each punctuation mark should be
              associated with the <sourcexml>date</sourcexml> that precedes it.
              <pre xml:space="preserve">
&lt;case:hearingdates&gt;
  &lt;date day="02" month="03" year="1900"&gt;2&lt;/date&gt;, 
  &lt;date day="03" month="03" year="1900"&gt;3 March&lt;/date&gt;;
&lt;/case:hearingdates&gt;

<b>Becomes</b>

&lt;decision:dates&gt;
  &lt;decision:argueddate day="02" month="03" year="1900"&gt;&lt;date-text&gt;2&lt;/date-text&gt;, &lt;/decision:arguedate&gt;
  &lt;decision:argueddate day="03" month="03" year="1900"&gt;&lt;date-text&gt;3 March&lt;/date-text&gt;;&lt;/decision:arguedate&gt;
&lt;/decision:dates&gt;
</pre>
            </li>
            <li>
              <sourcexml>case:publishdate</sourcexml> becomes
                <targetxml>decision:dates/decision:releaseddate</targetxml>
              <pre xml:space="preserve">

&lt;case:dates&gt;
  ...
  &lt;case:publishdate&gt;; Date of publication of reasons: 7 July 2009&lt;/case:publishdate&gt;
&lt;/case:dates&gt;
<b>Becomes</b>

&lt;decision:dates&gt;
  ...
  &lt;decision:releaseddate&gt;; Date of publication of reasons: 7 July 2009&lt;/decision:releaseddate&gt;
&lt;/decision:dates&gt;
</pre>
            </li>
            <li>
              <sourcexml>case:reviseddate</sourcexml> becomes
                <targetxml>decision:dates/decision:revisiondate</targetxml> populated with below
              mentioned attributes: <sourcexml>case:reviseddate/date/@day</sourcexml> becomes
                <targetxml>decision:revisiondate/@day</targetxml>,
                <sourcexml>case:reviseddate/date/@month</sourcexml> becomes
                <targetxml>decision:revisiondate/@month</targetxml> and
                <sourcexml>case:reviseddate/date/@year</sourcexml> becomes
                <targetxml>decision:revisiondate/@year</targetxml>
              <ul>
                <li>
                  <sourcexml>date</sourcexml> becomes
                    <targetxml>decision:revisiondate/date-text</targetxml>
                </li>
              </ul>
              <pre xml:space="preserve">

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;10–12 August&lt;/case:hearingdates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="16" month="09" year="2005"&gt;, 16 September 2005&lt;/date&gt;
  &lt;/case:decisiondate&gt;
  &lt;case:reviseddate&gt;
    &lt;date day="22" month="09" year="2005"&gt;, 22 September 2005&lt;/date&gt;
  &lt;/case:reviseddate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>

&lt;decision:dates&gt;
  &lt;decision:argueddate&gt;10–12 August&lt;/decision:argueddate&gt;
  &lt;decision:decisiondate day="16" month="09" year="2005" normdate="2005-09-16"&gt;, 
    &lt;date-text&gt;16 September 2005&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
  &lt;decision:revisiondate day="22" month="09" year="2005"&gt;, 
    &lt;date-text&gt;22 September 2005&lt;/date-text&gt;
  &lt;/decision:revisiondate&gt;
&lt;/decision:dates&gt;

</pre>
            </li>
          </ul>
          <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The
            attributes are used for normalization, but the element content should remain the same
            but whitespace and comma should retain outside the <targetxml>date-text</targetxml>
            element.</note>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	

  <xsl:template match="case:dates">
    <!--  Original Target XPath:  /casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates   -->
    <decision:dates>
      <xsl:apply-templates select="@* | node()"/>
    </decision:dates>
  </xsl:template>
  
  <xsl:template match="case:decisiondate[@ln.user-displayed='false']">
    <!--  Original Target XPath:  /casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate   -->
      <xsl:choose>
        <xsl:when test="date[@year='0000']">
          <decision:argueddate>
            <xsl:attribute name="month">
              <xsl:value-of select="date/@month"/>
            </xsl:attribute>
            <xsl:value-of select="date"/>
          </decision:argueddate>
        </xsl:when>
        <xsl:otherwise>
          <decision:decisiondate>
            <xsl:attribute name="year">
              <xsl:value-of select="date/@year"/>
            </xsl:attribute>
            <xsl:attribute name="month">
              <xsl:value-of select="date/@month"/>
            </xsl:attribute>
            <xsl:attribute name="day">
              <xsl:value-of select="date/@day"/>
            </xsl:attribute>
            <xsl:attribute name="normdate">
              <xsl:value-of select="concat(date/@year,'-',date/@month,'-',date/@day)"/>
            </xsl:attribute>
          </decision:decisiondate>  
        </xsl:otherwise>
      </xsl:choose>
      
    
  </xsl:template>
  
  
  <xsl:template match="case:decisiondate[@ln.user-displayed='true']  | case:decisondate[not(@ln.user-displayed='false')]">
    <!--  Original Target XPath:  /casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate   -->
      <decision:decisiondate>
        <xsl:choose>
          <xsl:when test="date">
            <xsl:for-each select="date">
              <xsl:apply-templates select="@day, @month, @year"/>
              <xsl:if test="@day and @month and @year">
                <xsl:attribute name="normdate">
                  <xsl:value-of select="concat(@year,'-',@month,'-',@day)"/>
                </xsl:attribute>
              </xsl:if>
              <date-text>
                <xsl:apply-templates select="node()"/>
              </date-text>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
              <xsl:apply-templates/>            
          </xsl:otherwise>
        </xsl:choose>
      </decision:decisiondate>
      
    
  </xsl:template>
  
  <!-- Sudhanshu implemented on 5 may 2017-->
  <xsl:template match="case:hearingdates">
    <!--  Original Target XPath:  /casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate   -->
    <xsl:choose>
      <xsl:when test="date">
        <xsl:for-each select="date">
          <decision:argueddate>
            <xsl:apply-templates select="@day, @month, @year"/>
            <date-text>
              <xsl:apply-templates select="node()"/>
            </date-text>
            <xsl:apply-templates select="following-sibling::text()[1]"/>
          </decision:argueddate>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <decision:argueddate>
          <xsl:apply-templates/>
        </decision:argueddate>
      </xsl:otherwise>
    </xsl:choose>   
    
  </xsl:template>
  
  <!-- MDS 2017-11-08 -->
  <xsl:template match="case:decisiondate">
    <!--  Original Target XPath:  /casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate   -->
    <xsl:choose>
      <xsl:when test="date">
        <xsl:for-each select="date">
          <decision:decisiondate>
            <xsl:apply-templates select="@day, @month, @year"/>
            <date-text>
              <xsl:apply-templates select="node()"/>
            </date-text>
            <xsl:apply-templates select="following-sibling::text()[1]"/>
          </decision:decisiondate>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <decision:argueddate>
          <xsl:apply-templates/>
        </decision:argueddate>
      </xsl:otherwise>
    </xsl:choose>   
    
  </xsl:template>
  
  <xsl:template match="date/@day">
    <xsl:attribute name="day">
      <xsl:choose>
        <xsl:when test="starts-with(., '0')">
          <xsl:value-of select="substring-after(., '0')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="date/@month">
    <xsl:attribute name="month" select="."/>
  </xsl:template>
  
  <xsl:template match="date/@year">
    <xsl:attribute name="year" select="."/>
  </xsl:template>

</xsl:stylesheet>