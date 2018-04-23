<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-white-space-ps-source">
        <title>Source XML</title>
        <body>
<codeblock>

&lt;in:body&gt;
  &lt;heading&gt;
    &lt;title&gt;LawNow Legislation New South Wales&lt;/title&gt;
  &lt;/heading&gt;
  &lt;!-- An "empty" paragraph immediately after the &lt;heading&gt;; this is be dropped. --&gt;
  &lt;p&gt;
    &lt;text&gt; &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text align="left"&gt;
      &lt;remotelink dpsi="03AT" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_LAUNCH_NSW"
        service="DOC-ID"&gt;&lt;inlineobject alttext="New South Wales Home" attachment="ln-server"
          filename="au_launchpad_back.gif" type="image"/&gt; LawNow Home Page&lt;/remotelink&gt;
    &lt;/text&gt;
  &lt;/p&gt;
  &lt;!-- Another "empty" paragraph; this is also dropped since there would be nothing else in the target &lt;bodytext&gt; element. --&gt;  
  &lt;p&gt;
    &lt;text&gt; &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;emph typestyle="bf"&gt;Bills by Year and Title&lt;/emph&gt;
    &lt;/text&gt;
  &lt;/p&gt;
            
</codeblock>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-white-space-ps-source.dita  -->
	<!--<xsl:message>navaid-white-space-ps-source.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>