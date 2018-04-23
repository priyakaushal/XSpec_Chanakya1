<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.decisiondate_ln.user-displayed-to-LexisAdvance_decision.dates">
  <title><sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml> to
      <targetxml>decision:dates</targetxml> <lnpid>id-CCCC-10259</lnpid></title>
  <body>
    <section>
      <note>Elements that contain the attribute <sourcexml>@ln.user-displayed="false"</sourcexml>
        are used for certain functionality in Rosetta that does not exist in Lexis Advance. Each of
        the following elements have mappings described elsewhere in this CI for when this attribute
        does not exist. The examples here are ONLY for when this
          <sourcexml>@ln.user-displayed="false"</sourcexml> appears. (This attribute never has a
        "true" value, i.e. @ln.user-displayed="true".)</note>
      <p>When ln.user-displayed="false" appears on any date element (i.e.
          <sourcexml>case:decisiondate ln.user-displayed="false"</sourcexml>), that element is
        translated into the target but with the element content omitted. Only the attributes are
        populated. So there is no displayable content.</p>
      <p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be populated
        with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
          <sourcexml>case:decisiondate/date/@month</sourcexml> and
          <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a single
        hyphen. The values of <sourcexml>case:decisiondate/date/@month</sourcexml> and
          <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes so that
        they are 2 digits. <note>If one or more of the three date values (year, month or day) are
          absent, then <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
          populated.</note>
      </p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:decisiondate ln.user-displayed="false"&gt;
  &lt;date year="1995" month="04" day="8"&gt;8 April 1995&lt;/date&gt; 
&lt;/case:decisiondate&gt;

	</codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;decision:dates&gt;  
    &lt;decision:decisiondate year="1995" month="04" day="08" normdate="1995-04-08"/&gt;
&lt;/decision:dates&gt;

	</codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-01-09: <ph id="change_20130109_xxx">Instructions have been added with directions for
          populating the attribute <targetxml>decision:decisiondate/@normdate</targetxml>.</ph></p>
      <p>2012-10-24: <ph id="change_20121024_xxx">Added note to zero pad month and day
        attributes.</ph></p>
      <p>2012-09-13: <ph id="change_20120913_xxx">Created</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_case.decisiondate_ln.user-displayed-LxAdv-decision.dates.dita  -->
	 
<!-- Vikas Rohilla : compleated  -->
	<xsl:template match="case:decisiondate/@ln.user-displayed[.='false']"/>

</xsl:stylesheet>