<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.categories-target">
  <title>Target XML</title>
  <body>
    <section>
      <title>Target Example 1</title>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;classify:classification classscheme="leg:categories"&gt;
   &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
     &lt;classify:classname&gt;REPRESENTATION OF THE PEOPLE&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
   &lt;/classify:classitem&gt;
  &lt;/classify:classification&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

    </codeblock>
    </section>
    <section>
      <title>Target Example 2</title>
      <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;classify:classification classscheme="leg:categories"&gt;
   &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
     &lt;classify:classname&gt;PENSIONS&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
   &lt;/classify:classitem&gt;
  &lt;/classify:classification&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

    </codeblock>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.categories-target.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.categories-target.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>