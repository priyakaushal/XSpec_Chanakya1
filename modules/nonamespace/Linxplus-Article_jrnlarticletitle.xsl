<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" 
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_jrnlarticletitle">
  <title>jrnlarticletitle <lnpid>id-NZ07DN-23820</lnpid></title>

  <body>
    <p><sourcexml>jrnlarticletitle</sourcexml> becomes <targetxml>nitf:body/nitf:body.head/nitf:hedline/nitf:hl1</targetxml></p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;jrnl:articleinfo&gt;
    &lt;jrnl:articletitle&gt;Resistance: a consideration of the opposition to a duty of good
        faith in Australian commercial contracts:Australian commercial
        contracts&lt;/jrnl:articletitle&gt;
&lt;/jrnl:articleinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl1&gt;Resistance: a consideration of the opposition to a duty of good faith in
                Australian commercial contracts:Australian commercial contracts&lt;/nitf:hl1&gt;
        &lt;/nitf:hedline&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
</pre>
</body>
	</dita:topic>

	<xsl:template match="jrnl:articletitle">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/nitf:hedline/nitf:hl1   -->	
				<nitf:hedline>
					<nitf:hl1>
						<xsl:apply-templates select="@* | node()"/>
					</nitf:hl1>
				</nitf:hedline>

	</xsl:template>

</xsl:stylesheet>