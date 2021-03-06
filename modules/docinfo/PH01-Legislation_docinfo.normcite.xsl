<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="docinfo.normcite">
    <title>docinfo:normcite <lnpid>id-PH01-33407</lnpid></title>
    <body>
        <section>
            <ul>
                <li><sourcexml>docinfo:normcite</sourcexml> becomes <targetxml>ref:citations/ref:cite4thisresource</targetxml> and attribute <targetxml>@citetype</targetxml> will contain value "normcite".</li>
            </ul>
        </section>
        <note>It will be populated under <targetxml>legis:head</targetxml> </note>
        <pre>
&lt;docinfo:normcite&gt;
    &lt;ci:cite searchtype="LEG-REF" type="cite4thisdoc"&gt;
        &lt;ci:sesslaw&gt;
            &lt;ci:sesslawinfo&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:my/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:hier&gt;
                    &lt;ci:hierlev label="act" num="ACT000016"/&gt;
                &lt;/ci:hier&gt;
            &lt;/ci:sesslawinfo&gt;
            &lt;ci:sesslawref&gt;
                &lt;ci:standardname normpubcode="PHILLAW"/&gt;
            &lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;ACT NO. 16 AN ACT FOR THE REORGANIZATION OF THE FORESTRY BUREAU OF THE
            PHILIPPINE ISLANDS&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/docinfo:normcite&gt;

<b>becomes</b>

&lt;legis:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="normcite"&gt;
            &lt;lnci:cite type="legislation"&gt;
                &lt;lnci:sesslaw&gt;
                    &lt;lnci:sesslawinfo&gt;
                        &lt;lnci:hier&gt;
                            &lt;lnci:hierlev num="ACT000016" label="act"/&gt;
                        &lt;/lnci:hier&gt;
                    &lt;/lnci:sesslawinfo&gt;
                    &lt;lnci:sesslawref&gt;
                        &lt;lnci:standardname normpubcode="PHILLAW"/&gt;
                    &lt;/lnci:sesslawref&gt;
                &lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;ACT NO. 16 AN ACT FOR THE REORGANIZATION OF THE FORESTRY BUREAU OF
                    THE PHILIPPINE ISLANDS&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/legis:head&gt;
</pre>
       
        <section>
            <title>Changes</title>
            <p>2014-08-07: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH01-Legislation\docinfo.normcite.dita  -->
	<xsl:message>PH01-Legislation_docinfo.normcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:normcite">

		<!--  Original Target XPath:  ref:citations/ref:cite4thisresource   -->
		<ref:citations>
			<ref:cite4thisresource>
				<xsl:apply-templates select="@* | node()"/>
			</ref:cite4thisresource>
		</ref:citations>

	</xsl:template>

</xsl:stylesheet>