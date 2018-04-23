<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita docinfo case caseinfo casedigest dig decision">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.dates">
  <title>case:dates <lnpid>id-CA02DC-12613</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:dates</sourcexml> becomes
            <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates</targetxml>
          <note>Conversion should not create consecutive <targetxml>casedigest:caseinfo</targetxml>
            elements. When 2 or more consecutive sibling source elements map to
              <targetxml>casedigest:caseinfo</targetxml>, data should be merged to a single
              <targetxml>casedigest:caseinfo</targetxml> element unless this would hamper content
            ordering.</note>
          <ul id="ul_nyb_pgu_go">
            <li>
              <sourcexml>case:hearingdates</sourcexml> becomes
                <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:argueddate</targetxml></li>
            <li>
              <sourcexml>date</sourcexml> becomes
                <targetxml>caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text</targetxml>
              <targetxml>date-text</targetxml> will only be mapped around the text of the date. <pre>

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;
        &lt;date month="09" day="21" year="1959"&gt;19590921&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

  Becomes

&lt;decision:dates&gt;
   &lt;decision:decisiondate month="09" day="21" year="1959" normdate="1959-09-21"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;decision:argueddate month="09" day="21" year="1959"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;
</pre>
              <!--<note>From now
                onwards, <targetxml>casedigest:caseinfo</targetxml> will be placed under
                <targetxml>casedigest:head</targetxml> and not in
                <targetxml>casedigest:body</targetxml> and rest all converion scenarios
                will remain same. Please see below target examples for more details.</note>-->
              <note>If <sourcexml>case:hearingdates</sourcexml> is not populated with attributes
                then attributes in <targetxml>decision:argueddate</targetxml> will not be
                populated.</note>
              <pre>

&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Decision Date: December 18, 1984&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;


<b>Becomes</b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;decision:dates&gt;   
           &lt;decision:argueddate&gt;
              Decision Date: &lt;date-text&gt;December 18, 1984&lt;/date-text&gt;
           &lt;/decision:argueddate&gt;
        &lt;/decision:dates&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
</pre> Example where complete date occurs within <sourcexml>case:hearingdate</sourcexml>: <pre>

&lt;case:hearingdates&gt;
  &lt;date day="12" month="05" year="2000"&gt;12 May 2000&lt;/date&gt;
&lt;/case:hearingdates&gt;


<b>Becomes</b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;decision:dates&gt;
            &lt;decision:argueddate day="12" month="05" year="2000"&gt;
                &lt;date-text&gt;May 12, 2000&lt;/date-text&gt;
            &lt;/decision:argueddate&gt;
        &lt;/decision:dates&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

</pre>
              <note>If there are any <sourcexml>nl</sourcexml> elements in
                  <sourcexml>case:hearingdates</sourcexml>, then <sourcexml>nl</sourcexml> should be
                suppressed, but a new <targetxml>date-text</targetxml> should be started for every
                occurence of <sourcexml>nl</sourcexml>... DB item #1140</note> Mapping of
                <sourcexml>case:dates/case:hearingdates</sourcexml> with <sourcexml>nl</sourcexml>
              <pre>               
                

&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Heard: May 23, 2007.&lt;nl/&gt; Oral judgment: May 23, 2007.&lt;nl/&gt; Filed: June 25, 2007.&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

           
                <b>Becomes</b>
               

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
            </li>
            <li>
              <sourcexml>case:decisiondate</sourcexml> becomes
                <targetxml>/casedigest:casedigest/casedigest:head/casedigest:caseinfo/decision:dates/decision:decisiondate</targetxml>
              populated with below mentioned attributes:
                <sourcexml>case:decisiondate/date/@day</sourcexml> becomes
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
              <note> If there is any text in <sourcexml>case:decisiondate</sourcexml> then it will
                be retained only if the @day, @month and @year attributes do not result in a valid
                date. For more clarification please refer the example below. </note>
              <note><targetxml>date-text</targetxml> for <targetxml>decision:argueddate</targetxml>
                should always be created even if
                <sourcexml>@ln.user-displayed="false“</sourcexml></note>
            </li>
          </ul>
          <pre>

&lt;case:dates&gt;
    &lt;case:decisiondate ln.user-displayed="false"&gt;
        &lt;date month="01" day="25" year="2005"&gt;2005-01-25&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;


