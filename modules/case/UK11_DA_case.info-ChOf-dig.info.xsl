<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci source_cttr dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_case.info-ChOf-dig.info">
    <title>case:info (and descendants) <lnpid>id-UK11DA-29408</lnpid></title>
    <body>
        <section><note>This section is for <sourcexml>dig:info/case:info</sourcexml>. For
                    <sourcexml>cttr:annot/case:info</sourcexml>, see rules covering
                    <sourcexml>cttr:annotations</sourcexml>.</note></section>
        <section>
            <p><sourcexml>dig:info/case:info</sourcexml> becomes
                    <targetxml>abstract:body/abstract:target/casedigest:caseinfo</targetxml>.
                Process children as follows:<ul>
                    <li><sourcexml>case:casename</sourcexml> becomes
                            <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml></li>
                    <li><sourcexml>case:reportercite</sourcexml> becomes
                            <targetxml>ref:citations/ref:cite4thisresource</targetxml> (and see
                        "Note about case:reportercite", below)</li>
                    <li><sourcexml>case:decisiontype</sourcexml> becomes
                            <targetxml>casedigest:decisionresult</targetxml></li>
                    <li><sourcexml>case:constituents/case:constituent</sourcexml> becomes
                            <targetxml>casedigest:appearances/courtcase:representation/courtcase:counsel</targetxml></li>
                    <li><sourcexml>case:courtinfo</sourcexml> is a container that does not itself
                        convert. Children map within <targetxml>casedigest:caseinfo</targetxml> as
                        follows: <ul>
                            <li><sourcexml>case:courtcite</sourcexml> becomes
                                    <targetxml>caseinfo:courtcite/textitem</targetxml>.</li>
                            <li><sourcexml>case:courtcode</sourcexml> becomes
                                    <targetxml>jurisinfo:courtinfo[@courtcode]</targetxml>. The
                                source pcdata becomes attribute value in target.</li>
                            <li><sourcexml>case:courtname</sourcexml> becomes
                                    <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml></li>
                            <li><sourcexml>case:juris</sourcexml> becomes
                                    <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml></li>
                            <li><sourcexml>case:judges</sourcexml> becomes
                                    <targetxml>casedigest:appearances/courtcase:panel/courtcase:judges</targetxml></li>
                            <li><sourcexml>case:dates</sourcexml> becomes
                                    <targetxml>decision:dates</targetxml>. With children:<ul>
                                    <li><sourcexml>case:decisiondate/date[@day @month
                                            @year]</sourcexml> becomes
                                            <targetxml>decision:decisiondate[@day @month
                                            @year]/date-text</targetxml><ul>
                                            <li>Also create
                                                  <targetxml>decision:decisiondate/@normdate</targetxml>
                                                with value "YYYY-MM-DD", as shown in the example
                                                below. The day and month values must be 2 digits.
                                                  <b>Exception:</b> Do not create
                                                  <targetxml>@normdate</targetxml> if any of the
                                                three date values (year, month, day) is absent.</li>
                                        </ul></li>
                                    <li><sourcexml>case:hearingdates/date[@day @month
                                            @year]</sourcexml> becomes
                                            <targetxml>decision:argueddate[@day @month
                                            @year]/date-text</targetxml></li>
                                </ul></li>
                        </ul></li>
                </ul>
                <note>In target, create only one <targetxml>casedigest:appearances</targetxml> and
                    only one <targetxml>jurisinfo:courtinfo</targetxml>. It is ok to change the
                    order of the data.</note>
                <note>Suppress attribute <sourcexml>@display-name</sourcexml> when it occurs on
                        <sourcexml>case:decisiontype</sourcexml>,
                    <sourcexml>case:judges</sourcexml>, or
                    <sourcexml>case:reportercite</sourcexml>.</note></p></section>
        <section><title><b><u>Note about
                <sourcexml>case:reportercite</sourcexml></u></b></title><p>Most commonly,
                    <sourcexml>case:reportercite</sourcexml> contains child
                    <sourcexml>ci:cite</sourcexml> which maps to <targetxml>lnci:cite</targetxml> in
                usual way (see General Markup). If text (pcdata) is present in
                    <sourcexml>case:reportercite</sourcexml>, then map text to
                    <targetxml>connector</targetxml> within <targetxml>ref:citations</targetxml> and
                create <targetxml>ref:cite4thisresource/lnci:cite</targetxml> for each source
                    <sourcexml>ci:cite</sourcexml>. Predominant use case is multiple
                    <sourcexml>ci:cite</sourcexml> separated by comma space; as shown in the example
                below.</p>
            <p>Also Note: There are ocurrences of incorrect wrapper
                    <sourcexml>ci:cite/ci:content</sourcexml> between
                    <sourcexml>case:reportercite</sourcexml> and populated
                    <sourcexml>ci:cite</sourcexml>. Suppress the wrapper. That is, treat
                    <sourcexml>case:reportercite/ci:cite/ci:content/ci:cite{populated}</sourcexml>
                as if it were <sourcexml>case:reportercite/ci:cite{populated}</sourcexml>. Known to
                occur in Oct 2014 redelivery, dpsi 0MGR.</p></section>

        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:info&gt;
  ...
  &lt;case:info&gt;
    &lt;case:casename&gt;Appeal Tracker: *Tulane Education Fund v Comptroller General of
        Patents&lt;/case:casename&gt;
    &lt;case:reportercite display-name="Citation"&gt;
       &lt;ci:cite searchtype="CASE-REF"&gt;&lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="EWHCPAT"/&gt;
            &lt;ci:edition&gt;&lt;ci:date year="2012"/&gt;&lt;/ci:edition&gt;&lt;ci:page
            num="932"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;[2012] EWHC 932
            (Pat)&lt;/ci:content&gt;&lt;/ci:cite&gt;, &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;&lt;ci:caseref&gt;&lt;ci:reporter value="ALLERD"/&gt;&lt;ci:volume num="05"/&gt;
            &lt;ci:edition&gt;&lt;ci:date year="2012"/&gt;&lt;/ci:edition&gt;&lt;ci:page num="16"/&gt;
            &lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;[2012] All ER (D) 16
            (May)&lt;/ci:content&gt;&lt;/ci:cite&gt;
    &lt;/case:reportercite&gt;
    &lt;case:courtinfo&gt;
        &lt;case:dates&gt;
            &lt;case:decisiondate&gt;
                &lt;date day="17" month="04" year="2012"&gt;17 April 2012&lt;/date&gt;
            &lt;/case:decisiondate&gt;
            &lt;case:hearingdates&gt;
                &lt;date day="25" month="01" year="2012"&gt;25 January 2012&lt;/date&gt;
            &lt;/case:hearingdates&gt;
        &lt;/case:dates&gt;
        &lt;case:courtcite&gt;
            &lt;ci:cite&gt;
                &lt;ci:content&gt;[2014] EWHC 451 (Comm)&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/case:courtcite&gt;
        &lt;case:courtname&gt;Chancery Division&lt;/case:courtname&gt;
        &lt;case:courtcode&gt;ChD&lt;/case:courtcode&gt;
        &lt;case:juris&gt;EnglandandWales&lt;/case:juris&gt;
        &lt;case:judges display-name="Judges"&gt;Roger Wyand QC&lt;/case:judges&gt;
    &lt;/case:courtinfo&gt;
    &lt;case:decisiontype display-name="Decision"&gt;Appeal dismissed&lt;/case:decisiontype&gt;
    &lt;case:constituents&gt;
        &lt;case:constituent&gt;Phillip Johnson (instructed by Elkington and Fife LLP) for the
            claimant; Charlotte May (instructed by the Treasury Solicitor) for the
            defendant&lt;/case:constituent&gt;
    &lt;/case:constituents&gt;
  &lt;/case:info&gt;
  ...
