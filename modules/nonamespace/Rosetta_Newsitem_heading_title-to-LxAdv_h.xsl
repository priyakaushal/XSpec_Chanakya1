<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_NEWSITEM_heading_title-to-LxAdv_h">
	<title>(Newsitem) <sourcexml>heading/title</sourcexml> to <targetxml>h</targetxml> <lnpid>id-CCCC-10401</lnpid></title>
	<body>
		<section>
			<p>When <sourcexml>heading/title</sourcexml> is the child of <sourcexml>bodytext</sourcexml>, then <sourcexml>heading/title</sourcexml>
				becomes <targetxml>h</targetxml>.</p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>

&lt;bodytext&gt;
    &lt;heading&gt;
        &lt;title&gt;
            &lt;ci:cite searchtype="CASE-REF"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref ID="cr000012" spanref="cr000012-001"&gt; &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                        &lt;ci:span spanid="cr000012-001"&gt;HC Hamilton CRI 2009-419-94, 29 March
                            2010&lt;/ci:span&gt;
                    &lt;/citefragment&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/bodytext&gt;

			</codeblock>
			<title>Target XML</title>
			<codeblock>

&lt;bodytext&gt;
    &lt;h&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="cr000012"&gt; &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;HC Hamilton CRI 2009-419-94, 29 March 2010&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/h&gt;
    ...
&lt;/bodytext&gt;

	</codeblock>
		</example>
		<section><title>Changes</title></section>
	</body>
	</dita:topic>

	<xsl:template match="heading[parent::bodytext]/title">

		<!--  Original Target XPath:  h   -->
	    <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</h>

	</xsl:template>


</xsl:stylesheet>