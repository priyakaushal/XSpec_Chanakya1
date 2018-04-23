<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_leg-bodytext">
  <title>leg:levelbody/leg:level <lnpid>id-PH03-34611</lnpid></title>
 <body>
   <section>
   <p><sourcexml>leg:levelbody/leg:level</sourcexml> becomes
          <targetxml>admindoc:level</targetxml>.</p>
   
   </section>
  <section>
   <title>Source XML</title>
   <pre>
    
    &lt;leg:levelbody&gt;
        ........
           &lt;leg:level id="PHPI.EO0037Y2001.S1"&gt;
                &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" subdoc="true" toc-caption="SECTION 1."&gt;
                      &lt;leg:heading inline="true"&gt;
                          &lt;desig searchtype="SECT-NUM"&gt;
                              &lt;designum&gt;
                               &lt;refpt id="PHPI.EO0037Y2001.S1" type="ext"/&gt;SECTION 1.
                               &lt;/designum&gt;
                           &lt;/desig&gt;
                      &lt;/leg:heading&gt;
                      &lt;leg:levelbody&gt;
                         &lt;leg:bodytext&gt;
                            &lt;p&gt;
                              &lt;text&gt;&lt;emph typestyle="it"&gt;The Cabinet Committee on Maritime
                                  and Ocean Affairs&lt;/emph&gt;. - The Cabinet Committee on
                                  Maritime and Ocean Affairs (CABCOM-MOA) is hereby
                                  abolished. The functions thereof shall be exercised by
                                  the Department of Foreign Affairs (DFA). 
                              &lt;/text&gt;
                            &lt;/p&gt;
                         &lt;/leg:bodytext&gt;
                      &lt;/leg:levelbody&gt;
              &lt;/leg:level-vrnt&gt;
         &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;
    
   </pre>
  </section>
  <p>
   Becomes
  </p>
  <section>
   <title>Target XML</title>
   <pre>

&lt;admindoc:level&gt;
    &lt;ref:anchor id="PHPI.EO0037Y2001.S1" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;SECTION 1.&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;admindoc:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;The Cabinet Committee on Maritime
                and Ocean Affairs&lt;/emph&gt;. - The Cabinet Committee on
                Maritime and Ocean Affairs (CABCOM-MOA) is hereby
                abolished. The functions thereof shall be exercised by
                the Department of Foreign Affairs (DFA). 
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/admindoc:bodytext&gt;
&lt;/admindoc:level&gt;

   </pre>
  </section>
  
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_leg-bodytext_leg-level.dita  -->
	<xsl:message>GPL_PH03_leg-bodytext_leg-level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody/leg:level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

</xsl:stylesheet>