&lt;/dig:info&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:target&gt;
  ...
  &lt;casedigest:caseinfo&gt;
      &lt;caseinfo:casename&gt;
         &lt;caseinfo:fullcasename&gt;Appeal Tracker: *Tulane Education Fund v Comptroller 
             General of Patents&lt;/caseinfo:fullcasename&gt;
      &lt;/caseinfo:casename&gt;
      &lt;ref:citations&gt;
         &lt;ref:cite4thisresource&gt;
             &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseref&gt;
                &lt;lnci:reporter value="EWHCPAT"/&gt;&lt;lnci:edition&gt;
                &lt;lnci:date year="2012"/&gt;&lt;/lnci:edition&gt;&lt;lnci:page num="932"/&gt;
                &lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;[2012] EWHC 932
                (Pat)&lt;/lnci:content&gt;&lt;/lnci:cite&gt;
         &lt;/ref:cite4thisresource&gt;
         &lt;connector&gt;, &lt;/connector&gt;
         &lt;ref:cite4thisresource&gt;
             &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseref&gt;
                &lt;lnci:reporter value="ALLERD"/&gt;
                &lt;lnci:volume num="05"/&gt;&lt;lnci:edition&gt;&lt;lnci:date year="2012"/&gt;
                &lt;/lnci:edition&gt;&lt;lnci:page num="16"/&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2012] All ER (D) 16 (May)&lt;/lnci:content&gt;&lt;/lnci:cite&gt;
         &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;
      &lt;decision:dates&gt;
         &lt;decision:decisiondate day="17" month="04" year="2012" normdate="2012-04-17"&gt;
            &lt;date-text&gt;17 April 2012&lt;/date-text&gt;
         &lt;/decision:decisiondate&gt;
         &lt;decision:argueddate day="25" month="01" year="2012"&gt;
            &lt;date-text&gt;25 January 2012&lt;/date-text&gt;
         &lt;/decision:argueddate&gt;
      &lt;/decision:dates&gt;
      &lt;caseinfo:courtcite&gt;
         &lt;textitem&gt;
            &lt;lnci:cite&gt;
               &lt;lnci:content&gt;[2014] EWHC 451 (Comm)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
         &lt;/textitem&gt;
      &lt;/caseinfo:courtcite&gt;
      &lt;jurisinfo:courtinfo courtcode="ChD"&gt;
         &lt;jurisinfo:courtname&gt;Chancery Division&lt;/jurisinfo:courtname&gt;
         &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;EnglandandWales&lt;/jurisinfo:system&gt;
         &lt;/jurisinfo:jurisdiction&gt;
      &lt;/jurisinfo:courtinfo&gt;
      &lt;casedigest:appearances&gt;
         &lt;courtcase:panel&gt;
            &lt;courtcase:judges&gt;Roger Wyand QC&lt;/courtcase:judges&gt;
         &lt;/courtcase:panel&gt;
         &lt;courtcase:representation&gt;
            &lt;courtcase:counsel&gt;Phillip Johnson (instructed by Elkington and Fife LLP) for the
               claimant; Charlotte May (instructed by the Treasury Solicitor) for the
               defendant&lt;/courtcase:counsel&gt;
         &lt;/courtcase:representation&gt;
      &lt;/casedigest:appearances&gt;
      &lt;casedigest:decisionresult&gt;Appeal dismissed&lt;/casedigest:decisionresult&gt;
  &lt;/casedigest:caseinfo&gt;
  ...
