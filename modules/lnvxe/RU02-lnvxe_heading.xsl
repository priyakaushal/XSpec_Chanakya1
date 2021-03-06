<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita lnvxe">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnvxe_heading">
    <title>lnvxe:heading<lnpid>id-RU02-32029</lnpid></title>
 
    
    <body>
        <p>
            <sourcexml>lnvxe:heading</sourcexml> becomes
                <targetxml>doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading</targetxml>. </p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lnv:HIER&gt;
    &lt;lnvxe:hierlev role="me"&gt;
        &lt;lnvxe:heading inline="false"&gt;
                &lt;lnvxe:title&gt;ARTICLE 137. ANIMALS&lt;/lnvxe:title&gt;
        &lt;/lnvxe:heading&gt;
    &lt;/lnvxe:hierlev&gt;
&lt;/lnv:HIER&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML </title>
            <codeblock>
&lt;doc:hier&gt;
    &lt;doc:hierlev&gt;
        &lt;heading inline="false"&gt;
            &lt;title&gt;ARTICLE 137. ANIMALS&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/doc:hierlev&gt;
&lt;/doc:hier&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnvxe_heading.dita  -->
	<xsl:message>RU02-lnvxe_heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnvxe:heading">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading   -->
		<doc:metadata>
			<doc:docinfo>
				<doc:hier>
					<doc:hierlev>
						<heading>
							<xsl:apply-templates select="@* | node()"/>
						</heading>
					</doc:hierlev>
				</doc:hier>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>