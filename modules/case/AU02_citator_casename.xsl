<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita source_case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
    <title>casename <lnpid>id-AU02-18409</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:casename</sourcexml> becomes
                        <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>
                    <ul>
                        <li> Both the tags <sourcexml>emph</sourcexml>, its attributes and
                                <sourcexml>refpt</sourcexml> are omitted. </li>
                    </ul>
                    <pre xml:space="preserve">
&lt;case:casename&gt;
    &lt;emph typestyle="ro"&gt;&lt;refpt id="10957" type="ext"/&gt;&lt;/emph&gt;Queensland Wire Industries Pty
    Ltd v Broken Hill Proprietary Co Ltd
&lt;/case:casename&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
    &lt;caseinfo:casename&gt;
        &lt;caseinfo:fullcasename&gt;Queensland Wire Industries Pty Ltd v Broken Hill Proprietary Co Ltd&lt;/caseinfo:fullcasename&gt;
    &lt;/caseinfo:casename&gt;
                
</pre>
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\casename.dita  -->

	<xsl:template match="source_case:casename">
			<caseinfo:casename>
			    <caseinfo:fullcasename>
				    <xsl:apply-templates select="@* | node() except refpt"/>
			    </caseinfo:fullcasename>
			</caseinfo:casename>
	</xsl:template>
    
    <!-- this emph template should work for Journals too -->

	<xsl:template match="emph[parent::source_case:casename]" priority="25">
	    <xsl:apply-templates select="* except refpt"/>
	</xsl:template>


</xsl:stylesheet>