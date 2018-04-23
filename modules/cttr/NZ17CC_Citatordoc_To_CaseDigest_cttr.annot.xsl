<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" version="2.0" exclude-result-prefixes="dita source_cttr case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.annot">
  <title>cttr:annot <lnpid>id-NZ17CC-25826</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          Omit <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot</sourcexml> from conversion.                    
        </li>
      </ul>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;cttr:annotations&gt;
    &lt;cttr:annot&gt;
        &lt;case:references&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;process-ignore process="kwd"&gt;&lt;emph typestyle="it"&gt;Laws NZ&lt;/emph&gt;
                        REF:&lt;/process-ignore&gt;
                    &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B120" service="DOC-ID"
                        &gt;Companies&lt;/remotelink&gt;, para &lt;remotelink dpsi="008E" remotekey1="REFPTID"
                        refpt="475:B120:P376" service="DOC-ID"&gt;376&lt;/remotelink&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/case:references&gt;
    &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

omit cttr:annot and its child (case:references) will be handled seperately.

      </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\cttr.annot.dita  -->
	 

	<xsl:template match="source_cttr:annot">
	  <xsl:apply-templates select="@* | node() except source_cttr:use"/>		
	</xsl:template>

 
  
</xsl:stylesheet>