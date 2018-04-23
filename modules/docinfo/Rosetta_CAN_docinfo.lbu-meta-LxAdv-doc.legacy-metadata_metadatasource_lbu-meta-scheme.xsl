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
        doc:legacy-metadata[@metadatasource="lbu-meta"] id-CCCC-10252
    
    
        
            Instructions [common element]
            docinfo:lbu-meta becomes doc:legacy-metadata[@metadatasource="lbu-meta"]. docinfo:metaitem becomes meta/metaitem. The source attribute @name becomes metaitem[@name] and @value becomes metaitem[@value]. 
            
            docinfo:metaitem should be dropped if the attribute @name has any of the following drop list values:
                
                    @name="parent-filename"
                
            
        
        
        
            Source XML 1
            
&lt;docinfo&gt;
    &lt;docinfo:lbu-meta&gt;
        &lt;docinfo:metaitem name="country" value="2"/&gt;
        &lt;docinfo:metaitem name="court" value="2"/&gt;
        &lt;docinfo:metaitem name="date" value="18810104"/&gt;
        &lt;docinfo:metaitem name="juris" value="9"/&gt;
        &lt;docinfo:metaitem name="court" value="1"/&gt;
        &lt;docinfo:metaitem name="country" value="2"/&gt;
        &lt;docinfo:metaitem name="lbu-sourcename" value="New Zealand Law Reports"/&gt;
        &lt;docinfo:metaitem name="parent-docid" value="1NZLR_CA_1"/&gt;
        &lt;docinfo:metaitem name="parent-filename" value="1NZLR_CA_00001.xml"/&gt;
    &lt;/docinfo:lbu-meta&gt;
&lt;/docinfo&gt;
	
        
        
        
            Target XML 1
            
&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                &lt;metaitem name="country" value="2"/&gt;
                &lt;metaitem name="court" value="2"/&gt;
                &lt;metaitem name="date" value="18810104"/&gt;
                &lt;metaitem name="juris" value="9"/&gt;
                &lt;metaitem name="court" value="1"/&gt;
                &lt;metaitem name="country" value="2"/&gt;
                &lt;metaitem name="lbu-sourcename" value="New Zealand Law Reports"/&gt;
                &lt;metaitem name="parent-docid" value="1NZLR_CA_1"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
	
        

        
            Changes
            2014-01-28: Created.
			</xd:pre>
		</xd:desc>
	</xd:doc>
</xsl:stylesheet>
    
