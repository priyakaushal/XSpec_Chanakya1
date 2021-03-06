<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN05_Rosetta_abstract">
    <title>abstract <lnpid>id-IN05-38809</lnpid></title>
    <body>
        <p><sourcexml>abstract</sourcexml> becomes
                <targetxml>nitf:body.head/abstract/bodytext</targetxml>,
                <targetxml>bodytext</targetxml> is the required child element.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;jrnl:prelim&gt;
    ...
    &lt;abstract&gt;
        &lt;heading&gt;
              &lt;title&gt;ABSTRACT:&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
              &lt;text&gt;The author explores justification for corporate liability for the wrongs
                        committed by their employees when the statute imposes such liability,
                        weighing the benefits and critically examining the different legal theories.
                        The study anchors in the rationale of social justice to hold the corporation
                        liable.&lt;/text&gt;
       &lt;/p&gt;
    &lt;/abstract&gt;
    ...
&lt;/jrnl:prelim&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;abstract&gt;
            &lt;heading&gt;
                &lt;title&gt;ABSTRACT:&lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;The author explores justification for corporate liability for the wrongs
                        committed by their employees when the statute imposes such liability,
                        weighing the benefits and critically examining the different legal theories.
                        The study anchors in the rationale of social justice to hold the corporation
                        liable.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/abstract&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-17: <ph id="change_20160817_AS">Created.</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN05-Articles\IN05_Rosetta_abstract.dita  -->
	<xsl:message>IN05_Rosetta_abstract.xsl requires manual development!</xsl:message> 

	<xsl:template match="abstract">

		<!--  Original Target XPath:  nitf:body.head/abstract/bodytext   -->
		<nitf:body.head>
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</abstract>
		</nitf:body.head>

	</xsl:template>

</xsl:stylesheet>