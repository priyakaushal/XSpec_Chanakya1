<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="popname">
    <title>popname <lnpid>id-UK07-28227</lnpid></title>
  <body>
    <section>
      <p><sourcexml>popname</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/popname</targetxml></p>
      <note>If attribute <sourcexml>ln.user-displayed="false"</sourcexml> inside <sourcexml>popname</sourcexml> then <sourcexml>ln.user-displayed="false"</sourcexml> will be suppressed from conversion and stylesheet will determine its display characteristics.</note>
        
            <pre>

&lt;popname ln.user-displayed="false"&gt;None&lt;/popname&gt;

<b>Becomes</b>
        

&lt;popname&gt;None&lt;/popname&gt;

            </pre>
      
      <pre>

&lt;popname&gt;CPR 1998&lt;/popname&gt;

<b>Becomes</b>
        

&lt;popname&gt;CPR 1998&lt;/popname&gt;

            </pre>
    </section>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\popname.dita  -->
	

	<xsl:template match="popname" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		<!--  Original Target XPath:  popname   -->
		<!--<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
		-->	<popname>
				<xsl:apply-templates select="@* | node()"/>
			</popname>
		<!--</legisinfo:names>-->
	</xsl:template>
	
	<xsl:template match="popname/@ln.user-displayed[.='false']"/>
	

</xsl:stylesheet>