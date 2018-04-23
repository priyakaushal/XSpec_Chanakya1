<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_credit-to-LexisAdvance_credit">
<title><sourcexml>credit</sourcexml> to <targetxml>credit</targetxml> <lnpid>id-CCCC-10273</lnpid></title>
<body>
	<section>
		<title>Instructions <i>[common element]</i></title>
		<p><sourcexml>credit</sourcexml> becomes <targetxml>credit</targetxml>
		</p>
    </section>
	
    <example>
        <title>Source XML</title>
        <codeblock>
    
    &lt;blockquote&gt;
      ...
      &lt;credit&gt;(Emphasis added.)&lt;/credit&gt;
    &lt;/blockquote&gt;
    
    	</codeblock>
    </example>
    
    <example>
        <title>Target XML</title>
        <codeblock>
    
    &lt;blockquote&gt;
      ...
      &lt;credit&gt;(Emphasis added.)&lt;/credit&gt;
    &lt;/blockquote&gt;    
    
    	</codeblock>
    </example>
    
    <section>
        <title>Changes</title>
        <p>2012-08-07: Created.
        </p>
    </section>
    
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_credit-LxAdv-credit.dita  -->
	 
<!-- Vikas Rohilla : Initial updated may be changed if required-->
	<xsl:template match="credit">
	    <credit>
			<xsl:apply-templates select="@* | node()"/>
		</credit>
	</xsl:template>

</xsl:stylesheet>