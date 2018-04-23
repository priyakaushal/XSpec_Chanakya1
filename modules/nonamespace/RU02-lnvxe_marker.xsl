<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnvxe_marker">
    <title>lnvxe:marker <lnpid>id-RU02-32033</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lnvxe_marker</sourcexml> becomes <targetxml>ref:marker</targetxml>. </p>

        <pre>
&lt;lnv:PUB&gt;THE CIVIL CODE OF THE RUSSIAN FEDERATION&lt;nl/&gt;PART ONE&lt;nl/&gt;&lt;nl/&gt;
    &lt;lnlink service="ATTACHMENT"&gt;
    &lt;lnvxe:marker&gt;VIEW PDF IN RUSSIAN&lt;/lnvxe:marker&gt;
        &lt;lnvxe:api-params&gt;&lt;lnvxe:param name="componentseq" value="1"
                /&gt;&lt;lnvxe:param name="attachment-key" value="RFCC1-CHAPTER6"/&gt;&lt;lnvxe:param
                name="attachment-type" value="PDF"/&gt;&lt;lnvxe:param name="attachment-smi" value="24703"
            /&gt;&lt;/lnvxe:api-params&gt;
    &lt;/lnlink&gt;
&lt;/lnv:PUB&gt;
        
<b>Becomes</b>


&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;THE CIVIL CODE OF THE RUSSIAN FEDERATION&lt;proc:nl/&gt;PART ONE&lt;proc:nl/&gt;&lt;proc:nl/&gt;
            &lt;ref:lnlink service="ATTACHMENT"&gt;
                &lt;ref:marker&gt;VIEW PDF IN RUSSIAN&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="attachment-key" value="RFCC1-CHAPTER6"/&gt;
                        &lt;proc:param name="attachment-type" value="PDF"/&gt;
                        &lt;proc:param name="attachment-smi" value="24703"/&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;</pre>

        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnvxe_marker.dita  -->
	<xsl:message>RU02-lnvxe_marker.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnvxe_marker">

		<!--  Original Target XPath:  ref:marker   -->
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

</xsl:stylesheet>