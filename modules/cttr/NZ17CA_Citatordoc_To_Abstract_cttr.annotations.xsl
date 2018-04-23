<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.annotations">
  <title>cttr:annotations <lnpid>id-NZ17CA-25616</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
         Omit <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations</sourcexml> from conversion.                    
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
                  &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B505" service="DOC-ID" &gt;Negligence&lt;/remotelink&gt;, paras 
                  &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B505:P3" service="DOC-ID"&gt;3&lt;/remotelink&gt;, 
                  &lt;remotelink dpsi="008E" remotekey1="REFPTID" refpt="475:B505:P53" service="DOC-ID"&gt;53&lt;/remotelink&gt;
              &lt;/text&gt;
          &lt;/p&gt;
      &lt;/case:references&gt;
    &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

omit cttr:annotations and its children will be handled seperately.

      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>Created.</p>
    </section>
    
  </body>
	</dita:topic>
	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\cttr.annotations.dita  -->
	 
<!-- Sudhanshu Srivastava:
     Edited on: 22 Aug 2017.
     Comments: According to the ci cttr:annotations is bieng omitted from conversion.
  -->
	<xsl:template match="source_cttr:annotations">
	  <xsl:apply-templates select="@*|node()"/>
	</xsl:template>
      
</xsl:stylesheet>