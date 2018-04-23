<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.preamble">
  <title>leg:preamble <lnpid>id-CA07-14029</lnpid></title>
  <body>
    <section>
		<p>
			<sourcexml>leg:preamble</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]</targetxml>.
		</p>
    </section>
  	
  	<example>
  		<title>Source XML</title>
  		<codeblock>

&lt;leg:preamble&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;process-ignore process="kwd"&gt;Alberta Rules of Court&lt;/process-ignore&gt;
        &lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt; Link to 
                &lt;remotelink dpsi="03EW"  remotekey1="DOC-ID" remotekey2="currentness" service="DOC-ID" 
                    xml:lang="en"&gt;Alberta Regulations Currency Information&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;

    </codeblock>
  	</example>
  	
  	<example>
  		<title>Target XML</title>
  		<codeblock>

&lt;primlaw:level leveltype="preamble"&gt;
    &lt;heading&gt;
        &lt;title&gt;Alberta Rules of Court&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt; Link to                 
                &lt;ref:crossreference&gt;
                    &lt;ref:content xml:lang="en"&gt;Alberta Regulations Currency Information&lt;/ref:content&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="03EW-currentness"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:crossreference&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

    </codeblock>
  	</example>
  	
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.preamble.dita  -->
	
	<xsl:template match="leg:preamble">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]   -->
	    <primlaw:level leveltype="unclassified">
		    <xsl:apply-templates select="@* | node() except process-ignore"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>