&lt;/abstract:target&gt;

        </pre>

        <section>
            <title>Changes</title>
            <p>2014-11-04: <ph id="change_20141104_jhm">Minor correction in example. Not a rule
                    change. Source <sourcexml>@searchtype</sourcexml> at
                        <sourcexml>ci:cite</sourcexml> was incorrectly copied to target
                        <targetxml>lnci:cite</targetxml>. Attribute searchtype now removed from
                    target.</ph></p>
            <p>2014-10-14: <ph id="change_20141014_jhm">New rules. Mappings for
                        <sourcexml>case:courtcite</sourcexml> to
                        <targetxml>caseinfo:courtcite</targetxml> and
                        <sourcexml>case:hearingdates</sourcexml> to
                        <targetxml>decision:argueddate</targetxml>. Data are new in Oct 2014
                    redelivery. New target xpaths. R4.5 Board Item 1965.</ph></p>
            <p>2014-10-13: <ph id="change_20141013_jhm">Added rule for ci:cite occurring as child of
                    ci:content. Rule added within section titled "Note about
                        <sourcexml>case:reportercite</sourcexml>". R4.5 Board Item 1969.</ph></p>
            <p>2013-10-30: <ph id="change_20131030_jhm">New rule. Handles text (pcdata) within
                        <sourcexml>case:reportercite</sourcexml>. Target result is
                        <targetxml>abstract:target/casedigest:caseinfo/ref:citations</targetxml>
                    with multiple <targetxml>ref:cite4thisresource</targetxml> and intervening
                        <targetxml>connector</targetxml>. This is same mapping as used in UK03
                    casedigest. Webteam 243798.</ph></p>
            <p>2013-09-17: <ph id="change_20130917_jhm">New section. Handles new xpath
                        <sourcexml>dig:body/dig:info/case:info</sourcexml> which has multiple new
                    children. Markup occurs in dpsi 0MGR "Cases" which is new in Sept 2013
                    redelivery, as noted in WebTeam # 233402.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_case.info-ChOf-dig.info.dita  -->
<!--	<xsl:message>UK11_DA_case.info-ChOf-dig.info.xsl requires manual development!</xsl:message> -->

    <!--Vikas Rohilla : Template to match the dig:info/case:info-->
    <xsl:template match="dig:info/case:info">
        <casedigest:caseinfo>
            <xsl:apply-templates select="@* | node()"/>
        </casedigest:caseinfo>
    </xsl:template>
    
    <xsl:template match="case:juris" mode="metadata"/>


</xsl:stylesheet>