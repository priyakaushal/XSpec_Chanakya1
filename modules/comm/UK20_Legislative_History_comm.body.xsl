<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="comm.body">
      <title>comm:body <lnpid>id-UK20-35807</lnpid></title>
      <body>
        <section>
          <p><sourcexml>comm:body</sourcexml> becomes <targetxml>seclaw:body</targetxml>. The
              conversion for the children of <targetxml>seclaw:body</targetxml> are discussed as
              separate topics.</p>
          <pre>
                &lt;COMMENTARYDOC&gt;
                    &lt;comm:body&gt;
                        ........
                            &lt;level leveltype="annotation"&gt;
                                &lt;bodytext searchtype="COMMENTARY"&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;The following notes derive from those printed in Halsbury's Statutes Vol 1 (2011 reissue), title Agriculture, Fisheries and Food.
                                        &lt;/text&gt;
                                    &lt;/p&gt;
                                .......
                            &lt;/bodytext&gt;
                        &lt;/level&gt;
                        ........
                    &lt;/comm:body&gt;
                &lt;/COMMENTARYDOC&gt;


                <b>Becomes</b>

                &lt;seclaw:seclaw seclawtype="form" xml:lang="en-UK"&gt;
                    &lt;seclaw:body&gt;
                        .........
                        &lt;seclaw:level leveltype="unclassified"&gt;
                                ........
                                    &lt;p&gt;
                                        &lt;text&gt;The following notes derive from those printed in Halsbury's Statutes Vol 1 (2011 reissue), title Agriculture, Fisheries and Food.
                                        &lt;/text&gt;
                                    &lt;/p&gt;
                                ........
                            &lt;/seclaw:bodytext&gt;
                        &lt;/seclaw:level&gt;
                    &lt;/seclaw:body&gt;
                    ..........
                &lt;/seclaw:seclaw&gt;

          </pre>
        </section>
      </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK20_Legislative_History\comm.body.dita  -->
    <!-- 20170421:  MCJ:  Commented out the message during development... but this is not yet done. -->
	<!-- <xsl:message>UK20_Legislative_History_comm.body.xsl requires manual development!</xsl:message> --> 

	<xsl:template match="comm:body">

		<!--  Original Target XPath:  seclaw:body   -->
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>

	</xsl:template>

</xsl:stylesheet>