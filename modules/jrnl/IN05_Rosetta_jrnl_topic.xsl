<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN05_Rosetta_jrnl_topic">
    <title>jrnl:topic <lnpid>id-IN05-38825</lnpid></title>

    <body>
        <p><sourcexml>jrnl:topic</sourcexml> becomes
                <targetxml>nitf:body.head/nitf:hedline/nitf:hl2</targetxml></p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;jrnl:prelim&gt;
    ...
    &lt;jrnl:topic&gt;
        &lt;heading&gt;
            &lt;title align="center"&gt;BOOK REVIEW ON &amp;#8220;INTERNATIONAL INTELLECTUAL PROPERTY
                ARBITRATION&amp;#8221;&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/jrnl:topic&gt;
    ...
&lt;/jrnl:prelim&gt;

            </codeblock>
            <p><b>Target XML</b>
                <codeblock>
&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl2&gt;1 ADMINISTRATIVE LAW&lt;/nitf:hl2&gt;
        &lt;/nitf:hedline&gt;
    &lt;/nitf:body.head&gt;
    ...
&lt;/nitf:body&gt;

                </codeblock>
            </p>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-16: <ph id="change_20160816_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN05-Articles\IN05_Rosetta_jrnl_topic.dita  -->
	<xsl:message>IN05_Rosetta_jrnl_topic.xsl requires manual development!</xsl:message> 

	<xsl:template match="jrnl:topic">

		<!--  Original Target XPath:  nitf:body.head/nitf:hedline/nitf:hl2   -->
		<nitf:body.head>
			<nitf:hedline>
				<nitf:hl2>
					<xsl:apply-templates select="@* | node()"/>
				</nitf:hl2>
			</nitf:hedline>
		</nitf:body.head>

	</xsl:template>

</xsl:stylesheet>