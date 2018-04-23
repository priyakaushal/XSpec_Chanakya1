<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_jrnl_volnum">
  <title>jrnl:volnum <lnpid>id-AU14-20622</lnpid></title>

  <body>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:volnum</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">pubinfo:pubinfo/pubinfo:volume</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
	&lt;jrnl:info&gt;
		&lt;jrnl:volnum&gt;16&lt;/jrnl:volnum&gt;
	&lt;/jrnl:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

	&lt;pubinfo:pubinfo&gt;
		&lt;pubinfo:volume&gt;16&lt;/pubinfo:volume&gt;
	&lt;/pubinfo:pubinfo&gt;
</pre>

</body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU14_Journal-Newsletter-Bulletins\Journal-Newsletter-Bulletins_jrnl_volnum.dita  -->
	<!-- <xsl:message>Journal-Newsletter-Bulletins_jrnl_volnum.xsl requires manual development!</xsl:message> -->

	<xsl:template match="jrnl:volnum">
		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:volume   -->
			<pubinfo:volume>
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:volume>
	</xsl:template>

</xsl:stylesheet>