<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0">
    <!--   docinfo:alt-renditions/docinfo:alt-rendition to
            doc:alt-renditions/doc:alt-rendition
        id-CCCC-10283
    
        
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
                
            docinfo:alt-renditions becomes
                    doc:alt-renditions with these children: 
                    docinfo:alt-renditions/docinfo:alt-rendition becomes
                            doc:alt-renditions/doc:alt-rendition with
                            @key and child as follows: 
                            docinfo:alt-renditions/docinfo:alt-rendition/link
                                becomes
                                    doc:alt-renditions/doc:alt-rendition/ref:lnlink[@service="ATTACHMENT"].
                                    For conversion of link, please see
                                    the topic "link to
                                            ref.lnlink/@service="ATTACHMENT"".
                            
                            docinfo:alt-renditions/docinfo:alt-rendition/lnlink
                                becomes
                                    doc:alt-renditions/doc:alt-rendition/ref:lnlink[@service="ATTACHMENT"].
                                    For conversion of lnlink, please
                                    see the topic .
                            
                        
                    
                
                For UK06 Laws/Acts/Bills/Measures and UK07 Regulation place the text of
                        leg:officialname in
                        doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker
                    instead of the source text as used within
                        docinfo:alt-renditions/docinfo:alt-rendition/link
            
        
        
            Source XML 1
            
            
&lt;docinfo:alt-renditions&gt;
 &lt;docinfo:alt-rendition key="fulltext"&gt;
  &lt;link alttext="pdf version" filename="VIC_ACT_1998-25.pdf" type="pdf"&gt;PDF version of this Act&lt;/link&gt;
 &lt;/docinfo:alt-rendition&gt;
&lt;/docinfo:alt-renditions&gt;

            
        
        
            Target XML 1
            
            
&lt;doc:alt-renditions&gt;
 &lt;doc:alt-rendition key="fulltext"&gt;
  &lt;ref:lnlink service="ATTACHMENT"&gt;
   &lt;ref:marker role="label"&gt;PDF version of this Act&lt;/ref:marker&gt;
   &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
     &lt;ref:key-name name="attachment-key"/&gt;
     &lt;ref:key-value value="X-Y-VIC-ACT-1998-25"/&gt; 
     &lt;!-\- X and Y are LNI and SMI values obtained from CSSM -\-&gt;
    &lt;/ref:locator-key&gt;
    &lt;ref:locator-params&gt;
     &lt;proc:param name="componentseq" value="1"/&gt;
     &lt;proc:param name="attachment-type" value="PDF"/&gt;
     &lt;proc:param name="attachment-smi" value=""/&gt;
     &lt;!-\- @value populated with SMI obtained from CSSM -\-&gt;
     &lt;!-\- This @value assignment is done by conversion program -\-&gt;
    &lt;/ref:locator-params&gt;
   &lt;/ref:locator&gt;
  &lt;/ref:lnlink&gt;
 &lt;/doc:alt-rendition&gt;
&lt;/doc:alt-renditions&gt;

            
        
        
            Source XML 2
            
            
&lt;docinfo:alt-renditions&gt;
 &lt;docinfo:alt-rendition key="fulltext"&gt;
  &lt;link alttext="pdf version" filename="VIC_ACT_1998-25.pdf" type="pdf"&gt;PDF version of this Act&lt;/link&gt;
 &lt;/docinfo:alt-rendition&gt;
&lt;/docinfo:alt-renditions&gt;
&lt;!-\- ETC. -\-&gt;
&lt;leg:officialname&gt;&lt;emph typestyle="bf"&gt;Commons Act 1236&lt;/emph&gt;&lt;/leg:officialname&gt;
                
            
        
        
            Target XML 2
            
            
