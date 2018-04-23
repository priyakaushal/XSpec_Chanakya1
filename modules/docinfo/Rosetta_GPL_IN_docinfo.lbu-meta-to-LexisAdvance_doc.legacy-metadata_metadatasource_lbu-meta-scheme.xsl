<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0"
	exclude-result-prefixes="xd">
	
	<!-- JD: 2017-06-15: this module was nothing but text(); wrapping all in <xd:*> -->
	<xd:doc>
		<xd:desc>
			<xd:pre>
	docinfo:lbu-meta to
        doc:legacy-metadata[@metadatasource="lbu-meta"] id-CCCC-10343
    
    
        
            Instructions [common element]
            docinfo:lbu-meta becomes doc:legacy-metadata[@metadatasource="lbu-meta"]. docinfo:metaitem becomes meta/metaitem. The source attribute @name becomes metaitem[@name] and @value becomes metaitem[@value]. 
            
        
        
        
            Source XML 1
            

&lt;docinfo&gt;
    &lt;docinfo:lbu-meta&gt;
         &lt;docinfo:metaitem name="lbu-sourcename" value="CENTRAL ACT OF INDIA"/&gt;
         &lt;docinfo:metaitem name="parent-docid" value="COOI_SCHEDULE_XXII_0000X.xml"/&gt;
         &lt;docinfo:metaitem name="parent-filename" value="COOI_SCHEDULE_XXII_0000X.xml"/&gt;
    &lt;/docinfo:lbu-meta&gt;
&lt;/docinfo&gt;

	
        
        
        
            Target XML 1
            

&lt;doc:metadata&gt;
&lt;doc:docinfo&gt;
    &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
        &lt;meta&gt;
	       &lt;metaitem name="lbu-sourcename" value="CENTRAL ACT OF INDIA"/&gt;
	       &lt;metaitem name="parent-docid" value="COOI_SCHEDULE_XXII_0000X.xml"/&gt;
	       &lt;metaitem name="parent-filename" value="COOI_SCHEDULE_XXII_0000X.xml"/&gt;
        &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
&lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

	
        
        
            Changes
            2014-04-07: Created.
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>        
    
