<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case courtorder">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.info_case.dates">
  <title>case:dates <lnpid>id-UK04-27617</lnpid></title>
  <body>
    <p>The element <sourcexml>case:headnote/case:info/case:courtinfo/case:dates</sourcexml> is a container element, its start-tag and end-tag are dropped. Conversion of <sourcexml>case:dates</sourcexml> child elements is described below. This conversion must also take into account the path <sourcexml>case:content/case:judgments/case:dates</sourcexml>. That is, in the instructions below, child elements in both the path <sourcexml>case:headnote/case:info/case:courtinfo/case:dates</sourcexml> and <sourcexml>case:content/case:judgments/case:dates</sourcexml> must be considered at the same time when looking for duplicates and performing the conversions described.
    </p>
    <p>Both <sourcexml>case:dates/case:decisiondate</sourcexml> and <sourcexml>case:dates/case:hearingdates</sourcexml> are converted to <targetxml>courtorder:issuedate</targetxml>. These source elements usually contain only a child <sourcexml>date</sourcexml> element, but sometimes they contain <b>direct</b> PCDATA in addition to or instead of a child <sourcexml>date</sourcexml> element. There are different conversion rules for each of three possible scenarios: (1) no PCDATA, (2) PCDATA that is a date, (3) PCDATA that is not a date. Note this is refering to PCDATA <b>directly</b> within <sourcexml>case:dates/case:decisiondate</sourcexml> or <sourcexml>case:dates/case:hearingdates</sourcexml>.
      <ol>
        <li>If there is <b><u>no</u></b> PCDATA <b>directly</b> within <sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml>, and there is only one or more child <sourcexml>date</sourcexml> elements (they may contain PDCATA), then the <sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml> start-tag and end-tag are dropped since these elements act as containers, and conversion of the <sourcexml>date</sourcexml> elements is as follows:<ul>
          <li>The <sourcexml>date</sourcexml> becomes
            <targetxml>courtorder:issuedate</targetxml>,  the source
            <sourcexml>date</sourcexml> element's <sourcexml>@year, @month, @day</sourcexml>
            attribute values used for the target <targetxml>courtorder:issuedate</targetxml>
            element's attribute values of the same name.</li>
          <li>There may be multiple <sourcexml>case:dates/case:decisiondate</sourcexml> and
            <sourcexml>case:dates/case:hearingdates</sourcexml> elements, and so there may
            be multiple <sourcexml>date</sourcexml> elements. If all attribute values of two
            or more <sourcexml>date</sourcexml> elements are the same, and the content of the
            <sourcexml>date</sourcexml> elements is the same, drop all but one of these
            duplicate <sourcexml>date</sourcexml> elements. During this comparison, if
            attributes are missing for a particular <sourcexml>date</sourcexml> element, only
            the content needs to match another <sourcexml>date</sourcexml> element for it to
            be considered a duplicate. When dropping duplicate <sourcexml>date</sourcexml>
            elements, prefer to drop the element or elements that have no <sourcexml>@year,
              @month, @day</sourcexml> attributes and keep the element that has these
            attributes so they can be used to populate the <targetxml>@year,
              @month, @day</targetxml> attributes of the target
            <targetxml>courtorder:issuedate</targetxml> element.</li>
          <li>For each non-duplicate <sourcexml>date</sourcexml>, create a separate <targetxml>courtorder:issuedate</targetxml> element. If the source <sourcexml>date</sourcexml> element (or elements if there were duplicates) does not have <sourcexml>@year, @month, @day</sourcexml> attributes, attempt to parse the PCDATA content of the <sourcexml>date</sourcexml> element to get the year, month and day, and use these to populate the target <targetxml>courtorder:issuedate</targetxml> element's <targetxml>@year, @month, @day</targetxml> attributes.</li>
        </ul></li>
        <li>If there <b><u>is</u></b> PCDATA <b>directly</b> within
            <sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml>
          that contains <b><u>only</u></b> a date (the entire content is a date) in one these forms:<ul>
            <li>DAY Month YEAR [a text date, examples: "9 January 2008", "14 March 2008"]</li>
            <li>DDMMYYYY [an 8 digit number representing a date, examples: "09012008" or "14032008"]
              where: <ul>
                <li>DD is a 2 digit zero-padded day with values 01 to 31</li>
                <li>MM is a 2 digit zero-padded month with values 01 to 12</li>
                <li>YYYY is a 4 digit year with values 1800 to 2050</li>
              </ul></li>
          </ul> Then the PCDATA is parsed and separated into its day, month and year components and
          treated as though a <sourcexml>date</sourcexml> child element were given with attributes
            <sourcexml>@day, @month, @year</sourcexml>, and the rules in item #1 above are applied.
          Namely, this date value in PCDATA form is compared for duplicates with other such values
          within all other <sourcexml>case:decisiondate</sourcexml> and
            <sourcexml>case:hearingdates</sourcexml> elements, as well as all
            <sourcexml>date</sourcexml> child elements. When creating a
            <targetxml>courtorder:issuedate</targetxml> in this scenario and there are duplicates,
          prefer to drop the 8 digit date form and keep the text form of the date (DAY Month YEAR)
          as the content of <targetxml>courtorder:issuedate</targetxml> where ever possible.</li>
        <li>If there <b><u>is</u></b> PCDATA <b>directly</b> within <sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml> that <b><u>does not</u></b> match a date as described in item #2 above, conversion of the PCDATA and any optional child <sourcexml>date</sourcexml> elements is as follows:<ul>
          <li>The entire <sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml> becomes <targetxml>courtorder:issuedate</targetxml>.</li>
          <li>The <targetxml>courtorder:issuedate</targetxml> element gets its attribute values
            from the <b>first</b> source <sourcexml>date</sourcexml> element within the source
            <sourcexml>case:decisiondate</sourcexml> or
            <sourcexml>case:hearingdates</sourcexml>, with the <b>first</b> source
            <sourcexml>date</sourcexml> element's <sourcexml>@year, @month, @day</sourcexml>
            attribute values used for the target <targetxml>courtorder:issuedate</targetxml>
            element's attribute values of the same name. If there is no child <sourcexml>date</sourcexml> element, then the <targetxml>courtorder:issuedate</targetxml> element will not contain <targetxml>@year, @month, @day</targetxml> attributes.</li>
          <li>Every source <sourcexml>date</sourcexml> element within the <sourcexml>case:dates/case:decisiondate</sourcexml> or <sourcexml>case:dates/case:hearingdates</sourcexml> being converted becomes a target <targetxml>date-text</targetxml> element within the target <targetxml>courtorder:issuedate</targetxml> element.</li>
          <li>Any attributes of the source <sourcexml>date</sourcexml> element are dropped. But
            note the <b>first</b>
            <sourcexml>date</sourcexml> element's attributes are used to populate the
            attributes of the same name in the target
            <targetxml>courtorder:issuedate</targetxml> element as described above.</li> 
          <li>For content matching this scenario, duplicates are <b><u>not</u></b> checked. Thus, it
              is possible to create multiple <targetxml>courtorder:issuedate</targetxml> elements
              with exactly the same attribute values if one or more of these are created from
              content matching this scenario #3. See the example <xref href="#courtorder-case.info_case.dates/complex_duplicate_dates"/>.</li>
        </ul></li>
      </ol>
    </p>
    <note>As specified in the topic <xref href="../../common_newest/Rosetta_Elements-LxAdv-Empty_Elements.dita">Suppress empty
        elements unless otherwise stated</xref> empty elements should be suppressed. This includes
      empty <sourcexml>case:decisiondate</sourcexml>, <sourcexml>case:hearingdates</sourcexml>, and
      any child <sourcexml>date</sourcexml> elements. Also, if the parents contain nothing but empty
      child <sourcexml>date</sourcexml> elements, the entire parent
        (<sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml>) is
      suppressed.</note>
    
    <section>
      <title>Source XML showing <sourcexml>case:decisiondate</sourcexml> and <sourcexml>case:hearingdates</sourcexml> without <b>direct</b> PCDATA and having duplicate <sourcexml>date</sourcexml> elements</title>
      <p>Note how the <sourcexml>case:descisiondate/date</sourcexml> with content "23 May 2002" is removed as a duplicate of the one in <sourcexml>case:hearingdates</sourcexml> because the content matches and there are no attributs given.</p>
      <codeblock>

  &lt;case:headnote&gt;
    &lt;case:info&gt;
      …
      &lt;case:courtinfo&gt;
        …
        &lt;case:dates&gt;
          &lt;case:hearingdates&gt;
            &lt;date day="23" month="05" year="2002"&gt;23 May 2002&lt;/date&gt;
            &lt;date day="29" month="01" year="2002"&gt;29 January 2002&lt;/date&gt;
          &lt;/case:hearingdates&gt;
          &lt;case:decisiondate ln.nsprefix="lnvxe:"&gt;
            &lt;date&gt;23 May 2002&lt;/date&gt;
          &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
        …
      &lt;/case:courtinfo&gt;
      …
    &lt;/case:info&gt;
    …
  &lt;/case:headnote&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

  &lt;courtorder:head&gt;
    &lt;!--...--&gt;
    &lt;courtorder:issuedate day="23" month="05" year="2002"&gt;23 May 2002&lt;/courtorder:issuedate&gt;
    &lt;courtorder:issuedate day="29" month="01" year="2002"&gt;29 January 2002&lt;/courtorder:issuedate&gt;
    &lt;!--...--&gt;
  &lt;/courtorder:head&gt;

        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing <sourcexml>case:dates</sourcexml> in both <sourcexml>case:headnote/case:info/case:courtinfo</sourcexml> <sourcexml>case:content/case:judgments</sourcexml></title>
      <p>Note how the <sourcexml>case:content/case:judgments</sourcexml> date is also compared for duplicates with the <sourcexml>case:headnote/case:info/case:courtinfo</sourcexml> dates and removed because it is the same.</p>
      <codeblock>

