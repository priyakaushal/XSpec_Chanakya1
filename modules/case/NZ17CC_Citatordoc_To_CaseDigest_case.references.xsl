<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.references">
   <title>case:references <lnpid>id-NZ17CC-25821</lnpid></title>
   <body>
      <section>
        <ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:references</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:relatedrefs</targetxml>
                    <p>Every child of <sourcexml>case:references</sourcexml> should be mapped to
                            <targetxml>ref:relatedrefs/bodytext</targetxml>.</p>
                    <pre xml:space="preserve" class="- topic/pre ">
   
&lt;case:references&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;process-ignore process="kwd"&gt;&lt;emph typestyle="it"&gt;Laws NZ&lt;/emph&gt;
                REF:&lt;/process-ignore&gt;
            &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B120" service="DOC-ID"
                &gt;Companies&lt;/remotelink&gt;, para &lt;remotelink dpsi="008E" remotekey1="REFPTID"
                refpt="475:B120:P376" service="DOC-ID"&gt;376&lt;/remotelink&gt;&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:references&gt;

<b class="+ topic/ph hi-d/b ">Becomes:</b>
          
&lt;ref:relatedrefs&gt;
            &lt;bodytext&gt;
                &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Laws NZ&lt;/emph&gt; REF: &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Companies&lt;/ref:content&gt;
                    &lt;ref:locator anchoridref="475:B120"&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="008E"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;, para &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;376&lt;/ref:content&gt;
                    &lt;ref:locator anchoridref="475:B120:P376"&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="008E"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;&lt;/text&gt;&lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/ref:relatedrefs&gt;
          </pre>
                </li>
        </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.references.dita  -->

	<xsl:template match="case:references">
		<ref:relatedrefs>
		    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		        <xsl:apply-templates select="@* | node()"/>
		    </bodytext>			
		</ref:relatedrefs>

	</xsl:template>

</xsl:stylesheet>