<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_p_text_emph-empty">
  <title><sourcexml>p/text/emph</sourcexml> is Empty <lnpid>id-CA10-14617</lnpid></title>
  <body>
    <section>
      <p>The following structure in the source needs to be suppressed. Suppress all instances of
        this structure.
        <codeblock>

          &lt;p&gt;
            &lt;text&gt;
              &lt;emph typestyle="bf"/&gt;
            &lt;/text&gt;
          &lt;/p&gt;

        </codeblock>
      </p>
    </section>
    <example>
      <title>Source</title>
      <codeblock>

...
&lt;bodytext searchtype="COMMENTARY"&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"/&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Supplementary Table of Cases&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Cumulative Supplement - Current to August 1,
                2011&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...

	</codeblock>
    </example>
    <example>
      <title>Target</title>
      <codeblock>

...
&lt;seclaw:bodytext&gt;                    
    ...
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Supplementary Table of Cases&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Cumulative Supplement - Current to August 1,
                2011&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...

	</codeblock>
    </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_p_text_emph-empty.dita  -->
	<xsl:message>CA10_p_text_emph-empty.xsl requires manual development!</xsl:message> 

	<xsl:template match="p/text/emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>