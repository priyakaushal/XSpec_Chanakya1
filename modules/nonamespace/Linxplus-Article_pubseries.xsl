<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_pubseries">
  <title>pubseries <lnpid>id-NZ07DN-23827</lnpid></title>

  <body>
    <p><sourcexml>pubseries</sourcexml> becomes <targetxml>nitf:body/nitf:body.head/nitf:series/lnci:cite/lnci:content</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;jrnl:articleinfo&gt;
    ...
    &lt;pubseries&gt;University of Queensland Law Journal 27(1) 2008:120-128&lt;/pubseries&gt;
    ...
&lt;/jrnl:articleinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:series&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:content&gt;University of Queensland Law Journal 27(1) 2008:120-128&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/nitf:series&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
</pre>
</body>
	</dita:topic>

	<xsl:template match="pubseries">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/nitf:series/lnci:cite/lnci:content   -->
				<nitf:series>
							<xsl:choose>
								<xsl:when test="ci:cite">
									<xsl:apply-templates select="node()"/>
								</xsl:when>
								<xsl:otherwise>
									<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
										<lnci:content>
											<xsl:apply-templates select="node()"/>
										</lnci:content>
									</lnci:cite>
								</xsl:otherwise>
							</xsl:choose>
				</nitf:series>

	</xsl:template>

</xsl:stylesheet>