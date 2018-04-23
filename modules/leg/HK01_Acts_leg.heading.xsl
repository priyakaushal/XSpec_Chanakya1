<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-HK01-36812</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml>, <sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml>, <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> and <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml>.</p>
     
      <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>      
    </section>
    <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml></title>
            <codeblock>

&lt;leg:level id="AOHK.CAP32.S3"&gt;
    &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" subdoc="true" toc-caption="3. (Repealed 6 of 1984 s 3)"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;title searchtype="SECT-TITLE"&gt;
                &lt;refpt id="AOHK.CAP32.S3" type="ext"/&gt;(Repealed 6 of 1984 s 3)&lt;/title&gt;
            &lt;desig searchtype="SECT-NUM"&gt;
                &lt;designum&gt;3.&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level leveltype="section" includeintoc="true" alternatetoccaption="3. (Repealed 6 of 1984 s 3)"&gt;
    &lt;ref:anchor id="AOHK.CAP32.S3" anchortype="global"/&gt;
    &lt;heading inline="true"&gt;
        &lt;desig&gt;3.&lt;/desig&gt;
        &lt;title&gt;(Repealed 6 of 1984 s 3)&lt;/title&gt;
    &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
        </example> 
      <note>If the input documents are having scenarios <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and <sourcexml>leg:bodytext/leg:heading/title</sourcexml> then <sourcexml>leg:bodytext</sourcexml> becomes
          <targetxml>primlaw:bodytext</targetxml> and create a wrapper <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> with child <sourcexml>desig</sourcexml> becomes <targetxml>desig</targetxml> and <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>.</note>
    
<section>
    <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>
    <!--************************************************************************************************ 
        JL:  added this functionality from  modules/glp/Rosetta_glp.note-Chof-leg.heading-LxAdv-primlaw.level_note.xsl
    ******************************************************************************************************-->
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note_ChildOf_leg.heading-to-LexisAdvance_primlaw.level_note">
        <title><sourcexml>leg:heading/glp:note</sourcexml> to <targetxml>primlaw:level/note</targetxml>
            <lnpid>id-CCCC-10333</lnpid></title>
        <body>
            <section>
                <p><sourcexml>leg:heading/glp:note</sourcexml> becomes
                    <targetxml>primlaw:level/note</targetxml> with <targetxml>note</targetxml>
                    placed after <targetxml>heading</targetxml>.</p>
            </section></body></dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.heading.dita  -->
	

	<xsl:template match="leg:heading">
		<xsl:choose>
			<xsl:when test="parent::leg:bodytext and (title or desig)">
				<primlaw:level leveltype="unclassified">
					<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="@*"/>
						<xsl:apply-templates select="node() except refpt"/>
					</heading>
				</primlaw:level>
			</xsl:when>
			<xsl:otherwise>			    
				<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates select="node() except (refpt | leg:empleg | glp:note | leg:histnote)"/>
				</heading>
			    <xsl:apply-templates select="glp:note | leg:histnote"/>
			</xsl:otherwise>
		</xsl:choose>		
	</xsl:template>


	<xsl:template match="@align">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="@inline">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<!-- subdoc and toc-caption atts should be taken care of in the primlaw:level module -->

</xsl:stylesheet>