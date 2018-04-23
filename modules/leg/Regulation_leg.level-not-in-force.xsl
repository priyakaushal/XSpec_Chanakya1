<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-not-in-force">
    <title>leg:level-not-in-force <lnpid>id-ST04-26830</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
              The conversion of <sourcexml>leg:level-not-in-force</sourcexml> depends upon the following scenarios:
            <ul>
              <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the French
                                <b>Note de l'éditeur:</b> or English <b>Editor’s note:</b> then
                            convert it to <targetxml>note</targetxml>. <note>If  text of French and
                                English note starts with square bracket (i.e.<b>[Note de l'éditeur:
                                </b> or <b>[Editor’s note:</b>) then also 
                                convert it to <targetxml>note</targetxml>. </note>
                            <note><sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                                becomes <targetxml>note</targetxml>.</note>
                        </li>
              <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the normal
                            text then convert it to
                                <targetxml>legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>,
                            complete target Xpath is:
                                <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>. <pre>
             <b><i>Source example based on CA content (For <sourcexml>Editor's note</sourcexml>)</i></b>
         

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;General&lt;/title&gt;&lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level-not-in-force&gt;
                 &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                      &lt;leg:levelbody&gt;
                            &lt;leg:bodytext&gt;
                                &lt;p&gt;&lt;text&gt;Editor's note: Alta. Reg. 52/2005 s2 was amended prior to coming into force by Alta. Reg. 171/2005 s2 
                                effective September 8, 2005 (Alta. Gaz. September 30, 2005)&lt;/text&gt;&lt;/p&gt;
                            &lt;/leg:bodytext&gt;
                        &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level-not-in-force&gt;
            ...
        &lt;/leg:levelbody&gt;
       &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 
           </pre>
                            <pre>
             <b><i>Target Example</i></b>
             

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;heading&gt;
            &lt;title&gt;General&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            ...
            &lt;note&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;Editor's note: Alta. Reg. 52/2005 s2 was amended prior to coming into force by Alta. Reg. 171/2005 s2 
                        effective September 8, 2005 (Alta. Gaz. September 30, 2005)&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        ...
        &lt;/primlaw:bodytext&gt;
     &lt;/primlaw:level&gt;
 &lt;/primlaw:level&gt;

             
           </pre>
                            <pre>
       <b><i>Source example based on CA content (For normal text)</i></b>

&lt;leg:level&gt;
    &lt;leg:level-vrnt&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level-not-in-force&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;l&gt;&lt;li&gt;&lt;lilabel/&gt;&lt;p&gt;&lt;text&gt;TRANSITIONAL PROVISION&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;&lt;/l&gt;
                        &lt;/leg:bodytext&gt;
                        &lt;leg:bodytext&gt;
                            &lt;l virtual-nesting="2"&gt;
                                &lt;li&gt;
                                    &lt;lilabel/&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;NOTE: AR 308/2000 s7 effective January 1, 2001 (Alta. Gaz. Dec. 30, 2000), contained the following transitional provision:&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/li&gt;
                            &lt;/l&gt;
                        &lt;/leg:bodytext&gt;
                    ....
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level-not-in-force&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 
     </pre>
                            <pre>
         <b><i>Target Example</i></b>
       

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status statuscode="effectivenessinfo"/&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
        &lt;/primlawinfo:primlawinfo&gt;
    &lt;/primlaw:levelinfo&gt;
    &lt;primlaw:bodytext&gt;
        &lt;list&gt;
            &lt;listitem&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;list&gt;
                            &lt;listitem&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;list&gt;
                                            &lt;listitem&gt;                
                                                &lt;bodytext&gt;
                                                    &lt;p&gt;
                                                        &lt;text&gt;TRANSITIONAL PROVISION&lt;/text&gt;
                                                    &lt;/p&gt;
                                                &lt;/bodytext&gt;
                                            &lt;/listitem&gt;
                                        &lt;/list&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/listitem&gt;
                        &lt;/list&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/listitem&gt;
        &lt;/list&gt;
    &lt;/primlaw:bodytext&gt;
    &lt;primlaw:bodytext&gt;
        &lt;list&gt;
            &lt;listitem&gt;                
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;NOTE: AR 308/2000 s7 effective January 1, 2001 (Alta. Gaz. Dec. 30, 2000), contained the following transitional provision:&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/listitem&gt;
        &lt;/list&gt;
    &lt;/primlaw:bodytext&gt;
    ....
&lt;/primlaw:level&gt;

             
     </pre>
                            <note>Please refer the common instruction for handling
                                    <b>[@virtual-nesting]</b> attribute mapping.</note>
                        </li>
            </ul>
          </li>
        </ul>
      </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.level-not-in-force.dita  -->
	<xsl:message>Regulation_leg.level-not-in-force.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level-not-in-force">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="Editor's note">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>