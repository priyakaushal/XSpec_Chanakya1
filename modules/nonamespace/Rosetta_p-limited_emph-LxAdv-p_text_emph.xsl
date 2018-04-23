<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p-limited_emph-to-LexisAdvance_p_text_emph">
 <title><sourcexml>p-limited/emph</sourcexml> to <targetxml>p/text/emph</targetxml> <lnpid>id-CCCC-10421</lnpid></title>
 <body>
 <section>
    <p>When <sourcexml>emph</sourcexml> occurs as a direct child of <sourcexml>p-limited</sourcexml> then <sourcexml>p-limited/emph</sourcexml> becomes <targetxml>p/text/emph</targetxml>.
    </p>
    </section>
    
    <example>
        <title>Source XML</title>
        <codeblock>

&lt;entry&gt;
    &lt;p-limited&gt;
        &lt;emph typestyle="caps"&gt;Box&lt;/emph&gt;
    &lt;/p-limited&gt;
&lt;/entry&gt;

	</codeblock>
    </example>
    
    <example>
        <title>Target XML</title>
        <codeblock>

&lt;entry&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="caps"&gt;Box&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/entry&gt;

	</codeblock>
    </example>
  <section>
   <title>Changes</title>
  </section>
 </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-limited_emph-LxAdv-p_text_emph.dita  -->
	 
    <!-- BRT: this template is in one condition of match="p-limited" in base.xsl
             -->
             <xsl:template match="p-limited[child::emph]">
                 <xsl:element name="p">
                     <xsl:element name="text">
                         <xsl:apply-templates/>
                     </xsl:element>
                 </xsl:element>
                 
             </xsl:template>
         
</xsl:stylesheet>