&lt;case:body&gt;
  &lt;case:headnote&gt;
    &lt;case:info&gt;
      …
      &lt;case:courtinfo&gt;
        …
        &lt;case:dates&gt;
          &lt;case:hearingdates&gt;
            &lt;date day="29" month="01" year="2002"&gt;29 January 2002&lt;/date&gt;
          &lt;/case:hearingdates&gt;
          &lt;case:decisiondate&gt;
            &lt;date&gt;29 January 2002&lt;/date&gt;
          &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
        …
      &lt;/case:courtinfo&gt;
      …
    &lt;/case:info&gt;
    …
  &lt;/case:headnote&gt;
  &lt;case:content&gt;
    &lt;case:judgments&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
          &lt;date day="29" month="01" year="2002"&gt;29 January 2002&lt;/date&gt;
        &lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
       …
    &lt;/case:judgments&gt;
  &lt;/case:content&gt;
&lt;case:body&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;courtorder:courtorder ...&gt;
  &lt;courtorder:head&gt;
    &lt;!--...--&gt;
    &lt;courtorder:issuedate day="29" month="01" year="2002"&gt;29 January 2002&lt;/courtorder:issuedate&gt;
    &lt;!--...--&gt;
  &lt;/courtorder:head&gt;
  &lt;!--...--&gt;
