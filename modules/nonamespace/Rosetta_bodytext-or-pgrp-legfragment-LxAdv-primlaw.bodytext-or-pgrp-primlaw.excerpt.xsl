<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
                xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
                xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
                version="2.0" 
                exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_bodytext-legfragment-to-LexisAdvance_seclaw.bodytext-primlaw.excerpt">
        <title>legfragment <lnpid>id-CCCC-10522</lnpid></title>
        <body>
            <section>
                <p><b>bodytext/legfragment</b> when legfragment is the child of bodytext
                    <codeblock>
        

                        &lt;bodytext searchtype="COMMENTARY"&gt;
                                    &lt;legfragment&gt;
                                        &lt;leg:level&gt;
                                            &lt;leg:level-vrnt leveltype="section"&gt;
                                                &lt;leg:levelbody&gt;
                                                    &lt;leg:bodytext&gt;
                                                        &lt;p&gt;
                                                            &lt;text&gt;“I A:B: doe solemnely and sincerely in the presence of God professe testifie and declare that I do believe that in the sacrament of the Lords Supper there is not any transubstantiation of the elements of bread and wine into the body and blood of Christ at or after the consecration thereof by any person whatsoever; and that the invocation or adoration of the Virgin Mary or any other saint, and the sacrifice of the masses as they are now used in the Church of Rome are superstitious and idolatrous, and I doe solemnely in the presence of God professe testifie and declare that I doe make this declaration and every part thereof in the plaine and ordinary sense of the words read unto me as they are commonly understood by English protestants without any levasion, equivocation or mentall reservation whatsoever and without any dispensation already granted me for this purpose by the Pope or any other authority or person whatsoever or without any hope of any such dispensation from any person or authority whatsoever or without thinking that I am or can be acquitted before God or man or absolved of this declaration or any part thereof although the Pope or any other person or persons or power whatsoever should dispense with or annull the same, or declare that it was null and void from the beginning.”
                                                            &lt;/text&gt;
                                                        &lt;/p&gt;
                                                    &lt;/leg:bodytext&gt;
                                                &lt;/leg:levelbody&gt;
                                            &lt;/leg:level-vrnt&gt;
                                        &lt;/leg:level&gt;
                                    &lt;/legfragment&gt;
                        &lt;/bodytext&gt;


                        <b>Becomes</b>
      

                        &lt;seclaw:bodytext&gt; 
                             &lt;primlaw:excerpt&gt;
                                 &lt;primlaw:level&gt;                       
                                    &lt;primlaw:bodytext&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;“I A:B: doe solemnely and sincerely in the presence of God professe testifie and declare that I do believe that in the sacrament of the Lords Supper there is not any transubstantiation of the elements of bread and wine into the body and blood of Christ at or after the consecration thereof by any person whatsoever; and that the invocation or adoration of the Virgin Mary or any other saint, and the sacrifice of the masses as they are now used in the Church of Rome are superstitious and idolatrous, and I doe solemnely in the presence of God professe testifie and declare that I doe make this declaration and every part thereof in the plaine and ordinary sense of the words read unto me as they are commonly understood by English protestants without any levasion, equivocation or mentall reservation whatsoever and without any dispensation already granted me for this purpose by the Pope or any other authority or person whatsoever or without any hope of any such dispensation from any person or authority whatsoever or without thinking that I am or can be acquitted before God or man or absolved of this declaration or any part thereof although the Pope or any other person or persons or power whatsoever should dispense with or annull the same, or declare that it was null and void from the beginning.”
                                             &lt;/text&gt;
                                        &lt;/p&gt;
                                  &lt;/primlaw:bodytext&gt;
                                 &lt;/primlaw:level&gt;
                            &lt;/primlaw:excerpt&gt;
                        &lt;/primlaw:bodytext&gt;
     
                </codeblock>
           
           
                <b>pgrp/legfragment</b> When legfragment is the child of pgrp then:
            
                <codeblock>
        

                    &lt;pgrp&gt;
                        &lt;legfragment&gt;
                            &lt;leg:level&gt;
                                &lt;leg:level-vrnt leveltype="section"&gt;
                                    &lt;leg:levelbody&gt;
                                        &lt;leg:bodytext&gt;
                                             &lt;p&gt;
                                                &lt;text&gt;para 14the repealf ss 33–51 of this Act is of no effect in relation to any sentence of imprisonment of less than twelve months (whether or not such a sentence is imposed to run concurrently or consecutively with another such sentence);
                                                &lt;/text&gt;
                                              &lt;/p&gt;
                                         &lt;/leg:bodytext&gt;
                                    &lt;/leg:levelbody&gt;
                                 &lt;/leg:level-vrnt&gt;
                            &lt;/leg:level&gt;
                        &lt;/legfragment&gt;
                    &lt;/pgrp&gt;


                    <b>Becomes</b>
      

                    &lt;pgrp&gt;
                        &lt;primlaw:excerpt&gt;
                             &lt;primlaw:level&gt;    
                                &lt;primlaw:bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;para 14the repealf ss 33–51 of this Act is of no effect in relation to any sentence of imprisonment of less than twelve months (whether or not such a sentence is imposed to run concurrently or consecutively with another such sentence);
                                        &lt;/text&gt;
                                    &lt;/p&gt;
                              &lt;/primlaw:bodytext&gt;
                             &lt;/primlaw:level&gt;
                        &lt;/primlaw:excerpt&gt;
                    &lt;/&lt;pgrp&gt;&gt;
     
                </codeblock></p>
            </section> 
        </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita  -->

    <!-- 20170424:  MCJ:  Added template to cover scenario of bodytext/legfragment by itself.  
                          Not sure if this template should be specific to bodytext[@searchtype='COMMENTARY']. 
                          Assuming for now that handling for leg:level, etc. is already in place.
    -->
    <xsl:template match="bodytext/legfragment">
    	<!-- JD: 2017-06-19: seclaw:bodytext has been created by parent bodytext -->
        <!--<seclaw:bodytext>-->
            <primlaw:excerpt>
                <xsl:apply-templates />
            </primlaw:excerpt>
        <!--</seclaw:bodytext>-->
    </xsl:template>
    
    <!-- 20170424:  MCJ:  Added template to cover scenario of pgrp/legfragment. 
                          Assuming for now that handling for leg:level, etc. is already in place.
    -->
    <xsl:template match="pgrp/legfragment">
        <primlaw:excerpt>
            <xsl:apply-templates />
        </primlaw:excerpt>
    </xsl:template>

</xsl:stylesheet>