<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_comm.info-classification-to-LexisAdvance-doc.docinfo">
  <title><sourcexml>comm:info/classification</sourcexml> <lnpid>id-CCCC-10524</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <p>If <sourcexml>comm:info/classification[@classscheme="echo:*"]</sourcexml> exists, create 
        <targetxml>/seclaw:seclaw/doc:metadata/doc:docinfo/classify:classification-grp</targetxml>, with 
        <targetxml>@classscheme="echo:terms"</targetxml>.</p>
      <p>For each <sourcexml>comm:info/classification</sourcexml> child of <sourcexml>comm:info</sourcexml> with 
        <sourcexml>@classscheme="echo:*"</sourcexml>, create a unique <targetxml>classify:classification</targetxml> child 
        of <targetxml>doc:metadata/doc:docinfo/classify:classification-grp[@classscheme="echo:terms"]</targetxml>, 
        following the instructions provided in 
        <xref href="Rosetta_classification-LxAdv-classify.classification.dita">classification to classify:classification</xref>.</p>
    
    <codeblock>
      
  &lt;comm:info&gt; 
    ...
    &lt;classification classscheme="echo:formtypes"&gt;
    	&lt;classitem&gt;
    		&lt;classitem-identifier&gt;
    			&lt;classname&gt;Official Forms&lt;/classname&gt;
    			&lt;classcode codescheme="PGUID" normval="urn:fcc:23653971-8030-44eb-9b33-a46b00e0b6c2"/&gt;
    		&lt;/classitem-identifier&gt;
    	&lt;/classitem&gt;
    &lt;/classification&gt;
    ...
  &lt;/comm:info&gt;
      
      Becomes:
      
&lt;doc:docinfo&gt;
    ...      
    &lt;classify:classification-grp classscheme="echo:terms"&gt;
    	&lt;classify:classification classscheme="echo:formtypes"&gt;
    		&lt;classify:classitem&gt;
    			&lt;classify:classitem-identifier&gt;
    				&lt;classify:classname&gt;Official Forms&lt;/classify:classname&gt;
    				&lt;classify:classcode codescheme="PGUID" normval="urn:fcc:23653971-8030-44eb-9b33-a46b00e0b6c2"/&gt;
    			&lt;/classify:classitem-identifier&gt;
    		&lt;/classify:classitem&gt;
    	&lt;/classify:classification&gt;
    &lt;/classify:classification-grp&gt;
    ...    
&lt;/doc:docinfo&gt;    
      
    </codeblock>
      
    </section>
    <section>
      <title>Changes</title>
      <p>2015-04-27: <ph id="change_20150427_snb">Created new instruction for conversion of 
        <sourcexml>comm:info/classification[@classscheme="echo:*"]</sourcexml> to 
        <targetxml>doc:metadata/doc:docinfo/classify:classification-grp[@classscheme="echo:terms"]/classify:classification</targetxml>. 
        If comm:info/classification elements with other classschemes are added to this instruction, mappings will need to be added 
        accordingly.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_comm.info-classification.dita  -->
	<!--<xsl:message>Rosetta_comm.info-classification.xsl requires manual development!</xsl:message> -->

<!--	<xsl:template match="comm:info/classification">

		<!-\-  Original Target XPath:  /seclaw:seclaw/doc:metadata/doc:docinfo/classify:classification-grp   -\->
		<seclaw:seclaw xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/">
			<doc:metadata>
				<doc:docinfo>
					<classify:classification-grp>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification-grp>
				</doc:docinfo>
			</doc:metadata>
		</seclaw:seclaw>

	</xsl:template>-->

	<xsl:template match="comm:info/classification[@classscheme=&#34;echo:*&#34;]">

		<!--  Original Target XPath:  /seclaw:seclaw/doc:metadata/doc:docinfo/classify:classification-grp   -->
		<seclaw:seclaw xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/">
			<doc:metadata>
				<doc:docinfo>
					<classify:classification-grp>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification-grp>
				</doc:docinfo>
			</doc:metadata>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="comm:info">

		<!--  Original Target XPath:  classify:classification   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

	<!--<xsl:template match="@classscheme=&#34;echo:*&#34;">-->
		<xsl:template match="@classscheme[.=&#34;echo:*&#34;]">
		<!--  Original Target XPath:  classify:classification   -->
		<classify:classification>
			<!--<xsl:apply-templates select="@* | node()"/>-->
			<xsl:value-of select="."/>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>