<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="comm.body">
    <title>comm:body <lnpid>id-UK22CS-36407</lnpid></title>
    <body>
        <section>
            <p><sourcexml>comm:body</sourcexml> becomes <targetxml>seclaw:body</targetxml>. The
                conversion for the children of <targetxml>seclaw:body</targetxml> are discussed as
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
                

&lt;seclaw:body&gt;
        &lt;seclaw:level leveltype="subsection"&gt;
            &lt;heading&gt;
                &lt;title&gt;Consular Conventions Orders&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:bodytext&gt;...........
            &lt;/seclaw:bodytext&gt;
        &lt;/seclaw:level&gt;
    &lt;/seclaw:body&gt;

      </pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2015-10-15: <ph id="change_20151013_HP">Created</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CS\comm.body.dita  -->
	<xsl:message>UK22CS_comm.body.xsl requires manual development!</xsl:message> 

	<xsl:template match="comm:body">

		<!--  Original Target XPath:  seclaw:body   -->
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>

	</xsl:template>

</xsl:stylesheet>