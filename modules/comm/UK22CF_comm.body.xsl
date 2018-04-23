<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="comm.body">
    <title><sourcexml>comm:body</sourcexml> <lnpid>id-UK22CF-39007</lnpid></title>
    <body>
        <section>
            <p><sourcexml>comm:body</sourcexml> becomes <targetxml>funddoc:body</targetxml>. The
                conversion for the children of <targetxml>funddoc:body</targetxml> are discussed as
                separate topics.</p>
            <pre>

&lt;comm:body&gt;
        &lt;level leveltype="subsection"&gt;
            &lt;heading&gt;
                &lt;title&gt;Consular Conventions Orders &lt;/title&gt;
            &lt;/heading&gt;
            &lt;bodytext&gt;...............
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/comm:body&gt;


<b>Becomes</b>
                

&lt;funddoc:body&gt;
        &lt;primlaw:level  leveltype="subsection"&gt;
            &lt;heading&gt;
                &lt;title&gt;Consular Conventions Orders&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlaw:bodytext&gt;...........
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt;
    &lt;/funddoc:body&gt;

      </pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-09-19: <ph id="change_20151013_HP">Created</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\comm.body.dita  -->
	

	<xsl:template match="comm:body">

		<!--  Original Target XPath:  funddoc:body   -->
		<funddoc:body>
			<xsl:apply-templates select="@* | node()"/>
		</funddoc:body>

	</xsl:template>

</xsl:stylesheet>