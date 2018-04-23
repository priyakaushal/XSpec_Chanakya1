<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_docinfo.keywords">
    <title>docinfo:keywords and docinfo:keyphrase <lnpid>id-UK11DA-29422</lnpid></title>
    <body>
        <section>
            <p><sourcexml>docinfo:keywords/docinfo:keyphrase</sourcexml> becomes
                    <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="keywords"]/
                    classify:classitem/classify:classitem-identifier/classify:classcode[@normval]</targetxml>.
                The content of <sourcexml>docinfo:keyphrase</sourcexml> becomes the value for
                    <targetxml>classify:classcode[@normval]</targetxml>.</p>
        </section>
        <note>Occurs in smart forms, dpsi 0KVS.</note>
        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;docinfo:keywords&gt;
  &lt;docinfo:keyphrase&gt;Con29M; CON29 M&lt;/docinfo:keyphrase&gt;
  &lt;docinfo:keyphrase&gt;TA 1; 2009; (2009)&lt;/docinfo:keyphrase&gt;
&lt;/docinfo:keywords&gt;

	</pre>
        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;classify:classification classscheme="keywords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="Con29M; CON29 M"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="TA 1; 2009; (2009)"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

	</pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_docinfo.keywords.dita  -->
<!--	<xsl:message>UK11_DA_docinfo.keywords.xsl requires manual development!</xsl:message> -->

<!--Vikas Rohilla : Template to the docinfo:keywords-->
	<xsl:template match="docinfo:keywords">
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>
	</xsl:template>
	
	<!--Vikas Rohilla : Template to the docinfo:keyphrase-->
	<xsl:template match="docinfo:keyphrase">
		<classify:classcode>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classcode>
	</xsl:template>

</xsl:stylesheet>