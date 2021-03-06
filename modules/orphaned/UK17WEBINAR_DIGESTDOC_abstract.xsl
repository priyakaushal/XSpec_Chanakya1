<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_DIGESTDOC_abstract_With-Forms">
    <title>abstract <lnpid>id-UK17-30608</lnpid></title>
    <body>
      <p>The element <sourcexml>abstract</sourcexml> becomes <targetxml>seclaw:level[@leveltype="unclassified"]/seclaw:prelim/abstract/bodytext</targetxml>.</p>
      <p>Each child element is converted as described in the <i>General Markup</i> section.</p>
      <p>In the output, <targetxml>seclaw:level</targetxml> requires <targetxml>seclaw:bodytext</targetxml> to be valid. Following <targetxml>seclaw:prelim</targetxml>, output empty <targetxml>seclaw:bodytext</targetxml> as shown in the following example:</p>
        <example>
            <title>Source XML</title>
            <codeblock>&lt;abstract&gt;
  &lt;p&gt;
    &lt;text&gt;Test video — mini summary&lt;/text&gt;
  &lt;/p&gt;
&lt;/abstract&gt;</codeblock>
            <title>Target XML</title>
            <codeblock>&lt;seclaw:level leveltype="unclassified"&gt;
   &lt;seclaw:prelim&gt;
      &lt;abstract&gt;
         &lt;bodytext&gt;
            &lt;p&gt;
               &lt;text&gt;Test video — mini summary&lt;/text&gt;
            &lt;/p&gt;
         &lt;/bodytext&gt;
      &lt;/abstract&gt;
   &lt;/seclaw:prelim&gt;
   &lt;seclaw:bodytext/&gt;
&lt;/seclaw:level&gt;</codeblock>
        </example>
        <section>
            <title>Changes</title>
          <p/>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-CLE_materials\UK17WEBINAR_DIGESTDOC_abstract.dita  -->
	<xsl:message>UK17WEBINAR_DIGESTDOC_abstract.xsl requires manual development!</xsl:message> 

	<xsl:template match="abstract">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]/seclaw:prelim/abstract/bodytext   -->
		<seclaw:level>
			<seclaw:prelim>
				<abstract>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</abstract>
			</seclaw:prelim>
		</seclaw:level>

	</xsl:template>

</xsl:stylesheet>