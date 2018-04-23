<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.references">
   <title>case:references <lnpid>id-UK02-27230</lnpid></title>
   <body>
      <section>
        <p>
        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:references</sourcexml> becomes
          <targetxml class="+ topic/keyword xml-d/targetxml ">ref:relatedrefs</targetxml> comes with
        optional attribute <sourcexml>referencetype</sourcexml> becomes
          <targetxml>referencetype</targetxml>. </p>
      </section>
     
     <example>
       <title>Source XML</title>
       <codeblock>

&lt;case:references referencetype="cases"&gt;
    &lt;h&gt;
        &lt;emph typestyle="bf"&gt;Cases referred to&lt;/emph&gt;
    &lt;/h&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Hill v Tothill&lt;/emph&gt; [1936] WN 126; Digest Supp.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Harvey v Shelton&lt;/emph&gt; (1844) 7 Beav 455; 2 Digest 447, &lt;emph typestyle="it"&gt;952&lt;/emph&gt;.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:references&gt;

       </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

&lt;ref:relatedrefs referencetype="cases"&gt;
    &lt;bodytext&gt;
        &lt;h&gt;
            &lt;emph typestyle="bf"&gt;Cases referred to&lt;/emph&gt;
        &lt;/h&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Hill v Tothill&lt;/emph&gt; [1936] WN 126; Digest Supp.
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Harvey v Shelton&lt;/emph&gt; (1844) 7 Beav 455; 2 Digest 447, &lt;emph typestyle="it"&gt;952&lt;/emph&gt;.
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;

       </codeblock>
     </example>
     
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.references.dita  -->

	<xsl:template match="case:references">
		<!--  Original Target XPath:  ref:relatedrefs   -->
		<ref:relatedrefs>
			<xsl:apply-templates select="@*"/>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates />
			</bodytext>
		</ref:relatedrefs>
	</xsl:template>

	<xsl:template match="@referencetype">
		<!--  Original Target XPath:  referencetype   -->
		<xsl:attribute name="referencetype" select="."/>
	</xsl:template>

</xsl:stylesheet>