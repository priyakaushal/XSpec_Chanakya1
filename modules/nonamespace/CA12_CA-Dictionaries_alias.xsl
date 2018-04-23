<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="CA12_CA-Dictionaries_alias.dita">
		<title>alias <lnpid>id-CA12-15007</lnpid></title>

		<body>
			<p>When <sourcexml class="+ topic/keyword xml-d/sourcexml ">alias</sourcexml> is a child
				of <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading/title</sourcexml>
				then <sourcexml class="+ topic/keyword xml-d/sourcexml "
					>heading/title/alias</sourcexml> becomes <targetxml
					class="+ topic/keyword xml-d/targetxml "
					>doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value</targetxml>.</p>

			<p>Drop <sourcexml>@kw</sourcexml> attribute and its content.</p>

			<p>Value of <targetxml>metaitem/@name</targetxml> is the value of
					<sourcexml>title/@searchtype</sourcexml>.</p>

			<pre xml:space="preserve" class="- topic/pre ">
&lt;heading&gt;
    &lt;title searchtype="JURIS"&gt;
        &lt;alias kw="BC"&gt;British Columbia&lt;/alias&gt;
    &lt;/title&gt;
&lt;/heading&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;doc:docinfo&gt;
    &lt;doc:legacy-metadata metadatasource="lbu-meta&gt;
        &lt;meta&gt;
            &lt;metaitem name="JURIS" value="British Columbia"/&gt;
        &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
&lt;/doc:docinfo&gt;
</pre>
			<note>
				<p>Conversion should not create consecutive
						<targetxml>doc:legacy-metadata/meta</targetxml> elements. When 2 or more
					consecutive sibling source elements map to
						<targetxml>doc:legacy-metadata/meta</targetxml>, data should be merged to a
					single <targetxml>doc:legacy-metadata/meta</targetxml> element unless this would
					hamper content ordering.</p>
			</note>

		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_alias.dita  -->
	<!--<xsl:message>CA12_CA-Dictionaries_alias.xsl requires manual development!</xsl:message>-->

	<xsl:template match="heading/title/alias">
		<!--  Original Target XPath:  doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value   -->		
			<metaitem>
				<xsl:attribute name="name">JURIS</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="."/>
				</xsl:attribute>
			</metaitem>
		
	</xsl:template>



</xsl:stylesheet>