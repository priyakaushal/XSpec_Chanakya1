<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject_Chof_lilabel_emph_sub-LxAdv_ref.inlineojbect">
    <title><sourcexml>emph/sub/inlineobject[ancestor::lilabel]</sourcexml> to
            <targetxml>ref:inlineobject</targetxml> <lnpid>id-UK09-29027</lnpid></title>
    <body>
        <section>
            <p><sourcexml>emph/sub/inlineobject[ancestor::lilabel]</sourcexml> becomes
                    <targetxml>ref:inlineobject</targetxml>.</p>
            <note>Both <sourcexml>emph</sourcexml> and <sourcexml>sub</sourcexml> are suppressed in
                this mapping.</note>
            <note> Please refer to the following topics for correct image handling markup.</note>
            <p><sourcexml>inlineobject</sourcexml> becomes <targetxml>ref:inlineobject</targetxml>
                for BLOBSTORE images <b>(id-CCCC-10540)</b>.</p>
        </section>
        <example>
            <codeblock>
&lt;l&gt;
    &lt;li&gt;
        &lt;lilabel&gt;1&lt;emph typestyle="it"&gt;&lt;sub&gt;&lt;inlineobject type="image" mimetype="image/gif"
                        filename="imgc46.gif"/&gt;&lt;/sub&gt;&lt;/emph&gt;.&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt; In many political communities, most citizens believe the false proposition that
                they have moral obligations to obey state-made law.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;lilabel&gt;2&lt;emph typestyle="it"&gt;&lt;sub&gt;&lt;inlineobject type="image" mimetype="image/gif"
                        filename="imgc47.gif"/&gt;&lt;/sub&gt;.&lt;/emph&gt;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt; If one believes that one has a moral obligation to ɸ, then one has a moral
                obligation to ɸ.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;lilabel&gt;3&lt;emph typestyle="it"&gt;&lt;sub&gt;&lt;inlineobject type="image" mimetype="image/gif"
                        filename="imgc48.gif"/&gt;&lt;/sub&gt;.&lt;/emph&gt;&lt;/lilabel&gt;
        &lt;p&gt;
            &lt;text&gt; Therefore, in many communities, most citizens have moral obligations to obey
                state-made law.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
&lt;/l&gt;
            </codeblock>
            <b>becomes</b>
            <codeblock>
                &lt;list&gt;
    &lt;listitem&gt;
        &lt;label&gt;1&lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="imgc46.gif"/&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="object-type" value="IMG"/&gt;
                        &lt;proc:param name="external-or-local" value="external"/&gt;
                        &lt;proc:param name="object-server" value="Blobstore"/&gt;
                        &lt;proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;.&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; In many political communities, most citizens believe the false proposition
                    that they have moral obligations to obey state-made law.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;listitem&gt;
        &lt;label&gt;2&lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="imgc47.gif"/&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="object-type" value="IMG"/&gt;
                        &lt;proc:param name="external-or-local" value="external"/&gt;
                        &lt;proc:param name="object-server" value="Blobstore"/&gt;
                        &lt;proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;.&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; If one believes that one has a moral obligation to ?, then one has a moral
                    obligation to ?.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
    &lt;listitem&gt;
        &lt;label&gt;3&lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="imgc48.gif"/&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="object-type" value="IMG"/&gt;
                        &lt;proc:param name="external-or-local" value="external"/&gt;
                        &lt;proc:param name="object-server" value="Blobstore"/&gt;
                        &lt;proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;.&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; Therefore, in many communities, most citizens have moral obligations to obey
                    state-made law.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/listitem&gt;
&lt;/list&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-11-07: <ph id="change_20161107_RS">Updated the instruction for ref:key-name and
                    proc:param attribute values.</ph></p>
            <p>2016-08-03: <ph id="change_20160803_JM">Not a rule change directly to this module.
                Modified Example Target to reflect blobstore markup.</ph></p>
            <p>2013-06-05: <ph id="change_20130605_DSF">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09_Rosetta_inlineobject-Chof-lilabel_emph_sub-LxAdv_ref.inlineobject.dita  -->
	<!--<xsl:message>UK09_Rosetta_inlineobject-Chof-lilabel_emph_sub-LxAdv_ref.inlineobject.xsl requires manual development!</xsl:message> 
-->
	<xsl:template match="emph/sub/inlineobject[ancestor::lilabel]">
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>
	</xsl:template>
	<!--<xsl:template match="emph">
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>-->

	<!--</xsl:template>-->
	<!--<xsl:template match="sub">
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>-->
	<!--</xsl:template>-->
	<!--<xsl:template match="inlineobject">
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>
	</xsl:template>-->
</xsl:stylesheet>