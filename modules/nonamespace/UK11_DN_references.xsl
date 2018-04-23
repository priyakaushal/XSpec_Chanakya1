<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_references">
  <title>references <lnpid>id-UK11DN-29622</lnpid></title>
  <body>
    <p><sourcexml>references</sourcexml> becomes
        <targetxml>nitf:body.content/bodytext/ref:relatedrefs/bodytext</targetxml>.</p>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;references&gt;
      &lt;h&gt;...&lt;/h&gt;
      &lt;p&gt;&lt;text&gt;...&lt;/text&gt;&lt;/p&gt;
    &lt;/references&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  
&lt;nitf:body&gt;
  &lt;nitf:body.content&gt;
    &lt;bodytext&gt;
      &lt;ref:relatedrefs&gt;
        &lt;bodytext&gt;
          &lt;h&gt;...&lt;/h&gt;
          &lt;p&gt;&lt;text&gt;...&lt;/text&gt;&lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/ref:relatedrefs&gt;
    &lt;/bodytext&gt;
  &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;

                </pre>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_references.dita  -->
	 

	<xsl:template match="references">

		<!--  Original Target XPath:  nitf:body.content/bodytext/ref:relatedrefs/bodytext   -->
	
			
				<ref:relatedrefs>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</ref:relatedrefs>
			
		

	</xsl:template>

</xsl:stylesheet>