&lt;/courtorder:courtorder&gt;

        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing <sourcexml>case:dates</sourcexml> in both <sourcexml>case:headnote/case:info/case:courtinfo</sourcexml> and <sourcexml>case:content/case:judgments</sourcexml> with no attributes</title>
      <p>Note how the year, month and day are parsed from the PCDATA content.</p>
      <codeblock>

&lt;case:body&gt;
  &lt;case:headnote&gt;
    &lt;case:info&gt;
      …
      &lt;case:courtinfo&gt;
        …
        &lt;case:dates&gt;
          &lt;case:hearingdates&gt;
            &lt;date&gt;29 January 2002&lt;/date&gt;
          &lt;/case:hearingdates&gt;
        &lt;/case:dates&gt;
        …
      &lt;/case:courtinfo&gt;
      …
    &lt;/case:info&gt;
    …
  &lt;/case:headnote&gt;
  &lt;case:content&gt;
    &lt;case:judgments&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
          &lt;date&gt;29 January 2002&lt;/date&gt;
        &lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
       …
    &lt;/case:judgments&gt;
  &lt;/case:content&gt;
&lt;case:body&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;courtorder:courtorder ...&gt;
  &lt;courtorder:head&gt;
    &lt;!--...--&gt;
    &lt;courtorder:issuedate day="29" month="01" year="2002"&gt;29 January 2002&lt;/courtorder:issuedate&gt;
    &lt;!--...--&gt;
  &lt;/courtorder:head&gt;
  &lt;!--...--&gt;
