<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_pubdate">
  <title>pubdate <lnpid>id-NZ07DN-23824</lnpid></title>

  <body>
    <p><sourcexml>pubdate</sourcexml> becomes <targetxml>pubinfo:pubinfo/pubinfo:dates</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;pubdate ln.user-displayed="false"&gt;
    &lt;date year="2005" month="11"&gt;Nov 2005&lt;/date&gt;
&lt;/pubdate&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;pubinfo:dates&gt;
    &lt;pubinfo:pubdate year="2005" month="11"/&gt;
&lt;/pubinfo:dates&gt;
</pre>
      
      <note class="- topic/note ">For handling @ln.user-displayed attribute, please refer to general markup ln.user_displayed="false" section in the CI.</note>
      
</body>
	</dita:topic>


	<xsl:template match="pubdate" priority="25">

		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:dates   -->
			<pubinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:dates>
		

	</xsl:template>
	
	<xsl:template match="date[parent::pubdate[@ln.user-displayed]]" priority="25">
		<pubinfo:pubdate>
			<xsl:copy-of select="@year | @month"/>			
		</pubinfo:pubdate>
	</xsl:template>
	
	<xsl:template match="pubdate/@ln.user-displayed"/>

</xsl:stylesheet>