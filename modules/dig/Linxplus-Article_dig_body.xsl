<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:dig="http://www.lexis-nexis.com/glp/dig" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    
    xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/" 
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" 
    version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_dig_body">
    <title>dig:body <lnpid>id-NZ07DN-23815</lnpid></title>

  <body>
    <p><sourcexml>dig:body</sourcexml> becomes <targetxml>newsitem:newsitem/nitf:body</targetxml></p>
      
      <p>When <sourcexml>bodytext</sourcexml> elements comes under <sourcexml>dig:body</sourcexml> then it
          becomes <targetxml>nitf:body/nitf:body.content/navaid:navigationaid/bodytext</targetxml>.</p>
      
      <p>When <sourcexml>heading/title</sourcexml> elements comes under
                <sourcexml>dig:body</sourcexml> then it becomes
                <targetxml>nitf:body/nitf:body.head/nitf:hedline/nitf:hl2</targetxml>.</p>

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
      
      <p><targetxml>bodytext</targetxml> child of <targetxml>dig:body</targetxml>.</p>
      
      <pre xml:space="preserve" class="- topic/pre ">
&lt;dig:body&gt;
    &lt;bodytext&gt;
        &lt;refpt id="JD_JOURNALS" type="ext"/&gt;
        &lt;h&gt;
            &lt;emph typestyle="bf"&gt;Currency Statement&lt;/emph&gt;
        &lt;/h&gt;
        &lt;p&gt;
            &lt;text&gt;&amp;#x00A0; &amp;#x00A0;Database last updated: &lt;emph typestyle="bf"&gt; May 24,
                2012&lt;/emph&gt;&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.content&gt;
        &lt;navaid:navigationaid&gt;
            &lt;ref:anchor id="JD_JOURNALS" anchortype="global"/&gt;
            &lt;bodytext&gt;
                &lt;h&gt;
                    &lt;emph typestyle="bf"&gt;Currency Statement&lt;/emph&gt;
                &lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#x00A0; &amp;#x00A0;Database last updated: &lt;emph typestyle="bf"&gt; May 24,
                            2012&lt;/emph&gt;&lt;/text&gt;
                &lt;/p&gt; ... &lt;/bodytext&gt;
        &lt;/navaid:navigationaid&gt;
    &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;
      </pre>
      
      <p><targetxml>heading/title</targetxml> child of <targetxml>dig:body</targetxml>.</p>
      
      <pre xml:space="preserve" class="- topic/pre ">
&lt;dig:body&gt;
    &lt;heading&gt;
        &lt;title&gt;Currency Statement and Journals Indexed for the LINX database&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl2&gt;Currency Statement and Journals Indexed for the LINX database&lt;/nitf:hl2&gt;
        &lt;/nitf:hedline&gt;
    &lt;/nitf:body.head&gt;
    ...
&lt;/nitf:body&gt;
      </pre>
      
      <section>
          <title>Changes</title>
          <p>2014-01-15: <ph id="change_20140115">Updated target mapping when <sourcexml>heading/title</sourcexml> comes under <sourcexml>dig:body</sourcexml>, Webteam #: 249664, This change immediately applies to NZ07 Linxplus-Article.</ph></p>
      </section>
      
</body>
	</dita:topic>

	

	<xsl:template match="dig:body">

		<!--  Original Target XPath:  newsitem:newsitem/nitf:body   -->
	    <nitf:body>
	        <xsl:apply-templates select="@*"/>
	        <nitf:body.head>
	            <xsl:apply-templates select="node() except (bodytext | references)"/>
	        </nitf:body.head>
	        <xsl:if test="bodytext|references">
	            <nitf:body.content>
	                <xsl:apply-templates select="references | bodytext"/>
	            </nitf:body.content>
	        </xsl:if>
	    </nitf:body>

	</xsl:template>

	<xsl:template match="bodytext[parent::dig:body]">
		<!--  Original Target XPath:  nitf:body/nitf:body.content/navaid:navigationaid/bodytext   -->
	    <navaid:navigationaid xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1">
			<xsl:apply-templates select="refpt"/>
			<bodytext>
			     <xsl:apply-templates select="@* | node() except (refpt)"/>
			</bodytext>
	    </navaid:navigationaid>
	    <bodytext/> <!-- Output for validation purposes -->
	</xsl:template>

	<xsl:template match="dig:body/heading/title">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/nitf:hedline/nitf:hl2   -->
				<nitf:hedline>
					<nitf:hl2>
						<xsl:apply-templates select="@* | node()"/>
					</nitf:hl2>
				</nitf:hedline>
			
	</xsl:template>
    
    <xsl:template match="dig:body/heading">
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>

</xsl:stylesheet>