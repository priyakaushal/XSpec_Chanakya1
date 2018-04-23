<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-documentmenu-target">
        <title>Target XML showing conversion from a <sourcexml>table</sourcexml></title>
        <body>
<codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;heading&gt;
    &lt;title&gt;LawNow Legislation New South Wales&lt;/title&gt;
  &lt;/heading&gt;
  &lt;!-- NOTE: The &lt;alt-heading&gt; content is moved here, before the content for the first &lt;documentmenuitem&gt; even though in the source file the &lt;alt-heading&gt; content occured after the &lt;documentmenuitem&gt; content. --&gt;
  &lt;alt-heading&gt;
    &lt;title&gt;Defined Terms&lt;/title&gt;
  &lt;/alt-heading&gt;
  &lt;!-- NOTE: The two &lt;navaid:documentmenuitem&gt; elements are combined in the same &lt;navaid:documentmenu&gt; element. --&gt;
  &lt;navaid:documentmenu&gt;
    &lt;navaid:documentmenuitem&gt;
      &lt;text&gt;
        &lt;ref:crossreference&gt;
            &lt;ref:content&gt;LawNow Home Page&lt;/ref:content&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="03AT-LAWNOW_LEG_LAUNCH_NSW"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:crossreference&gt;
        &lt;/text&gt;
    &lt;/navaid:documentmenuitem&gt;    
    &lt;navaid:documentmenuitem&gt;
       &lt;text&gt;
        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
          &lt;ref:content&gt;Back to Alphabet Listing&lt;/ref:content&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="03AT-LAWNOW_LEG_DEFTERM_ACTS_NSW"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:crossreference&gt;      
      &lt;/text&gt;
    &lt;/navaid:documentmenuitem&gt;
  &lt;/navaid:documentmenu&gt;
            
</codeblock>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-documentmenu-target.dita  -->
<!--	<xsl:message>navaid-documentmenu-target.xsl requires manual development!</xsl:message>--> 



</xsl:stylesheet>