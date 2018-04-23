<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    
xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.references">
    <title>case:references <lnpid>id-NZ17CA-25611</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:references</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">abstract:references</targetxml>
                </li>
            </ul>
            <p>With the exception of <sourcexml>heading</sourcexml>, every child of <sourcexml>case:references</sourcexml> should be mapped to
                <targetxml>abstract:references/bodytext</targetxml>.</p>
            <note>For handling of remotelink, refer the <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> section in CI.</note>
            
        </section>
       
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:references&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;process-ignore process="kwd"&gt;&lt;emph typestyle="it"&gt;Laws NZ&lt;/emph&gt;
            REF:&lt;/process-ignore&gt;
            &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B505" service="DOC-ID" &gt;Negligence&lt;/remotelink&gt;, paras 
            &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B505:P3" service="DOC-ID"&gt;3&lt;/remotelink&gt;, 
            &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B505:P53" service="DOC-ID"&gt;53&lt;/remotelink&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/case:references&gt;

      </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;abstract:body&gt;
    &lt;abstract:references&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;emph typestyle="it"&gt;Laws NZ&lt;/emph&gt; REF:
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Negligence&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="475:B505"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="008E-ABCD_1234"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;, paras 
                    &lt;ref:crossreferencegroup&gt;
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;3&lt;/ref:content&gt;
                            &lt;ref:locator anchoridref="475:B505:P3"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="008E-ABCD_5678"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;,
                        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                            &lt;ref:content&gt;53&lt;/ref:content&gt;
                            &lt;ref:locator anchoridref="475:B505:P53"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="008E-ABCD_9012"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/ref:crossreferencegroup&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/abstract:references&gt;
&lt;/abstract:body&gt;

      </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2013-07-31: <ph id="change_20130731_SSX">Instruction and example updated for <sourcexml>case:references</sourcexml> </ph>.</p>
        </section>
        
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\case.references.dita  -->
	<!-- Sudhanshu Srivastava 
	     Edited on : 24 Aug 2017.
	     Comments : this module is handling case:references and converting it to abstract:references. 
	--> 

	<xsl:template match="case:references">
		<!--  Original Target XPath:  abstract:references   -->
		<abstract:references>
		    <xsl:apply-templates select="heading"/>
		    <bodytext>
			<xsl:apply-templates select="@* | node() except heading"/>
		    </bodytext>
		</abstract:references>
	</xsl:template>
 </xsl:stylesheet>