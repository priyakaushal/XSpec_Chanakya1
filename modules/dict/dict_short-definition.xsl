<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict_short-definition">
    <title><sourcexml>dict:short-definition</sourcexml> to <targetxml>tei:def</targetxml> <lnpid>id-ST06-31216</lnpid></title>
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
            <p>2014-05-14: <ph id="change_20140514_AS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Dictionary\dict_short-definition.dita  -->
	<xsl:message>dict_short-definition.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:short-definition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def   -->
		<tei:def>
			<xsl:apply-templates select="@* | node()"/>
		</tei:def>

	</xsl:template>

</xsl:stylesheet>