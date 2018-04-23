<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="glp.note_text_copyright">
    <title>text/copyright <lnpid>id-AU19LA-22008</lnpid></title>
    <body>
        <section>
            <ul>
                <li> The <sourcexml>glp:note/blockquote/p/text/copyright</sourcexml> becomes
                        <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>. The contents
                    of <sourcexml>copyright</sourcexml> are moved from the body section of the
                    document into the <targetxml>doc:metadata</targetxml> like the example below:
                </li>
                 <li>
                     <note> An empty <sourcexml>glp:note</sourcexml> should be SUPRESSED and not carried over
                         into the NL output</note>
                 </li>
            </ul>
            <pre>
                        
                        <b>Source XML </b>
                   
                        
                          &lt;leg:levelbody&gt;
                            &lt;leg:bodytext&gt;
                                ... 
                                 &lt;glp:note&gt;
                                     &lt;blockquote&gt;
                                         &lt;p&gt;
                                             &lt;text&gt;
                                                 &lt;copyright&gt;Published and distributed by Reed International Books Australia Pty Limited trading as LexisNexis 
                                                 under licence from ASX Operations Pty Limited ABN 42 004 523 782&lt;/copyright&gt;
                                             &lt;/text&gt;
                                         &lt;/p&gt;
                                     &lt;/blockquote&gt;
                                 &lt;/glp:note&gt;
                             &lt;/leg:bodytext&gt;
                         &lt;/leg:levelbody&gt;
                     
                    </pre>
                                        <b>Becomes</b>
            <pre>
                <b>Target XML</b>
                    
                    
                      &lt;doc:metadata&gt;
                           &lt;pubinfo:pubinfo&gt;
                               &lt;copyright&gt;Published and distributed by Reed International Books Australia Pty Limited trading 
                               as LexisNexis under licence from ASX Operations Pty Limited ABN 42 004 523 782&lt;/copyright&gt;
                           &lt;/pubinfo:pubinfo&gt;
                              
                    </pre>
          
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19LA_ASX\AU19_LA_ASX_glp.note_text_copyright.dita  -->
	
    <xsl:template match="glp:note[blockquote/p/text/copyright][not(child::*[2])]" mode="pubinfo"> 
        <xsl:apply-templates select="blockquote/p/text/copyright" mode="pubinfo"/>
    </xsl:template>

	<xsl:template match="copyright" mode="pubinfo">
	    <copyright xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:apply-templates select="@* | node()"/>
	    </copyright>
	</xsl:template>

	<xsl:template match="glp:note[blockquote/p/text/copyright][not(child::*[2])]"/>

		

</xsl:stylesheet>