<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>parallelcite <lnpid>id-AU20-22218</lnpid></title>
   <body>
      <section>
         <ul>
             <li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:parallelcite</sourcexml> becomes 
                          <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource</targetxml>. 
                          Please note that we need to create an empty <targetxml>cttr:citations</targetxml> element as it is a mandatory child of <targetxml>cttr:citedarticle</targetxml>.
             
                          <ul>
                              <li>
                                  <note>LBU has in requirements that a search on a citator journal article gets both results of the journal article document and the article it refers to. 
                                      In order to accomplish this, we need to map <sourcexml>case:parallelcite/ci:cite</sourcexml> to
                                      <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml> so the JCite search should pick up both the documents.
                                      This would allow the JCite to get what it needs to meet the “get both documents” business requirement. 
                                  </note>
                                  
                                  <sourcexml>case:parallelcite/ci:cite</sourcexml> maps to 
                                  <targetxml>cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>.
                                  The children can be converted as follows :
                                  
                                  <ul>
                                      <li>
                                          <sourcexml>case:parallelcite/ci:cite/ci:case</sourcexml> maps to 
                                          <targetxml>cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite/lnci:case</targetxml>.
                                      </li>
                                      <li>
                                          <sourcexml>case:parallelcite/ci:cite/ci:lawrev</sourcexml> maps to 
                                          <targetxml>cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite/lnci:lawrev</targetxml>.
                                      </li>
                                      <li>
                                          <sourcexml>case:parallelcite/ci:cite/ci:content</sourcexml> maps to 
                                          <targetxml>cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml>.
                                      </li>
                                  </ul>
<pre>
&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite searchtype="BOOK-REF"&gt;
            &lt;ci:lawrev&gt;
                &lt;ci:lawrevref ID="cr000001" spanref="cr000001-001"&gt;
                    &lt;ci:lawrevlocator&gt;
                        &lt;ci:publicationname normpubcode="CPNN"/&gt;
                        &lt;ci:volume num="8 "/&gt;
                        &lt;ci:date day="01" month="01" year="2011"/&gt;
                        &lt;ci:page num="35"/&gt;
                    &lt;/ci:lawrevlocator&gt;
                &lt;/ci:lawrevref&gt;
            &lt;/ci:lawrev&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="BOOK-CITE-REF"&gt;
                    &lt;ci:span spanid="cr000001-001"&gt;(2011) 8 (3 &amp;amp; 4) CPNN 35&lt;/ci:span&gt;
                &lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;


<b>Becomes</b>
&lt;cttr:citedarticle&gt;
    &lt;cttr:citations/&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource&gt;  
            &lt;lnci:cite&gt;
                &lt;lnci:lawrev&gt;
                    &lt;lnci:lawrevref ID="cr000001"&gt;
                        &lt;lnci:lawrevlocator&gt;
                            &lt;lnci:publicationname normpubcode="CPNN"/&gt;
                            &lt;lnci:volume num="8 "/&gt;
                            &lt;lnci:date day="01" month="01" year="2011"/&gt;
                            &lt;lnci:page num="35"/&gt;
                        &lt;/lnci:lawrevlocator&gt;
                    &lt;/lnci:lawrevref&gt;
                &lt;/lnci:lawrev&gt;
                &lt;lnci:content&gt;(2011) 8 (3 &amp;amp; 4) CPNN 35&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;   
    &lt;/ref:citations&gt;
&lt;/cttr:citedarticle&gt;

</pre>
                                  
                                  
                              </li>
                          </ul>                                
                                    
             </li>
        </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Citator_Journal.parallelcite.dita  -->
	<xsl:message>AU20_Legislative_Citator_Citator_Journal.parallelcite.xsl requires manual development!</xsl:message> 

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

		<!--  Original Target XPath:  cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite/lnci:case   -->
		<cttr:citedarticle>
			<ref:citations>
				<ref:cite4thisresource>
					<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
						<lnci:case>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:case>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</cttr:citedarticle>

	</xsl:template>

	<xsl:template match="case:parallelcite/ci:cite/ci:lawrev">

		<!--  Original Target XPath:  cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite/lnci:lawrev   -->
		<cttr:citedarticle>
			<ref:citations>
				<ref:cite4thisresource>
					<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
						<lnci:lawrev>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:lawrev>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</cttr:citedarticle>

	</xsl:template>

	<xsl:template match="case:parallelcite/ci:cite/ci:content">

		<!--  Original Target XPath:  cttr:citedarticle/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content   -->
		<cttr:citedarticle>
			<ref:citations>
				<ref:cite4thisresource>
					<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
						<lnci:content>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:content>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</cttr:citedarticle>

	</xsl:template>

</xsl:stylesheet>