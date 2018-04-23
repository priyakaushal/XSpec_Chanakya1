<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common-rosetta_note-Chof-figure_caption-LxAdv-note">
    <title><sourcexml>figure/caption/note</sourcexml> to <targetxml>figure/note</targetxml>
        <lnpid>id-CCCC-10514</lnpid></title>
    <body>
        <note>This topic is used in numerous conversion instructions for several LBUs. It is a
            shared topic rather than duplicated to ensure consistency and accuracy. The xml snippets
            contained in this topic reflect markup needed for the Apollo image handling application.
            The UK is the first LBU to move from Apollo to the Blobstore application for image
            handling. Therefore, if this is a UK conversion instruction document, please refer to
            the following topics for correct image handling markup. <ul>
                <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                    images (id-CCCC-10542)</li>
                <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml>
                    for BLOBSTORE images (id-CCCC-10540)</li>
                <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                    images (id-CCCC-10541)</li>
            </ul></note>

        <p>If the XPath <sourcexml>figure/caption/note</sourcexml> occurs, each
                <sourcexml>note</sourcexml> is moved outside the <sourcexml>caption</sourcexml> so
            the <sourcexml>note</sourcexml> becomes the <sourcexml>caption</sourcexml> element's
            immediate next sibling (and also now a direct child of <sourcexml>figure</sourcexml>).
            The moved <sourcexml>note</sourcexml> element is converted as described in the topic
                <xref href="Rosetta_note-LxAdv-note.dita"/>.</p>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;figure&gt;
    &lt;caption&gt;
        &lt;note notetype="xref"&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;url&gt;
                        &lt;remotelink hrefclass="http" href="www.somedomain.org/fining-guidlines/cpi"&gt;OFT revised fining guidelines&lt;/remotelink&gt;
                    &lt;/url&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/note&gt; Penalties flowchart&lt;/caption&gt;
    &lt;inlineobject type="image" mimetype="image/gif" filename="FC_COMP_Penalties.gif"/&gt;
&lt;/figure&gt;

	</codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;figure&gt;
    &lt;caption&gt;
        &lt;p&gt;
            &lt;text&gt;Penalties flowchart&lt;/text&gt;
        &lt;/p&gt;
    &lt;/caption&gt;
    &lt;note notetype="xref"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;ref:lnlink service="URL"&gt;
                        &lt;ref:marker&gt;OFT revised fining guidelines&lt;/ref:marker&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="URL"/&gt;
                                &lt;ref:key-value value="http://www.somedomain.org/fining-guidlines/cpi"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:lnlink&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;                    
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="{LNI}-{SMI}-FC_COMP_Penalties"/&gt;
                &lt;!-- {LNI} and {SMI} are used indicate values actually obtained from CSSM. --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value="{SMI}"/&gt;
                &lt;!-- {SMI} is used to indicate a value actually obtained from CSSM. --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-07-26: <ph id="change_20160726_brt"> Added Note about xml snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to move to Blobstore. </ph></p>
            <p>2014-10-28: <ph id="change_20141028_JCG">Moved this instruction into a separate
                    topic. Not a rule change, just a minor reorganization of the
                instructions.</ph></p>
            <p>2014-10-24: <ph id="change_20141024_JCG">Added instructions and example to handle the
                    new XPath <sourcexml>caption/note</sourcexml>. (R4.5 Content Issue List
                    #1993)</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_note-Chof-figure_caption-LxAdv-note.dita  -->
<!--	<xsl:message>Rosetta_note-Chof-figure_caption-LxAdv-note.xsl requires manual development!</xsl:message> -->

	<xsl:template match="figure/caption/note">

		<!--  Original Target XPath:  figure/note   -->
		<figure>
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		</figure>

	</xsl:template>

	<xsl:template match="lnlink[@service='ATTACHMENT']">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="link[@filename]">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="note">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="caption">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="figure">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="caption/note">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>