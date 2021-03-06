<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_remotelink-status">
    <title><sourcexml>remotelink/@status</sourcexml>, attribute suppressed <lnpid>id-UK11DA-29446</lnpid></title>
    <body>
        <section>
            <p><sourcexml>remotelink</sourcexml> often contains <sourcexml>@status</sourcexml>. The
                attribute <sourcexml>@status</sourcexml> is suppressed.</p>
        </section>
        <note>Suppression of <sourcexml>@status</sourcexml> is common practice, as illustrated in
            examples in preceding instruction <sourcexml>remotelink</sourcexml> to
                <targetxml>ref:crossreference</targetxml> (id-CCCC-10465). Data delivered Oct 2014
            for UK11-DA (abstract) include a significant increase in <sourcexml>@status</sourcexml>
            markup. This section is added for UK11-DA to clarify and reinforce the common practice
            of suppressing <sourcexml>@status</sourcexml>. </note>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0OL5"
    remotekey2="0OL5_252206" status="invalid"&gt;Relief from sanctions&lt;/remotelink&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;Relief from sanctions&lt;/ref:content&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0OL5-0OL5_252206"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

	</codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2014-10-13: <ph id="change_20141013_jm">Not a rule change. Clarifies that it is
                    correct to suppress attribute <sourcexml>remotelink[@status]</sourcexml>.
                    Section created in response to increased presence of
                        <sourcexml>@status</sourcexml> in UK11-DA data delivered Oct 2014.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_remotelink-status.dita  -->
	<xsl:message>UK11_DA_remotelink-status.xsl requires manual development!</xsl:message> 

	<xsl:template match="remotelink/@status">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="@status">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="remotelink[@status]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>