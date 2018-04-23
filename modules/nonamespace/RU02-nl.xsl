<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-nl">
    <title>nl <lnpid>id-RU02-32050</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>nl</sourcexml> becomes <targetxml>proc:nl</targetxml>. </p>

        <example>
            <title>Source XML</title>
            <codeblock>
           ....
&lt;lnv:PUB&gt;THE CIVIL CODE OF THE RUSSIAN FEDERATION&lt;nl/&gt;PART ONE&lt;nl/&gt;&lt;nl/&gt;
           ....
            
        </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>
&lt;pubinfo:pubinfo&gt;
    &lt;pubinfo:publicationname&gt;THE CIVIL CODE OF THE RUSSIAN FEDERATION&lt;proc:nl/&gt;PART ONE&lt;proc:nl/&gt;&lt;proc:nl/&gt;
    &lt;/pubinfo:publicationname&gt;
    .....
&lt;/pubinfo:pubinfo&gt;
            
            </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-nl.dita  -->
	<xsl:message>RU02-nl.xsl requires manual development!</xsl:message> 

	<xsl:template match="nl">

		<!--  Original Target XPath:  proc:nl   -->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>

	</xsl:template>

</xsl:stylesheet>