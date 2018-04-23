<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"  xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
  <title>case:casename <lnpid>id-NZ17CA-25607</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml> becomes
          <targetxml class="+ topic/keyword xml-d/targetxml ">abstract:target/bodytext/p/text</targetxml>
        </li>
      </ul>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:casename&gt;Crown retail deposit guarantee scheme &amp;mdash; Securities Act and other regulatory implications&lt;/case:casename&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;abstract:target&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Crown retail deposit guarantee scheme &amp;#x2014; Securities Act and other regulatory implications&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/abstract:target&gt;

      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>Created.</p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\case.casename.dita  -->

  <!-- Sudhanshu Srivastava:
       Edited on: 22 Aug 2017.
       Comments: This module is handling case:casename from the source document and converting it to abstract:target/bodytext/p/text. Inside          the text element the case:casename is processing its child node and its attribute.
  -->
  <xsl:template match="case:casename">
		<!--  Original Target XPath:  abstract:target/bodytext/p/text   -->
		<abstract:target>
			<bodytext>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</bodytext>
		</abstract:target>
	</xsl:template>
</xsl:stylesheet>