&lt;/courtorder:courtorder&gt;

        </codeblock>
    </section>
    
    <section id="complex_duplicate_dates">
      <title>Source XML showing complex example of various elements with duplicate dates as well as
        a <sourcexml>case:decisiondate</sourcexml> that does have <b>direct</b> PCDATA that is not
        just a date</title>
      <codeblock>

&lt;case:body&gt;
  &lt;case:headnote&gt;
    &lt;case:info&gt;
      …
      &lt;case:courtinfo&gt;
        …
        &lt;case:dates&gt;
          &lt;case:hearingdates&gt;
            &lt;date day="23" month="05" year="2002"&gt;23 May 2002&lt;/date&gt;
            &lt;date day="29" month="01" year="2002"&gt;29 January 2002&lt;/date&gt;
          &lt;/case:hearingdates&gt;
          &lt;case:decisiondate ln.nsprefix="lnvxe:"&gt;
            &lt;date day="23" month="05" year="2002" ln.nsprefix="lnvxe:"&gt;23 May 2002&lt;/date&gt;. The following guide (issued on 
            &lt;date day="29" month="01" year="2002" ln.nsprefix="lnvxe:"&gt;29 January 2002&lt;/date&gt;) was reissued with editorial amendments.
          &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
        …
      &lt;/case:courtinfo&gt;
      …
    &lt;/case:info&gt;
    …
  &lt;/case:headnote&gt;
  &lt;case:content&gt;
    &lt;case:judgments&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
          &lt;date&gt;23 May 2002&lt;/date&gt;
          &lt;date day="29" month="01" year="2002"&gt;29 January 2002&lt;/date&gt;
        &lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
       …
    &lt;/case:judgments&gt;
  &lt;/case:content&gt;
&lt;case:body&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <p>Note how there are two <targetxml>courtorder:issuedate</targetxml> elements with exactly the same attribute values (day="23" month="05" year="2002"). This is because one of these came from content matching scenario #3 and duplicates are not checked and removed for that scenario.</p> 
      <codeblock>

&lt;courtorder:courtorder ...&gt;
  &lt;courtorder:head&gt;
    &lt;!--...--&gt;
    &lt;courtorder:issuedate day="23" month="05" year="2002"&gt;23 May 2002&lt;/courtorder:issuedate&gt;
    &lt;courtorder:issuedate day="29" month="01" year="2002"&gt;29 January 2002&lt;/courtorder:issuedate&gt;
    &lt;courtorder:issuedate day="23" month="05" year="2002"&gt;&lt;date-text&gt;23 May 2002&lt;/date-text&gt;. The following guide (issued on &lt;date-text&gt;29 January 2002 &lt;/date-text&gt;) was reissued with editorial amendments.&lt;/courtorder:issuedate&gt;
    &lt;!--...--&gt;
  &lt;/courtorder:head&gt;
  &lt;!--...--&gt;
