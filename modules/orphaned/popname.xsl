<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_popname">
   <title>popname <lnpid>id-MY10-18019</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">popname</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">popname</targetxml>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;...             
    &lt;popname&gt;Star Picket Fence Post case&lt;/popname&gt;
&lt;/case:info&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:citeddecision&gt;           
    &lt;cttr:caseinfo&gt;...
        &lt;popname&gt;Star Picket Fence Post case&lt;/popname&gt;
    &lt;/cttr:caseinfo&gt;
&lt;/cttr:citeddecision&gt;                
</pre>
                </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\popname.dita  -->
	<xsl:message>popname.xsl requires manual development!</xsl:message> 

	<xsl:template match="popname">

		<!--  Original Target XPath:  popname   -->
		<popname>
			<xsl:apply-templates select="@* | node()"/>
		</popname>

	</xsl:template>

</xsl:stylesheet>