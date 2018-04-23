<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.body">
    <title>dig:body <lnpid>id-CA14-35620</lnpid></title>

    <body>
        <section>
            <p><sourcexml>dig:body</sourcexml> becomes <targetxml>seclaw:body</targetxml></p>
        </section>

        <example>
            <title>Example 1</title>
            <codeblock>
&lt;DIGESTDOC&gt;
    &lt;dig:body&gt;
        ......
        ......
    &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;seclaw:seclaw xml:lang="en-CA"&gt;
    &lt;seclaw:body&gt;
        ......
        ......
    &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
       </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\dig.body.dita  -->
	<!--<xsl:message>CA14-Emerging_Issues_dig.body.xsl requires manual development!</xsl:message>--> 

    <!--   Vikas Rohilla : Tamplate to match the dig:body and created the seclaw:body     -->
    <xsl:template match="dig:body">
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>
    </xsl:template>
  

</xsl:stylesheet>