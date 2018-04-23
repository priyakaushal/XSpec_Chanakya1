<?xml version="1.0" encoding="UTF-8"?>

<!-- ************************************************************************************
 WARNING!                                                                              
 THIS MODULE SHOULD NOT BE USED.  If your driver includes this module, you need to     
 include Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl IN PLACE OF        
 Rosetta_text-LxAdv-text.xsl. Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl 
 handles whitespace in the text element appropriately for drivers containing this module. 
 Including this module might be harmless but it doesn't actually do anything!
 JL
*****************************************************************************************

-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity">
    <title>Converting <sourcexml>text</sourcexml> When it Contains Only Whitespace or NBSP
        Entity <lnpid>id-CCCC-10478</lnpid></title>
    <body>
        <section>If the <sourcexml>text</sourcexml> element contains only spaces and/or non-breaking
            space characters, suppress the <sourcexml>text</sourcexml> element.</section>
        <section>If the text element contains the non-breaking space entity, do not suppress the
                <sourcexml>text</sourcexml> element.</section>
        <!-- As of 2013-09-25, This rule is not applied to UK and Canada -->
        <example>
            <title>Source XML - text contains only whitespace</title>
            <codeblock>

&lt;p&gt;
    &lt;l&gt; ... &lt;/l&gt;
    &lt;text&gt; &lt;/text&gt;  
&lt;/p&gt;
         
            </codeblock>
            
            <title>Target XML - text contains only whitespace</title>
            <codeblock>

&lt;p&gt;
    &lt;list&gt; ... &lt;/list&gt;
    &lt;!-- text element suppressed --&gt;
&lt;/p&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Source XML - text contains nbsp entity</title>
            <codeblock>

&lt;p&gt;
    &lt;l&gt; ... &lt;/l&gt;
    &lt;!-- e.g. &amp;#160; &amp;#160; or &amp;#xa0;--&gt;
    &lt;text&gt; &amp;#xa0; &lt;/text&gt;  
&lt;/p&gt;
         
            </codeblock>
            
            <title>Target XML - text contains nbsp entity</title>
            <codeblock>

&lt;p&gt;
    &lt;list&gt; ... &lt;/list&gt;
    &lt;text&gt; &amp;#xa0; &lt;/text&gt;
&lt;/p&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2013-08-29: <ph id="change_20130829_raj">Created per WebStar: WebTeam #223114</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.dita  -->
    <!--<xsl:message>Rosetta_text-When_Contains_Only_Wihitespace_Or_NBSP_Entity.xsl SHOULD NOT BE USED.  USE Rosetta_text-LxAdv-text-with-test-for-whitespace-content.xsl to process the "text" element INSTEAD!</xsl:message>--> 

	<!--<xsl:template match="text">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>