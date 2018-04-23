<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>parallelcite <lnpid>id-MY10-18018</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource</targetxml>.
                                                               
                                    <ul>                                  
                                        
                                        
                                        <li>
                                            <note>LBU has in requirements that a search on a citation gets both results of the citator document and the case it refers to. 
                                                  In order to accomplish this, we need to map <sourcexml>case:parallelcite/ci:cite</sourcexml> to
                                                <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml> so the JCite search should pick up both the case summary document and the citator document for the case.
                                                This would allow the JCite to get what it needs to meet the “get both documents” business requirement. 
                                            </note>
                                            
                                            <sourcexml>case:parallelcite/ci:cite</sourcexml> maps to 
                                            <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>.
                                            The children can be converted as follows :
                                            
                                            <ul>
                                                <li>
                                                    <sourcexml>case:parallelcite/ci:cite/ci:case</sourcexml> maps to 
                                                    <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite/lnci:case</targetxml>.
                                                </li>
                                                <li>
                                                    <sourcexml>case:parallelcite/ci:cite/ci:content</sourcexml> maps to 
                                                    <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml>.
                                                </li>
                                            </ul>
                                            
<pre>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo&gt;
                    &lt;ci:decisiondate year="1988"/&gt;
                &lt;/ci:caseinfo&gt;
                &lt;ci:caseref ID="cr000196" spanref="cr000196-001"&gt;
                    &lt;ci:reporter value="ALD"/&gt;
                    &lt;ci:volume num="15"/&gt;
                    &lt;ci:page num="310"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;            
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                    &lt;ci:span spanid="cr000001-001"&gt;(1985) 159 CLR 550; (1985) 9 ALN N28; (1985) 62 ALR 321;(1985) 60 ALJR 113; [1985] HCA 81; BC8501054&lt;/ci:span&gt;
                &lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;


<b>Becomes</b>

&lt;cttr:caseinfo&gt; 
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource&gt;
            &lt;lnci:cite type="case"&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseinfo&gt;
                        &lt;lnci:decisiondate year="1988"/&gt;
                    &lt;/lnci:caseinfo&gt;
                    &lt;lnci:caseref ID="cr000196"&gt;
                        &lt;lnci:reporter value="ALD"/&gt;
                        &lt;lnci:volume num="15"/&gt;
                        &lt;lnci:page num="310"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;(1985) 159 CLR 550; (1985) 9 ALN N28; (1985) 62 ALR 321; (1985) 60 ALJR 113; [1985] HCA 81; BC8501054&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/cttr:caseinfo&gt;

</pre>                            
                                            
                                        </li>
                                    </ul>
                                    
                                    
                              
                         
                        </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\parallelcite.dita  -->
	<xsl:message>parallelcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:parallelcite">

		<!--  Original Target XPath:  ref:citations/ref:cite4thisresource   -->
		<ref:citations>
			<ref:cite4thisresource>
				<xsl:apply-templates select="@* | node()"/>
			</ref:cite4thisresource>
		</ref:citations>

	</xsl:template>

	<xsl:template match="case:parallelcite/ci:cite">

		<!--  Original Target XPath:  ref:citations/ref:cite4thisresource/lnci:cite   -->
		<ref:citations>
			<ref:cite4thisresource>
				<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</ref:cite4thisresource>
		</ref:citations>

	</xsl:template>

	<xsl:template match="case:parallelcite/ci:cite/ci:case">

		<!--  Original Target XPath:  cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite/lnci:case   -->
		<cttr:caseinfo>
			<ref:citations>
				<ref:cite4thisresource>
					<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
						<lnci:case>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:case>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:parallelcite/ci:cite/ci:content">

		<!--  Original Target XPath:  cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content   -->
		<cttr:caseinfo>
			<ref:citations>
				<ref:cite4thisresource>
					<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
						<lnci:content>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:content>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</cttr:caseinfo>

	</xsl:template>

</xsl:stylesheet>