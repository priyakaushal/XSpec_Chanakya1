<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtinfo">
    <title>case:courtinfo <lnpid>id-ST05-28418</lnpid></title>
    <body>
        <ul>
            <li>If <sourcexml>case:courtinfo</sourcexml> contains only one
                    <sourcexml>case:courtname</sourcexml>, then it becomes
                    <targetxml>compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo</targetxml></li>
            <li> If <sourcexml>case:courtinfo</sourcexml> contains more than one
                    <sourcexml>case:courtname</sourcexml>, then the following directions should be
                followed: <ul>
                    <li>The following collection of elements (children of
                            <sourcexml>case:courtinfo</sourcexml>), regardless of sequence, should
                        be considered a set: <ul>
                            <li><sourcexml>case:courtname</sourcexml></li>
                            <li><sourcexml>case:courtcode</sourcexml></li>
                            <li><sourcexml>case:juris</sourcexml></li>
                            <li><sourcexml>case:dates</sourcexml></li>
                            <li><sourcexml>case:judges</sourcexml></li>
                        </ul></li>
                    <li>There should be no repetition of elements in a set.</li>
                    <li>For each set of elements listed above, the individual elements should be
                        mapped to children of <targetxml>compcase:caseinstanceinfo</targetxml>.</li>
                    <li>Refer to the instructions for each child element of
                            <sourcexml>case:courtinfo</sourcexml> to determine the proper target
                        element.</li>
                </ul>
            </li>
            <li>If PCDATA is encountered directly inside <sourcexml>case:courtinfo</sourcexml>, its
                handling depends on the text:<ul>
                    <li>'<b>, X</b>', where <b>X</b> represents any text: drop the comma and map
                            <b>X</b> to
                            <targetxml>compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:city
                        </targetxml>.</li>
                    <li>A lone punctuation mark, such as a comma, colon or em-dash: this text should
                        be dropped. This rule applies to character reference codes such as
                        &amp;#x2014; (em-dash) as well as the characters themselves.</li>
                    <li>Any other text: flag this as an error and bring it to the attention of
                        Content Architecture.</li>
                </ul></li>
        </ul>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>

&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Court of Appeal&lt;/case:courtname&gt;
    &lt;case:courtcode&gt;NZCA&lt;/case:courtcode&gt;
    &lt;case:juris&gt;NZ&lt;/case:juris&gt;
    &lt;case:dates&gt;
        &lt;case:hearingdates&gt;
            &lt;date day="01" month="11" year="1882"&gt;1 November&lt;/date&gt;; &lt;/case:hearingdates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="18" month="11" year="1882"&gt;18 November 1882&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    &lt;case:judges&gt;
        &lt;case:judge&gt;Prendergast CJ&lt;/case:judge&gt;, &lt;case:judge&gt;Richmond J&lt;/case:judge&gt;
    &lt;/case:judges&gt;
    &lt;case:courtname&gt;Court of Appeal&lt;/case:courtname&gt;
    &lt;case:courtcode&gt;NZCA&lt;/case:courtcode&gt;
    &lt;case:juris&gt;NZ&lt;/case:juris&gt;
    &lt;case:dates&gt;
        &lt;case:hearingdates&gt;
            &lt;date day="16" month="01" year="1883"&gt;16 January&lt;/date&gt;; &lt;date day="29" month="03" year="1883"&gt;29 March&lt;/date&gt;; &lt;/case:hearingdates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="17" month="04" year="1883"&gt;17 April 1883&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    &lt;case:judges&gt;
        &lt;case:judge&gt;Richmond J&lt;/case:judge&gt;
    &lt;/case:judges&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;compcase:head&gt;
    &lt;compcase:caseinstanceinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZCA"/&gt;
            &lt;jurisinfo:courtname&gt;Court of Appeal&lt;/jurisinfo:courtname&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:courtinfo&gt;
        &lt;decision:dates&gt;
            &lt;decision:argueddate day="01" month="11" year="1882"&gt;&lt;date-text&gt;1 November&lt;/date-text&gt;;&lt;/decision:argueddate&gt;
            &lt;decision:decisiondate day="18" month="11" year="1882" normdate="1882-11-18"&gt;
                &lt;date-text&gt;18 November 1882&lt;/date-text&gt;
            &lt;/decision:decisiondate&gt;
        &lt;/decision:dates&gt;
        &lt;courtcase:panel&gt;
            &lt;courtcase:judges&gt;
                &lt;person:judge&gt;Prendergast CJ&lt;/person:judge&gt;, &lt;person:judge&gt;Richmond J&lt;/person:judge&gt;
            &lt;/courtcase:judges&gt;
        &lt;/courtcase:panel&gt;
    &lt;/compcase:caseinstanceinfo&gt;
    &lt;compcase:caseinstanceinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZCA"/&gt;
            &lt;jurisinfo:courtname&gt;Court of Appeal&lt;/jurisinfo:courtname&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:courtinfo&gt;
        &lt;decision:dates&gt;
            &lt;decision:argueddate day="16" month="01" year="1883"&gt;&lt;date-text&gt;16 January&lt;/date-text&gt;;&lt;/decision:argueddate&gt;
            &lt;decision:argueddate day="29" month="03" year="1883"&gt;&lt;date-text&gt;29 March&lt;/date-text&gt;;&lt;/decision:argueddate&gt;
            &lt;decision:decisiondate day="17" month="04" year="1883" normdate="1883-04-17"&gt;
                &lt;date-text&gt;17 April 1883&lt;/date-text&gt;
            &lt;/decision:decisiondate&gt;
        &lt;/decision:dates&gt;
        &lt;courtcase:panel&gt;
            &lt;courtcase:judges&gt;
                &lt;person:judge&gt;Richmond J&lt;/person:judge&gt;
            &lt;/courtcase:judges&gt;
        &lt;/courtcase:panel&gt;
    &lt;/compcase:caseinstanceinfo&gt;
