<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_leg.levelprelim-LxAdv-primlaw.prelim">
  <title>leg:levelprelim <lnpid>id-MY07-17422</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:level/leg:level-vrnt/leg:levelprelim</sourcexml> becomes
          <targetxml>primlaw:level/primlaw:prelim</targetxml>
      </p>
      <pre>
  
&lt;leg:level id="USM.PUA0013y1985e"&gt;
   &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
      &lt;leg:heading align="center"&gt;
          &lt;title&gt;&lt;refpt type="ext" id="USM.PUA0013y1985e"/&gt;FIXED DEPOSIT RULES
          1985&lt;nl/&gt;&amp;#x005B;P.U.&amp;#x0028;A&amp;#x0029;13/1985&amp;#x005D;&lt;/title&gt;
      &lt;/leg:heading&gt;
      &lt;leg:levelprelim&gt;
          &lt;heading inline="true" align="center"&gt;
              &lt;title&gt;FIXED DEPOSIT RULES 1985&lt;/title&gt;
              &lt;subtitle&gt;ARRANGEMENT OF RULES&lt;/subtitle&gt;
          &lt;/heading&gt;
          &lt;p&gt;
              &lt;text&gt;Rule&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
             &lt;text&gt;PART I&lt;/text&gt;
          &lt;/p&gt;
          &lt;p&gt;
             &lt;text&gt;PRELIMINARY&lt;/text&gt;
         &lt;/p&gt;
         &lt;p&gt;
            &lt;text&gt;1. Citation and commencement.&lt;/text&gt;
         &lt;/p&gt;
         &lt;p&gt;
            &lt;text&gt;2. Interpretation,&lt;/text&gt;
         &lt;/p&gt;
    &lt;/leg:levelprelim&gt;
  &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
      <b>Becomes</b>
      <pre>

&lt;primlaw:level legtype="act"&gt;
        &lt;ref:anchor id="USM.PUA0013y1985e" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;FIXED DEPOSIT RULES 1985&lt;proc:nl/&gt;&amp;#x005B;P.U.&amp;#x0028;A&amp;#x0029;13/1985&amp;#x005D;&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:prelim&gt;
            &lt;heading inline="true" align="center"&gt;
                &lt;title&gt;FIXED DEPOSIT RULES 1985&lt;/title&gt;
                &lt;subtitle&gt;ARRANGEMENT OF RULES&lt;/subtitle&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;Rule&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;PART I&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
               &lt;text&gt;PRELIMINARY&lt;/text&gt;
           &lt;/p&gt;
           &lt;p&gt;
              &lt;text&gt;1. Citation and commencement.&lt;/text&gt;
           &lt;/p&gt;
           &lt;p&gt;
              &lt;text&gt;2. Interpretation,&lt;/text&gt;
           &lt;/p&gt;
     &lt;/primlaw:prelim&gt; 
&lt;/primlaw:level&gt;
      
</pre>
    </section>  
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.levelprelim-LxAdv-primlaw.prelim.dita  -->
	<!--<xsl:message>MY07_Rosetta_leg.levelprelim-LxAdv-primlaw.prelim.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelprelim">

		<!--  Original Target XPath:  primlaw:level/primlaw:prelim   -->
		<primlaw:level>
			<primlaw:prelim>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:prelim>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>