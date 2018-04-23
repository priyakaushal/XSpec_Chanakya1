<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_pubdate">
  <title>pubdate <lnpid>id-AU14-20625</lnpid></title>

  <body>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">pubdate</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">pubinfo:pubinfo/pubinfo:dates</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
    &lt;pubdate&gt;
        &lt;date month="02" year="2009"/&gt;
    &lt;/pubdate&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

       &lt;pubinfo:dates&gt;
          &lt;pubinfo:pubdate month="02" year="2009"/&gt;
       &lt;/pubinfo:dates&gt;
</pre>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU14_Journal-Newsletter-Bulletins\Journal-Newsletter-Bulletins_pubdate.dita  -->
	<xsl:message>Journal-Newsletter-Bulletins_pubdate.xsl requires manual development!</xsl:message> 

	<xsl:template match="pubdate">

		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:dates   -->
		<pubinfo:pubinfo>
			<pubinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:dates>
		</pubinfo:pubinfo>

	</xsl:template>

</xsl:stylesheet>