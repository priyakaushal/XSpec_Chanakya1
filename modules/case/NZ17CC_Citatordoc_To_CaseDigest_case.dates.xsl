<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.dates">
  <title>case:dates <lnpid>id-NZ17CC-25813</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates</targetxml>
          
          <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:hearingdates</sourcexml>
              becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:argueddate</targetxml>              
            </li>
            <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">date-text</targetxml> for capturing the PCDATA of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:hearingdates</sourcexml>
            </li>
            
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate</sourcexml>
              becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:decisiondate</targetxml> populated with below mentioned
              children and attributes: <ul>
                <li>The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be
                  populated with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
                    <sourcexml>case:decisiondate/date/@month</sourcexml> and
                    <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by
                  a single hyphen. The values of
                    <sourcexml>case:decisiondate/date/@month</sourcexml> and
                    <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes
                  so that they are 2 digits. <note>If one or more of the three date values (year,
                    month or day) are absent, then
                      <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
                    populated.</note></li>
                <li><sourcexml>case:decisiondate/date/@day</sourcexml> becomes
                    <targetxml>decision:decisiondate/@day</targetxml>.</li>
                <li><sourcexml>case:decisiondate/date/@month</sourcexml> becomes
                    <targetxml>decision:decisiondate/@month</targetxml>.</li>
                <li><sourcexml>case:decisiondate/date/@year</sourcexml> becomes
                    <targetxml>decision:decisiondate/@year</targetxml>.</li>
              </ul>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate/date</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:decisiondate/date-text</targetxml>
                </li>
              </ul>
              
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate/case:fileddate</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:fileddate/date-text</targetxml>
                </li>
                <li class="- topic/li ">
                  Conversion should add <targetxml class="+ topic/keyword xml-d/targetxml ">date-text</targetxml> around date text(16/05/1995) within 
                  <targetxml class="+ topic/keyword xml-d/targetxml ">decision:fileddate</targetxml> to separate the actual date from associated text.
                </li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
    &lt;case:hearingdates&gt;23 February;&lt;/case:hearingdates&gt;
    &lt;case:decisiondate&gt;
        &lt;date day="16" month="05" year="1995"&gt;16 May 1995&lt;/date&gt;
    &lt;/case:decisiondate&gt;
    &lt;case:fileddate&gt;
          &lt;emph typestyle="it"&gt;Judgment received 16/05/1995 &lt;/emph&gt;&lt;/case:fileddate&gt;
&lt;/case:dates&gt;



<b class="+ topic/ph hi-d/b ">Becomes</b>


&lt;decision:dates&gt;
    &lt;decision:argueddate&gt;
        &lt;date-text&gt;23 February;&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;
&lt;decision:dates&gt;
     &lt;decision:decisiondate day="16" month="05" year="1995" normdate="1995-05-16"&gt;
         &lt;date-text&gt;16 May 1995&lt;/date-text&gt;
     &lt;/decision:decisiondate&gt;
     &lt;decision:fileddate day="16" month="05" year="1995"&gt;
        Judgment received &lt;date-text&gt;16/05/1995&lt;/date-text&gt;&lt;/decision:fileddate&gt;
&lt;/decision:dates&gt;


              </pre>
            </li>
            
          </ul>
          <note class="- topic/note ">The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are used for
            normalization, but the element content should remain the same.</note>
        </li>
      </ul>
    </section>
    <section>
      <title>Changes</title>  
      <p>2015-02-10: <ph id="change_20150210_MLV-2">Added instruction for including <targetxml>date-text</targetxml> to content of <targetxml>decision:fileddate</targetxml>.</ph></p>
      <p>2015-01-20: <ph id="change_20150120_mlv-1">Instruction and example added for <sourcexml>case:decisiondate/case:fileddate</sourcexml></ph>.</p>
      <p>2013-07-18: <ph id="change_20130718_vv">Instruction and example added for <sourcexml>case:hearingdates</sourcexml> </ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.dates.dita  -->

  <xsl:template match="case:dates">
    <decision:dates>
      <xsl:apply-templates select="@* | node()"/>
    </decision:dates>
  </xsl:template>
  
  <xsl:template match="case:hearingdates">
    <decision:argueddate>
      <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates/>
      </date-text>
    </decision:argueddate>
  </xsl:template>

  <xsl:template match="case:decisiondate">
    <decision:decisiondate>
      <xsl:choose>
        <xsl:when test="emph and not(date)">
          <xsl:call-template name="DATE_attributes">
            <xsl:with-param name="date" select="emph"/>
          </xsl:call-template>
          <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="emph/date/text()"/>
          </date-text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="DATE_attributes">
            <xsl:with-param name="date" select="."/>
          </xsl:call-template>
          <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="date/text()"/>
          </date-text>
        </xsl:otherwise>
      </xsl:choose> 
    </decision:decisiondate>    
  </xsl:template>
  
  <xsl:template match="case:fileddate">   
    <decision:fileddate>
      <xsl:for-each select="string(.)">
        <xsl:analyze-string select="." regex="(0?[1-9]|[1-2]\d|3[01])/(0?[1-9]|1[0-2])/(1\d{{3}}|20\d{{2}}|\d{{2}})">
         <xsl:matching-substring>
            <xsl:variable name="date">
              <date>
                <xsl:attribute name="day" select="regex-group(1)"/>
                <xsl:attribute name="month" select="regex-group(2)"/>
                <xsl:attribute name="year" select="regex-group(3)"/>
              </date>
            </xsl:variable>
            <xsl:call-template name="DATE_attributes">
              <xsl:with-param name="date" select="$date"/>
            </xsl:call-template>           
         </xsl:matching-substring>
        </xsl:analyze-string>
        <xsl:analyze-string select="." regex="(0?[1-9]|[1-2]\d|3[01])/(0?[1-9]|1[0-2])/(1\d{{3}}|20\d{{2}}|\d{{2}})">
          <xsl:matching-substring>
            <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"><xsl:value-of select="."/></date-text>
          </xsl:matching-substring>
          <xsl:non-matching-substring>
            <xsl:value-of select="."/>
          </xsl:non-matching-substring>
        </xsl:analyze-string>
      </xsl:for-each>      
    </decision:fileddate>
  </xsl:template>
</xsl:stylesheet>