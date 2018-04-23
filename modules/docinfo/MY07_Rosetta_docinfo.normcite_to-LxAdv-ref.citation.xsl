<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_docinfo.normcite_to-LxAdv-ref.citation">
    <title>docinfo:normcite <lnpid>id-MY07-17411</lnpid></title>
    <body>
        <section>
            <ul>
                <li><sourcexml>docinfo:normcite</sourcexml> becomes <targetxml>ref:citations/ref:cite4thisresource</targetxml> and attribute <targetxml>@citetype</targetxml> will contain value "normcite".</li>
            </ul>
        </section>
        <note>It will be populated under <targetxml>courtrule:head</targetxml> </note>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:normcite&gt;
            &lt;ci:cite searchtype="LEG-REF" type="cite4thisdoc"&gt;
                &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt;
                        &lt;ci:jurisinfo&gt;
                            &lt;ci:my/&gt;
                        &lt;/ci:jurisinfo&gt;
                        &lt;ci:hier&gt;
                            &lt;ci:hierlev label="local-rule" num="ALN0012"&gt;
                                &lt;ci:hierlev label="year" num="1963"&gt; &lt;/ci:hierlev&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hier&gt;
                    &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt;
                        &lt;ci:standardname normpubcode="USM_SL"/&gt;
                    &lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;MOTOR VEHICLES &amp;#x0028;TRANSFER FEES&amp;#x0029; RULES, 1963&lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/docinfo:normcite&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;courtrule:head&gt;
    &lt;ref:citations&gt;
            &lt;ref:cite4thisresource citetype="normcite"&gt;
                &lt;lnci:cite type="legislation"&gt;
                    &lt;lnci:sesslaw&gt;
                        &lt;lnci:sesslawinfo&gt;
                            &lt;lnci:jurisinfo&gt;
                                &lt;lnci:my/&gt;
                            &lt;/lnci:jurisinfo&gt;
                            &lt;lnci:hier&gt;
                                &lt;lnci:hierlev label="local-rule" num="ALN0012"&gt;
                                    &lt;lnci:hierlev label="year" num="1963"&gt; &lt;/lnci:hierlev&gt;
                                &lt;/lnci:hierlev&gt;
                            &lt;/lnci:hier&gt;
                        &lt;/lnci:sesslawinfo&gt;
                        &lt;lnci:sesslawref&gt;
                            &lt;lnci:standardname normpubcode="USM_SL"/&gt;
                        &lt;/lnci:sesslawref&gt;
                    &lt;/lnci:sesslaw&gt;
                    &lt;lnci:content&gt;MOTOR VEHICLES &amp;#x0028;TRANSFER FEES&amp;#x0029; RULES, 1963&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
                
            &lt;/ref:cite4thisresource&gt;
        &lt;/ref:citations&gt;
 &lt;/courtrule:head&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2013-11-14: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_docinfo.normcite_to-LxAdv-ref.citation.dita  -->
	<xsl:message>MY07_Rosetta_docinfo.normcite_to-LxAdv-ref.citation.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:normcite">

		<!--  Original Target XPath:  ref:citations/ref:cite4thisresource   -->
		<ref:citations>
			<ref:cite4thisresource>
				<xsl:apply-templates select="@* | node()"/>
			</ref:cite4thisresource>
		</ref:citations>

	</xsl:template>

</xsl:stylesheet>