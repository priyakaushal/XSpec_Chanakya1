<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita leg ref xsl nitf">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_leg.info">
  <title>leg:info and leg:relatedleg <lnpid>id-UK11DN-29616</lnpid></title>
  <body>
    <section><title>leg:info</title>
      <p><sourcexml>leg:info</sourcexml> is a container element that does not itself
      convert.</p></section>
    <section><title>leg:relatedleg</title>
      <p><sourcexml>leg:relatedleg[@display-name]</sourcexml> becomes
          <targetxml>nitf:body.content/bodytext/ref:relatedrefs[@referencetype]/bodytext/p/text</targetxml>.</p>
      <note><sourcexml>leg:relatedleg</sourcexml>
        also has <sourcexml>@type</sourcexml>. That attribute is suppressed.</note></section>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:relatedleg display-name="Related Legislation" type="subordinate"&gt;On the...&lt;/leg:relatedleg&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  
&lt;nitf:body&gt;
  &lt;nitf:body.content&gt;
    &lt;bodytext&gt;
      &lt;ref:relatedrefs referencetype="Related Legislation"&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
            &lt;text&gt;On the...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/ref:relatedrefs&gt;
    &lt;/bodytext&gt;
  &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2013-08-26: <ph id="change_20130826_jm">Value of <sourcexml>@display-name</sourcexml>
          should carry through without manipulation. Removed rule requiring transform to lower-case
          for target <targetxml>@referencetype</targetxml>. Responds to stylesheet requirement that
          display format be retained in xml. R4.5 Post-Iterative Testing UK11DN Issue 351.</ph>.</p>
    </section>
  </body>
	</dita:topic>


<xsl:template match="leg:info">
	<xsl:apply-templates/>
</xsl:template>

	<xsl:template match="leg:relatedleg[@display-name]">
				<ref:relatedrefs>
					<xsl:call-template name="display"/>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="node() except @type"/>
							</text>
						</p>
					</bodytext>
				</ref:relatedrefs>
	</xsl:template>

	<xsl:template match="@display-name" name="display">
		<xsl:attribute name="referencetype">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	<xsl:template match="@type"/>
	
	
</xsl:stylesheet>