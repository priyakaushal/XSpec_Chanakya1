<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote">
   <title>case:headnote <lnpid>id-CA02CC-12420</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
               <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote</sourcexml> becomes
                  <targetxml class="+ topic/keyword xml-d/targetxml ">casedigest:casedigest/casedigest:head</targetxml>. <pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;
        .......
        .......
&lt;/case:headnote&gt;
                    </pre>
               <b class="+ topic/ph hi-d/b ">Becomes</b>
               <pre xml:space="preserve" class="- topic/pre ">
    
&lt;casedigest:head&gt;
        .......
        .......
&lt;/casedigest:head&gt;

</pre>
            </li>
          </ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.headnote.dita  -->
   <!-- Sudhanshu Srivastava edited on 15-May-2107 -->
	<xsl:template match="case:headnote">
		<!--  Original Target XPath:  casedigest:casedigest/casedigest:head   -->
			<casedigest:head>
			      <xsl:apply-templates select="case:info"/>
			</casedigest:head>
	</xsl:template>

</xsl:stylesheet>