&lt;/courtorder:courtorder&gt;

        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing a complex example of <sourcexml>case:hearingdates</sourcexml> and  <sourcexml>case:decisiondate</sourcexml> that have <b>direct</b> PCDATA that is a date</title>
      <p>Note that there is also a <sourcexml>date</sourcexml> element within another <sourcexml>case:decisiondate</sourcexml>, and all three of these are considered identical so that only a single <targetxml>courtorder:issuedate</targetxml> is created.</p>      
      <codeblock>

&lt;case:body&gt;
  &lt;case:headnote&gt;
    &lt;case:info&gt;
      …
      &lt;case:courtinfo&gt;
        …
				&lt;case:dates&gt;
					&lt;case:hearingdates&gt;14 JANUARY 2009&lt;/case:hearingdates&gt;
					&lt;case:decisiondate&gt;14 JANUARY 2009&lt;/case:decisiondate&gt;
				&lt;/case:dates&gt;        
        …
      &lt;/case:courtinfo&gt;
      …
    &lt;/case:info&gt;
    …
  &lt;/case:headnote&gt;
  &lt;case:content&gt;
    &lt;case:judgments&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
          &lt;date day="14" month="07" year="2009"&gt;14 JANUARY 2009&lt;/date&gt;
        &lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
       …
    &lt;/case:judgments&gt;
  &lt;/case:content&gt;
&lt;case:body&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;courtorder:courtorder ...&gt;
  &lt;courtorder:head&gt;
    &lt;!--...--&gt;
    &lt;courtorder:issuedate day="14" month="07" year="2009"&gt;14 JANUARY 2009&lt;/courtorder:issuedate&gt;
    &lt;!--...--&gt;
  &lt;/courtorder:head&gt;
  &lt;!--...--&gt;
&lt;/courtorder:courtorder&gt;

        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing an example of <sourcexml>case:hearingdates</sourcexml> with <b>direct</b> PCDATA that is an 8 digit date</title>
      <p>Note that besides the 8 digit date within <sourcexml>case:hearingdates</sourcexml>, there is also a <sourcexml>case:decisiondate</sourcexml> with direct PCDATA containing a text form of the same date. Further, there are no attributes for either of these dates since there are no child <sourcexml>date</sourcexml> elements. However, contents of the two elements are parsed and day, month, year portions are extracted and treated as if they were given as attributes. Thus, a single <targetxml>courtorder:issuedate</targetxml> is created, since the date these two elements represent is identicle.</p>      
      <codeblock>

&lt;case:body&gt;
  &lt;case:headnote&gt;
    &lt;case:info&gt;
      …
      &lt;case:courtinfo&gt;
        …
				&lt;case:dates&gt;
					&lt;case:hearingdates&gt;22052008&lt;/case:hearingdates&gt;
				&lt;/case:dates&gt;        
        …
      &lt;/case:courtinfo&gt;
      …
    &lt;/case:info&gt;
    …
  &lt;/case:headnote&gt;
  &lt;case:content&gt;
    &lt;case:judgments&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;22 May 2008&lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
       …
    &lt;/case:judgments&gt;
  &lt;/case:content&gt;
&lt;case:body&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;courtorder:courtorder ...&gt;
  &lt;courtorder:head&gt;
    &lt;!--...--&gt;
    &lt;courtorder:issuedate day="22" month="05" year="2008"&gt;22 May 2008&lt;/courtorder:issuedate&gt;
    &lt;!--...--&gt;
  &lt;/courtorder:head&gt;
  &lt;!--...--&gt;
