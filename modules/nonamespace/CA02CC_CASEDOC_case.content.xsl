<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.content">
   <title>case:content <lnpid>id-CA02CC-12412</lnpid></title>
   <body>
      <section>
         <ul>
         <li>
            <note>This is a container element that does not need to be carried forward in the conversion. However, all content must be converted such that the order of elements is maintained whenever possible. Please see the <xref href="../../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita">Maintain the Order of Elements Whenever Possible</xref> section for more information.</note>
         </li>
         </ul>
      </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.content.dita  -->
   <!-- Sudhanshu Srivastava edited on 16-May-2017.-->
   <xsl:template match="case:content">
      <xsl:apply-templates select="@* | node()"/>
   </xsl:template> 

</xsl:stylesheet>