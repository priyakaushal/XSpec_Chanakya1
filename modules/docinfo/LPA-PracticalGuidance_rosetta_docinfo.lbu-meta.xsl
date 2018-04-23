<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_docinfo.lbu-meta">
  <title>docinfo:lbu-meta Topic mapping <lnpid>id-CCCC-10217</lnpid></title>
  <body>
    
    <section>
      <title>Instructions for mapping LPA/LNPG editorially created Topic/SubTopic/Module/Practice Area PGUIDs</title>
      <p>When <sourcexml>docinfo:lbu-meta</sourcexml> contains one or more <sourcexml>docinfo:metaitem/[@name="PA-PGUID"] and /[@name="TOPIC-PGUID"] 
        and /[@name="SUB-TOPIC-PGUID"]</sourcexml> elements the target becomes <targetxml>classify:classification-grp/[@classscheme="ln.indexing-terms"]</targetxml>.
        The conversion should also create new <targetxml>classify:classification</targetxml> and attribute value <targetxml>
        classify:classification/[@classscheme="ln.legal"]</targetxml></p>
        
      <p>For each occurrence of <sourcexml>docinfo:metaitem</sourcexml> with @name equal to those below create a <targetxml>classify:classitem</targetxml> within a single <targetxml>classify:classification</targetxml>
          
          <sl>
            
            <sli><sourcexml>docinfo:metaitem/[@name="PA-PGUID"] - @value </sourcexml> create <targetxml>classify:classification-grp/classify:classification/classify:classitem/topic:topicReference/[@guid:guid]</targetxml></sli> <!-- /[@classscheme="PG-PA"] -->
            <sli><sourcexml>docinfo:metaitem/[@name="TOPIC-PGUID"] - @value </sourcexml> create <targetxml>classify:classification-grp/classify:classification/classify:classitem/topic:topicReference/[@guid:guid]</targetxml></sli>  <!-- /[@classscheme="PG-TOPIC"] -->
            <sli><sourcexml>docinfo:metaitem/[@name="SUB-TOPIC-PGUID"] - @value </sourcexml> create <targetxml>classify:classification-grp/classify:classification/classify:classitem/topic:topicReference/[@guid:guid]</targetxml>.</sli>  <!-- /[@classscheme="PG-SUB-TOPIC"] -->
          </sl>

      </p>
      
    <p>Each <targetxml>classify:classitem</targetxml> should also include a target element <targetxml>meta</targetxml> with a child element 
      <targetxml>metaitem name="appliedby" value="human"</targetxml>
    </p>
    
   
    
    <codeblock>
      
      &lt;docinfo:lbu-meta&gt; 
  ...
  &lt;docinfo:metaitem name="PA-PGUID" value="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF076"/&gt;
  &lt;docinfo:metaitem name="TOPIC-PGUID" value="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF086"/&gt;
  &lt;docinfo:metaitem name="SUB-TOPIC-PGUID" value="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF076"/&gt;
  &lt;/docinfo:lbu-meta&gt;
      
      Becomes:
      
&lt;doc:docinfo&gt;

  ...      
      
&lt;classify:classification-grp classscheme="ln.indexing-terms"&gt;
 &lt;classify:classification classscheme="ln.legal"&gt;
      &lt;classify:classitem&gt;
    &lt;meta&gt;
      &lt;metaitem name="appliedby" value="human"/&gt;
    &lt;/meta&gt;
    &lt;topic:topicReference guid:guid="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF076"/&gt;   
  &lt;/classify:classitem&gt; 
 
      &lt;classify:classitem&gt;
    &lt;meta&gt;
      &lt;metaitem name="appliedby" value="human"/&gt;
    &lt;/meta&gt;
    &lt;topic:topicReference guid:guid="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF086"/&gt;   
  &lt;/classify:classitem&gt;
  
      &lt;classify:classitem&gt;
    &lt;meta&gt;
      &lt;metaitem name="appliedby" value="human"/&gt;
    &lt;/meta&gt;
    &lt;topic:topicReference guid:guid="urn:topic:E5E260FEA5F04281A64F7EFA2FCAF076"/&gt;   
  &lt;/classify:classitem&gt;

  &lt;/classify:classification&gt;
    
&lt;/classify:classification-grp&gt;
    ...
    
&lt;/doc:docinfo&gt;    
      
    </codeblock>

      <p>For the occurrence where <sourcexml>docinfo:metaitem[@name="MODULE-PGUID"]</sourcexml> the metaitem must be passed to <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"/meta/metaitem</targetxml> </p>
      
      <codeblock>
        
 		&lt;docinfo:lbu-meta&gt;
 		  ...
			&lt;docinfo:metaitem name=”MODULE-PGUID” value="urn:product:1000551"/&gt;       
        
    &lt;/docinfo:lbu-meta&gt;
    
        
        Becomes:
        
      &lt;doc:metadata&gt;
      
        &lt;doc:docinfo doc-content-country="{country-code}"&gt;
            ...
            &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
                &lt;meta&gt;
                    ...
                    &lt;metaitem name=”MODULE-PGUID” value="urn:product:1000551"/&gt;

        
      </codeblock>
      
    </section>
    <section>
      <title>Changes</title>
      <p>2013-12-15: <ph id="change_20131215_JCG">Minor correction to the instructions regarding a
          value for attribute <targetxml>classify:classification-grp/@classscheme</targetxml>. The
          previously specified value of "ln.indexing.terms" was incorrect, the correct value is
          "ln.indexing-terms". Note that the example provided has always shown the correct value,
          only the instruction was incorrect.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LPA-PracticalGuidance_rosetta_docinfo.lbu-meta.dita  -->
	<!--<xsl:message>LPA-PracticalGuidance_rosetta_docinfo.lbu-meta.xsl requires manual development!</xsl:message> -->

	<!--  **************************************************************************************** 
		Paul: this functionality is already handled in 	<xsl:template name="legacy-metadata"> in 			
		<xsl:include href="../../modules/nonamespace/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl"/>
***********************************************************************************
		
-->
</xsl:stylesheet>