<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.refsummary">
  <title>cttr:refssummary <lnpid>id-AU02-18431</lnpid></title>
  <body>
    <section>
		<note>AU Journal Citator documents with the attribute value <sourcexml>CITATORDOC @journalarticle="true"</sourcexml> 
			***should not*** receive the <targetxml>cttr:refssummary</targetxml> tally markup, as graphical representations
			are not included in Journal Citators. The Graphical Representations are only for CaseBase Cases.</note>
      <p>Australian Citator documents require that the number of citing cases and considered cases
                be tallied within <targetxml>cttr:refssummary</targetxml> for each year and court
                with which these cases are associated. The tallies are sorted by signal value
                (positive, neutral, cautionary, negative) and displayed in Lexis Advance as graphs. </p>
            <p>These instructions describe how to tally the cases (one case in each instance of
                    <sourcexml>cttr:annot</sourcexml> ) for
                    <sourcexml>cttr:annotations[@annotationtype="subseqcases"]</sourcexml> and
                    <sourcexml>cttr:annotations[@annotationtype="consideredcases"]</sourcexml>.</p>
      <p>Within <targetxml>cttr:refsection[@reftype="citing-cases"]</targetxml> and
                    <targetxml>cttr:refsection[@reftype="considered-cases"]</targetxml>, create two
                instances of <targetxml>cttr:refsection/cttr:refssummary</targetxml> as described
                below - one to tally the cases by courtname, and the other to tally the cases by
                year:</p>
      <ul>
        <li> Create <targetxml>cttr:refsection/cttr:refssummary</targetxml> for case tallies by
                    courtname: <ul>
                        <li>Within <targetxml>cttr:refsection</targetxml>, create
                                <targetxml>cttr:refssummary[@summarytype="court_signal_tally"]</targetxml>. </li>
                        <li>For all <sourcexml>cttr:annot</sourcexml> within the parent
                                <sourcexml>cttr:annotations</sourcexml>, collect all the unique
                            signal values in the path
                                <sourcexml>cttr:annot/cttr:use-group/cttr:use/@signal</sourcexml>
                            (possible values are positive, neutral, cautionary, negative). 
                            <note>A
                                single <sourcexml>cttr:annot/cttr:use-group</sourcexml> can have
                                multiple instances of <sourcexml>cttr:use</sourcexml>. Be sure to
                                collect all of the unique signal values. For example, the following
                                source markup contains two unique signal values - "positive" and
                                "neutral":
                                <pre>
&lt;cttr:usagegroup negativesortweight="12171980089472" positivesortweight="2171980089472"&gt;
    &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Cited&lt;/text&gt;
    &lt;/cttr:usage&gt;
    &lt;cttr:usage usagetype="positive"&gt;
        &lt;text&gt;Applied&lt;/text&gt;
    &lt;/cttr:usage&gt;
    &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Considered&lt;/text&gt;
    &lt;/cttr:usage&gt;
