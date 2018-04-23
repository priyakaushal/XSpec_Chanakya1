<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite_subset">
    <title>case:reportercite Subset <lnpid>id-CA02CC-12438</lnpid></title>
    <body>
        <section>
            <ul>
                <li> If <sourcexml>case:reportercite</sourcexml> has the following subset values
                    then it will be mapped as
                        <targetxml>casedigest:head/casedigest:caseinfo/ref:citations/ref:parallelcite@citetype="parallel"</targetxml>.<table>
                        <tgroup cols="4">
                            <tbody>
                                <row>
                                    <entry><b>DPSI</b>
                                    </entry>
                                    <entry><b>PCSI</b>
                                    </entry>
                                    <entry><b>SRCNAME Value</b>
                                    </entry>
                                    <entry><b>Source Name</b>
                                    </entry>
                                </row>
                                <row>
                                    <entry>03EJ</entry>
                                    <entry>281278</entry>
                                    <entry>AESI</entry>
                                    <entry>Alberta Employment Standards Awards Index</entry>
                                </row>
                                <row>
                                    <entry>03EO</entry>
                                    <entry>281279</entry>
                                    <entry>AGAI</entry>
                                    <entry>Alberta Grievance Arbitration Awards Index</entry>
                                </row>
                                <row>
                                    <entry>03ER</entry>
                                    <entry>281333</entry>
                                    <entry>ALRI</entry>
                                    <entry>Alberta Labour Relations Board Decisions Index</entry>
                                </row>
                            </tbody>
                        </tgroup>
                    </table>
                    <pre>....
&lt;docinfo:lbu-meta&gt;
    &lt;docinfo:metaitem name="SRCNAME" value="AGAI"/&gt;
    &lt;docinfo:metaitem name="SRCDOCNO" value="00002353"/&gt;
    &lt;docinfo:metaitem name="DPSI" value="03EO"/&gt;
&lt;/docinfo:lbu-meta&gt;
....
&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00000259" spanref="cspan00000259"&gt;
                &lt;ci:reporter value="LAC4"/&gt;
                &lt;ci:volume num="15"/&gt;
                &lt;ci:page num="68"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00000259"&gt;15 L.A.C. (4th) 68&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

<b>Becomes</b>

&lt;ref:citations&gt;
    &lt;ref:parallelcite citetype="parallel"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="cref00000259"&gt;
                    &lt;lnci:reporter value="LAC4"/&gt;
                    &lt;lnci:volume num="15"&gt; &lt;/lnci:volume&gt;
                    &lt;lnci:page num="68"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;15 L.A.C. (4th) 68&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:parallelcite&gt;
&lt;/ref:citations&gt;
          </pre>
                </li>
            </ul>
        </section>
        <section>
            <title>Created</title>
            <p>2014-12-11: <ph id="change_20141211_AS">updated complete mapping with attribute <targetxml>citetype="parallel"</targetxml>..."DB item # 2049</ph></p>
            <p>2014-12-04: <ph id="change_20141204_AS">Added attribute <targetxml>citetype="parallel"</targetxml> to <targetxml>ref:parallelcite</targetxml>..."DB
                item # 1824</ph></p>
            <p>2014-09-12: <ph id="change_20140912_AS"><sourcexml>case:reportercite</sourcexml> to
                    be mapped as <targetxml>ref:parallelcite</targetxml> for specific subset..."DB
                    item # 1824 </ph></p>
            <p>2014-08-19: <ph id="change_20140819_AS"><sourcexml>case:reportercite</sourcexml> to
                    be mapped as <targetxml>ref:cite4thisresource @citetype="parallel"</targetxml>
                    for specific subset..."DB item # 1824 </ph></p>
            </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.reportercite_subset.dita  -->
	<xsl:message>case.reportercite_subset.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:reportercite">

		<!--  Original Target XPath:  casedigest:head/casedigest:caseinfo/ref:citations/ref:parallelcite@citetype="parallel"   -->
		<casedigest:head>
			<casedigest:caseinfo>
				<ref:citations>
					<ref:parallelcite>
						<xsl:apply-templates select="@* | node()"/>
					</ref:parallelcite>
				</ref:citations>
			</casedigest:caseinfo>
		</casedigest:head>

	</xsl:template>

</xsl:stylesheet>