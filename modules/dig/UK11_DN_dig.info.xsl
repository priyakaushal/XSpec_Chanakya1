<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_dig.info">
    <title>dig:info <lnpid>id-UK11DN-29611</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dig:info</sourcexml> is a container element that does not itself convert.
                Children of <sourcexml>dig:info</sourcexml> convert as described elsewhere in these
                instructions.</p></section>
        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;...&lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  

&lt;newsitem:newsitem&gt;
  &lt;nitf:body&gt;...&lt;/nitf:body&gt;
&lt;/newsitem:newsitem&gt;


                </pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_dig.info.dita  -->
	 

	<xsl:template match="dig:info">
	  <xsl:apply-templates select="dig:title"/>	  
	</xsl:template>


	

</xsl:stylesheet>