<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
    <title>leg:histnote <lnpid>id-st07-31412</lnpid></title>
    <body>
        <section>
            <p>
                <ul>
                    <li>
                        <sourcexml>leg:histnote</sourcexml> becomes
                        <targetxml>note[@notetype="historical"]</targetxml>
                        <pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;leg:histnote&gt;
            &lt;p&gt;
                &lt;text&gt;[Art am WIPO Notice No 10/2007 , effective 1 January 2008]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:histnote&gt;
        ...........
        ...........
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;   
</pre>
          <b>Becomes</b>
<pre>
&lt;primlaw:bodytext&gt;
    &lt;note notetype="historical"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[Art am WIPO Notice No 10/2007 , effective 1 January 2008]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;                                        
    &lt;/note&gt;
    .........
    .........
&lt;/primlaw:bodytext&gt;          
</pre>
                    </li>
                </ul>
            </p>  
        </section>  
        <section>
            <title>Changes</title>
            
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\International_Instruments\leg.histnote.dita  -->
	<xsl:message>International_Instruments_leg.histnote.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

</xsl:stylesheet>