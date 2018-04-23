<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info">
    <title>case:info <lnpid>id-NZ17CA-25609</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info</sourcexml> will be suppressed from conversion.
                </li>
            </ul>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:headnote&gt;
    &lt;case:info&gt;
        ...
    &lt;/case:info&gt;
&lt;/case:headnote&gt;

      </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;abstract:head&gt;
    ...
&lt;/abstract:head&gt;

      </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>


   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\case.info.dita  -->
    <!-- Sudhanshu Srivastava
         Edited on: 22 Aug 2017.
         Comments: This module is handling case:info from the source document and processing it's child node and attributes.
    
     -->

    <xsl:template match="case:info">
		<!--  Original Target XPath:     -->
		<xsl:apply-templates select="@* | node() except case:casename"/>
	</xsl:template>
</xsl:stylesheet>