<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.prelim">
    <title>leg:prelim <lnpid>id-MY05LL-17028</lnpid></title>
  <body>
    <section>
        <p><sourcexml>LEGDOC/leg:body/leg:prelim</sourcexml>
            <b>becomes</b>
            <targetxml>legis:legis/legis:body/primlaw:prelim</targetxml> and populated as below: 
        </p>
    
    </section>
    <example>
            <title>Mapping of <sourcexml>leg:prelim</sourcexml></title>
            <codeblock>

&lt;leg:body&gt;
    &lt;leg:prelim&gt;
        &lt;p&gt;
            &lt;text align="center"&gt;
                &lt;emph typestyle="it"&gt;Incorporating all amendments up to 1 January 2007&lt;/emph&gt;
                &lt;nl/&gt;
                &lt;nl/&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/leg:prelim&gt;
&lt;/leg:body&gt;


      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;legis:body&gt;
    &lt;primlaw:prelim&gt;
        &lt;p align="center"&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Incorporating all amendments up to 1 January 2007&lt;/emph&gt;
                &lt;proc:nl/&gt;
                &lt;proc:nl/&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/primlaw:prelim&gt;
&lt;/legis:body&gt;
    
      </codeblock>
        </example>       
<section>
    <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\leg.prelim.dita  -->
<!--	<xsl:message>MY05LL_Acts_leg.prelim.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:prelim">
        <primlaw:prelim>
            <xsl:apply-templates select="node()"/>
        </primlaw:prelim>
    </xsl:template>
    
    
</xsl:stylesheet>