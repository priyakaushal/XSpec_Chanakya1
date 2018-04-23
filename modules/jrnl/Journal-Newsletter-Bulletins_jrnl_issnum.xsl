<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_jrnl_issnum">
  <title>jrnl:issnum <lnpid>id-AU14-20619</lnpid></title>

  <body>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:issnum</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">pubinfo:pubinfo/pubinfo:issue</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
	&lt;jrnl:info&gt;
		&lt;jrnl:issnum&gt;10&lt;/jrnl:issnum&gt;
	&lt;/jrnl:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

	&lt;pubinfo:pubinfo&gt;
		&lt;pubinfo:issue&gt;10&lt;/pubinfo:issue&gt;
	&lt;/pubinfo:pubinfo&gt;
</pre>

</body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU14_Journal-Newsletter-Bulletins\Journal-Newsletter-Bulletins_jrnl_issnum.dita  -->
	<!-- <xsl:message>Journal-Newsletter-Bulletins_jrnl_issnum.xsl requires manual development!</xsl:message> --> 

	<xsl:template match="jrnl:issnum">
		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:issue   -->
			<pubinfo:issue>
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:issue>
	</xsl:template>

</xsl:stylesheet>