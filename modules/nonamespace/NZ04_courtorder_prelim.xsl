<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.body_case.headnote_prelim">
    <title>prelim <lnpid>id-AU07-19241</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/case:headnote/prelim</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:courtorder/courtorder:head/courtorder:prelim</targetxml>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:headnote&gt;
        &lt;prelim&gt;
            &lt;p&gt;
                &lt;text&gt;&amp;#x2002;&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;The Chief Justice has approved the issue of the following practice
                note:&lt;/text&gt;    
            &lt;/p&gt;
        &lt;/prelim&gt;
&lt;/case:headnote&gt;&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:courtorder&gt;
    &lt;courtorder:head&gt;
        &lt;courtorder:prelim&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#x2002;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;The Chief Justice has approved the issue of the following practice
                    note:&lt;/text&gt;
                &lt;/p&gt;    
            &lt;/bodytext&gt;
        &lt;/courtorder:prelim&gt;
    &lt;/courtorder:head&gt;
&lt;/courtorder:courtorder&gt;                
</pre>
                    The children are described below: <ul class="- topic/ul ">
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/case:headnote/prelim/p</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:prelim/bodytext/p</targetxml>. The child element :
                                <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">text</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">text</targetxml>
                                    <note class="- topic/note ">Please refer to General Markup section for handling of children.</note>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/case:headnote/prelim/heading</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:courtorder/courtorder:head/courtorder:prelim/heading</targetxml>
                            <note class="- topic/note ">For handling of heading element, please refer to 'heading' in the General Markup
                                section.</note>
                            <note>Conversion should not create consecutive <targetxml>heading</targetxml> elements. When 2 or more consecutive sibling
                                source elements map to <targetxml>heading</targetxml>, data should be merged to a single
                                    <targetxml>heading</targetxml> element unless this would hamper content ordering.</note>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\prelim.dita  -->

	<xsl:template match="case:headnote/prelim">
	    <courtorder:prelim>
	        <xsl:for-each-group select="*" group-adjacent="if (self::heading) then 0 else 1">
	            <xsl:choose>
	                <xsl:when test="current-grouping-key()=0">
	                    <xsl:apply-templates select="current-group()"/>
	                </xsl:when>
	                <xsl:otherwise>
	                    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">	                        
	                        <xsl:apply-templates select="current-group()"/>
	                    </bodytext>
	                </xsl:otherwise>
	            </xsl:choose>
	        </xsl:for-each-group>
	    </courtorder:prelim>		
	</xsl:template>

	
</xsl:stylesheet>