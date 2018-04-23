<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita pubinfo docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_publication-to-LxAdv-doc.metadata-pubinfo.pubinfo-pubinfo.publicationname">
    <title><sourcexml>publication</sourcexml> to <targetxml>/doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml> <lnpid>id-CCCC-10438</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>publication</sourcexml> becomes <targetxml>/doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml>. </p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;publication&gt;Municipal Law - Canadian Forms &amp;amp; Precedents&lt;/publication&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;Municipal Law - Canadian Forms &amp;#x0026; Precedents&lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
    ........
    ........
&lt;/doc:metadata&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes :</title>
            <p>2013-04-05: <ph id="change_20130408_PKY"> Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_publication-to-LxAdv-doc.metadata-pubinfo.pubinfo-pubinfo.publicationname.dita  -->
	<!--<xsl:message>Rosetta_publication-to-LxAdv-doc.metadata-pubinfo.pubinfo-pubinfo.publicationname.xsl requires manual development!</xsl:message> -->

	<xsl:template match="publication">

		<!--  Original Target XPath:  /doc:metadata/pubinfo:pubinfo/pubinfo:publicationname   -->
		
			<pubinfo:pubinfo >
				<pubinfo:publicationname>
					<xsl:apply-templates select="@* | node()"/>
				</pubinfo:publicationname>
			    <xsl:apply-templates select="//docinfo:custom-metafields/docinfo:custom-metafield[@name='QLDBGRP'][$streamID='CA10']" mode="head"/>
			</pubinfo:pubinfo>
		

	</xsl:template>

</xsl:stylesheet>