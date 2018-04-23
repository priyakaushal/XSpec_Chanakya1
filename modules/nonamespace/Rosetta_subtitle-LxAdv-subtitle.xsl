<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_subtitle_to-LexisAdvance_subtitle">
    <title><sourcexml>subtitle</sourcexml> to 
        <targetxml>subtitle</targetxml> <lnpid>id-CCCC-10473</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>subtitle</sourcexml> becomes <targetxml>subtitle</targetxml>
            </p>
            <!--<p>If the input document has subtitle/defterm scenario then
                    <sourcexml>defterm</sourcexml> within a subtitle can be dropped, but the child
                element and content of the tag is retained and no text is dropped. </p>-->
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;heading&gt;
	&lt;subtitle&gt;Applications for leave to appeal against sentence not heard by a single judge of appeal&lt;/subtitle&gt;
&lt;/heading&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;heading&gt;
	&lt;subtitle&gt;Applications for leave to appeal against sentence not heard by a single judge of appeal&lt;/subtitle&gt;
&lt;/heading&gt;

	</codeblock>
        </example>
       <!-- <example>
            <title>Source XML having subtitle/defterm scenario:</title>
            <codeblock>

&lt;subtitle&gt;
   &lt;defterm&gt;
      &lt;emph typestyle="bf"&gt;&amp;#x201C;Greenhouse Gas Storage Act 2009&amp;#x201D;&lt;/emph&gt;
   &lt;/defterm&gt;
&lt;/subtitle&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;subtitle&gt;   
      &lt;emph typestyle="bf"&gt;&amp;#x201C;Greenhouse Gas Storage Act 2009&amp;#x201D;&lt;/emph&gt;   
&lt;/subtitle&gt;

	</codeblock>
        </example>-->
        <section>
            <title>Changes</title>
            <p>2011-12-15: Created.</p>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="subtitle">

		<!--  Original Target XPath:  subtitle   -->
	    <subtitle xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node() except refpt"/>
		</subtitle>

	</xsl:template>
    
</xsl:stylesheet>