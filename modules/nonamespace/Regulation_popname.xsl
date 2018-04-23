<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="popname">
    <title>popname <lnpid>id-ST04-26851</lnpid></title>
  <body>
    <section>
      <p><sourcexml>popname</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/popname</targetxml></p>
      <note>If attribute <sourcexml>ln.user-displayed="false"</sourcexml> inside <sourcexml>popname</sourcexml> then <sourcexml>ln.user-displayed="false"</sourcexml> will be suppressed from conversion and stylesheet will determine its display characteristics.</note>
        
            <pre>
              <b><i>Source example based on UK content</i></b>


&lt;popname ln.user-displayed="false"&gt;None&lt;/popname&gt;

<b>Becomes</b>
        

&lt;popname&gt;None&lt;/popname&gt;

            </pre>
      <b><i>Target Example</i></b>
      <pre>

&lt;popname&gt;CPR 1998&lt;/popname&gt;

<b>Becomes</b>
        

&lt;popname&gt;CPR 1998&lt;/popname&gt;

            </pre>
    </section>    
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\popname.dita  -->
	<xsl:message>Regulation_popname.xsl requires manual development!</xsl:message> 

	<xsl:template match="popname">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/popname   -->
		<regulation:head>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:names>
						<popname>
							<xsl:apply-templates select="@* | node()"/>
						</popname>
					</legisinfo:names>
				</legisinfo:legisinfo>
			</primlawinfo:primlawinfo>
		</regulation:head>

	</xsl:template>

	<xsl:template match="ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>