&lt;/compcase:head&gt;

           </codeblock>
        </example>
        <example>
            <title>Source XML - PCDATA (', Brisbane') inside
                <sourcexml>case:courtinfo</sourcexml></title>
            <codeblock>

&lt;case:courtinfo&gt;
    &lt;case:juris&gt;Qld&lt;/case:juris&gt;
    &lt;case:courtname&gt;Supreme Court&lt;/case:courtname&gt;
    &lt;case:courtcode&gt;QSC&lt;/case:courtcode&gt;, Brisbane
    &lt;case:judges&gt;
        &lt;case:judge&gt;McPherson J&lt;/case:judge&gt;
    &lt;/case:judges&gt;
    &lt;case:filenum&gt;[Mot. 91/1988]&lt;/case:filenum&gt;
    &lt;case:dates&gt;
        &lt;case:hearingdates&gt;3, 10 February; 9 March 1988&lt;/case:hearingdates&gt;
        &lt;case:decisiondate ln.user-displayed="false"&gt;
            &lt;date year="1988" month="03" day="09"&gt;9 March 1988&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    ...
&lt;/case:courtinfo&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;compcase:caseinstanceinfo&gt;
     &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:alternatecourtcode alternatecourtcode="QSC"/&gt;
        &lt;jurisinfo:courtname&gt;Supreme Court&lt;/jurisinfo:courtname&gt;
        &lt;jurisinfo:jurisdiction&gt;
           &lt;jurisinfo:location&gt;
              &lt;location:city&gt;Brisbane&lt;/location:city&gt;
           &lt;/jurisinfo:location&gt;
           &lt;jurisinfo:system&gt;Qld&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
     &lt;/jurisinfo:courtinfo&gt;
     &lt;decision:dates&gt;
        &lt;decision:argueddate&gt;&lt;date-text&gt;3, 10 February; 9 March
           1988&lt;/date-text&gt;&lt;/decision:argueddate&gt;
        &lt;decision:decisiondate year="1988" month="03" day="09" normdate="1988-03-09"&gt;
           &lt;date-text&gt;9 March 1988&lt;/date-text&gt;
        &lt;/decision:decisiondate&gt;
     &lt;/decision:dates&gt;
     &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
           &lt;person:judge&gt;&gt;McPherson J&lt;/person:judge&gt;
        &lt;/courtcase:judges&gt;
     &lt;/courtcase:panel&gt;
     &lt;caseinfo:docketnum&gt;[Mot. 91/1988]&lt;/caseinfo:docketnum&gt;
 &lt;/compcase:caseinstanceinfo&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.courtinfo.dita  -->
	<xsl:message>Compcase_case.courtinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:courtinfo">

		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo   -->
		<compcase:head>
			<compcase:caseinstanceinfo>
				<jurisinfo:courtinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:courtinfo>
			</compcase:caseinstanceinfo>
		</compcase:head>

	</xsl:template>

	<xsl:template match="case:courtname">

		<!--  Original Target XPath:  compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo   -->
		<compcase:head>
			<compcase:caseinstanceinfo>
				<jurisinfo:courtinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:courtinfo>
			</compcase:caseinstanceinfo>
		</compcase:head>

	</xsl:template>

	<xsl:template match="case:courtcode">

		<!--  Original Target XPath:  compcase:caseinstanceinfo   -->
		<compcase:caseinstanceinfo>
			<xsl:apply-templates select="@* | node()"/>
		</compcase:caseinstanceinfo>

	</xsl:template>

	<xsl:template match="case:juris">

		<!--  Original Target XPath:  compcase:caseinstanceinfo   -->
		<compcase:caseinstanceinfo>
			<xsl:apply-templates select="@* | node()"/>
		</compcase:caseinstanceinfo>

	</xsl:template>

	<xsl:template match="case:dates">

		<!--  Original Target XPath:  compcase:caseinstanceinfo   -->
		<compcase:caseinstanceinfo>
			<xsl:apply-templates select="@* | node()"/>
		</compcase:caseinstanceinfo>

	</xsl:template>

	<xsl:template match="case:judges">

		<!--  Original Target XPath:  compcase:caseinstanceinfo   -->
		<compcase:caseinstanceinfo>
			<xsl:apply-templates select="@* | node()"/>
		</compcase:caseinstanceinfo>

	</xsl:template>

</xsl:stylesheet>