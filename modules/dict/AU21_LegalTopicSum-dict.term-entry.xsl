<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" 
    xmlns:tei="http://www.tei-c.org/ns/1.0/"
    version="2.0" exclude-result-prefixes="dita dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_dict.term-entry">
    <title><sourcexml>dict:term-entry</sourcexml> to <targetxml>dict:defitem/tei:entry</targetxml> <lnpid>id-AU21-22409</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:term-entry</sourcexml> becomes <targetxml>dict:defitem/tei:entry</targetxml>.</p>
      </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
                
                &lt;dict:term-entry&gt;
                    ...
                &lt;/dict:term-entry&gt;
                
	       </codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>
            
            &lt;dict:defitem&gt;
                &lt;tei:entry&gt;
                    ...
                &lt;/tei:entry&gt;
            &lt;/dict:defitem&gt;
            	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-03: <ph id="change_20130403_wl">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<xsl:template match="source_dict:term-entry">
		<!--  Original Target XPath:  dict:defitem/tei:entry   -->
	    <xsl:choose>
	        <xsl:when test="count(source_dict:definition/source_dict:subtopic) &gt; 1">
	            <dict:defitem>
	                <tei:superEntry>
	                    <xsl:apply-templates select="@* | node()"/>
	                </tei:superEntry>
	            </dict:defitem>
	        </xsl:when>
	        <xsl:otherwise>
	            <dict:defitem>
	                <xsl:apply-templates select="@* | node()"/>
	            </dict:defitem>        
	        </xsl:otherwise>
	    </xsl:choose>
	</xsl:template>
</xsl:stylesheet>