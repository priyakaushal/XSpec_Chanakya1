<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita nitf">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_abstract">
  <title>abstract <lnpid>id-UK11DN-29607</lnpid></title>
    <body>
        <section>
          <p><sourcexml>abstract</sourcexml> becomes <targetxml>nitf:body.head/abstract/bodytext</targetxml>.</p></section>
        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;abstract&gt;
    &lt;p&gt;
      &lt;text&gt;The Refugee Legal Centre recently...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/abstract&gt;
&lt;/dig:body&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;nitf:body&gt;
  &lt;nitf:body.head&gt;
    &lt;abstract&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;The Refugee Legal Centre recently...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/abstract&gt;
  &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;

                </pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_abstract.dita  -->
	 

	<xsl:template match="abstract">

		<!--  Original Target XPath:  nitf:body.head/abstract/bodytext   -->
		
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</abstract>
		

	</xsl:template>

</xsl:stylesheet>