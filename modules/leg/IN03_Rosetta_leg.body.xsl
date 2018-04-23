<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:const="http://www.lexisnexis.com/xmlschemas/content/legal/constitution/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.body">
    <title>leg:body <lnpid>id-IN03-15810</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:body</sourcexml> becomes <targetxml>const:body</targetxml>.</p>
                    <pre>&lt;LEGDOC&gt;
    &lt;leg:body&gt;
        ...
    &lt;/leg:body&gt;
&lt;/LEGDOC&gt;

<b>becomes</b>

&lt;const:const&gt;
    &lt;const:body&gt;
        ...
    &lt;/const:body&gt;
&lt;/const:const&gt;</pre>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.body.dita  -->
	<xsl:message>IN03_Rosetta_leg.body.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  const:body   -->
		<const:body>
			<xsl:apply-templates select="@* | node()"/>
		</const:body>

	</xsl:template>

</xsl:stylesheet>