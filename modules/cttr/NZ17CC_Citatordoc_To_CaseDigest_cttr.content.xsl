<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
   xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
   xmlns:case="http://www.lexis-nexis.com/glp/case"
   xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" version="2.0" exclude-result-prefixes="dita source_cttr case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.content">
   <title>cttr:content <lnpid>id-NZ17CC-25828</lnpid></title>
   <body>
      <section>
         <ul>
         <li class="- topic/li ">
            <note class="- topic/note ">This is a container element that does not need to be carried forward in the conversion. However, all content must be converted such that the order of elements is maintained whenever possible. Please see the <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita" class="- topic/xref ">Maintain the Order of Elements Whenever Possible</xref> section for more information.</note>
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:content</sourcexml>                     
         </li>
         </ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\cttr.content.dita  -->

	<xsl:template match="source_cttr:content">
	   <xsl:for-each-group select="*" group-adjacent="if (self::catchwordgrp or self::source_cttr:wordphrasegrp or self::source_cttr:annotations) then 0 else 1">
	      <xsl:choose>
	         <xsl:when test="current-grouping-key()=0">
	            <casedigest:caseinfo>
	               <xsl:apply-templates select="current-group()"/>
	            </casedigest:caseinfo>
	         </xsl:when>
	         <xsl:otherwise>
	            <xsl:apply-templates select="current-group()"/>
	         </xsl:otherwise>
	      </xsl:choose>
	   </xsl:for-each-group>
	</xsl:template>

</xsl:stylesheet>