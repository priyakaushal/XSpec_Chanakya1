<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_contrib">
  <title>contrib <lnpid>id-NZ07DN-23813</lnpid></title>

  <body>
      <p><sourcexml>contrib</sourcexml> becomes <targetxml>nitf:byline/person:contributor</targetxml></p>

    <p><sourcexml>@contribtype</sourcexml> becomes <targetxml>@contributor-type</targetxml></p>
    
    <p>If <sourcexml>@contribtype</sourcexml> is not present in the source data then conversion need to create <targetxml>@contributor-type="undetermined"</targetxml> in <targetxml>person:contributor</targetxml></p>

       <note>If in source <sourcexml>contrib</sourcexml> element is not having any data then suppressed the element.</note>

<pre xml:space="preserve">
&lt;contrib&gt;
    &lt;bio&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;process-ignore process="kwd"&gt;
                    &lt;emph typestyle="bf"&gt;Author(s): &lt;/emph&gt;
                &lt;/process-ignore&gt;
                &lt;person&gt;
                    &lt;name.text&gt;BARON, PD&lt;/name.text&gt;
                &lt;/person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bio&gt;
&lt;/contrib&gt;

<b>Becomes</b>

&lt;person:contributor contributor-type="undetermined"&gt;
    &lt;person:person&gt;
        &lt;person:bio&gt;
            &lt;person:bio.text&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf"&gt;Author(s): &lt;/emph&gt;
                            &lt;person:person&gt;
                                &lt;person:name.text&gt;BARON, PD&lt;/person:name.text&gt;
                            &lt;/person:person&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
        &lt;/person:bio&gt;
    &lt;/person:person&gt;
&lt;/person:contributor&gt;
</pre>

      <section>
          <title>Changes</title>
          <p>2013-10-30: <ph id="change_20131030">Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</ph></p>
      </section>
      
</body>

	</dita:topic>
    
    <xsl:template match="contrib[not(node()) and not(normalize-space(.) = '')]"/>

	<xsl:template match="contrib[* | text()]">

		<!--  Original Target XPath:  nitf:byline/person:contributor   -->
		<nitf:byline>
			<person:contributor>
			    <xsl:apply-templates select="@*"/>
			    <xsl:if test="not(@contribtype)">
			        <xsl:attribute name="contributor-type">undetermined</xsl:attribute>
			    </xsl:if>
				<xsl:apply-templates select="node()"/>
			</person:contributor>
		</nitf:byline>

	</xsl:template>

	<xsl:template match="contrib/@contribtype">

		<!--  Original Target XPath:  @contributor-type   -->
		<xsl:attribute name="contributor-type">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>