<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_UK_inlineobject-LxAdv-logo-special">
    <title>(UK) <sourcexml>inlineobject</sourcexml> when target
            <targetxml>logo/ref:inlineobject</targetxml>
        <lnpid>id-CCCC-10529</lnpid></title>
    <body>
        <section><p>This is a special rule for UK streams. Applies when
                    <sourcexml>inlineobject</sourcexml> maps to
                    <targetxml>logo/ref:inlineobject</targetxml>, as described elsewhere in this
                document.</p><p>The usual rules for inline object should be followed, see <xref href="Rosetta_inlineobject-LxAdv-ref.inlineobject.dita"/>.</p><p><b>With One
                    Exception:</b> The value for the "object-smi" parameter is not obtained from
                CSSM (and is not present in source data). Instead, the value should be set to
                "LOGOS", i.e. <targetxml>proc:param[@name="object-smi"
                @value="LOGOS"]</targetxml>.</p></section>
        <note>The example below shows <sourcexml>publication/inlineobject</sourcexml> to provide
            context. The special UK rule applies any time target
                <targetxml>ref:inlineobject</targetxml> is child of
            <targetxml>logo</targetxml>.</note>
        <example>
            <title>Source XML </title>
            <codeblock>

    &lt;publication&gt;&lt;inlineobject type="image" mimetype="image/gif" filename="NewLawJournal.gif"/&gt;
       New Law Journal&lt;/publication&gt;
            </codeblock>
            <title>Target XML</title>
            <codeblock>

    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:publicationname&gt;New Law Journal&lt;/pubinfo:publicationname&gt;
      &lt;pubinfo:publicationlogo&gt;
        &lt;logo&gt;
          &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-NewLawJournal"/&gt;
                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
              &lt;/ref:locator-key&gt;
              &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt;
                &lt;proc:param name="object-smi" value="LOGOS"/&gt;  &lt;!-- value set to "LOGOS" --&gt;
              &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:inlineobject&gt;
        &lt;/logo&gt;
      &lt;/pubinfo:publicationlogo&gt;
    &lt;/pubinfo:pubinfo&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-11-12: <ph id="change_20151112_jm">New rule. UK exception for "object-smi" value
                    when object is logo. RFA 2519, 2542.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_UK_inlineobject-LxAdv-logo-special.dita  -->
	<xsl:message>Rosetta_UK_inlineobject-LxAdv-logo-special.xsl requires manual development!</xsl:message> 

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  logo/ref:inlineobject   -->
		<logo>
			<ref:inlineobject>
				<xsl:apply-templates select="@* | node()"/>
			</ref:inlineobject>
		</logo>

	</xsl:template>

	<xsl:template match="publication/inlineobject">

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

</xsl:stylesheet>