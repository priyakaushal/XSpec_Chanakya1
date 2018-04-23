<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case cttr source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.refsummary">
    <title>cttr:refssummary <lnpid>id-CA03-13236</lnpid></title>
    <body>
        <section>
            <p>Citator documents require that the number of citing cases and considered cases be
                tallied within <targetxml>cttr:refssummary</targetxml> for each year, jurisdiction,
                and court with which these cases are associated. The tallies are sorted by signal
                value (positive, neutral, cautionary, negative) and displayed in Lexis Advance as
                graphs. </p>
            <p>These instructions describe how to tally the cases (one case in each instance of
                    <sourcexml>cttr:annot</sourcexml> ) for
                    <sourcexml>cttr:annotations[@annotationtype="subseqcases"]</sourcexml>. Note
                that these instructions cover citing cases, but do not address considered cases,
                which are not currently distinguished in CA Citator documents. </p>
            <p>Within <targetxml>cttr:refsection[@reftype="citing-cases"]</targetxml>, create three
                instances of <targetxml>cttr:refsection/cttr:refssummary</targetxml> as described
                below - one to tally the cases by courtname, one to tally the cases by jurisdiction,
                and a third to tally the cases by year:</p>
            <ul>
                <li> Create <targetxml>cttr:refsection/cttr:refssummary</targetxml> for case tallies
                    by courtname: <ul>
                        <li>Within <targetxml>cttr:refsection</targetxml>, create
                                <targetxml>cttr:refssummary[@summarytype="court_signal_tally"]</targetxml>. </li>
                        <li>For all <sourcexml>cttr:annot</sourcexml> within the parent
                                <sourcexml>cttr:annotations</sourcexml>, collect all the unique
                            signal values in the path
                                <sourcexml>cttr:annot/cttr:use-group/cttr:use/@signal</sourcexml>
                            (possible values are positive, neutral, cautionary, negative).</li>
                        <li>For each unique signal value, create
                                <targetxml>cttr:refssummarygroup</targetxml> and assign
                                <targetxml>@grouptype</targetxml> that signal value (for example,
                                <targetxml>cttr:refssummarygroup[@grouptype="positive"]</targetxml></li>
                        <li>For each <sourcexml>cttr:annot</sourcexml> that contains that signal
                            value, collect all the unique values of the court name
                                (<sourcexml>cttr:annot/case:info/case:courtinfo/case:courtname</sourcexml>).
                            For example: ABDistCt, BCSCFull, BCCoCt, BCRevBdCrimCd.</li>
                        <li>For each unique court name, create
                                <targetxml>cttr:refssummaryitem[@documenttype="case"]</targetxml>,
                            assign @value to that court name (for example, BCSCFull), and tally the
                            number of cases that have the same signal value and court name. For
                                example:<pre>&lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;46&lt;/cttr:refssummaryitem&gt;</pre><p>Following
                                is an example of a complete tally of cases by court
                                name:<pre>&lt;cttr:refssummary summarytype="court_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;46&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="BCCoCt" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="BCCoCt" documenttype="case"&gt;121&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="ABDistCt" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="BCRevBdCrimCd" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
 &lt;/cttr:refssummary&gt;            </pre>.</p></li>
                    </ul></li>
                <li> Create <targetxml>cttr:refsection/cttr:refssummary</targetxml> for case tallies
                    by jurisdiction: <ul>
                        <li>Within <targetxml>cttr:refsection</targetxml>, create
                                <targetxml>cttr:refssummary[@summarytype="jurisdiction_signal_tally"]</targetxml>. </li>
                        <li>For all <sourcexml>cttr:annot</sourcexml> within the parent
                            <sourcexml>cttr:annotations</sourcexml>, collect all the unique
                            signal values in the path
                            <sourcexml>cttr:annot/cttr:use-group/cttr:use/@signal</sourcexml>
                            (possible values are positive, neutral, cautionary, negative).</li>
                        <li>For each unique signal value, create
                            <targetxml>cttr:refssummarygroup</targetxml> and assign
                            <targetxml>@grouptype</targetxml> that signal value (for example,
                            <targetxml>cttr:refssummarygroup[@grouptype="positive"]</targetxml></li>
                        <li>For each <targetxml>cttr:refitem</targetxml> in the target document that
                            contains that signal value, collect all the unique values of the
                            jursidiction
                                (<targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system/globalentity:entity/globalentity:content</targetxml>).
                            For example: NB, NL, NS, NT, NU, etc.</li>
                        <li>For each unique jurisdiction, create
                                <targetxml>cttr:refssummaryitem[@documenttype="case"]</targetxml>,
                            assign @value to that jurisdiction (for example, NB), and tally the
                            number of cases that have the same signal value and jurisdiction. For
                                example:<pre>&lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;32&lt;/cttr:refssummaryitem&gt;</pre><p>Following
                                is an example of a complete tally of cases by
                                jurisdiction:<pre>&lt;cttr:refssummary summarytype="jurisdiction_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;32&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NU" documenttype="case"&gt;26&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;16&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NL" documenttype="case"&gt;24&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;27&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NL" documenttype="case"&gt;12&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NS" documenttype="case"&gt;31&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NT" documenttype="case"&gt;22&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
 &lt;/cttr:refssummary&gt;            </pre>.</p></li>
                    </ul>
                </li>
                
                <li> Create <targetxml>cttr:refsection/cttr:refssummary</targetxml> for case tallies
                    by year: <ul>
                        <li>Within <targetxml>cttr:refsection</targetxml>, create
                                <targetxml>cttr:refssummary[@summarytype="year_signal_tally"]</targetxml>. </li>
                        <li>For all <sourcexml>cttr:annot</sourcexml> within the parent
                                <sourcexml>cttr:annotations</sourcexml>, collect all the unique
                            signal values in the path
                                <targetxml>cttr:annot/cttr:use-group/cttr:use/@signal</targetxml>
                            (possible values are positive, neutral, cautionary, negative).</li>
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
                            cases that have the same signal value and year. For
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
            &lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;46&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="BCCoCt" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="BCSCFull" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="BCCoCt" documenttype="case"&gt;121&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="ABDistCt" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="BCRevBdCrimCd" documenttype="case"&gt;1&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
 &lt;/cttr:refssummary&gt;
&lt;cttr:refssummary summarytype="jurisdiction_signal_tally"&gt;
        &lt;cttr:refssummarygroup grouptype="cautionary"&gt;
            &lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;32&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NU" documenttype="case"&gt;26&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="positive"&gt;
            &lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;16&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NL" documenttype="case"&gt;24&lt;/cttr:refssummaryitem&gt;
        &lt;/cttr:refssummarygroup&gt;
        &lt;cttr:refssummarygroup grouptype="neutral"&gt;
            &lt;cttr:refssummaryitem value="NB" documenttype="case"&gt;27&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NL" documenttype="case"&gt;12&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NS" documenttype="case"&gt;31&lt;/cttr:refssummaryitem&gt;
            &lt;cttr:refssummaryitem value="NT" documenttype="case"&gt;22&lt;/cttr:refssummaryitem&gt;
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
            <p>2015-05-11: <ph id="change_20150511_brt">Modified instructions to get the value of
                    the jurisdiction for <targetxml>cttr:refssummaryitem/@value</targetxml> from
                        <targetxml>jurisinfo:system/globalentity:entity/globalentity:content
                    </targetxml>instead of <targetxml>jurisinfo:system</targetxml>. R4.5 RFA
                    #2311.</ph></p>
            <p>2014-10-16: <ph id="change_20141016_brt">Modified instructions to use <sourcexml>case:courtname</sourcexml> instead of <sourcexml>case:courtcode</sourcexml> when creating <targetxml>cttr:refssummary[@summarytype="court_signal_tally"]</targetxml>.</ph></p>
            <p>2014-09-29: <ph id="change_20140929_brt">Added instructions for creating <targetxml>cttr:refssummary[@summarytype="jurisdiction_signal_tally"]</targetxml>. QuickCite RFA #1931.</ph></p>
            <p>2014-07-16: <ph id="change_20140716_brt">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\cttr.refsummary.dita  -->
	
<!-- Sudhanshu Srivastava : Initially drafted on 27 May 2017. If changes required , please update accordingly. -->
    
    <!-- This template handling tally report of number of citing cases and considered cases for each year, jurisdiction,
                and court with which these cases are associated . The tallies are sorted by signal
                value (positive, neutral, cautionary, negative) and displayed in Lexis Advance as
                graphs-->
    
    <xsl:template name="cttrrefssummary">
        <xsl:param name="refsummarynode"/>
        <cttr:refssummary summarytype="court_signal_tally">
            <xsl:for-each-group select="$refsummarynode/source_cttr:use-group/source_cttr:use" group-by="@signal[.!='citation']">
                <xsl:sort select="@signal"/>
                <cttr:refssummarygroup>
                    <xsl:attribute name="grouptype">
                        <xsl:value-of select="@signal"/>
                    </xsl:attribute>
                    <xsl:for-each-group select="current-group()/parent::source_cttr:use-group/following-sibling::case:info/case:courtinfo" group-by="case:courtname">
                        <xsl:variable name="key">
                            <xsl:choose>
                                <xsl:when test="current-grouping-key()='PQ'">
                                    <xsl:text>QC</xsl:text>
                                </xsl:when>
                                <xsl:when test="current-grouping-key()='CD' or current-grouping-key()='Canada' or current-grouping-key()='UK'">
                                    <xsl:text>CA</xsl:text>
                                </xsl:when>
                                <xsl:when test="current-grouping-key()='NF'">
                                    <xsl:text>NL</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="current-grouping-key()"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <cttr:refssummaryitem documenttype="case" value="{$key}">
                           <xsl:value-of select="count(current-group())"/>
                        </cttr:refssummaryitem>
                   </xsl:for-each-group>
                </cttr:refssummarygroup>
            </xsl:for-each-group>
        </cttr:refssummary>
        <cttr:refssummary summarytype="jurisdiction_signal_tally">
            <xsl:for-each-group select="$refsummarynode/source_cttr:use-group/source_cttr:use" group-by="@signal[.!='citation']">
                <xsl:sort select="@signal"/>
                <cttr:refssummarygroup>
                    <xsl:attribute name="grouptype">
                        <xsl:value-of select="@signal"/>
                    </xsl:attribute>
                    <xsl:for-each-group select="current-group()/parent::source_cttr:use-group/following-sibling::case:info/case:courtinfo" group-by="case:juris">
                        <xsl:variable name="key">
                            <xsl:choose>
                                <xsl:when test="current-grouping-key()='PQ'">
                                    <xsl:text>QC</xsl:text>
                                </xsl:when>
                                <xsl:when test="current-grouping-key()='CD' or current-grouping-key()='Canada' or current-grouping-key()='UK'">
                                    <xsl:text>CA</xsl:text>
                                </xsl:when>
                                <xsl:when test="current-grouping-key()='NF'">
                                    <xsl:text>NL</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="current-grouping-key()"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <cttr:refssummaryitem documenttype="case" value="{$key}">
                            <xsl:value-of select="count(current-group())"/>
                        </cttr:refssummaryitem>
                    </xsl:for-each-group>
                </cttr:refssummarygroup>
            </xsl:for-each-group>
        </cttr:refssummary>
        <cttr:refssummary summarytype="year_signal_tally">
            <xsl:for-each-group select="$refsummarynode/source_cttr:use-group/source_cttr:use" group-by="@signal[.!='citation']">
                <xsl:sort select="@signal"/>
                <cttr:refssummarygroup>
                    <xsl:attribute name="grouptype">
                        <xsl:value-of select="@signal"/>
                    </xsl:attribute>
                    <xsl:for-each-group select="current-group()/parent::source_cttr:use-group/following-sibling::case:info/case:courtinfo/case:dates/case:decisiondate/date" group-by="@year">
                        <xsl:variable name="key">
                            <xsl:choose>
                                <xsl:when test="current-grouping-key()='PQ'">
                                    <xsl:text>QC</xsl:text>
                                </xsl:when>
                                <xsl:when test="current-grouping-key()='CD' or current-grouping-key()='Canada' or current-grouping-key()='UK'">
                                    <xsl:text>CA</xsl:text>
                                </xsl:when>
                                <xsl:when test="current-grouping-key()='NF'">
                                    <xsl:text>NL</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="current-grouping-key()"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <cttr:refssummaryitem documenttype="case" value="{$key}">
                            <xsl:value-of select="count(current-group())"/>
                        </cttr:refssummaryitem>
                    </xsl:for-each-group>
                </cttr:refssummarygroup>
            </xsl:for-each-group>
        </cttr:refssummary>
    </xsl:template>
</xsl:stylesheet>