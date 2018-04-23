<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case docinfo glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.dates">
  <title>case:dates <lnpid>id-CA04-13420</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:dates</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:decisioninfo/admindecision:dates</targetxml>
          
          <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:hearingdates</sourcexml>
              becomes <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:decisioninfo/admindecision:dates/decision:argueddate</targetxml>              
            </li>
            <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">date-text</targetxml> for capturing the PCDATA of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:hearingdates</sourcexml>
            </li>

            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate</sourcexml>
              becomes <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:decisioninfo/admindecision:dates/decision:decisiondate</targetxml>
              populated with below mentioned children and attributes: <ul>
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
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate/date</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">decision:dates/decision:decisiondate/date-text.</targetxml>
                  <targetxml>date-text</targetxml> will only be mapped around the text of the date. </li>
                <li>If there are any <sourcexml>nl</sourcexml> elements in
                    <sourcexml>case:hearingdates</sourcexml>, then <sourcexml>nl</sourcexml> should
                  be suppressed, but a new <targetxml>date-text</targetxml> should be started for
                  every occurence of <sourcexml>nl</sourcexml>.</li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">

  &lt;case:dates&gt;
    &lt;case:hearingdates&gt;Decision: November 1, 2011. &lt;/case:hearingdates&gt;   
  &lt;/case:dates&gt;
  
<b class="+ topic/ph hi-d/b ">Becomes</b>

  &lt;admindecision:dates&gt;
    &lt;decision:argueddate&gt;
      Decision: &lt;date-text&gt;November 1, 2011.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
  &lt;/admindecision:dates&gt;
              </pre>
              <pre xml:space="preserve" class="- topic/pre ">
<b>Handling of case:hearingdates/glp:note scenario</b>
&lt;case:hearingdates&gt;Heard: January 28, 2010.&lt;nl/&gt; Award: Supplementary award: March 24, 2010.&lt;nl/&gt;
&lt;glp:note&gt;
    &lt;p nl="0"&gt;
        &lt;text&gt;[Editor's note: Original reasons for award were released June 9, 2009.
                See&lt;nl/&gt; [2009] A.G.A.A. No. 17.]&lt;/text&gt;
    &lt;/p&gt;
&lt;/glp:note&gt;
&lt;/case:hearingdates&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;admindecision:dates&gt;
    &lt;decision:argueddate&gt;
        Heard: &lt;date-text&gt;January 28, 2010.&lt;/date-text&gt;
        Award: Supplementary award: &lt;date-text&gt;March 24, 2010.&lt;/date-text&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;[Editor's note: Original reasons for award were released June 9, 2009.
                        See&lt;proc:nl/&gt; [2009] A.G.A.A. No. 17.]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/decision:argueddate&gt;
&lt;/admindecision:dates&gt;
              </pre>
              <pre>
<b>Mapping of <sourcexml>case:dates/case:hearingdates</sourcexml> with <sourcexml>nl</sourcexml></b>
                
&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Heard: May 23, 2007.&lt;nl/&gt; Oral judgment: May 23, 2007.&lt;nl/&gt; Filed: June 25, 2007.&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

<b>becomes</b>
                
&lt;decision:dates&gt;
    &lt;decision:argueddate&gt;
        Heard: &lt;date-text&gt;May 23, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
    &lt;decision:argueddate&gt;
        Oral judgment: &lt;date-text&gt;May 23, 2007.&lt;/date-text&gt; 
    &lt;/decision:argueddate&gt;
    &lt;decision:argueddate&gt;
        Filed: &lt;date-text&gt;June 25, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;

           
              </pre>
              <note class="- topic/note ">when <sourcexml class="+ topic/keyword xml-d/sourcexml ">@ln.user-displayed="false“</sourcexml> appears on a date element (i.e, <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:decisiondate/@ln.user-displayed="false"</sourcexml>), that element is
                translated into the target but with the element content omitted. Only the attributes
                are populated. So there is no display content.</note>
              <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
  &lt;case:decisiondate ln.user-displayed="false"&gt;
    &lt;date year="2011" month="11" day="01"&gt;2011/11/01&lt;/date&gt; 
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;admindecision:dates&gt;  
  &lt;decision:decisiondate day="01" month="11" year="2011" normdate="2011-11-01"/&gt;
