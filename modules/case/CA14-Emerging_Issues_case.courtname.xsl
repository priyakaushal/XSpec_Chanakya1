<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
    exclude-result-prefixes="dita case">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtname">
        <title>case:courtname <lnpid>id-CA14-35614</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>case:courtname</sourcexml> becomes
                            <targetxml>seclaw:body/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>. <ul>
                            <li>If there are sibling <sourcexml>case:courtname</sourcexml>, map each
                                to
                                <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>.</li>
                        </ul></li>
                </ul>
                <pre>
&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Ontario Superior Court of Justice&lt;/case:courtname&gt;
    &lt;case:courtname&gt;Small Claims Court&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>
                        
&lt;seclaw:body&gt;
    &lt;seclaw:digestgrp&gt;
        &lt;seclaw:digest&gt;
            &lt;seclaw:digestinfo&gt;
                &lt;caseinfo:caseinfo&gt;
                    &lt;jurisinfo:courtinfo&gt;
                        &lt;jurisinfo:courtname&gt;Ontario Superior Court of Justice&lt;/jurisinfo:courtname&gt;
                    &lt;/jurisinfo:courtinfo&gt;
                    &lt;jurisinfo:courtinfo&gt;
                        &lt;jurisinfo:courtname&gt;Small Claims Court&lt;/jurisinfo:courtname&gt;
                    &lt;/jurisinfo:courtinfo&gt;
                &lt;/caseinfo:caseinfo&gt;
            &lt;/seclaw:digestinfo&gt;
        &lt;/seclaw:digest&gt;
    &lt;/seclaw:digestgrp&gt;
&lt;/seclaw:body&gt;
                    </pre>
            </section>

            <section>
                <title>Changes</title>
                <p>2015-03-26: <ph id="change_20150326_jm">Added rule for sibling
                            <sourcexml>case:courtname</sourcexml>, to create wrapper
                            <targetxml>jurisinfo:courtinfo</targetxml> for each. RFA 13.</ph></p>
                <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
            </section>

        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\case.courtname.dita  -->
    <!--<xsl:message>CA14-Emerging_Issues_case.courtname.xsl requires manual development!</xsl:message> -->

    <!--Vikas Rohilla : Template to match the case:courtname and creats the jurisinfo:courtname -->
    <xsl:template match="case:courtname">
        <jurisinfo:courtname>
            <xsl:apply-templates select="@* | node()"/>
        </jurisinfo:courtname>
    </xsl:template>

</xsl:stylesheet>