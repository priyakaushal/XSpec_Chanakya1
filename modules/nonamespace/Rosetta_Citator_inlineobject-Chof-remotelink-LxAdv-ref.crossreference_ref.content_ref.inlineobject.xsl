<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
    inlineobject child of remotelink to
        ref:inlineobject id-CCCC-10500
    
        
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
                
            In general, if inlineobject is a child of
                    remotelink, convert its parent
                    remotelink using the general mapping to
                    ref:crossreference. Then, as child of
                    ref:content, map inlineobject to
                    ref:inlineobject.
          However, there is one exception to this rule. If the
                    inlineobject/@filename is any of: 
                    "1.gif" or "1.png"
                    "2.gif" or "2.png"
                    "3.gif" or "3.png"
                    "4.gif" or "4.png"
                    "5.gif" or "5.png"
                drop inlineobject and convert its parent
                    remotelink using the general mapping to
                    ref:crossreference, with the following exceptions:
                     Set the attribute
                            ref:crossreference/@crossreferencetype to
                        "citatorAlert" (rather than "seeAlso" or "seeInstead") 
                    Add the attribute
                            ref:crossreference/@referencedresourcetype="citator"
                    Add the attribute
                            ref:crossreference/@referencedresourcesentiment,
                        and derive its value from the value of
                            remotelink/inlineobject/@filename as follows: 
                            inlineobject/@filename="1.gif" (or "1.png")
                                becomes
                                    ref:crossreference/@referencedresourcesentiment="negative"
                            inlineobject/@filename="2.gif" (or "2.png")
                                becomes
                                    ref:crossreference/@referencedresourcesentiment="cautionary"
                            inlineobject/@filename="3.gif" (or "3.png")
                                becomes
                                    ref:crossreference/@referencedresourcesentiment="positive"
                            inlineobject/@filename="4.gif" (or "4.png")
                                becomes
                                    ref:crossreference/@referencedresourcesentiment="neutral"
                            inlineobject/@filename="5.gif" (or "5.png")
                                becomes
                                    ref:crossreference/@referencedresourcesentiment="none"
                        
                     Populate ref:crossreference/ref:content by removing
                        the text ‘QuickCITE –‘ from inlineobject/@alttext,
                        and coverting the remaining text:
                             ”QuickCITE - Negative information/Traitement et historique
                                negatives” becomes “Negative information/Traitement et historique
                                negatives”
                             ”QuickCITE - Cautionary information/Traitement et historique
                                réservés” becomes “Cautionary information/Traitement et historique
                                réservés”
                             ”QuickCITE - Positive information/Traitement et historique
                                positifs” becomes “Positive information/Traitement et historique
                                positifs”
                             ”QuickCITE - Neutral information/Traitement et historique neutres”
                                becomes “Neutral information/Traitement et historique neutres”
                             ”QuickCITE - Citation information/Information relative aux
                                références jurisprudentielles” becomes “Citation
                                information/Information relative aux références jurisprudentielles”
                            
                        
                
        
        
        
            Source XML
            

&lt;remotelink dpsi="03SC" service="DOC-ID" remotekey1="DOC-ID" remotekey2="00192847"&gt;
    &lt;inlineobject type="image" attachment="web-server" filename="example.gif"/&gt;
&lt;/remotelink&gt;

	
        
        
            Target XML
            

&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;
        &lt;ref:inlineobject&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="object-key"/&gt;
                    &lt;ref:key-value value="X-Y-example"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                &lt;/ref:locator-key&gt;
                &lt;ref:locator-params&gt;
                    &lt;proc:param name="componentseq" value="1"/&gt;
                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                    &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                &lt;/ref:locator-params&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
    &lt;/ref:content&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="03SC-00192847"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

	
        


      
        Source XML when one of the special file names occurs
        

&lt;remotelink dpsi="03SC" service="DOC-ID" remotekey1="DOC-ID" remotekey2="00162287"&gt;
    &lt;inlineobject type="image" attachment="web-server" filename="2.gif"
        alttext="QuickCITE - Cautionary information/Traitement et historique réservés" /&gt;
&lt;/remotelink&gt;

	
      
      
        Target XML when one of the special file names occurs
        

&lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcetype="citator" referencedresourcesentiment="cautionary"&gt;
    &lt;ref:content&gt;Cautionary information/Traitement et historique réservés&lt;/ref:content&gt;
    &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="03SC-00162287"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

      
      
        
            Changes
            2016-08-03: Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.
            2014-07-07: Created this topic to handle Citator-specific conversion of remotelink/inlineobject.
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
    
