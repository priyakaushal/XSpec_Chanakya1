<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" 
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_references">
  <title>references <lnpid>id-NZ07DN-23829</lnpid></title>

  <body>
    <p><sourcexml>references</sourcexml> becomes <targetxml>nitf:body/nitf:body.content/bodytext/ref:relatedrefs</targetxml></p>

    <p><sourcexml>@referencetype</sourcexml> becomes
        <targetxml>@referencetype</targetxml></p>

    <p>Create <targetxml>bodytext</targetxml> as a child of
        <targetxml>ref:relatedrefs</targetxml> element and
      wrap <targetxml>p</targetxml> element in it</p>

    <pre xml:space="preserve" class="- topic/pre ">
&lt;dig:body&gt;
    &lt;references referencetype="statutes"&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;process-ignore process="kwd"&gt;
                    &lt;emph typestyle="bf"&gt;References to Legislation:&lt;/emph&gt;
                &lt;/process-ignore&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt;
                &lt;nl/&gt;
                &lt;ci:cite searchtype="LEG-REF"&gt;
                    &lt;ci:content&gt;Trade Practices Act 1974 (Cth) s51AA, s51AB, s51AC,
                        s52&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/references&gt;
&lt;/dig:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.content&gt;
        &lt;bodytext&gt;
            &lt;ref:relatedrefs referencetype="statutes"&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf"&gt;References to Legislation:&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;proc:nl/&gt;
                            &lt;lnci:cite type="legislation"&gt;
                                &lt;lnci:content&gt;Trade Practices Act 1974 (Cth) s51AA, s51AB, s51AC,
                                    s52&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/ref:relatedrefs&gt;
        &lt;/bodytext&gt;
    &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;
    </pre>
      
      <section>
          <title>Changes</title>
          <p>2013-10-30: <ph id="change_20131030">Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</ph></p>
      </section>
      
  </body>
	</dita:topic>

    <xsl:template match="references[preceding-sibling::references]"/>
    
	<xsl:template match="references[not(preceding-sibling::references)]">

		<!--  Original Target XPath:  nitf:body/nitf:body.content/bodytext/ref:relatedrefs   -->
				<bodytext>
					<ref:relatedrefs>
					    <xsl:apply-templates select="@*"/>
						<bodytext>
						    <xsl:apply-templates select="node()"/>
						</bodytext>
					</ref:relatedrefs>
				    <xsl:for-each select="following-sibling::references">
				        <ref:relatedrefs>
				            <xsl:apply-templates select="@*"/>
				            <bodytext>
				                <xsl:apply-templates select="node()"/>
				            </bodytext>
				        </ref:relatedrefs>
				    </xsl:for-each>
				</bodytext>

	</xsl:template>

	<xsl:template match="references/@referencetype">

		<!--  Original Target XPath:  @referencetype   -->
		<xsl:attribute name="referencetype">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>