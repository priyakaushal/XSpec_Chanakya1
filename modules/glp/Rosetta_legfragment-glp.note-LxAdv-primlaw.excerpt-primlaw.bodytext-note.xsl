<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_legfragment-glp.note-to-LexisAdvance_primlaw.excerpt-primlaw.bodytext-note">
  <title><sourcexml>legfragment/glp:note</sourcexml> to <targetxml>primlaw:excerpt/primlaw:bodytext/note</targetxml> <lnpid>id-CCCC-10388</lnpid></title>
  <body>
    <section>
      <p>
        <b>legfragment/glp:note:</b> Handling of glp:note when it occurs within
        legfragment:
      <codeblock>
             &lt;blockquote&gt;
            &lt;legfragment&gt;
             &lt;glp:note&gt;
              &lt;p&gt;
               &lt;text&gt;
                &lt;emph typestyle="it"&gt;for this provision.&lt;/emph&gt;
                &lt;/text&gt;
              &lt;/p&gt;
          &lt;/glp:note&gt;
     &lt;/legfragment&gt;
&lt;/blockquote&gt;

 </codeblock>
      <b>Becomes</b>
      <codeblock>
        &lt;primlaw:excerpt&gt;
          &lt;primlaw:bodytext&gt;   
          &lt;note&gt;                          
          &lt;bodytext&gt;
          &lt;p&gt;
          &lt;text&gt;
          &lt;emph typestyle="it"&gt;for this&lt;/emph&gt;
          &lt;/text&gt;
          &lt;/p&gt;
          &lt;/bodytext&gt;
          &lt;/note&gt;
          &lt;/primlaw:bodytext&gt;
          &lt;/primlaw:excerpt&gt;
    
      </codeblock>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_legfragment-glp.note-LxAdv-primlaw.excerpt-primlaw.bodytext-note.dita  -->
	 

	<xsl:template match="legfragment/glp:note">

		<!--  Original Target XPath:  primlaw:excerpt/primlaw:bodytext/note   -->
		<primlaw:excerpt>
			<primlaw:bodytext>
			  <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			    <xsl:apply-templates select="@*"/>
			    <xsl:apply-templates select="heading"/>
					<bodytext>
					  <xsl:apply-templates select="node() except(heading)"/>
					</bodytext>
				</note>
			</primlaw:bodytext>
		</primlaw:excerpt>

	</xsl:template>

</xsl:stylesheet>