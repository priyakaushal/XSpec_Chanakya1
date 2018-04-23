<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_bio">
    <title>bio <lnpid>id-CA15-35411</lnpid></title>
    <body>
        <p><sourcexml>bio</sourcexml> becomes
                <targetxml>nitf:body/nitf:body.head/nitf:byline/person:contributor/person:person/person:name.text</targetxml></p>
        <p>
            <note><targetxml>proc:nl</targetxml> will be suppressed and will be replaced with space
                in the target.</note>
        </p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;contrib contribtype="AUTHOR" searchtype="AUTHOR"&gt;
    &lt;bio&gt;
        &lt;p&gt;
            &lt;text&gt;By&lt;nl/&gt;Dallas G. Mack&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bio&gt;
&lt;/contrib&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;By Dallas G. Mack&lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:contributor&gt;
        &lt;/nitf:byline&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-17-02: <ph id="change_20151702_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_bio.dita  -->
	<xsl:message>CA15_Rosetta_bio.xsl requires manual development!</xsl:message> 

	<xsl:template match="bio">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/nitf:byline/person:contributor/person:person/person:name.text   -->
		<nitf:body>
			<nitf:body.head>
				<nitf:byline>
					<person:contributor xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
						<person:person>
							<person:name.text>
								<xsl:apply-templates select="@* | node()"/>
							</person:name.text>
						</person:person>
					</person:contributor>
				</nitf:byline>
			</nitf:body.head>
		</nitf:body>

	</xsl:template>

</xsl:stylesheet>