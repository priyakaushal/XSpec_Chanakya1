<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcite">
    <title>case:courtcite <lnpid>id-MY01-16007</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:courtcite</sourcexml> becomes
                    <targetxml>caseinfo:courtcite</targetxml>. Inside
                    <targetxml>caseinfo:courtcite</targetxml> create
                <targetxml>textitem</targetxml>.</p>
        </section>
        <example>
            <codeblock>
&lt;case:courtcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:content&gt;[2006] HK_HC 85&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:courtcite&gt;
    &lt;textitem&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:content&gt;[2006] HK_HC 85&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/textitem&gt;
&lt;/caseinfo:courtcite&gt;
           </codeblock>
        </example>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY01_Cases\case.courtcite.dita  -->
<!--	<xsl:message>MY01_Cases_case.courtcite.xsl requires manual development!</xsl:message> -->
  
    <xsl:template match="case:courtcite">
        <caseinfo:courtcite>
            <textitem>
                <xsl:apply-templates/>
            </textitem>
        </caseinfo:courtcite>
    </xsl:template>
    
  
    

</xsl:stylesheet>