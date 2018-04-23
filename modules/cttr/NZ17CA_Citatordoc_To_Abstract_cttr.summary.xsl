<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.summary">
    <title>cttr:summary <lnpid>id-NZ17CA-25619</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:summary</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">abstract</targetxml> and create required child
                    <targetxml>bodytext</targetxml>.
                </li>
            </ul>
            <p>With the exception of <sourcexml>heading</sourcexml>, every child of <sourcexml>cttr:summary</sourcexml> should be mapped to
                <targetxml>abstract/bodytext</targetxml>.</p>
            <note>For handling of ci:cite/ci:content/remotelink, refer the 
                <xref href="../../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> section in CI.</note>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;cttr:summary&gt;
    &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="it"&gt;Crown retail deposit guarantee scheme &amp;mdash;
            Securities Act and other regulatory implications&lt;/emph&gt; is an editorial
            by Victoria Stace, Consultant, Chapman Tripp, Wellington. It considers the
            implications of the introduction of the Crown retail deposit guarantee
            scheme, firstly from a 
            &lt;ci:cite searchtype="LEG-REF"&gt;
                &lt;ci:content&gt;
                    &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                        &lt;remotelink service="DOC-ID" dpsi="0069" remotekey1="REFPTID" refpt="1978A103"&gt;Securities Act 1978&lt;/remotelink&gt;
                    &lt;/citefragment&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
            perspective and secondly from a more general regulatory perspective.&lt;/text&gt;
    &lt;/p&gt;
&lt;/cttr:summary&gt;


      </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;abstract:body&gt;
    &lt;abstract&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="it"&gt;Crown retail deposit guarantee scheme &amp;#x2014;
                    Securities Act and other regulatory implications&lt;/emph&gt; is an editorial
                    by Victoria Stace, Consultant, Chapman Tripp, Wellington. It considers the
                    implications of the introduction of the Crown retail deposit guarantee
                    scheme, firstly from a 
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Securities Act 1978&lt;/ref:content&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="0069-1978A103"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;
                    perspective and secondly from a more general regulatory perspective.
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/abstract&gt;
&lt;/abstract:body&gt;

      </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
        
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\cttr.summary.dita  -->
	<!-- Sudhanshu Srivastava:
	     Edited on: 22 Aug 2017.
	     Comments: This module is handling cttr:summary. cttr:summary is bieng converted to abstract/bodytext.
	--> 
	<xsl:template match="source_cttr:summary">
		<!--  Original Target XPath:  abstract   -->
		<abstract>
		    <bodytext>
			<xsl:apply-templates select="@* | node() except heading"/>
		    </bodytext>
		</abstract>
	</xsl:template>
</xsl:stylesheet>