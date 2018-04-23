<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-pubdate">
  <title>pubdate <lnpid>id-ST09-32632</lnpid></title>

  <body>
    <p><sourcexml>pubdate</sourcexml> becomes
                <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates</targetxml></p>

<pre>
       <b><i>Source example based on AU content</i></b>

&lt;pubdate&gt;
    &lt;date month="02" year="2009"/&gt;
&lt;/pubdate&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate month="02" year="2009"/&gt;
        &lt;/pubinfo:dates&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
</pre>
      <section>
          <title>Changes</title>
          <p>Created.</p>
      </section>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-pubdate.dita  -->
	<xsl:message>Journaldoc-pubdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="pubdate">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<pubinfo:dates>
					<xsl:apply-templates select="@* | node()"/>
				</pubinfo:dates>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>