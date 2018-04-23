<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="abstract">
    <title>abstract <lnpid>id-CA14-35609</lnpid></title>

    <body>
        <section>
            <p>Rosetta element <sourcexml>abstract</sourcexml> is a container element, so omit it and no need to carry forward during NL conversion.</p>
        </section>

        <example>
            <title>Example</title>
            <codeblock>
&lt;abstract&gt;
    ...
&lt;/abstract&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;!-- Suppress abstract element --&gt;
       </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-02-20: <ph id="change_20150220_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA14-Emerging_Issues\abstract.dita  -->
	<!--<xsl:message>CA14-Emerging_Issues_abstract.xsl requires manual development!</xsl:message>--> 
    
    <!--Vikas Rohilla : Supressed the abstract-->
	<xsl:template match="abstract"/>			

</xsl:stylesheet>