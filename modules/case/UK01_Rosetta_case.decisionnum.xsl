<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.decisionnum">
    <title>case:decisionnum <lnpid>id-UK01-27042</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:decisionnum</sourcexml> becomes
                    <targetxml>decision:decisionnum</targetxml>.</p>
        </section>
        <example>
            <codeblock>
&lt;case:info&gt;
    ...
    &lt;case:decisionnum&gt;DECISION NUMBER: TC00152&lt;/case:decisionnum&gt;
&lt;/case:info&gt;
                </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:caseinfo&gt;
    ...
    &lt;decision:decisionnum&gt;DECISION NUMBER: TC00152&lt;/decision:decisionnum&gt;
&lt;/caseinfo:caseinfo&gt;
                </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-09-04: <ph id="change_20150904_PS">Created.</ph></p>
        </section>

    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.decisionnum.dita  -->

	<xsl:template match="case:decisionnum">
		<!--  Original Target XPath:  decision:decisionnum   -->
		<decision:decisionnum>
			<xsl:apply-templates select="@* | node()"/>
		</decision:decisionnum>
	</xsl:template>

</xsl:stylesheet>