<b>Becomes</b>


&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;decision:dates&gt;
            &lt;decision:decisiondate month="01" day="25" year="2005" normdate="2005-01-25"/&gt; 
            &lt;decision:argueddate month="01" day="25" year="2005"&gt;
                &lt;date-text&gt;January 25, 2005&lt;/date-text&gt;
            &lt;/decision:argueddate&gt;            
        &lt;/decision:dates&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

          </pre>
          <note>when <sourcexml>@ln.user-displayed="true“</sourcexml> or attribute
              <sourcexml>@ln.user-displayed</sourcexml> does not appears on a date element (i.e,
              <sourcexml>case:decisiondate/@ln.user-displayed="true"</sourcexml> or
              <sourcexml>case:decisiondate</sourcexml> without any argument) then that element is
            translated into the target with the content. The attributes are populated and content
            will be displayed.</note>
          <pre>
<b>Source:</b>
                
&lt;case:dates&gt;
    &lt;case:decisiondate&gt;
        &lt;date month="09" day="21" year="1959"&gt;1959-09-21&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;
                
                
<b>Target:</b>

&lt;decision:dates&gt;
    &lt;decision:decisiondate month="09" day="21" year="1959" normdate="1959-09-21"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;decision:argueddate month="09" day="21" year="1959"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;

                    </pre>
          <b>Example2 </b>
          <pre>
<b>Source:</b>
                
&lt;case:dates&gt;
    &lt;case:decisiondate ln.user-displayed="true"&gt;
        &lt;date month="09" day="21" year="1959"&gt;1959-09-21&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;
                
                
<b>Target:</b>

&lt;decision:dates&gt;
    &lt;decision:decisiondate month="09" day="21" year="1959" normdate="1959-09-21"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;decision:argueddate month="09" day="21" year="1959"&gt;
        &lt;date-text&gt;September 21, 1959&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;

            </pre>
          <note>If there is no argued-date (<sourcexml>case:hearingdates</sourcexml>) present in the
            source XML but there is a decided-date (<sourcexml>case:decisiondate</sourcexml>),
            create <targetxml>decision:argueddate</targetxml> using the values in the
              <sourcexml>case:decisiondate</sourcexml> element.
              <targetxml>decision:decisiondate</targetxml> should also be retained in its normal
            location. Note that <targetxml>decision:argueddate</targetxml> output is language
              dependent.<p>If xml:lang = French, format is dd fullmonth yyyy, e.g. 2 mai
              2000,</p><p>if xml:lang = English, format is fullmonth day, yyyy, e.g. May 2, 2000, as
              per the list of months attached below for, "DB item #1272</p></note><table id="table_szb_pgu_go">
            <tgroup cols="3">
              <tbody>
                <row>
                  <entry>xml:lang=</entry>
                  <entry>en-CA</entry>
                  <entry>fr-CA</entry>
                </row>
                <row>
                  <entry>Date format – do not add leading zeroes on the days, e.g. “2” is correct,
                    “02” is incorrect.</entry>
                  <entry>Month DD, YYYY, e.g. April 2, 2014</entry>
                  <entry>DD month YYYY, e.g. 2 avril 2014 </entry>
                </row>
                <row>
                  <entry>Numerical month to month name:</entry>
                  <entry/>
                  <entry/>
                </row>
                <row>
                  <entry>01</entry>
                  <entry>January</entry>
                  <entry>janvier</entry>
                </row>
                <row>
                  <entry>02</entry>
                  <entry>February</entry>
                  <entry>février</entry>
                </row>
                <row>
                  <entry>03</entry>
                  <entry>March</entry>
                  <entry>mars</entry>
                </row>
                <row>
                  <entry>04</entry>
                  <entry>April</entry>
                  <entry>avril</entry>
                </row>
                <row>
                  <entry>05</entry>
                  <entry>May</entry>
                  <entry>mai</entry>
                </row>
                <row>
                  <entry>06</entry>
                  <entry>June</entry>
                  <entry>juin</entry>
                </row>
                <row>
                  <entry>07</entry>
                  <entry>July</entry>
                  <entry>juillet</entry>
                </row>
                <row>
                  <entry>08</entry>
                  <entry>August</entry>
                  <entry>août</entry>
                </row>
                <row>
                  <entry>09</entry>
                  <entry>September</entry>
                  <entry>septembre</entry>
                </row>
                <row>
                  <entry>10</entry>
                  <entry>October</entry>
                  <entry>octobre</entry>
                </row>
                <row>
                  <entry>11</entry>
                  <entry>November</entry>
                  <entry>novembre</entry>
                </row>
                <row>
                  <entry>12</entry>
                  <entry>December</entry>
                  <entry>décembre</entry>
                </row>
              </tbody>
            </tgroup>
          </table>
          <note>If <sourcexml>@day, @month, @year</sourcexml> in source have invalid values then we
            will not create <targetxml>decision:decisiondate</targetxml> but populate the valid
            attributes in <targetxml>decision:dates/decision:argueddate</targetxml> and retain same
            text from the source inside <targetxml>date-text</targetxml> markup. For more
            clarification please refer the example below.</note>
          <b>Source XML</b>
          <pre>
