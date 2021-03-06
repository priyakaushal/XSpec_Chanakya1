<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_DIGESTDOC_bodytext">
    <title>bodytext <lnpid>id-UK15-30432</lnpid></title>

    <body>
        <p><sourcexml>bodytext</sourcexml> becomes <targetxml>seclaw:bodytext</targetxml>.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;dig:body&gt;
    &lt;dig:info&gt;
        ...
    &lt;/dig:info&gt;
    &lt;abstract&gt;
        ...
    &lt;/abstract&gt;
    &lt;level leveltype="Full Text External" id="0OLN_194552"&gt;
        &lt;bodytext&gt;
            &lt;refpt id="0OLN_194552"/&gt;
            &lt;remotelink href="http://vimeo.com/lexisnexisuk/review/52994955/b970937cea"
                newwindow="YES"&gt;Reviewing environmental reports&lt;/remotelink&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/dig:body&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="topic"&gt;
        &lt;heading&gt;
            ...
        &lt;/heading&gt;
        &lt;seclaw:bodytext&gt;
            ...
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
    &lt;seclaw:level leveltype="topic"&gt;
        &lt;ref:anchor id="_0OLN_194552"/&gt;
        &lt;seclaw:bodytext&gt;
            &lt;ref:lnlink service="URL"&gt;
                &lt;ref:marker&gt;Reviewing environmental reports&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="URL"/&gt;
                        &lt;ref:key-value value="http://vimeo.com/lexisnexisuk/review/52994955/b970937cea" /&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;

           </codeblock>
        </example>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_DIGESTDOC_bodytext.dita  -->
	<xsl:message>UK15PG_DIGESTDOC_bodytext.xsl requires manual development!</xsl:message> 

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  seclaw:bodytext   -->
		<seclaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:bodytext>

	</xsl:template>

</xsl:stylesheet>