<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_scope">
  <title>scope <lnpid>id-AU14-20626</lnpid></title>

  <body>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">scope</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:body.head/abstract/@abstracttype="scope"</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
  &lt;jrnl:body&gt;
     &lt;jrnl:prelim&gt;
		&lt;scope&gt;
			&lt;p&gt;
				&lt;text&gt;&lt;emph typestyle="it"&gt;Wind energy will play an important role in the development of
				Australia's renewable energy sector. However, there have been a growing number of
				private and statutory nuisance cases brought in the United States and the United Kingdom
				seeking relief from the alleged interferences arising from neighbouring wind farms in respect
				of noise, aesthetic values, shadow flicker and blade glint. This article examines these cases
				to assess the likely impact of private nuisance claims on the Australian wind industry. ...&lt;/emph&gt;&lt;/text&gt;
			&lt;/p&gt;
		&lt;/scope&gt;
     &lt;/jrnl:prelim&gt;
  &lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

  &lt;nitf:body&gt;
	&lt;nitf:body.head&gt;
			&lt;abstract abstracttype="scope"&gt;
				&lt;bodytext&gt;
					&lt;p&gt;
						&lt;text&gt;&lt;emph typestyle="it"&gt;Wind energy will play an important role in the development of
                        Australia's renewable energy sector. However, there have been a growing number of
                        private and statutory nuisance cases brought in the United States and the United Kingdom
                        seeking relief from the alleged interferences arising from neighbouring wind farms in respect
                        of noise, aesthetic values, shadow flicker and blade glint. This article examines these cases
                        to assess the likely impact of private nuisance claims on the Australian wind industry. ...&lt;/emph&gt;&lt;/text&gt;
					&lt;/p&gt;
				&lt;/bodytext&gt;
			&lt;/abstract&gt;
	&lt;/nitf:body.head&gt;
  &lt;/nitf:body&gt;
</pre>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU14_Journal-Newsletter-Bulletins\Journal-Newsletter-Bulletins_scope.dita  -->
	<xsl:message>Journal-Newsletter-Bulletins_scope.xsl requires manual development!</xsl:message> 

	<xsl:template match="scope">

		<!--  Original Target XPath:  nitf:body.head/abstract/@abstracttype="scope"   -->
		<nitf:body.head>
			<abstract>
				<xsl:attribute name="abstracttype">
					<xsl:text>scope</xsl:text>
				</xsl:attribute>
			</abstract>
		</nitf:body.head>

	</xsl:template>

</xsl:stylesheet>