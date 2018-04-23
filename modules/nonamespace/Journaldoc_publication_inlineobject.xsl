<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc_publication_inlineobject">
    <title>publication/inlineobject <lnpid>id-ST09-32636</lnpid></title>

    <body>
        <p><sourcexml>publication/inlineobject</sourcexml> becomes
                <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo</targetxml>. The
            following children should be created: <ul>
                <li>Inside <targetxml>pubinfo:publicationlogo</targetxml> create
                        <targetxml>logo</targetxml>.</li>
                <li>Inside <targetxml>logo</targetxml> create
                        <targetxml>ref:inlineobject</targetxml>.</li>
                <li>See the General Markup instructions for <xref href="../../common_newest/Rosetta_inlineobject-LxAdv-ref.inlineobject.dita">inlineobject</xref> for details on how to map
                        <sourcexml>inlineobject</sourcexml> to
                        <targetxml>ref:inlineobject</targetxml>.</li>
            </ul></p>
<pre>
&lt;publication&gt;
    &lt;inlineobject type="logo" mimetype="image/gif" filename="NewLawJournal.gif"/&gt;New Law Journal
&lt;/publication&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
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
                            &lt;proc:param name="object-smi" value=""/&gt;
                            &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/logo&gt;
        &lt;/pubinfo:publicationlogo&gt;
        ...
    &lt;/pubinfo:pubinfo&gt;
    ...
&lt;/doc:metadata&gt;
</pre>
        
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
        
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc_publication_inlineobject.dita  -->
	<xsl:message>Journaldoc_publication_inlineobject.xsl requires manual development!</xsl:message> 

	<xsl:template match="publication/inlineobject">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:publicationlogo   -->
		<doc:metadata>
			<pubinfo:pubinfo>
				<pubinfo:publicationlogo>
					<xsl:apply-templates select="@* | node()"/>
				</pubinfo:publicationlogo>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

</xsl:stylesheet>