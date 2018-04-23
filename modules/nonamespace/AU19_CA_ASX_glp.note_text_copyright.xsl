<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:glp="http://www.lexis-nexis.com/glp" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="glp.note_text_copyright">
    <title>text/copyright <lnpid>id-AU19CA-21609</lnpid></title>
    <body>
        <section>
            <ul>
                <li> The <sourcexml>glp:note/blockquote/p/text/copyright</sourcexml> becomes
                        <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>. The contents
                    of <sourcexml>copyright</sourcexml> are moved from the body section of the
                    document into the <targetxml>doc:metadata</targetxml> like the example below:
                </li>
            </ul>
            <pre>
                        
                   
                
                        &lt;bodytext searchtype="COMMENTARY"&gt;
                            &lt;!-- ETC --&gt;
                                &lt;glp:note&gt;
                                    &lt;blockquote&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;
                                                    &lt;copyright&gt;Published and distributed by Reed International 
                                                    Books Australia Pty Limited trading as LexisNexis under licence from ASX Operations 
                                                    Pty Limited ABN 42 004 523 782&lt;/copyright&gt;
                                            &lt;/text&gt;
                                        &lt;/p&gt;
                                    &lt;/blockquote&gt;
                                &lt;/glp:note&gt;
                        &lt;/bodytext&gt;

                   
                   
                   
                                        <b>Becomes</b>
                    
                    
                      &lt;doc:metadata&gt;
                           &lt;pubinfo:pubinfo&gt;
                               &lt;copyright&gt;Published and distributed by Reed International Books Australia Pty Limited
                                   trading as LexisNexis under licence from ASX Operations Pty Limited ABN 42 004 523
                                   782&lt;/copyright&gt;
                           &lt;/pubinfo:pubinfo&gt;
                            ...
                      &lt;/doc:metadata&gt;  
                              
                    </pre>
            <note> An empty <sourcexml>glp:note</sourcexml> should be SUPRESSED and not carried over
                into the NL output</note>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="glp:note/blockquote/p/text/copyright">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/copyright   -->
				<copyright>
					<xsl:apply-templates select="@* | node()"/>
				</copyright>
	</xsl:template>


</xsl:stylesheet>