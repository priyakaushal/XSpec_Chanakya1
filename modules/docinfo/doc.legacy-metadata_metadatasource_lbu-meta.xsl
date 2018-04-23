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
				doc:legacy-metadata[@metadatasource="lbu-meta"]
				
				
				
				
				Instructions [common element]
				docinfo:lbu-meta becomes
				doc:legacy-metadata[@metadatasource="lbu-meta"].
				docinfo:metaitem becomes
				meta/metaitem. The source attribute
				@name becomes metaitem[@name] and
				@value becomes metaitem[@value]. 
				docinfo:metaitem should be dropped if the attribute
				@name has any of the following drop list values: 
				"date"
				"juris"
				"court"
				"country"
				"parent-filename"
				"COURT-CLASSIFY"
				"JURIS-CLASSIFY"
				"unhandled"
				
				
				
				
				
				
				Source XML 1
				
				&lt;docinfo&gt;
				&lt;docinfo:lbu-meta&gt;
				&lt;docinfo:metaitem name="date" value="18810104"/&gt;
				&lt;docinfo:metaitem name="country" value="2"/&gt;
				&lt;docinfo:metaitem name="court" value="2"/&gt;
				&lt;docinfo:metaitem name="date" value="18810104"/&gt;
				&lt;docinfo:metaitem name="juris" value="9"/&gt;
				&lt;docinfo:metaitem name="court" value="1"/&gt;
				&lt;docinfo:metaitem name="country" value="2"/&gt;
				&lt;docinfo:metaitem name="lbu-sourcename" value="New Zealand Law Reports"/&gt;
				&lt;docinfo:metaitem name="parent-docid" value="1NZLR_CA_1"/&gt;
				&lt;docinfo:metaitem name="parent-filename" value="1NZLR_CA_00001.xml"/&gt;
				&lt;/docinfo:lbu-meta&gt;&lt;/docinfo&gt;
				
				
				
				
				
				Target XML 1
				
				&lt;doc:metadata&gt;
				&lt;doc:docinfo&gt;
				&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
				&lt;meta&gt;
				&lt;metaitem name="lbu-sourcename" value="New Zealand Law Reports"/&gt;
				&lt;metaitem name="parent-docid" value="1NZLR_CA_1"/&gt;
				&lt;/meta&gt;
				&lt;/doc:legacy-metadata&gt;
				&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
				
				
				
				
				
				Source XML 2
				
				&lt;docinfo&gt;
				&lt;docinfo:lbu-meta&gt;
				&lt;docinfo:metaitem name="SRCNAME" value="AGAA"&gt;&lt;/docinfo:metaitem&gt;
				&lt;docinfo:metaitem name="SRCDOCNO" value="00000008"&gt;&lt;/docinfo:metaitem&gt;
				&lt;docinfo:metaitem name="DPSI" value="03EN"&gt;&lt;/docinfo:metaitem&gt;
				&lt;/docinfo:lbu-meta&gt;
				&lt;/docinfo&gt;
				
				
				
				
				
				Target XML 2
				
				&lt;doc:metadata&gt;
				&lt;doc:docinfo&gt;
				&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
				&lt;meta&gt;
				&lt;metaitem name="SRCNAME" value="AGAA"/&gt;
				&lt;metaitem name="SRCDOCNO" value="00000008"/&gt;
				&lt;metaitem name="DPSI" value="03EN"/&gt;
				&lt;/meta&gt;
				&lt;/doc:legacy-metadata&gt;
				&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
				
				
				
				
				Source XML 3
				
				&lt;docinfo&gt;
				&lt;docinfo:lbu-meta&gt;
				&lt;docinfo:metaitem name="QLDB" value="sb99"&gt;&lt;/docinfo:metaitem&gt;
				&lt;/docinfo:lbu-meta&gt;
				&lt;/docinfo&gt;
				
				
				
				
				
				Target XML 3
				
				&lt;doc:metadata&gt;
				&lt;doc:docinfo&gt;
				&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
				&lt;meta&gt;
				&lt;metaitem name="QLDB" value="sb99"/&gt;	       
				&lt;/meta&gt;
				&lt;/doc:legacy-metadata&gt;
				&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
				
				
				
				
				
				Source XML 4
				
				
				&lt;docinfo&gt;
				&lt;!-- ETC. --&gt;
				&lt;docinfo:lbu-meta&gt;
				&lt;docinfo:metaitem name="selection_criteria_variant" value="PCT207_regulation_1" /&gt;
				&lt;docinfo:metaitem name="lbu-sourcename" value="New Zealand Regulations" /&gt;
				&lt;docinfo:metaitem name="parent-docid" value="GCG-REGULATIONS-D" /&gt;
				&lt;docinfo:metaitem name="parent-filename" value="Regs-D.xml" /&gt;
				&lt;docinfo:metaitem name="parent-docid" value="NZREGS_REGS-D.SGM_2001R326-FRONT-CONTENTS" /&gt;
				&lt;docinfo:metaitem name="parent-filename" value="Regs-D1030.xml" /&gt;
				&lt;/docinfo:lbu-meta&gt;
				&lt;!-- ETC. --&gt;
				&lt;/docinfo&gt;
				
				
				
				Target XML 4
				
				
				&lt;![CDATA[&lt;doc:metadata&gt;
				&lt;doc:docinfo&gt;
				&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
				&lt;meta&gt;
				&lt;metaitem name="selection_criteria_variant" value="PCT207_regulation_1"/&gt;
				&lt;metaitem name="lbu-sourcename" value="New Zealand Regulations"/&gt;
				&lt;metaitem name="parent-docid" value="GCG-REGULATIONS-D"/&gt;
				&lt;metaitem name="parent-docid" value="NZREGS_REGS-D.SGM_2001R326-FRONT-CONTENTS"/&gt;
				&lt;/meta&gt;
				&lt;/doc:legacy-metadata&gt;
				&lt;/doc:docinfo&gt;&lt;/doc:metadata&gt;
				
				
				
				
				Changes
				
				
			</xd:pre>
		</xd:desc>
	</xd:doc>
	
	
    
</xsl:stylesheet>