&lt;legisinfo:officialtitle&gt;Commons Act 1236&lt;/legisinfo:officialtitle&gt;
&lt;!-\- ETC. -\-&gt;
&lt;doc:alt-renditions&gt;
 &lt;doc:alt-rendition key="fulltext"&gt;
  &lt;ref:lnlink service="ATTACHMENT"&gt;
   &lt;ref:marker role="label"&gt;Commons Act 1236&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="attachment-key"/&gt;
      &lt;ref:key-value value="X-Y-VIC-ACT-1998-25"/&gt;
      &lt;!-\- X and Y are LNI and SMI values obtained from CSSM -\-&gt;
     &lt;/ref:locator-key&gt;
     &lt;ref:locator-params&gt;
      &lt;proc:param name="componentseq" value="1"/&gt;
      &lt;proc:param name="attachment-type" value="PDF"/&gt;
      &lt;proc:param name="attachment-smi" value=""/&gt;
      &lt;!-\- @value populated with SMI obtained from CSSM -\-&gt;
      &lt;!-\- This @value assignment is done by conversion program -\-&gt;
     &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
  &lt;/doc:alt-rendition&gt;
&lt;/doc:alt-renditions&gt;
                
            
        
        
            Source XML 3
            
            
&lt;docinfo:alt-renditions&gt;
  &lt;docinfo:alt-rendition key="fulltext"&gt;
    &lt;lnlink service="ATTACHMENT" status="valid"&gt;
      &lt;marker role="content"&gt;PDF Format&lt;/marker&gt;
      &lt;api-params&gt;
        &lt;param name="attachment-key" value="application_for_apportionment-xxxx-xxxx-xxxxx-xx"/&gt;
        &lt;param name="attachment-type" value="pdf"/&gt;
        &lt;param name="attachment-smi" value="4364"/&gt;
        &lt;param name="componentseq" value="1"/&gt;
      &lt;/api-params&gt;
    &lt;/lnlink&gt;
  &lt;/docinfo:alt-rendition&gt;
&lt;/docinfo:alt-renditions&gt;
                
            
        
        
            Target XML 3
            
            
&lt;doc:alt-renditions&gt;
 &lt;doc:alt-rendition key="fulltext"&gt;
  &lt;ref:lnlink service="ATTACHMENT"&gt;
   &lt;ref:marker role="content"&gt;PDF Format&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="attachment-key"/&gt;
      &lt;ref:key-value value="application_for_apportionment-xxxx-xxxx-xxxxx-xx"/&gt;
     &lt;/ref:locator-key&gt;
     &lt;ref:locator-params&gt;
      &lt;proc:param name="componentseq" value="1"/&gt;
      &lt;proc:param name="attachment-type" value="PDF"/&gt;
      &lt;proc:param name="attachment-smi" value="4364"/&gt;
     &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
  &lt;/doc:alt-rendition&gt;
&lt;/doc:alt-renditions&gt;
                
            
        
        
        
            Changes
            2016-07-29: Added Note about xml snippets that illustrate
                    image handling. Note summarizes move from Apollo to Blobstore application. UK is
                    first LBU to move to Blobstore.
            2013-12-17: Added instruction and example for
                        docinfo:alt-rendition/lnlink. (Webteam
                #247307)
            2013-05-01: Updated instructions and target example per
                    latest Apollo markup.
            2013-02-26: Updated target example per project
                    requirement.
            2012-10-29: Added instruction and example for UK06
                    Laws/Acts/Bills/Measures and UK07 Regulation place the text of
                        leg:officialname in
                        doc:alt-renditions/doc:alt-rendition/ref:lnlink/ref:marker
                    (Webteam #243521)
            2012-10-26: Changed to reflect recent requirements for attachment-type links.
            2012-09-06: Created.-->
    
    <!--Vikas Rohilla : Template to match docinfo:alt-renditions and create doc:alt-renditions  -->
    <xsl:template match="docinfo:alt-renditions">
        <xsl:element name="doc:alt-renditions">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    
    <!--Vikas Rohilla : Template to match docinfo:alt-rendition and create doc:alt-rendition  -->
    <xsl:template match="docinfo:alt-rendition">
        <xsl:element name="doc:alt-rendition">
            <xsl:apply-templates select="@* | node()"/>            
        </xsl:element>
        
    </xsl:template>
    
    <xsl:template match="docinfo:alt-rendition/@key">
        <xsl:attribute name="key" select="."/>
    </xsl:template>
 
</xsl:stylesheet>
     
