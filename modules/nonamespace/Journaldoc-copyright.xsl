<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-copyright">
    <title>copyright <lnpid>id-ST09-32610</lnpid></title>
    <body>
        <p><sourcexml>copyright</sourcexml> becomes
                <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>.</p>
        
<pre>
    <b><i>Source example based on UK content</i></b>

&lt;jrnl:prelim searchtype="ARTICLE"&gt;
    ...
    &lt;copyright&gt;© 2005 PDP Companies Limited&lt;/copyright&gt;
    ...
&lt;/jrnl:prelim&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        ... 
        &lt;copyright&gt;© 2005 PDP Companies Limited&lt;/copyright&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-copyright.dita  -->
	<xsl:message>Journaldoc-copyright.xsl requires manual development!</xsl:message> 

	<xsl:template match="copyright">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/copyright   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<copyright>
					<xsl:apply-templates select="@* | node()"/>
				</copyright>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>