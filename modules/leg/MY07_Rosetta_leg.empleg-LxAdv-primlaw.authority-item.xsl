<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_leg.empleg-LxAdv-primlaw.authority-item">
  <title>leg:empleg <lnpid>id-MY07-17416</lnpid></title>
  <body>
    <section>
   <ul>
     
      <li><sourcexml>leg:empleg</sourcexml> becomes
                        <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml> and
                    populated as: <note>The <targetxml>primlaw:authority</targetxml> will be sibling
                        of <targetxml>heading</targetxml>.</note>
                    <pre>

&lt;leg:level id="USM.PUA0376y1981e.GC001.FORMGRP1"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION FORMS" leveltype="forms"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="USM.PUA0376y1981e.SCH1.FORM1"&gt;
                &lt;leg:level-vrnt toc-caption="Form 1" subdoc="true"
                    searchtype="LEGISLATION FORM" leveltype="form"&gt;
                    &lt;leg:heading&gt;
                        &lt;desig searchtype="FORM-NUM"&gt;
                            &lt;designum&gt;&lt;refpt type="ext"
                                id="USM.PUA0376y1981e.SCH1.FORM1"/&gt;Form
                                1&lt;/designum&gt;
                        &lt;/desig&gt;
                        &lt;leg:empleg&gt;(Rule 45 (2))&lt;/leg:empleg&gt;
                    &lt;/leg:heading&gt;
                    ....
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;              

<b>Becomes</b>

&lt;primlaw:level leveltype="forms" xml:id="USM.PUA0376y1981e.GC001.FORMGRP1"&gt;
    &lt;primlaw:level leveltype="form" includeintoc="true" alternatetoccaption="Form 1"&gt;
        &lt;ref:anchor id="USM.PUA0376y1981e.SCH1.FORM1" anchortype="global"/&gt;
        &lt;heading&gt;    
            &lt;desig&gt;Form 1&lt;/desig&gt;
        &lt;/heading&gt;
        &lt;primlaw:authority&gt;
            &lt;primlaw:authority-item&gt;
                &lt;textitem&gt;(Rule 45 (2))&lt;/textitem&gt;
            &lt;/primlaw:authority-item&gt;
        &lt;/primlaw:authority&gt;
        ....
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

            </pre>
                </li>
     </ul>
    </section> 
      <section>
          <title>Changes</title>
          <p>2013-11-14: <ph id="change_20131114_SSX">Created</ph>.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.empleg-LxAdv-primlaw.authority-item.dita  -->
	<!--<xsl:message>MY07_Rosetta_leg.empleg-LxAdv-primlaw.authority-item.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="leg:empleg">
        <!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
        <primlaw:authority>
            <primlaw:authority-item>
                <textitem>
                    <xsl:apply-templates select="@* | node()"/>
                </textitem>
            </primlaw:authority-item>
        </primlaw:authority>
    </xsl:template>

</xsl:stylesheet>