<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict_equivalent-term">
    <title><sourcexml>dict:equivalent-term</sourcexml> to <targetxml>tei:usg</targetxml> <lnpid>id-ST06-31210</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:equivalent-term</sourcexml> becomes
                    <targetxml>tei:usg[@type='equivalent-term']</targetxml>. </p>
            
            
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
       
             &lt;dict:subtopic id="INT:ANTI-COMPETITIVEAGREEMENTS"&gt;
               &lt;dict:topicname&gt;
                  &lt;emph typestyle="bf"&gt;International Equivalents&lt;/emph&gt;
               &lt;/dict:topicname&gt;
               &lt;dict:equivalent-term&gt;NZ Legal Topic Summary &amp;#x2013; &amp;#x2018;Anti-competitive agreements&amp;#x2019;&lt;/dict:equivalent-term&gt;
               &lt;dict:equivalent-term&gt;UK Legal Topic Summary &amp;#x2013; &amp;#x2018;Anti-competitive agreements&amp;#x2019;&lt;/dict:equivalent-term&gt;
               &lt;dict:equivalent-term&gt;Canada Legal Topic Summary &amp;#x2013; &amp;#x2018;Anti-competitive agreements&amp;#x2019;&lt;/dict:equivalent-term&gt;
            &lt;/dict:subtopic&gt;
                
        
    	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>
     
     
             &lt;tei:entry type="INT:ANTI-COMPETITIVEAGREEMENTS"&gt;
                &lt;tei:usg type="Internationalequivalents"&gt;
                    &lt;emph typestyle="bf"&gt;International Equivalents&lt;/emph&gt;
                &lt;/tei:usg&gt;
                &lt;tei:usg type="equivalent-term"&gt;NZ Legal Topic Summary &amp;#x2013; &amp;#x2018;Anti-competitive agreements&amp;#x2019;&lt;/tei:usg&gt;
                &lt;tei:usg type="equivalent-term"&gt;UK Legal Topic Summary &amp;#x2013; &amp;#x2018;Anti-competitive agreements&amp;#x2019;&lt;/tei:usg&gt;
                &lt;tei:usg type="equivalent-term"&gt;Canada Legal Topic Summary &amp;#x2013; &amp;#x2018;Anti-competitive agreements&amp;#x2019;&lt;/tei:usg&gt;
              &lt;/tei:entry&gt;
                
      
	</codeblock>
            
        </example>
        
        <section>
            <title>Changes</title>
            <p>2014-05-14: <ph id="change_20140514_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Dictionary\dict_equivalent-term.dita  -->
	<xsl:message>dict_equivalent-term.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:equivalent-term"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

</xsl:stylesheet>