&lt;/courtorder:courtorder&gt;

        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing suppression of empty elements</title>
      <p>Note that <sourcexml>case:hearingdates</sourcexml> is suppressed because all it contains is an empty child <sourcexml>date</sourcexml>, but <sourcexml>case:decisiondate</sourcexml> does contain PCDATA and so a <sourcexml>courtorder:issuedate</sourcexml> is output.</p>
      <codeblock>

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;
    &lt;date/&gt;
  &lt;/case:hearingdates&gt;
  &lt;case:decisiondate ln.nsprefix="lnvxe:"&gt;11 July 1984&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

        </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <p>Note that the PCDATA matched a date format in scenario #2 from the instructions, and so the day, month, and year attributes can be populated.</p>
      <codeblock>

&lt;courtorder:issuedate day="11" month="07" year="1984"&gt;11 July 1984&lt;/courtorder:issuedate&gt;

        </codeblock>
    </section>
    <section>
      <title>Source XML showing a partial date directly within <sourcexml>case:hearingdates</sourcexml></title>
      <codeblock>

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;March 1977.&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

        </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <p>Note that the PCDATA does not completely match a date format in scenario #2 from the instructions, and so this actually matches scenario #3. Also, since there is no child <sourcexml>date</sourcexml> element to parse the attribute values from, the <targetxml>courtorder:issuedate</targetxml> element will not have the <targetxml>@year, @month, @day</targetxml> attributes.</p>
      <codeblock>

