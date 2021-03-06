<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-alt-heading-source2">
        <title>Source XML showing conversion from a <sourcexml>p</sourcexml></title>
        <body>
<codeblock>

  &lt;in:body&gt;
    &lt;heading&gt;
      &lt;title&gt;LawNow Legislation New South Wales&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
      &lt;text&gt; &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text align="left"&gt;
        &lt;!-- NOTE: This becomes &lt;targetxml&gt;documentmenu/documentmenuitem/text/ref:crossreference&lt;/targetxml&gt; and is moved below the "Year and Number" content that becomes &lt;targetxml&gt;alt-heading&lt;/targetxml&gt;. --&gt;
        &lt;remotelink dpsi="03AT" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_LAUNCH_NSW"
          service="DOC-ID"&gt;&lt;inlineobject alttext="New South Wales Home" attachment="ln-server"
            filename="au_launchpad_back.gif" type="image"/&gt; LawNow Home Page&lt;/remotelink&gt;
      &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt; &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;!-- NOTE: This becomes &lt;targetxml&gt;alt-heading&lt;/targetxml&gt; and is moved so it is just after &lt;targetxml&gt;heading&lt;/targetxml&gt; and before &lt;documentmenu&gt; --&gt;
        &lt;emph typestyle="bf"&gt;Year and Number&lt;/emph&gt;
      &lt;/text&gt;
    &lt;/p&gt;
            
</codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-alt-heading-source2.dita  -->
	<!--<xsl:message>navaid-alt-heading-source2.xsl requires manual development!</xsl:message> -->

	

</xsl:stylesheet>