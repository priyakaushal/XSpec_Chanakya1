<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
    <title>case:parallelcite <lnpid>id-NZ17CA-25610</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">ref:cite4thisresource/@citetype="parallel"</targetxml>
                </li>
            </ul>
            <note>For handling of Citation, refer the <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref> section in CI.</note>
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

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\case.parallelcite.dita  -->
	
	<!-- Sudhanshu Srivastava:
	     Edited on: 22 Aug 2017.
	     Comments: This module is handling case:parallelcite. Case:parallelcite is bieng converted into ref:cite4thisresource[@citetype='parallel']. Inside this element the child of case:parallelcite is bieng converted.
	-->
	<xsl:template match="case:parallelcite">
		<!--  Original Target XPath:  ref:cite4thisresource/@citetype="parallel"   -->
	    <ref:citations>
	    <ref:cite4thisresource>
			<xsl:attribute name="citetype">
				<xsl:text>parallel</xsl:text>
			</xsl:attribute>
		    <xsl:apply-templates select="node()"/>
		</ref:cite4thisresource>
	    </ref:citations>
	</xsl:template>
</xsl:stylesheet>