<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_leg.relatedleg">
  <title>leg:relatedleg <lnpid>id-UK11DA-29431</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:relatedleg[@display-name]</sourcexml> becomes
          <targetxml>abstract:body/abstract:references/bodytext/ref:relatedrefs[@referencetype]/bodytext/p/text</targetxml>.</p>
      <note><sourcexml>leg:relatedleg</sourcexml> also has <sourcexml>@type</sourcexml>. That
        attribute is suppressed.</note>
    </section>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:relatedleg type="subordinate" display-name="Legislation Affected"&gt;SI 1986/1335 amended&lt;/leg:relatedleg&gt;
      &lt;leg:relatedleg type="parent" display-name="Enabling Power"&gt;
        &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
          &lt;ci:sesslaw&gt;&lt;!-- example shortened --&gt;&lt;/ci:sesslaw&gt;
          &lt;ci:content&gt;Prosecution of Offences Act 1985, ss 19(3)&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/leg:relatedleg&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  
&lt;abstract:body&gt;
  &lt;abstract:references&gt;
    &lt;bodytext&gt;
      &lt;ref:relatedrefs referencetype="Legislation Affected"&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
            &lt;text&gt;SI 1986/1335 amended&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/ref:relatedrefs&gt;
      &lt;ref:relatedrefs referencetype="Enabling Power"&gt;
        &lt;bodytext&gt;
          &lt;p&gt;
            &lt;text&gt;
              &lt;lnci:cite status="valid"&gt;
                &lt;lnci:sesslaw&gt;&lt;!-- example shortened --&gt;&lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;Prosecution of Offences Act 1985, ss 19(3)&lt;/lnci:content&gt;
              &lt;/lnci:cite&gt;
            &lt;/text&gt;
          &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/ref:relatedrefs&gt;
    &lt;/bodytext&gt;
  &lt;/abstract:references&gt;
&lt;/abstract:body&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2013-08-30: <ph id="change_20130830_jm">Value of <sourcexml>@display-name</sourcexml>
          should carry through without manipulation. Removed rule requiring transform to lower-case
          for target <targetxml>@referencetype</targetxml>. Responds to stylesheet requirement that
          display format be retained in xml. Issue raised for newsitem stream but also applies to
          abstract. R4.5 Post-Iterative Testing UK11DN Issue 351.</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_leg.relatedleg.dita  -->
	 

  <xsl:template match="leg:relatedleg[@display-name][not(preceding-sibling::*[1][self::leg:relatedleg])]">
	  <abstract:references>
				<bodytext>
					<ref:relatedrefs>
					  <xsl:attribute name="referencetype">
					    <xsl:apply-templates select="@display-name"/>
					  </xsl:attribute>
						<bodytext>
							<p>
								<text>
									<xsl:apply-templates select="node()"/>
								</text>
							</p>
						</bodytext>
					</ref:relatedrefs>
				  <xsl:if test="following-sibling::*[1][self::leg:relatedleg]">
				    <xsl:call-template name="wrap-legrelatedleg">
				      <xsl:with-param name="node" select="following-sibling::*[1][self::leg:relatedleg]"/>
				    </xsl:call-template>
				  </xsl:if>
				</bodytext>
			</abstract:references>
	</xsl:template>

  <xsl:template name="wrap-legrelatedleg">
    <xsl:param name="node"/>
    <xsl:apply-templates select="$node" mode="wrap-legreleated"/>
    <xsl:if test="$node/following-sibling::*[1][self::leg:relatedleg]">
      <xsl:call-template name="wrap-legrelatedleg">
        <xsl:with-param name="node" select="$node/following-sibling::*[1][self::leg:relatedleg]"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="leg:relatedleg[@display-name]" mode="wrap-legreleated">
    <ref:relatedrefs>
      <xsl:attribute name="referencetype">
        <xsl:apply-templates select="@display-name"/>
      </xsl:attribute>
      <bodytext>
        <p>
          <text>
            <xsl:apply-templates select="node()"/>
          </text>
        </p>
      </bodytext>
    </ref:relatedrefs>
  </xsl:template>
  
  <xsl:template match="leg:relatedleg[@display-name][preceding-sibling::*[1][self::leg:relatedleg[@display-name]]]"/>

	
  
  <xsl:template match="leg:relatedleg/@display-name">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="leg:relatedleg/@type"/>
	
</xsl:stylesheet>