<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.endmatter">
   <title>leg:endmatter <lnpid>id-ST02-26412</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
            <sourcexml>leg:endmatter</sourcexml> becomoes <targetxml>primlaw:level</targetxml> with <targetxml>@leveltype["endnote"]</targetxml>         
          </li>
          </ul>
      </section>
     <example>
       <title>Source XML 1</title>
       <codeblock>

&lt;leg:endmatter&gt;
    &lt;leg:history id="NSW_REG_1996-498_LEGHIST"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;
                &lt;refpt id="NSW_REG_1996-498_LEGHIST" type="ext"/&gt;
                &lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;!-- ... --&gt;
    &lt;/leg:history&gt;
&lt;/leg:endmatter&gt;

    </codeblock>
     </example>
     
     <example>
       <title>Target XML 1</title>
       <codeblock>

&lt;primlaw:level leveltype="endnote"&gt;
    &lt;primlawhist:primlawhist&gt;
        &lt;ref:anchor id="NSW_REG_1996-498_LEGHIST" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;!-- ... --&gt;
    &lt;/primlawhist:primlawhist&gt;
&lt;/primlaw:level&gt;

    </codeblock>
     </example>
             
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Courtrule\leg.endmatter.dita  -->
	<xsl:message>leg.endmatter.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:endmatter">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>