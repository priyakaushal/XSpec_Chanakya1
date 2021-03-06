<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnv="http://www.lexis-nexis.com/lnv" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:statcode="http://www.lexisnexis.com/xmlschemas/content/legal/statutorycode/1/" version="2.0" exclude-result-prefixes="dita lnv">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnv_TEXT-1">
    <title>lnv_TEXT-1 <lnpid>id-RU02-32049</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lnv:TEXT-1</sourcexml> becomes
                <targetxml>statcode:body/primlaw:level</targetxml> with required attribute
                <targetxml>@leveltype="unclassified"</targetxml>
        </p>

        <pre>&lt;lnv:TEXT-1&gt;
    &lt;lnvxe:bodytext&gt;
        &lt;p&gt;
            &lt;lnvxe:text&gt;The general rules on property shall also apply to animals, unless otherwise
                prescribed by the Law or other legal acts.&lt;/lnvxe:text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;lnvxe:text&gt;The exercise of such rights in respect of animals shall not involve acts of
                cruelty to animals that contradict the principles of humanity.&lt;/lnvxe:text&gt;
        &lt;/p&gt;
    &lt;/lnvxe:bodytext&gt;
&lt;/lnv:TEXT-1&gt;

<b>Becomes</b>


&lt;statcode:body&gt;  
   &lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;The general rules on property shall also apply to animals, unless otherwise
                prescribed by the Law or other legal acts.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;The exercise of such rights in respect of animals shall not involve acts of
                cruelty to animals that contradict the principles of humanity.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
   &lt;/primlaw:level&gt;
&lt;/statcode:body&gt;</pre>

        <section>
            <title>Changes</title>
            <p>Created.</p>
            <p>2014-06-25: <ph id="change_20140625_AS">Added attribute value for <targetxml>primlaw:level</targetxml>.</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnv_TEXT-1.dita  -->
	<xsl:message>RU02-lnv_TEXT-1.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnv:TEXT-1">

		<!--  Original Target XPath:  statcode:body/primlaw:level   -->
		<statcode:body>
			<primlaw:level>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:level>
		</statcode:body>

	</xsl:template>

</xsl:stylesheet>