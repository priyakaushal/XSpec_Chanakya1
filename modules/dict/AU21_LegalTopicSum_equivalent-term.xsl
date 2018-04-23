<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita source_dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_equivalent-term">
    <title><sourcexml>dict:equivalent-term</sourcexml> to <targetxml>tei:usg</targetxml> <lnpid>id-AU21-22417</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:equivalent-term</sourcexml> becomes
                    <targetxml>tei:usg[@type='equivalent-term']</targetxml>. </p>
            
            <p>The source may include a <sourcexml>remotelink</sourcexml> as a child. This content
            should be mapped to a <targetxml>ref:crossreference</targetxml> tag.</p>
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
        
        <example>
            <title>Source XML 2</title>
            <codeblock>

             &lt;dict:subtopic id="INT:BREACHOFDUTY"&gt;
                   &lt;dict:topicname&gt;
                        &lt;emph typestyle="bf"&gt;International Equivalents&lt;/emph&gt;
                        &lt;/dict:topicname&gt;
                        &lt;dict:equivalent-term&gt;NZ Legal Topic Summary &amp;#x2013; &amp;#x2018;
                        
                        &lt;remotelink service="DOC-ID"
                        remotekey1="DOC-ID"
                        dpsi="0QQL"
                        remotekey2="NZ.BREACHOFDUTY" 
                        &gt;Breach of Duty&lt;/remotelink&gt;&amp;#x2019;&lt;/dict:equivalent-term&gt;
                     ...                          
             &lt;/dict:subtopic&gt;                            
                
                
            </codeblock>
        </example>
        <example>
            <title>Target XML 2</title>
            <codeblock>
     
             &lt;tei:entry type="INT:BREACHOFDUTY"&gt;
                &lt;tei:usg type="Internationalequivalents"&gt;
                    &lt;emph typestyle="bf"&gt;International Equivalents&lt;/emph&gt;
                &lt;/tei:usg&gt;
                &lt;tei:usg type="equivalent-term"&gt;NZ Legal Topic Summary &amp;#x2013; &amp;#x2018;
                     
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                  &lt;ref:content&gt;Breach of Duty&lt;/ref:content&gt;
                  &lt;ref:locator&gt;
                     &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="NZ.BREACHOFDUTY"/&gt;
                     &lt;/ref:locator-key&gt;
                  &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;&amp;#x2019;&lt;/tei:usg&gt;     
        
            </codeblock>
        </example>
    
        
    <section>
        <title>Changes</title>
        <p>2015-02-09 <ph id="change_20150209_MLV">Added new example that includes a <sourcexml>dict:equivalent-term/remotelink</sourcexml> that maps to <targetxml>tei:usg//ref:crossreference</targetxml>.</ph></p>
        <p>2013-04-18 <ph id="change_20130418_WL">Created</ph>.</p>
    </section>
    </body>
	</dita:topic>

	<xsl:template match="source_dict:equivalent-term">
		<!--  Original Target XPath:  tei:usg   -->
		<tei:usg>
		    <xsl:attribute name="type">equivalent-term</xsl:attribute>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>
	</xsl:template>
</xsl:stylesheet>