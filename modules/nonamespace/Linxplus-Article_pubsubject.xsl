<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_pubsubject">
  <title>pubsubject <lnpid>id-NZ07DN-23828</lnpid></title>

  <body>
    <p><sourcexml>pubsubject</sourcexml> becomes <targetxml>nitf:body.head/classify:classification@classscheme="pubsubject"</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;jrnl:articleinfo&gt;
    ...
    &lt;pubsubject&gt;Judiciary - Australia - Defamation&lt;/pubsubject&gt;
    ...
&lt;/jrnl:articleinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body.head&gt;
    &lt;classify:classification classscheme="pubsubject"&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname&gt;Judiciary - Australia - Defamation&lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
&lt;/nitf:body.head&gt;
</pre>
</body>
	</dita:topic>


	<xsl:template match="pubsubject">

		<!--  Original Target XPath:  nitf:body.head/classify:classification@classscheme="pubsubject"   -->
		<classify:classification classscheme='pubsubject'>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>