&lt;courtorder:issuedate&gt;March 1997.&lt;/courtorder:issuedate&gt;

        </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-07-15 <ph id="change_20130715_JCG">Very minor change to the numbered list of scenarios. Removed point #4 ("For content matching this scenario, duplicates are not checked...") and added it as a separate bullet to the end of #3, since it is meant to be a comment regarding scenario #3. This does not change the instructions at all, I just wanted to make it clearer that the comment referred to scenerio #3.</ph>
      </p>
      <p>2013-06-21 <ph id="change_20130621_JCG">Updated instructions and added a note to one of the examples to emphasize that content matching scenario #3 is not checked for duplicates and so there can be multiple <targetxml>courtorder:issuedate</targetxml> elements created with the same attribute values if one or more of these is created from content matching scenario #3.</ph>
      </p>      
      <p>2013-06-20 <ph id="change_20130620_JCG">Updated instructions and added an example to emphasize that partial dates match scenario #3. Though content might be a partial date, it will not match scenario #2 since that only deals with complete dates in the given formats.</ph>
      </p>
      <p>2013-05-23 <ph id="change_20130523_JCG">Updated instructions and added two more examples to
          deal with the scenario when there is PCDATA directly within
            <sourcexml>case:decisiondate</sourcexml> or <sourcexml>case:hearingdates</sourcexml>
          that contains <b><u>only</u></b> a date (the entire content is a date).</ph>
      </p>      
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.info_case.dates.dita  -->
	<!--<xsl:message>case.info_case.dates.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:dates">

			<xsl:apply-templates select="@* | node()"/>

	</xsl:template>

  <xsl:template match="case:dates/case:decisiondate|case:dates/case:hearingdates">
    <xsl:choose>
      <xsl:when test="child::date and contains(.,'') ">
        <xsl:choose>
          <xsl:when test="preceding::date=child::date"/>
          <xsl:when test=".=preceding::case:decisiondate|preceding::case:hearingdates"/>
          <xsl:when test="date[not(attribute::*)]">
            <courtorder:issuedate>
              <xsl:analyze-string select="." regex="([0-9]+)\s([a-zA-Z]+)\s([0-9]{{4}})">
                <xsl:matching-substring>
                  <xsl:attribute name="month">
                    <xsl:value-of select="regex-group(2)"/>
                  </xsl:attribute>
                  <xsl:attribute name="day">
                    <xsl:value-of select="regex-group(1)"/>
                  </xsl:attribute>
                  <xsl:attribute name="year">
                    <xsl:value-of select="regex-group(3)"/>
                  </xsl:attribute>
                </xsl:matching-substring>
              </xsl:analyze-string>
              <xsl:value-of select="."/>
            </courtorder:issuedate>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="@*|node()"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:when test="matches(.,'([0-9]+)\s([a-zA-Z]+)\s([0-9]{4})')">
        <courtorder:issuedate>
          <xsl:analyze-string select="." regex="([0-9]+)\s([a-zA-Z]+)\s([0-9]{{4}})">
            <xsl:matching-substring>
              <xsl:attribute name="month">
                <xsl:variable name="month" select="regex-group(2)"/>
                <xsl:choose>
                  <xsl:when test="$month='January' or $month='JANUARY'">
                    <xsl:text>01</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='February' or $month='FEBRUARY'">
                    <xsl:text>02</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='March' or $month='MARCH'">
                    <xsl:text>03</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='April' or $month='APRIL'">
                    <xsl:text>04</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='May' or $month='MAY'">
                    <xsl:text>05</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='June' or $month='JUNE'">
                    <xsl:text>06</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='JULY' or $month='July'">
                    <xsl:text>07</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='August' or $month='AUGUST'">
                    <xsl:text>08</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='September' or $month='SEPTEMBER'">
                    <xsl:text>09</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='October' or $month='OCTOBER'">
                    <xsl:text>10</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='November' or $month='NOVEMBER'">
                    <xsl:text>11</xsl:text>
                  </xsl:when>
                  <xsl:when test="$month='December' or $month='DECEMBER'">
                    <xsl:text>12</xsl:text>
                  </xsl:when>
                </xsl:choose>
              </xsl:attribute>
              <xsl:attribute name="day">
                <xsl:value-of select="regex-group(1)"/>
              </xsl:attribute>
              <xsl:attribute name="year">
                <xsl:value-of select="regex-group(3)"/>
              </xsl:attribute>
            </xsl:matching-substring>
          </xsl:analyze-string>
          <xsl:value-of select="."/>
        </courtorder:issuedate>
      </xsl:when>
      <xsl:when test="matches(.,'([0-9]{2})([0-9]{2})([0-9]{4})')">
        <courtorder:issuedate>
          <xsl:analyze-string select="." regex="([0-9]{{2}})([0-9]{{2}})([0-9]{{4}})">
            <xsl:matching-substring>
              <xsl:attribute name="month">
                <xsl:value-of select="regex-group(2)"/>
              </xsl:attribute>
              <xsl:attribute name="day">
                <xsl:value-of select="regex-group(1)"/>
              </xsl:attribute>
              <xsl:attribute name="year">
                <xsl:value-of select="regex-group(3)"/>
              </xsl:attribute>
            </xsl:matching-substring>
          </xsl:analyze-string>
        </courtorder:issuedate>
      </xsl:when>
      <xsl:otherwise>
        <courtorder:issuedate>
          <xsl:choose>
            <xsl:when test="/CASEDOC/case:body/case:content/case:judgments/case:dates/case:decisiondate/date|/CASEDOC/case:body/case:content/case:judgments/case:dates/case:hearingdates/date">
              <xsl:attribute name="year">
                <xsl:value-of select="date/@year"/>
              </xsl:attribute>
              <xsl:attribute name="month">
                <xsl:value-of select="month/@month"/>
              </xsl:attribute>
              <xsl:attribute name="day">
                <xsl:value-of select="day/@day"/>
              </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="."/>
            </xsl:otherwise>
          </xsl:choose>
        </courtorder:issuedate>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
	
  <xsl:template match="case:dates/case:decisiondate/date|case:dates/case:hearingdates/date">
    <courtorder:issuedate>
      <xsl:attribute name="month">
        <xsl:value-of select="@month"/>
      </xsl:attribute>
      <xsl:attribute name="day">
        <xsl:value-of select="@day"/>
      </xsl:attribute>
      <xsl:attribute name="year">
        <xsl:value-of select="@year"/>
      </xsl:attribute>
      <date-text>
      <xsl:value-of select="."/>
      </date-text>
    </courtorder:issuedate>
  </xsl:template>
	
  
 
</xsl:stylesheet>