<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_process.ignore">
  <title>process-ignore <lnpid>id-NZ07DN-23822</lnpid></title>

  <body>
      <p>Drop <sourcexml>process-ignore</sourcexml> and any attributes from conversion, but process its children as normal.</p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;process-ignore process="kwd"&gt;
    &lt;emph typestyle="bf"&gt;Location: &lt;/emph&gt;
&lt;/process-ignore&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

    &lt;emph typestyle="bf"&gt;Location: &lt;/emph&gt;
</pre>
      <section>
          <title>Changes</title>
          <p>2013-10-25: <ph id="change_20131025">Updated <sourcexml>process-ignore</sourcexml>
                    instruction and example. Webteam #: 243194.</ph></p>
      </section>
</body>
	</dita:topic>

    <xsl:template match="process-ignore">
	    <xsl:choose>
	        <xsl:when test="parent::pubnote[remotelink]">
	            <doc:related-content-desc>
	                <p>
	                    <text>
	                        <xsl:apply-templates select="node()"/>
	                    </text>
	                </p>
	            </doc:related-content-desc>
	        </xsl:when>
	        <xsl:otherwise>
	            <xsl:apply-templates select="node()"/>
	        </xsl:otherwise>
	    </xsl:choose>
    </xsl:template>

</xsl:stylesheet>