&lt;case:info&gt;
    &lt;case:courtinfo&gt;
        &lt;case:dates&gt;
            &lt;case:decisiondate ln.user-displayed="false"&gt;
                &lt;date year="0000" month="01" day="01"&gt;0000/01/01&lt;/date&gt;
            &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;   
         </pre>
          <b>Target XML</b>
          <pre>
&lt;casedigest:caseinfo&gt;
    &lt;decision:dates&gt;       
        &lt;decision:argueddate month="01" day="01"/&gt;
           &lt;date-text&gt;0000/01/01&lt;/date-text&gt;
    &lt;/decision:dates&gt;
&lt;/casedigest:caseinfo&gt;                       
          </pre>
         <!--  <note>If <sourcexml>docinfo:subtype="wdns"</sourcexml> and
              <sourcexml>ci:content/ci:span</sourcexml> contains date with citation, then move the
            date in target to
              <targetxml>caseinfo:caseinfo/decision:dates/decision:argueddate</targetxml> Please
            refer the example below.</note>
          <note>If there are other non-cite content inside <sourcexml>ci:content</sourcexml> then it
            will remain where it is.</note>
          <pre>
....
&lt;ci:content>&lt;ci:span spanid="cspan00003036">[2010] O.J. No. 3766&lt;/ci:span>, September 13, 2010 &lt;/ci:content>
....
        
        
<b>Becomes</b>
        
&lt;lnci:cite> .... &lt;lnci:content>[2010] O.J. No. 3766&lt;/lnci:content> .... &lt;/lnci:cite>      
      </pre>
          <b>Example2</b><pre> 

&lt;ci:content>
    &lt;ci:span spanid="cspan00002825">[2006] O.J. No. 3799&lt;/ci:span>, August 23, 2006  (ONSupCtJus), Flynn J; vard
&lt;/ci:content>

<b>Becomes</b>

&lt;lnci:cite> .... &lt;lnci:content>[2006] O.J. No. 3799 (ONSupCtJus), Flynn J; vard&lt;/lnci:content> .... &lt;/lnci:cite>
</pre> -->
        </li>
      </ul>
    </section>
    <section><title>Changes</title>
      <p>2014-12-04: <ph id="change_20141204_AS">Removed docinfo:subtype="wdns" scenario and updated
          CI to create date-text for case:decisiondate ln.user-displayed="false".... <b>Db issue
            #263</b></ph></p>
      <p>2014-10-06: <ph id="change_20141006_AS">case:decisiondate should not output
          argueddate/date-text if <sourcexml>ln.user-displayed="false“</sourcexml>. Removed
          instructions for invalid date as LBU has remediated the issue.<b>DB item #
        337</b></ph></p>
      <p>2014-08-19: <ph id="change_20140819_AS">Updated example for nl. Multiple argued date will
          not be created, multiple date-text will be created.</ph></p>
      <p>2014-08-11: <ph id="change_20140811_AS">Updated instructions for invalid date..."<b>DB item #
        296</b></ph></p>
      <p>2014-08-08: <ph id="change_20140806_SEP">Updated instructions for
          argueddate. <b>DB item # 1795</b></ph></p>
      <p>2014-07-23: <ph id="change_20140723_AS">Added
          instruction not to populate <targetxml>decision:argueddate</targetxml> if
            <sourcexml>case:hearingdates</sourcexml> does not contain attributes ..."<b>Issue# 289
            and 256</b></ph></p>
      <p>2014-07-08: <ph id="change_20140708_AS">Added instruction to
          create date-text for decision:argueddate even if ln.user-displayed="false" ..."<b>R4.5
            Issue# 1589</b></ph></p>
      <p>2014-06-30: <ph id="change_20140630_AS"> Instruction to
          handle text after date..."<b>DB item # 215</b></ph></p>
      <p>2014-05-30: <ph id="change_20140531_AS"> Explanation of invalid date..."<b>DB item #
        206</b></ph></p>
      <p>2014-05-30: <ph id="change_20140530_AS"> Explanation for
          ln.user-displayed=false or not present..."<b>DB item # 213</b></ph></p>
      <p>2014-03-26 <ph id="change_20140326_SEP">Removed ambiguity caused by the note beginning "From now
            onwards..."<b>DB item # 145</b></ph></p>
      <p>2014-03-26 <ph id="change_20140326_AS">Note
          to handle date in citation....<b>DB item # 1593</b></ph></p></section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\case.dates.dita  -->
	 
