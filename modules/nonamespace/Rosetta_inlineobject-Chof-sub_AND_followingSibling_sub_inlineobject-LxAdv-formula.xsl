<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
    sub/inlineobject[following-sibling::sub/inlineobject] to
            formula id-CCCC-10366
    
        
            This topic is used in numerous conversion instructions for several LBUs. It is a
                shared topic rather than duplicated to ensure consistency and accuracy. The xml
                snippets contained in this topic reflect markup needed for the Apollo image handling
                application. The UK is the first LBU to move from Apollo to the Blobstore
                application for image handling. Therefore, if this is a UK conversion instruction
                document, please refer to the following topics for correct image handling markup.
                    lnlink[@service="ATTACHMENT"] to
                        ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE
                        images (id-CCCC-10542)
                    inlineobject to
                        ref:inlineobject for BLOBSTORE images
                        (id-CCCC-10540)
                    link[@filename] to
                        ref:lnlink[@service="ATTACHMENT"] for BLOBSTORE
                        images (id-CCCC-10541)
                
            sub/inlineobject[following-sibling::sub/inlineobject] becomes
                    formula as follows: 
                    The outermost sub element becomes
                            formula.
                    inlineobject maps to
                            ref:inlinobject as a child of
                            formula.
                    The interior sub/inlineobject maps to
                            sub/ref:inlineobject and this mapping is repeated
                        for any additional layers of nesting.
                
            See the General Markup instructions inlineobject to
                        ref:inlineobject for additional details.
        
        
            Source XML
            

&lt;p&gt;
    &lt;text&gt;
        &lt;sub&gt;
            &lt;inlineobject type="image" mimetype="image/gif" filename="img10d.gif"/&gt;
            &lt;sub&gt;
                &lt;inlineobject type="image" mimetype="image/gif" filename="img10f.gif"/&gt;
                &lt;sub&gt;
                    &lt;inlineobject type="image" mimetype="image/gif" filename="img111.gif"/&gt;
                &lt;/sub&gt;
            &lt;/sub&gt;
        &lt;/sub&gt;
    &lt;/text&gt;
&lt;/p&gt;

            
            Target XML
            

&lt;p&gt;
    &lt;text&gt;
        &lt;formula&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-img10d.gif"/&gt;
                        &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt;
                        &lt;proc:param name="object-smi" value=""/&gt;
                        &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
            &lt;sub&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-img10f.gif"/&gt;
                            &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt;
                            &lt;proc:param name="object-smi" value=""/&gt;
                            &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
                &lt;sub&gt;
                    &lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="object-key"/&gt;
                                &lt;ref:key-value value="X-Y-img111.gif"/&gt;
                                &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                            &lt;/ref:locator-key&gt;
                            &lt;ref:locator-params&gt;
                                &lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;proc:param name="object-type" value="image"/&gt;
                                &lt;proc:param name="object-smi" value=""/&gt;
                                &lt;!-- This @value assignment is done by conversion program --&gt;
                            &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:inlineobject&gt;
                &lt;/sub&gt;
            &lt;/sub&gt;
        &lt;/formula&gt;
    &lt;/text&gt;
&lt;/p&gt;

            
        
        
            Changes
            2016-08-03: Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.
            2013-04-22: Created.
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
    
