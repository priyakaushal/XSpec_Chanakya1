<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.content">
   <title>cttr:content <lnpid>id-NZ17CA-25618</lnpid></title>
   <body>
      <section>
         <ul>
            <li class="- topic/li ">
               <note class="- topic/note ">This is a container element that does not need to be carried forward in the conversion. However, 
                  all content must be converted such that the order of elements is maintained whenever possible. Please see the 
                  <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita" class="- topic/xref ">Maintain the Order of Elements Whenever Possible</xref> 
                  section for more information.</note>
            </li>
         </ul>
      </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\cttr.content.dita  -->
	
	<!-- Sudhanshu Srivastava:
	     Edited on: 22 Aug 2017.
	     Comments: This module is handling cttr:content and processing its child node and attribute.
	-->
	
   <xsl:template match="source_cttr:content">
      <xsl:apply-templates select="@*|node()"/>
   </xsl:template>

</xsl:stylesheet>