<!-- Remove the dita namesapce use else instead of dita	 -->
	 
	 <xsl:variable name="MonthTable">
	   <months>
	     <month key="01" en-value="January" fr-value="janvier" />
	     <month key="02" en-value="February" fr-value="février" />
	     <month key="03" en-value="March" fr-value="mars" />
	     <month key="04" en-value="April" fr-value="avril" />
	     <month key="05" en-value="May" fr-value="mai" />
	     <month key="06" en-value="June" fr-value="juin" />
	     <month key="07" en-value="July" fr-value="juillet" />
	     <month key="08" en-value="August" fr-value="août" />
	     <month key="09" en-value="September" fr-value="septembre" />
	     <month key="10" en-value="October" fr-value="octobre" />
	     <month key="11" en-value="November" fr-value="novembre" />
	     <month key="12" en-value="December" fr-value="décembre" />
	   </months>
	 </xsl:variable>
	 
  <xsl:key name="monthkey" match="*:month" use="string(@key)"/>
  
<!-- Vikas Rohilla : Updated the template Initial -->
	<xsl:template match="case:dates">
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
  
  <xsl:template match="case:dates/case:decisiondate">
    <decision:dates>
        <xsl:apply-templates select="node()|@*"/>
      <xsl:if test="not(DIGESTDOC/dig:body/descendant::case:hearingdates)">
        <decision:argueddate>
          <xsl:apply-templates select="date/@month,date/@day,date/@year"/>
          <date-text>
            <xsl:value-of select="key('monthkey',./date/@month, $MonthTable)/@en-value"/>
            <xsl:text xml:space="preserve"> </xsl:text>
            <xsl:value-of select="date/@day"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="date/@year"/>
          </date-text>
        </decision:argueddate>
      </xsl:if>
    </decision:dates>
  </xsl:template>

	<xsl:template match="case:hearingdates">
	  <decision:argueddate>
	    <xsl:apply-templates select="@* | node()"/>
		</decision:argueddate>
	</xsl:template>


	<xsl:template match="case:decisiondate/date/@day">
	  <xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">
	  <xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="case:decisiondate/date/@year">
	  <xsl:copy-of select="."/>
	</xsl:template>

  <xsl:template match="case:decisiondate/date">
    <decision:decisiondate>
      <xsl:apply-templates select="@month,@day,@year"/>
      <xsl:attribute name="normdate">
        <xsl:value-of select="concat(@year,'-',@month,'-',@day)"/>
      </xsl:attribute>
      <date-text>
        <xsl:value-of select="key('monthkey',@month,$MonthTable)/@en-value"/>
        <xsl:text xml:space="preserve"> </xsl:text>
        <xsl:value-of select="@day"/>
        <xsl:text>, </xsl:text>
        <xsl:value-of select="@year"/>
      </date-text>
    </decision:decisiondate>
  </xsl:template>
  
  <xsl:template match="case:decisiondate/@ln.user-displayed"/>




</xsl:stylesheet>