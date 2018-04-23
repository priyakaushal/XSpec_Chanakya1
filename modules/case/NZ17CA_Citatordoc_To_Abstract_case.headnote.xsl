<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote">
    <title>case:headnote <lnpid>id-NZ17CA-25608</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">abstract:head</targetxml>
                </li>
            </ul>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:parallelcite&gt;
            &lt;ci:cite searchtype="BOOK-REF"&gt;
                &lt;ci:content&gt;
                    &lt;citefragment searchtype="BOOK-CITE-REF"&gt;[2009] CSLB 39.&lt;/citefragment&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/case:parallelcite&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;

      </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;abstract:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="parallel"&gt;
            &lt;lnci:cite type="book"&gt;
                &lt;lnci:content&gt;[2009] CSLB 39.&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/abstract:head&gt;

      </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>


   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\case.headnote.dita  -->
	 <!-- Sudhanshu Srivastava:
	      Edited on: 22 Aug 2017.
	      Comments : This module is handling the header part of the source file.
	 -->

	<xsl:template match="case:headnote">
		<!--  Original Target XPath:  abstract:head   -->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
</xsl:stylesheet>