&lt;/admindecision:dates&gt;
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
      <p>2014-08-19: <ph id="change_20140819_AS">Updated example for nl. Multiple argued date will not be created, multiple date-text will be created.</ph></p>
      <p>2014-08-01: <ph id="change_20140801_AS">Added instruction to suppress
            <sourcexml>nl</sourcexml> in target.. <b>P4 Issue #301 and 297</b></ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.dates.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.dates.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:dates">
			<admindecision:dates>
			  <xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:dates/case:hearingdates"/>
				<xsl:apply-templates select="@* | node()"/>
			</admindecision:dates>
	</xsl:template>

  <xsl:template match="case:hearingdates">
    <xsl:if test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='en'">
    <xsl:for-each select="text()">
      <xsl:variable name="hearingdate-string" select="normalize-space(.)"/>
      <decision:argueddate>
        <xsl:analyze-string select="$hearingdate-string" regex="([A-Za-z].[^0-9]+\s)((January|February|March|April|May|June|July|August|September|October|November|December)\s[0-9]+.\s.+)">
          <xsl:matching-substring>
            <xsl:value-of select="regex-group(1)"/>
            <date-text>
              <xsl:value-of select="regex-group(2)"/>
            </date-text>
          </xsl:matching-substring>
          <xsl:non-matching-substring>
            <xsl:choose>
              <xsl:when test="matches(.,'^[0-9]{4}')">
                <date-text>
                  <xsl:value-of select="."/>
                </date-text>
              </xsl:when>
              <xsl:when test="matches(.,'^[0-9]{2}[,]')">
                <xsl:value-of select="concat(substring-before(.,','),',')"/>
                <date-text>
                  <xsl:value-of select="substring-after(.,',')"/>
                </date-text>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="."/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:non-matching-substring>
        </xsl:analyze-string>
      </decision:argueddate>
    </xsl:for-each>
    </xsl:if>
    <!--2018-01-25 ::RS Added choose condition in  '<xsl:if test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='fr'">' template against webstar number #7100343  -->
    <xsl:if test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='fr'">
      <xsl:choose>
        <xsl:when test="child::glp:note">
          <decision:argueddate>
          <xsl:for-each select="text()">
            <xsl:variable name="hearingdate-string" select="normalize-space(.)"/>
            
              <xsl:analyze-string select="$hearingdate-string" regex="([A-Za-z].[^0-9]+\s)((janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre)\s[0-9]+.\s.+)">
                <xsl:matching-substring>
                  <xsl:value-of select="regex-group(1)"/>
                  <date-text>
                    <xsl:value-of select="regex-group(2)"/>
                  </date-text>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                  <xsl:choose>
                    <xsl:when test="contains(normalize-space(.),':')">
                      <xsl:value-of select="substring-before(.,':')"/>
                      <xsl:text>:</xsl:text>
                      <date-text>
                        <xsl:value-of select="substring-after(.,':')"/>
                      </date-text>
                    </xsl:when>
                    <xsl:otherwise>
                      <date-text>
                        <xsl:value-of select="."/>
                      </date-text>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:non-matching-substring>
              </xsl:analyze-string>
          </xsl:for-each>
            <xsl:apply-templates select="child::glp:note"/>
          </decision:argueddate>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each select="text()">
            <xsl:variable name="hearingdate-string" select="normalize-space(.)"/>
            <decision:argueddate>
              <xsl:analyze-string select="$hearingdate-string" regex="([A-Za-z].[^0-9]+\s)((janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre)\s[0-9]+.\s.+)">
                <xsl:matching-substring>
                  <xsl:value-of select="regex-group(1)"/>
                  <date-text>
                    <xsl:value-of select="regex-group(2)"/>
                  </date-text>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                  <xsl:choose>
                    <xsl:when test="contains(normalize-space(.),':')">
                      <xsl:value-of select="substring-before(.,':')"/>
                      <xsl:text>:</xsl:text>
                      <date-text>
                        <xsl:value-of select="substring-after(.,':')"/>
                      </date-text>
                    </xsl:when>
                    <xsl:otherwise>
                      <date-text>
                        <xsl:value-of select="."/>
                      </date-text>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:non-matching-substring>
              </xsl:analyze-string>
            </decision:argueddate>
          </xsl:for-each>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <xsl:template match="case:decisiondate">
    <decision:decisiondate>
      <xsl:attribute name="month">
        <xsl:value-of select="date/@month"/>
      </xsl:attribute>
      <xsl:attribute name="day">
        <xsl:value-of select="date/@day"/>
      </xsl:attribute>
      <xsl:attribute name="year">
        <xsl:value-of select="date/@year"/>
      </xsl:attribute>
      <xsl:attribute name="normdate">
        <xsl:value-of select="concat(date/@year,'-',date/@month,'-',date/@day)"/>
      </xsl:attribute>
    </decision:decisiondate>
  </xsl:template>
	
	<xsl:template match="case:decisiondate/date"/>
  <xsl:template match="case:hearingdates/nl"/>
  <xsl:template match="case:hearingdates/glp:note">
    <note>
      <bodytext>
        <xsl:apply-templates select="@*|node()"/>
      </bodytext>
    </note>
  </xsl:template>

</xsl:stylesheet>