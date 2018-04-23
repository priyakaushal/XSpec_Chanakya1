<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-index-target">
        <title>Source XML showing <sourcexml>docinfo:hierlev/heading/title</sourcexml> with the
          value "Defined Terms"</title>
        <body>
<codeblock>

&lt;!-- ... --&gt;
&lt;docinfo:hier&gt;
&lt;docinfo:hierlev role="ancestor"&gt;
  &lt;heading&gt;
    &lt;title&gt;New South Wales&lt;/title&gt;
  &lt;/heading&gt;
  &lt;docinfo:hierlev role="ancestor"&gt;
    &lt;heading&gt;
      &lt;title&gt;Acts&lt;/title&gt;
    &lt;/heading&gt;
    &lt;docinfo:hierlev role="ancestor"&gt;
      &lt;heading&gt;
        &lt;title&gt;Defined Terms&lt;/title&gt;
      &lt;/heading&gt;
      &lt;docinfo:hierlev role="ancestor"&gt;
        &lt;heading&gt;
          &lt;title&gt;D&lt;/title&gt;
        &lt;/heading&gt;
        &lt;docinfo:hierlev role="me"&gt;
          &lt;heading&gt;
            &lt;title&gt;DW&lt;/title&gt;
          &lt;/heading&gt;
        &lt;/docinfo:hierlev&gt;
      &lt;/docinfo:hierlev&gt;
    &lt;/docinfo:hierlev&gt;
  &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;
&lt;!-- ... --&gt;
&lt;in:lev1&gt;
  &lt;in:entry&gt;
    &lt;in:entry-text&gt;
      &lt;emph typestyle="bf"&gt;&amp;quot;dwelling&amp;quot;&lt;/emph&gt;
    &lt;/in:entry-text&gt;
  &lt;/in:entry&gt;
  &lt;!-- ... --&gt;
            
</codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-index-source3.dita  -->
	<!--<xsl:message>navaid-index-source3.xsl requires manual development!</xsl:message> -->

<!--	<xsl:template match="docinfo:hierlev/heading/title">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>