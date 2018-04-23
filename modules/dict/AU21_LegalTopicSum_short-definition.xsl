<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita source_dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_dict.short-definition">
    <title><sourcexml>dict:short-definition</sourcexml> to <targetxml>tei:def</targetxml> <lnpid>id-AU21-22419</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:short-definition</sourcexml> becomes <targetxml>tei:def</targetxml>
                with <targetxml>tei:def[@label='short-definition']</targetxml>.</p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
       
                  &lt;dict:short-definition&gt;
                  &lt;h&gt;Breach of duty of care&lt;/h&gt;
                  &lt;p&gt;
                     &lt;text&gt;A failure by a defendant to meet the standard of care that would have been shown by a reasonable 
                     person in the defendant&amp;#x2019;s position, so as to avoid or reduce the risk of injury to the plaintiff.&lt;/text&gt;
                  &lt;/p&gt;
                 &lt;/dict:short-definition&gt;
        
    	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>
     
                  &lt;tei:def label="short-definition"&gt;
                        &lt;pgrp&gt;
                            &lt;h&gt;Breach of duty of care&lt;/h&gt;
                            &lt;p&gt;
                                &lt;text&gt;A failure by a defendant to meet the standard of care that would have been shown by a reasonable person in the defendant
                                 position, so as to avoid or reduce the risk of injury to the plaintiff.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
      
	</codeblock>
            
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-18 <ph id="change_20130418_WL">Created</ph>.</p>
        </section>
    </body>
	</dita:topic>

	

	<xsl:template match="source_dict:short-definition">
		<!--  Original Target XPath:  tei:def   -->
		<tei:def>
		    <xsl:attribute name="label">short-definition</xsl:attribute>
			<pgrp>
		    <xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

</xsl:stylesheet>