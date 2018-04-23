<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">    

<!--<!-\-inlineobject Child of remotelink to
        ref:inlineobject id-CCCC-10364
    
        
            Instructions [common element]
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
                
            If inlineobject is a child of
                remotelink, convert its parent
                remotelink using the general mapping to
                ref:crossreference. Then, as child of
                ref:content map inlineobject to
                ref:inlineobject. 
        
        
        
            Source XML
            

&lt;remotelink dpsi="03SC" service="DOC-ID" remotekey1="DOC-ID" remotekey2="00162287"&gt;
    &lt;inlineobject type="image" attachment="web-server" filename="2.gif"
        alttext="QuickCITE - Cautionary information/Traitement et historique réservés" /&gt;
&lt;/remotelink&gt;

	
        
        
            Target XML
            

&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;
        &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="X-Y-2"/&gt; &lt;!-\\- X and Y are LNI and SMI values obtained from CSSM -\\-&gt;
                &lt;/ref:locator-key&gt;
                &lt;ref:locator-params&gt;
                    &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-\\- allowable values: “image”; (from .jpg, .gif, .png, .bmp)-\\-&gt;
                    &lt;proc:param name="object-smi" value=""/&gt; &lt;!-\\- This @value assignment is done by conversion program -\\-&gt;
                &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
    &lt;/ref:content&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="03SC-00162287"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

	
        
        
        
            Changes
            2011-12-03: Created. New topic to address
                inlineobject as child of
                remotelink
            2013-02-18: Target example updated per inlineobject instructions. 
            2013-02-18: Created two sections, one for "Release 4.0 and after" and another for "Pre-Release 4.0".
            2013-04-30: Updated target sample according to latest Apollo markup.
            2013-05-01: Removed instructions for section
                "Pre-Release 4.0" because according to latest Apollo markup, section
                "Release 4.0 and after" and section "Pre-Release 4.0" now have
                similar conversion markup.
            2013-05-08: Extended the list of allowable values for image handling.
            2016-08-03: Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.
        
    
-\->
    <xsl:message>needs manual development and DITA brought in</xsl:message>-->
    
</xsl:stylesheet>