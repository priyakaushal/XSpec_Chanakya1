<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-use-bodytext-target">
        <title>Target XML example of opening and closing bodytext in conjuction with occurances of
          navaid:list and navaid:documentmenu</title>
        <body>
<codeblock>
  
  &lt;navaid:landingpagebody&gt;
    &lt;heading&gt;
      &lt;title&gt;LawNow Legislation New South Wales&lt;/title&gt;
    &lt;/heading&gt;

    &lt;alt-heading&gt;
      &lt;title&gt;Assents&lt;/title&gt;
    &lt;/alt-heading&gt;
    
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
    &lt;/navaid:documentmenu&gt;

    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt; &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;

    &lt;navaid:list style="grid"&gt;
      
      &lt;index:entry&gt;
        &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
          &lt;ref:marker&gt;2011&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="03AT-LAWNOW_LEG_MADEASSENT_ACTS_NSW"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
        &lt;connector&gt;, &lt;/connector&gt;
      &lt;/index:entry&gt;
      &lt;index:entry&gt;
        &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
          &lt;ref:marker&gt;2010&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="03AT-LAWNOW_LEG_MADEASSENT_ACTS_2010_NSW"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
        &lt;connector&gt;, &lt;/connector&gt;
      &lt;/index:entry&gt;
    &lt;!-- ...1... --&gt;
    &lt;/navaid:list&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;Assents to Acts in 2007, listed in reverse order of Assent date.&lt;/text&gt;
      &lt;/p&gt;
      &lt;p&gt;
      &lt;table frame="all"&gt;
        &lt;tgroup cols="2" colsep="1" rowsep="1"&gt;
          &lt;colspec align="center" colname="C1" colnum="1"/&gt;
          &lt;colspec align="left" colname="C2" colnum="2"/&gt;
          &lt;thead&gt;
            &lt;row&gt;
              &lt;entry align="center" colname="C1"&gt;
                &lt;emph typestyle="bf"&gt;Date&lt;/emph&gt;
              &lt;/entry&gt;
              &lt;entry align="center" colname="C2"&gt;
                &lt;emph typestyle="bf"&gt;Title&lt;/emph&gt;
              &lt;/entry&gt;
            &lt;/row&gt;
          &lt;/thead&gt;
          &lt;tbody&gt;
            &lt;row&gt;
              &lt;entry colname="C1" morerows="12"&gt;13/12/2007&lt;/entry&gt;
              &lt;entry colname="C2"&gt;
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                  &lt;ref:content&gt;CASINO, LIQUOR AND GAMING CONTROL AUTHORITY ACT 2007 NO
                    91&lt;/ref:content&gt;
                  &lt;ref:locator anchoridref="NSW_ACT_2007-91"&gt;
                    &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="005Y-EXAMPLE_DOCID"/&gt;
                    &lt;/ref:locator-key&gt;
                  &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;
              &lt;/entry&gt;
            &lt;/row&gt;
            &lt;!-- ...2... --&gt;
          &lt;/tbody&gt;
        &lt;/tgroup&gt;
      &lt;/table&gt;
      &lt;/p&gt;
    
    &lt;/bodytext&gt;
        
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
    &lt;/navaid:documentmenu&gt;
    
    &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt; &lt;/text&gt;
    &lt;/p&gt;
    &lt;/bodytext&gt;
    
    &lt;navaid:list style="grid"&gt;
      &lt;index:entry&gt;
        &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
          &lt;ref:marker&gt;2011&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="03AT-LAWNOW_LEG_MADEASSENT_ACTS_NSW"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
        &lt;connector&gt;, &lt;/connector&gt;
      &lt;/index:entry&gt;
      &lt;!-- ...3... --&gt;
    &lt;/navaid:list&gt;
  &lt;/navaid:landingpagebody&gt;
  
  </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-use-bodytext-target.dita  -->
	<!--<xsl:message>navaid-use-bodytext-target.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>