&lt;/cttr:usagegroup&gt;
</pre></note></li>
                        <li>For each unique signal value, create
                                <targetxml>cttr:refssummarygroup</targetxml> and assign
                                <targetxml>@grouptype</targetxml> that signal value (for example,
                                <targetxml>cttr:refssummarygroup[@grouptype="positive"]</targetxml></li>
                        <li>For each <sourcexml>cttr:annot</sourcexml> that contains that signal
                            value, collect all the unique values of the court name
                                (<sourcexml>cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml>).
                            For example: ACTCA, NSWCCA, NSWLEC, NSWSC, QCA, SASC.</li>
                        <li>For each unique court name, create
                                <targetxml>cttr:refssummaryitem[@documenttype="case"]</targetxml>,
                            assign @value to that court name (for example, NSWCCA), and tally the
                            number of cases that have the same signal value and court name. For
                                example:<pre>&lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;46&lt;/cttr:refssummaryitem&gt;</pre><p>Following
                                is an example of a complete tally of cases by court
                                name:<pre>&lt;cttr:refssummary summarytype="court_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;46&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWSC" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="ACTCA" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;121&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWLEC" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWSC" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="QCA" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
 &lt;/cttr:refssummary&gt;            </pre>.</p></li>
                    </ul>
                </li>
        <li> Create <targetxml>cttr:refsection/cttr:refssummary</targetxml> for case tallies by
                    year: <ul>
                        <li>Within <targetxml>cttr:refsection</targetxml>, create
                                <targetxml>cttr:refssummary[@summarytype="year_signal_tally"]</targetxml>. </li>
                        <li>For all <sourcexml>cttr:annot</sourcexml> within the parent
                                <sourcexml>cttr:annotations</sourcexml>, collect all the unique
                            signal values in the path
                                <targetxml>cttr:annot/cttr:use-group/cttr:use/@signal</targetxml>
                            (possible values are positive, neutral, cautionary, negative).
                            <note>A
                                single <sourcexml>cttr:annot/cttr:use-group</sourcexml> can have
                                multiple instances of <sourcexml>cttr:use</sourcexml>. Be sure to
                                collect all of the unique signal values. For example, the following
                                source markup contains two unique signal values - "positive" and
                                "neutral":
                                <pre>
&lt;cttr:usagegroup negativesortweight="12171980089472" positivesortweight="2171980089472"&gt;
    &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Cited&lt;/text&gt;
    &lt;/cttr:usage&gt;
    &lt;cttr:usage usagetype="positive"&gt;
        &lt;text&gt;Applied&lt;/text&gt;
    &lt;/cttr:usage&gt;
    &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Considered&lt;/text&gt;
    &lt;/cttr:usage&gt;
&lt;/cttr:usagegroup&gt;
</pre></note></li>
                        <li>For each unique signal value, create
                                <targetxml>cttr:refssummarygroup</targetxml> and assign
                                <targetxml>@grouptype</targetxml> that signal value (for example,
                                <targetxml>cttr:refssummarygroup[@grouptype="positive"]</targetxml></li>
                        <li>For each <sourcexml>cttr:annot</sourcexml> that contains that signal
                            value, collect all the unique values of the year of the decision date
                                (<sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate/date/@year</sourcexml>).
                            For example: 1978, 1979, 1981, 1991, 2002, 2003, 2010, 2011, 2012.</li>
                        <li>For each unique year, create
                                <targetxml>cttr:refssummaryitem[@documenttype="case"]</targetxml>,
                            assign @value to that year (for example, 2012), and tally the number of
                            cases that have the same signal value and court name. For
                                example:<pre>&lt;cttr:refssummaryitem value="2012" documenttype="case"&gt;16&lt;/cttr:refssummaryitem&gt;</pre><p>Following
                                is an example of a complete tally of cases by court
                                name:<pre>&lt;cttr:refssummary summarytype="year_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="2010" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="1978" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="1991" documenttype="case"&gt;3&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2002" documenttype="case"&gt;3&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2003" documenttype="case"&gt;3&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2010" documenttype="case"&gt;6&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2011" documenttype="case"&gt;11&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2012" documenttype="case"&gt;19&lt;/cttr:refssummaryitem&gt;

        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="1978" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="1979" documenttype="case"&gt;7&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="1981" documenttype="case"&gt;16&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2002" documenttype="case"&gt;12&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2010" documenttype="case"&gt;18&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2011" documenttype="case"&gt;23&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2012" documenttype="case"&gt;13&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
 &lt;/cttr:refssummary&gt;            </pre>.</p></li>
                    </ul>
                </li>
      </ul>
  <p>Following is the complete markup for the above examples in
                    <sourcexml>cttr:annotations[@annotationtype="subseqcases"]</sourcexml>:
                <pre>&lt;cttr:refsection reftype="citing-cases"&gt;
    &lt;cttr:refssummary summarytype="court_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;46&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWSC" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="ACTCA" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWCCA" documenttype="case"&gt;121&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWLEC" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NSWSC" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="QCA" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
 &lt;/cttr:refssummary&gt;
 &lt;cttr:refssummary summarytype="year_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="2010" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="1978" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="1991" documenttype="case"&gt;3&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2002" documenttype="case"&gt;3&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2003" documenttype="case"&gt;3&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2010" documenttype="case"&gt;6&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2011" documenttype="case"&gt;11&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2012" documenttype="case"&gt;19&lt;/cttr:refssummaryitem&gt;  
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="1978" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="1979" documenttype="case"&gt;7&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="1981" documenttype="case"&gt;16&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2002" documenttype="case"&gt;12&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2010" documenttype="case"&gt;18&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2011" documenttype="case"&gt;23&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="2012" documenttype="case"&gt;13&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
    &lt;/cttr:refssummary&gt;
   .............. 
&lt;/cttr:refsection&gt;</pre></p>
    </section>
    <section>
      <title>Changes</title>
        <p>2015-01-16: <ph id="change_20150116_brt">Added a note to collect all of the unique signal values when there are multiple instances of <sourcexml>cttr:use</sourcexml> in a single <sourcexml>cttr:annot/cttr:use-group</sourcexml>.</ph></p>
        <p>2015-01-09: <ph id="change_20150109_sep">Added note that AU Journal Citator documents should not receive the <targetxml>cttr:refssummary</targetxml> tally markup. RFA #39.</ph></p>
        <p>2014-06-18: <ph id="change_20140618_brt">Replaced <targetxml>case:courtname</targetxml> with <targetxml>case:courtcode</targetxml>.</ph></p>
      <p>2014-06-05: <ph id="change_20140605_brt">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\cttr.refsummary.dita  -->
    <!--*************DOCUMENTATION ONLY, COVERED IN OTHER MODULES ***************** -->
</xsl:stylesheet>