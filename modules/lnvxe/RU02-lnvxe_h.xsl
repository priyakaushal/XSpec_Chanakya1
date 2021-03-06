<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe" version="2.0" exclude-result-prefixes="dita lnvxe">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnvxe_h">
    <title>lnvxe:h <lnpid>id-RU02-32028</lnpid>
    </title>

    <body>
        <p id="h">
            <sourcexml>lnvxe:h</sourcexml> becomes <targetxml>h</targetxml>. </p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lnv:TEXT-1&gt;
    &lt;lnvxe:bodytext&gt;
        &lt;lnvxe:h&gt;[TEXT REMOVED]&lt;/lnvxe:h&gt;
    &lt;/lnvxe:bodytext&gt;
&lt;/lnv:TEXT-1&gt;
	</codeblock>
        </example>

        <example>
            <title>Target XML </title>
            <codeblock>
&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;h&gt;[TEXT REMOVED]&lt;/h&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>Created.</p>
            <p>2014-06-25: <ph id="change_20140625_AS">Removed attribute and updated snippet.</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnvxe_h.dita  -->
	<xsl:message>RU02-lnvxe_h.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnvxe:h">

		<!--  Original Target XPath:  h   -->
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>

	</xsl:template>

</xsl:stylesheet>