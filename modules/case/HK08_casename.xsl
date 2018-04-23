<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" 
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
    <title>casename <lnpid>id-HK08-37607</lnpid></title>
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
    R v Chan Kein Wing, Au Chi Kwong
&lt;/case:casename&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
    &lt;caseinfo:casename&gt;
        &lt;caseinfo:fullcasename&gt;R v Chan Kein Wing, Au Chi Kwong&lt;/caseinfo:fullcasename&gt;
    &lt;/caseinfo:casename&gt;
                
</pre>
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="case:casename">

		<!--  Original Target XPath:  caseinfo:casename/caseinfo:fullcasename   -->
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node() except (emph, refpt)"/>
			</caseinfo:fullcasename>
		</caseinfo:casename>

	</xsl:template>

	<!--<xsl:template match="emph[parent::case:casename]"/>-->

</xsl:stylesheet>