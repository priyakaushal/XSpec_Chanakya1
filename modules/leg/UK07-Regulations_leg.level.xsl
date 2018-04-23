<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
        <title>leg:level <lnpid>id-UK07-28220</lnpid></title>
        <body>
            <section>
                <p><sourcexml>leg:level/leg:level-vrnt</sourcexml> becomes <targetxml>primlaw:level</targetxml> which has a required attribute <targetxml>@leveltype</targetxml>.</p>
                <p>If <sourcexml>leg:level/leg:level-vrnt/@leveltype</sourcexml> has the same value as any of the <targetxml>primlaw:level/@leveltype</targetxml> values listed below then create the target
                        <targetxml>primlaw:level</targetxml> and <targetxml>@leveltype</targetxml> below.</p>
                <ul>
                    <li>
                        <targetxml>primlaw:level[@leveltype="act"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="addendum"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="agreement"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="amendment"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="annex"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="appendix"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="article"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="attachment"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="canon"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="chapter"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="clause"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="companion"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="constitution"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="dictionary"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="division"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="endnote"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="exhibit"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="form"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="introduction"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="order"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="part"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="preamble"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="regulation"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="rule"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="section"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subarticle"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subchapter"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subclause"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subdivision"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subpart"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subregulation"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subschedule"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subrule"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subtitle"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="supplement"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="title"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="topic"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="treaty"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="agency"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="subagency"]</targetxml>
                    </li>
                    <li>
                        <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                    </li>
                </ul>

                <p>In addition to the above <sourcexml>@leveltype</sourcexml> value conversions, this stream also contains the following special values which will be converted as described.</p>
                <ul>
                    <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="sched"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                    <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov1"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                    <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov2"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                    <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov3"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                    <li><sourcexml>leg:level/leg:level-vrnt[@leveltype="prov4"]</sourcexml> becomes <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                    <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov1"]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                    <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov2"]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                    <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov3"]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                    <li><sourcexml>leg:level[ancestor:: leg:level/leg:level-vrnt[@leveltype="sched"]/leg:level-vrnt[@leveltype="prov4"]</sourcexml> becomes
                        <targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                </ul>
                <note>If the input files contain a <sourcexml>@leveltype</sourcexml> value other than those shown above, the target value will be set as <targetxml>@leveltype="unclassified"</targetxml>.</note>
                <pre>

&lt;leg:body>
    ......
    &lt;leg:level>
        &lt;leg:level-vrnt>
            &lt;leg:levelbody>
                &lt;leg:bodytext searchtype="LEGISLATION">
                    &lt;pgrp>
                        &lt;p>
                            &lt;text searchtype="LEGISLATION">Signed by authority of the Secretary
                                of State for Work and Pensions.&lt;/text>
                        &lt;/p>
                        &lt;p>
                            &lt;text searchtype="LEGISLATION">
                                &lt;emph typestyle="it">Angela Eagle&lt;/emph>
                            &lt;/text>
                        &lt;/p>
                        &lt;p>
                            &lt;text searchtype="LEGISLATION">Minister of State,&lt;/text>
                        &lt;/p>
                        &lt;p>
                            &lt;text searchtype="LEGISLATION">Department for Work and
                                Pensions&lt;/text>
                        &lt;/p>
                        &lt;p>
                            &lt;text searchtype="LEGISLATION">5th January 2010&lt;/text>
                        &lt;/p>
                    &lt;/pgrp>
                &lt;/leg:bodytext>
            &lt;/leg:levelbody>
        &lt;/leg:level-vrnt>
    &lt;/leg:level>
&lt;/leg:body>


          <b>Becomes</b>


&lt;regulation:body>
    .......
    &lt;primlaw:level leveltype="unclassified">
        &lt;primlaw:bodytext>
            &lt;pgrp>
                &lt;p>
                    &lt;text>Signed by authority of the Secretary
                        of State for Work and Pensions.&lt;/text>
                &lt;/p>
                &lt;p>
                    &lt;text>
                        &lt;emph typestyle="it">Angela Eagle&lt;/emph>
                    &lt;/text>
                &lt;/p>
                &lt;p>
                    &lt;text>Minister of State,&lt;/text>
                &lt;/p>
                &lt;p>
                    &lt;text>Department for Work and
                        Pensions&lt;/text>
                &lt;/p>
                &lt;p>
                    &lt;text>5th January 2010&lt;/text>
                &lt;/p>
            &lt;/pgrp>
        &lt;/primlaw:bodytext>
    &lt;/primlaw:level>
&lt;/regulation:body>

        </pre>

                <note>
                    <b>
                        <u>Special Target Rules for Nested Subsections:</u>
                    </b>
                    <p>Some input data cause nested <targetxml>primlaw:level[@leveltype="subsection"]</targetxml> in target which are semantically incorrect but cannot be corrected at the data source. This also creates
                        problems for presentation, so special action is required after initial conversion to adjust the target. Goal is to have final target where subsections do not nest.</p>
                    <b>Apply the following rules: -</b>
                    <ol>
                        <li>Remove target <targetxml>primlaw:level[@leveltype="subsection"]</targetxml> when it is a container only, i.e. contains only one or more child <targetxml>primlaw:level</targetxml> element and
                            no other children (e.g. no <targetxml>heading</targetxml>, no <targetxml>primlaw:bodytext</targetxml>).</li>
                        <li>If target <targetxml>primlaw:level[@leveltype="subsection"]</targetxml> contains multiple <targetxml>heading</targetxml> and multiple child
                                <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>, then move each <targetxml>heading</targetxml> into next immediate <targetxml>primlaw:level</targetxml> and remove the parent
                                <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>.</li>
                    </ol>
                    <p>Either rule <b>#1</b> or <b>#2</b>, or <b>both</b>, may apply to a particular <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>. Please see the two examples below for more details. In
                        each of the two examples, there is one SOURCE XML sample and two OUTPUT XML samples. The first OUTPUT XML shows output <b><u>before</u></b> any of the above rules are applied, and the second
                        OUTPUT XML sample in each example shows output after one of the above two rules is applied.</p>
                </note>
            </section>
            <example>
                <title>Source XML 1: (with nested <sourcexml>leg:level/leg:level-vrnt[@leveltype="prov2"]</sourcexml>)</title>
                <codeblock> &lt;leg:level> &lt;leg:level-vrnt> &lt;leg:levelbody> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov1"> &lt;leg:levelbody> &lt;leg:bodytext> &lt;leg:heading align="left"
                    searchtype="LEGISLATION"> &lt;desig inline="true" searchtype="PROV-NUM"> &lt;designum> &lt;emph typestyle="bf">6&lt;/emph> &lt;/designum> &lt;/desig> &lt;title searchtype="PROV-TITLE"> &lt;emph
                    typestyle="bf"> Amendment of article 1 of the Pharmacy and General Sale Order&lt;/emph> &lt;/title> &lt;/leg:heading> &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2"
                    searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text searchtype="LEGISLATION">........—&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;leg:level>
                    &lt;leg:level-vrnt> &lt;leg:levelbody> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2"> &lt;leg:levelbody> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION">
                    &lt;leg:levelbody> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov3" searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text
                    searchtype="LEGISLATION">““optometrist independent prescriber” means a person—&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov4" searchtype="LEGISLATION">
                    &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text searchtype="LEGISLATION">(a)     who is a registered optometrist, and&lt;/text> &lt;/p> &lt;p> &lt;text
                    searchtype="LEGISLATION">............&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level>
                    &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody>
                    &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> </codeblock>
            </example>
            <example>
                <title>Target XML 1.1: (per current conversion rule, target element <targetxml>primlaw:level[@leveltype="subsection"]</targetxml> when it is a container only)</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:level leveltype="section"> &lt;heading align="left"> &lt;desig inline="true"> &lt;emph typestyle="bf">6&lt;/emph> &lt;/desig> &lt;title>
                    &lt;emph typestyle="bf"> Amendment of article 1 of the Pharmacy and General Sale Order&lt;/emph> &lt;/title> &lt;/heading> &lt;primlaw:level leveltype="subsection"> &lt;primlaw:bodytext> &lt;p>
                    &lt;text>......—&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:level leveltype="subsection"> &lt;primlaw:level leveltype="subsection">
                    &lt;primlaw:level leveltype="paragraph"> &lt;primlaw:bodytext> &lt;p> &lt;text>““optometrist independent prescriber” means a person—&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;primlaw:level
                    leveltype="subparagraph"> &lt;primlaw:bodytext> &lt;p> &lt;text>(a)     who is a registered optometrist, and&lt;/text> &lt;/p> &lt;p> &lt;text>.......&lt;/text> &lt;/p> &lt;/primlaw:bodytext>
                    &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> </codeblock>
            </example>
            <example>
                <title>Target XML 1.2: (After applying rule #1, removed <targetxml>primlaw:level[@leveltype="subsection"]</targetxml> when it was a container only)</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:level leveltype="section"> &lt;heading align="left"> &lt;desig inline="true"> &lt;emph typestyle="bf">6&lt;/emph> &lt;/desig> &lt;title>
                    &lt;emph typestyle="bf"> Amendment of article 1 of the Pharmacy and General Sale Order&lt;/emph> &lt;/title> &lt;/heading> &lt;primlaw:level leveltype="subsection"> &lt;primlaw:bodytext> &lt;p>
                    &lt;text>.....—&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:level leveltype="paragraph"> &lt;primlaw:bodytext> &lt;p> &lt;text>““optometrist
                    independent prescriber” means a person—&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;primlaw:level leveltype="subparagraph"> &lt;primlaw:bodytext> &lt;p> &lt;text>(a)     who is a registered
                    optometrist, and&lt;/text> &lt;/p> &lt;p> &lt;text>.......&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level>
                    &lt;/primlaw:level> </codeblock>
            </example>

            <example>
                <title>Source XML 2: (with nested and multiple <sourcexml>leg:level/leg:level-vrnt[@leveltype="prov2"]</sourcexml> along with multiple <sourcexml>leg:heading</sourcexml>)</title>
                <codeblock> &lt;leg:level> &lt;leg:level-vrnt> &lt;leg:levelbody> &lt;leg:level> &lt;leg:level-vrnt> &lt;leg:heading align="center"> &lt;title> &lt;emph typestyle="bf">EXPLANATORY NOTE&lt;/emph>
                    &lt;/title> &lt;/leg:heading> &lt;leg:levelbody> &lt;leg:level> &lt;leg:level-vrnt> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;h align="center" searchtype="LEGISLATION">
                    &lt;emph typestyle="it">(This note is not part of the Order)&lt;/emph> &lt;/h> &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2"> &lt;leg:levelbody> &lt;leg:bodytext>
                    &lt;leg:heading align="left" searchtype="LEGISLATION"> &lt;desig searchtype="PROV-NUM"> &lt;designum> &lt;emph typestyle="bf">1&lt;/emph> &lt;/designum> &lt;/desig> &lt;/leg:heading>
                    &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text
                    searchtype="LEGISLATION">........&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;leg:bodytext> &lt;leg:heading align="left" searchtype="LEGISLATION">
                    &lt;desig searchtype="PROV-NUM"> &lt;designum> &lt;emph typestyle="bf">2&lt;/emph> &lt;/designum> &lt;/desig> &lt;/leg:heading> &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2"
                    searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text searchtype="LEGISLATION">.......&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;/leg:levelbody>
                    &lt;/leg:level-vrnt> &lt;/leg:level> &lt;leg:bodytext> &lt;leg:heading align="left" searchtype="LEGISLATION"> &lt;desig searchtype="PROV-NUM"> &lt;designum> &lt;emph typestyle="bf">3&lt;/emph>
                    &lt;/designum> &lt;/desig> &lt;/leg:heading> &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext
                    searchtype="LEGISLATION"> &lt;p> &lt;text searchtype="LEGISLATION">........&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;leg:bodytext>
                    &lt;leg:heading align="left" searchtype="LEGISLATION"> &lt;desig searchtype="PROV-NUM"> &lt;designum> &lt;emph typestyle="bf">4&lt;/emph> &lt;/designum> &lt;/desig> &lt;/leg:heading>
                    &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2" searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text
                    searchtype="LEGISLATION">.......&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;leg:bodytext> &lt;leg:heading align="left" searchtype="LEGISLATION">
                    &lt;desig searchtype="PROV-NUM"> &lt;designum> &lt;emph typestyle="bf">5&lt;/emph> &lt;/designum> &lt;/desig> &lt;/leg:heading> &lt;/leg:bodytext> &lt;leg:level> &lt;leg:level-vrnt leveltype="prov2"
                    searchtype="LEGISLATION"> &lt;leg:levelbody> &lt;leg:bodytext searchtype="LEGISLATION"> &lt;p> &lt;text searchtype="LEGISLATION">.....&lt;/text> &lt;/p> &lt;/leg:bodytext> &lt;/leg:levelbody>
                    &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt>
                    &lt;/leg:level> &lt;/leg:levelbody> &lt;/leg:level-vrnt> &lt;/leg:level> </codeblock>
            </example>
            <example>
                <title>Target XML 2.1: (per current conversion rule, nested and multiple <targetxml>primlaw:level[@leveltype="subsection"]</targetxml> along with multiple <targetxml>heading</targetxml>)</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:level leveltype="unclassified"> &lt;heading align="center"> &lt;title> &lt;emph typestyle="bf">EXPLANATORY NOTE&lt;/emph> &lt;/title>
                    &lt;/heading> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:bodytext> &lt;h align="center"> &lt;emph typestyle="it">(This note is not part of the Order)&lt;/emph> &lt;/h>
                    &lt;/primlaw:bodytext> &lt;primlaw:level leveltype="subsection"> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">1&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:level
                    leveltype="subsection"> &lt;primlaw:bodytext> &lt;p> &lt;text>.....&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;heading align="left"> &lt;desig> &lt;emph
                    typestyle="bf">2&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:level leveltype="subsection"> &lt;primlaw:bodytext> &lt;p> &lt;text>.......&lt;/text> &lt;/p> &lt;/primlaw:bodytext>
                    &lt;/primlaw:level> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">3&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:level leveltype="subsection"> &lt;primlaw:bodytext> &lt;p>
                    &lt;text>........&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">4&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:level
                    leveltype="subsection"> &lt;primlaw:bodytext> &lt;p> &lt;text>.......&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;heading align="left"> &lt;desig> &lt;emph
                    typestyle="bf">5&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:level leveltype="subsection"> &lt;primlaw:bodytext> &lt;p> &lt;text>......&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level>
                    &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> </codeblock>
            </example>
            <example>
                <title>Target XML 2.2: (After applying rule #2, moved each <targetxml>heading</targetxml> into next immediate <targetxml>primlaw:level</targetxml> and removed the parent
                        <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>)</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:level leveltype="unclassified"> &lt;heading align="center"> &lt;title> &lt;emph typestyle="bf">EXPLANATORY NOTE&lt;/emph> &lt;/title>
                    &lt;/heading> &lt;primlaw:level leveltype="unclassified"> &lt;primlaw:bodytext> &lt;h align="center"> &lt;emph typestyle="it">(This note is not part of the Order)&lt;/emph> &lt;/h>
                    &lt;/primlaw:bodytext> &lt;primlaw:level leveltype="subsection"> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">1&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:bodytext> &lt;p>
                    &lt;text>.......&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;primlaw:level leveltype="subsection"> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">2&lt;/emph>
                    &lt;/desig> &lt;/heading> &lt;primlaw:bodytext> &lt;p> &lt;text>............&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;primlaw:level leveltype="subsection"> &lt;heading
                    align="left"> &lt;desig> &lt;emph typestyle="bf">3&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:bodytext> &lt;p> &lt;text>.........&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level>
                    &lt;primlaw:level leveltype="subsection"> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">4&lt;/emph> &lt;/desig> &lt;/heading> &lt;primlaw:bodytext> &lt;p> &lt;text>........&lt;/text>
                    &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;primlaw:level leveltype="subsection"> &lt;heading align="left"> &lt;desig> &lt;emph typestyle="bf">5&lt;/emph> &lt;/desig> &lt;/heading>
                    &lt;primlaw:bodytext> &lt;p> &lt;text>..........&lt;/text> &lt;/p> &lt;/primlaw:bodytext> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> &lt;/primlaw:level> </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2017-05-01: <ph id="change_20170501_CSN"> Updated language to pass through standard values of @leveltype. VSTS 224346.</ph></p>
                <p>2014-02-05: <ph id="change_20140205_PY"> Added two special rules for handling nested subsections and multiple headings within subsection. (from R4.5 Content Issue List: UK07 Regulations - subsection
                        leveltype within subsection leveltype). WebTeam #249313.</ph></p>
            </section>

        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.level.dita  -->
    <xsl:template match="leg:level">
        <primlaw:level>
            <xsl:choose>
                <xsl:when test="leg:level-vrnt/@leveltype = 'sched'">
                    <xsl:attribute name="leveltype" select="'schedule'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt/@leveltype = 'prov1'">
                    <xsl:attribute name="leveltype" select="'section'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt[@leveltype = 'prov2']">
                    <xsl:attribute name="leveltype" select="'subsection'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt[@leveltype = 'prov3']">
                    <xsl:attribute name="leveltype" select="'paragraph'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt[@leveltype = 'prov4']">
                    <xsl:attribute name="leveltype" select="'subparagraph'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt[@leveltype = 'prov5']">
                    <xsl:attribute name="leveltype" select="'unclassified'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt[@leveltype = 'signature']">

                    <xsl:attribute name="leveltype" select="'unclassified'"/>
                </xsl:when>
                <xsl:when test="leg:level-vrnt[@leveltype = 'prov6']">
                    <xsl:attribute name="leveltype" select="'unclassified'"/>
                </xsl:when>
                <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov1']">
                    <xsl:attribute name="leveltype" select="'paragraph'"/>
                </xsl:when>
                <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov2']">
                    <xsl:attribute name="leveltype" select="'subparagraph'"/>
                </xsl:when>
                <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov3']">
                    <xsl:attribute name="leveltype" select="'subparagraph'"/>
                </xsl:when>
                <xsl:when test="ancestor::leg:level/leg:level-vrnt[@leveltype = 'sched']/leg:level-vrnt[@leveltype = 'prov4']">
                    <xsl:attribute name="leveltype" select="'subparagraph'"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="leveltype"
                        select="
                            if ((leg:level-vrnt[@leveltype = 'commentary' or @leveltype = 'commentary-note']) or (not(leg:level-vrnt/@leveltype))) then
                                'unclassified'
                            else
                                leg:level-vrnt/@leveltype"
                    />
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="leg:level-vrnt/leg:heading//refpt"/>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>

    <xsl:template match="leg:level/@id">
        <xsl:attribute name="xml:id" select="."/>
    </xsl:template>

    <xsl:template match="leg:level/@subdoc">
        <xsl:attribute name="includeintoc" select="."/>
    </xsl:template>

    <xsl:template match="leg:level/@toc-caption">
        <xsl:attribute name="alternatetoccaption" select="."/>
    </xsl:template>

    <xsl:template match="leg:level-vrnt">
        <xsl:apply-templates select="node()"/>
    </xsl:template>

</xsl:stylesheet>
