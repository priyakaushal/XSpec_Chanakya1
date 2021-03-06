<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_scope">
  <title>scope <lnpid>id-NZ08-24020</lnpid></title>

  <body>
    <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">scope</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:body.head/abstract/@abstracttype="scope"</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;jrnl:body&gt;
    &lt;jrnl:prelim&gt;
        &lt;heading&gt;
          &lt;title&gt;Alternative Dispute Resolution&lt;/title&gt;
        &lt;/heading&gt;
        &lt;scope&gt;
          &lt;p&gt;&lt;text&gt;Edited by Carol Powell&lt;/text&gt;&lt;/p&gt;
        &lt;/scope&gt;
    &lt;/jrnl:prelim&gt;
&lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
	&lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl1&gt;Alternative Dispute Resolution&lt;/nitf:hl1&gt;
        &lt;/nitf:hedline&gt;
		&lt;abstract abstracttype="scope"&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Edited by Carol Powell&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/abstract&gt;
	&lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
</pre>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ08_NewsLetter_and_Journals\Journal-Newsletter-Bulletins_scope.dita  -->
	<!-- <xsl:message>NZ08_NewsLetter_and_Journals_Journal-Newsletter-Bulletins_scope.xsl requires manual development!</xsl:message> --> 

	<xsl:template match="scope">
			<abstract>
				<xsl:attribute name="abstracttype">
					<xsl:text>scope</xsl:text>
				</xsl:attribute>
				<bodytext>
					<xsl:apply-templates/>
				</bodytext>
			</abstract>
	</xsl:template>

</xsl:stylesheet>