<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" 
    version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_dig_info">
    <title>dig:info <lnpid>id-NZ07DN-23816</lnpid></title>

  <body>
      <p><sourcexml>dig:info</sourcexml> becomes <targetxml>nitf:body/nitf:body.head</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;dig:body&gt;
    &lt;dig:info&gt;
    ...
    &lt;/dig:info&gt;
    &lt;references referencetype="statutes"&gt;
    ...
    &lt;/references&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
    ...
    &lt;/nitf:body.head&gt;
    &lt;nitf:body.content&gt;
        &lt;bodytext&gt;
            &lt;ref:relatedrefs referencetype="statutes"&gt;
            ...
            &lt;/ref:relatedrefs&gt;
        &lt;/bodytext&gt;
    &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;
</pre>
</body>
	</dita:topic>


	<xsl:template match="dig:info">

		<!--  Original Target XPath:  nitf:body/nitf:body.head   -->
				<xsl:apply-templates select="@* | node() except (case:info)"/>			
	</xsl:template>

</xsl:stylesheet>