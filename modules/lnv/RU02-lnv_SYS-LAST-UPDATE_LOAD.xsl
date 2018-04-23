<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnv="http://www.lexis-nexis.com/lnv" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita lnv">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnv_SYS-LAST-UPDATE_LOAD">
    <title>lnv:SYS-LAST-UPDATE <lnpid>id-RU02-32047</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lnv:SYS-LAST-UPDATE</sourcexml> becomes
                <targetxml>doc:metadata/doc:sourcedocinfo/lnsys:doc-history</targetxml>
        </p>

        <p>
            <sourcexml>lnv:SYS-LOAD-DATE</sourcexml> becomes
                <targetxml>doc:metadata/doc:sourcedocinfo/lnsys:doc-history</targetxml>
        </p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lnv:SYS-LAST-UPDATE&gt;1901-11-11&lt;/lnv:SYS-LAST-UPDATE&gt;
&lt;lnv:SYS-LOAD-DATE&gt;2013-09-26&lt;/lnv:SYS-LOAD-DATE&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML </title>
            <codeblock>
&lt;doc:sourcedocinfo&gt;
    &lt;lnsys:doc-history sys-load-date="2013-09-26" sys-last-update="1901-11-11"/&gt;
&lt;/doc:sourcedocinfo&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnv_SYS-LAST-UPDATE_LOAD.dita  -->
	<xsl:message>RU02-lnv_SYS-LAST-UPDATE_LOAD.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnv:SYS-LAST-UPDATE">

		<!--  Original Target XPath:  doc:metadata/doc:sourcedocinfo/lnsys:doc-history   -->
		<doc:metadata>
			<doc:sourcedocinfo>
				<lnsys:doc-history xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/">
					<xsl:apply-templates select="@* | node()"/>
				</lnsys:doc-history>
			</doc:sourcedocinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="lnv:SYS-LOAD-DATE">

		<!--  Original Target XPath:  doc:metadata/doc:sourcedocinfo/lnsys:doc-history   -->
		<doc:metadata>
			<doc:sourcedocinfo>
				<lnsys:doc-history xmlns:lnsys="http://www.lexisnexis.com/xmlschemas/content/shared/lnsys/1/">
					<xsl:apply-templates select="@* | node()"/>
				</lnsys:doc-history>
			</doc:sourcedocinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>