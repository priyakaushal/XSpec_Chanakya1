<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-not-in-force">
 <title>leg:level-not-in-force <lnpid>id-ST03-26633</lnpid></title>
 <body>
  <section>
   <ul>
    <li>The conversion of <sourcexml>leg:level-not-in-force</sourcexml> depends upon the following scenarios:
     <ul>
      <li>If the text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the French <b>Note de l'éditeur:</b> or English <b>Editor’s note:</b> then convert it to <targetxml>note</targetxml>.
       <note><sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>note</targetxml>.</note>
      </li>
      <li>If the text of <sourcexml>leg:level-not-in-force</sourcexml> starts with normal text then convert it to <targetxml>legisinfo:status/@statuscode="effectivenessinfo"</targetxml>, complete target XPATH is: <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/@statuscode="effectivenessinfo"</targetxml>.</li>
     </ul>
    </li>
    <li>kindly note that if the input documents have the text <b>ENACTMENT NOT IN FORCE</b> within <sourcexml>leg:heading/title</sourcexml> in <sourcexml>leg:level-not-in-force</sourcexml> then conversion needs to place that text in <targetxml>heading/subtitle</targetxml>. By using this approach one can distinguish between legislative title and a normal title. Also conversion needs to place <targetxml>heading/subtitle</targetxml> as sibling of <targetxml>primlaw:levelinfo</targetxml>. Refer to example (Source XML and Target XML 3).</li>
   </ul>
  </section>
  <example>
   <title>CANADA SOURCE XML 1: For <sourcexml>Editor's note</sourcexml></title>
   <codeblock>

&lt;leg:level&gt;
 &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
  &lt;leg:levelbody&gt;
   &lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
     &lt;leg:heading align="center"&gt;
      &lt;title inline="true"&gt;SECTION&lt;/title&gt;
      &lt;desig&gt;&lt;designum searchtype="SECT-NUM"&gt;487.0911&lt;/designum&gt;&lt;/desig&gt;
     &lt;/leg:heading&gt;
     &lt;leg:levelbody&gt;
      &lt;leg:level&gt;
       &lt;leg:level-vrnt leveltype="3"&gt;
        &lt;leg:marginal-note&gt;Review by Attorney General&lt;/leg:marginal-note&gt;&lt;/leg:level-vrnt&gt;
       &lt;/leg:level&gt;
       &lt;leg:bodytext&gt;
        &lt;p&gt;&lt;text&gt;487.0911 (1) On receipt of a notice from the Commissioner of the Royal Canadian Mounted Police under subsection 5.2(1) of the DNA Identification Act that an order made under section 487.051 or an authorization granted under section 487.091 appears to be defective, the Attorney General shall review the order or authorization and the court record.&lt;/text&gt;&lt;/p&gt;
       &lt;/leg:bodytext&gt;
       &lt;!-- ETC. --&gt;
       &lt;leg:level-not-in-force&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
         &lt;leg:levelbody&gt;
          &lt;leg:bodytext&gt;
           &lt;p&gt;&lt;text&gt;Editor's note: S.C. 2005, c. 25, s. 11 was amended prior to coming into force by S.C. 2007, c. 22, s. 21, effective June 22, 2007 (R.A.).&lt;/text&gt;&lt;/p&gt;
          &lt;/leg:bodytext&gt;
         &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
       &lt;/leg:level-not-in-force&gt;
      &lt;/leg:levelbody&gt;
     &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

   </codeblock>
   <b>Becomes</b>
   <title>CANADA TARGET XML 1: For <sourcexml>Editor's note</sourcexml></title>
   <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
 &lt;primlaw:level leveltype="unclassified"&gt;
  &lt;heading align="center"&gt;&lt;title inline="true"&gt;SECTION&lt;/title&gt;&lt;desig&gt;487.0911&lt;/desig&gt;&lt;/heading&gt;
  &lt;primlaw:level leveltype="unclassified"&gt;
   &lt;primlaw:bodytext&gt;
    &lt;p&gt;&lt;text&gt;&lt;marginnote&gt;&lt;ref:anchor id="CA-01"/&gt;&lt;bodytext&gt;&lt;p&gt;&lt;text&gt;Review by Attorney General&lt;/text&gt;&lt;/p&gt;&lt;/bodytext&gt;&lt;/marginnote&gt;&lt;/text&gt;&lt;/p&gt;
   &lt;/primlaw:bodytext&gt;
  &lt;/primlaw:level&gt;
  &lt;primlaw:bodytext&gt;
   &lt;p&gt;&lt;text&gt;487.0911 (1) On receipt of a notice from the Commissioner of the Royal Canadian Mounted Police under subsection 5.2(1) of the DNA Identification Act that an order made under section 487.051 or an authorization granted under section 487.091 appears to be defective, the Attorney General shall review the order or authorization and the court record.&lt;/text&gt;&lt;/p&gt;
  &lt;/primlaw:bodytext&gt;
  &lt;!-- ETC. --&gt;
  &lt;note&gt;
   &lt;bodytext&gt;
    &lt;p&gt;&lt;text&gt;Editor's note: S.C. 2005, c. 25, s. 11 was amended prior to coming into force by S.C. 2007, c. 22, s. 21, effective June 22, 2007 (R.A.).&lt;/text&gt;&lt;/p&gt;
   &lt;/bodytext&gt;
  &lt;/note&gt;
 &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <example>
   <title>CANADA SOURCE XML 2: For normal text.</title>
   <codeblock>

&lt;leg:level&gt;
 &lt;leg:level-vrnt&gt;
  &lt;leg:levelbody&gt;
   &lt;leg:level-not-in-force&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
     &lt;leg:levelbody&gt;
      &lt;leg:bodytext&gt;
       &lt;l&gt;
        &lt;li&gt;
         &lt;lilabel/&gt;
         &lt;p&gt;&lt;text&gt;ENACTMENT NOT IN FORCE&lt;/text&gt;&lt;/p&gt;
        &lt;/li&gt;
       &lt;/l&gt;
      &lt;/leg:bodytext&gt;
      &lt;leg:bodytext&gt;
       &lt;l&gt;
        &lt;li&gt;
         &lt;lilabel/&gt;
         &lt;p&gt;&lt;text&gt;NOTE: On a date to be fixed by regulation (RSBC 1996 (Supp) -6-54 (2) (e) [SBC 1993-35-54] (Act, s. 66)) the following is enacted:&lt;/text&gt;&lt;/p&gt;
         &lt;/li&gt;
        &lt;/l&gt;
       &lt;/leg:bodytext&gt;
       &lt;leg:bodytext&gt;
        &lt;l&gt;
         &lt;li&gt;
          &lt;lilabel/&gt;
          &lt;p&gt;&lt;text&gt;(e) a prescribed advocacy organization;&lt;/text&gt;&lt;/p&gt;
          &lt;/li&gt;
         &lt;/l&gt;
        &lt;/leg:bodytext&gt;
        &lt;leg:bodytext&gt;
         &lt;l&gt;
          &lt;li&gt;
           &lt;lilabel/&gt;
           &lt;p&gt;&lt;text&gt;RSBC 1996 (Supp) -6-54 (2) (e) [SBC 1993-35-54] NOT IN FORCE, requires  regulation (Act, s. 66).&lt;/text&gt;&lt;/p&gt;
          &lt;/li&gt;
         &lt;/l&gt;
        &lt;/leg:bodytext&gt;
       &lt;/leg:levelbody&gt;
      &lt;/leg:level-vrnt&gt;
     &lt;/leg:level-not-in-force&gt;
    &lt;/leg:levelbody&gt;
   &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

   </codeblock>
   <b>Becomes</b>
   <title>CANADA TARGET XML 2: For normal text.</title>
   <codeblock>

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
     &lt;p&gt;&lt;text&gt;ENACTMENT NOT IN FORCE&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/listitem&gt;
  &lt;/list&gt;
 &lt;/primlaw:bodytext&gt;
 &lt;primlaw:bodytext&gt;
  &lt;list&gt;
   &lt;listitem&gt;
    &lt;bodytext&gt;
     &lt;p&gt;&lt;text&gt;NOTE: On a date to be fixed by regulation (RSBC 1996 (Supp) -6-54 (2) (e) [SBC 1993-35-54] (Act, s. 66)) the following is enacted:&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/listitem&gt;
  &lt;/list&gt;
 &lt;/primlaw:bodytext&gt;
 &lt;primlaw:bodytext&gt;
  &lt;list&gt;
   &lt;listitem&gt;
    &lt;bodytext&gt;
     &lt;p&gt;&lt;text&gt;(e) a prescribed advocacy organization;&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/listitem&gt;
  &lt;/list&gt;
 &lt;/primlaw:bodytext&gt;
 &lt;primlaw:bodytext&gt;
  &lt;list&gt;
   &lt;listitem&gt;
    &lt;bodytext&gt;
     &lt;p&gt;&lt;text&gt;RSBC 1996 (Supp) -6-54 (2) (e) [SBC 1993-35-54] NOT IN FORCE, requires regulation (Act, s. 66).&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
   &lt;/listitem&gt;
  &lt;/list&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
   </codeblock>
  </example>
  <example>
   <title>CANADA SOURCE XML 3: For normal text.</title>
   <codeblock>

&lt;leg:level&gt;
 &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
  &lt;leg:heading align="center"&gt;
   &lt;title&gt;GENERAL PROVISIONS RE COLLEGE&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;leg:levelbody&gt;
   &lt;leg:level-not-in-force&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
     &lt;leg:heading&gt;
      &lt;title&gt;ENACTMENT NOT IN FORCE&lt;/title&gt;
     &lt;/leg:heading&gt;
     &lt;leg:levelbody&gt;
      &lt;leg:bodytext&gt;
       &lt;p&gt;&lt;text&gt;NOTE: On a day to be fixed by proclamation (S.M. 2009, c. 15, s. 212 (Act, s. 263)), the following is enacted:&lt;/text&gt;&lt;/p&gt;
      &lt;/leg:bodytext&gt;
     &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
   &lt;/leg:level-not-in-force&gt;
  &lt;/leg:levelbody&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

   </codeblock>
   <b>Becomes</b>
   <title>CANADA TARGET XML 3: For normal text.</title>
   <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
 &lt;heading&gt;
  &lt;title&gt;GENERAL PROVISIONS RE COLLEGE&lt;/title&gt;
 &lt;/heading&gt;
 &lt;primlaw:levelinfo&gt;
  &lt;primlawinfo:primlawinfo&gt;
   &lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:statusgroup&gt;
     &lt;legisinfo:status statuscode="effectivenessinfo"&gt; &lt;/legisinfo:status&gt;
    &lt;/legisinfo:statusgroup&gt;
   &lt;/legisinfo:legisinfo&gt;
  &lt;/primlawinfo:primlawinfo&gt;
 &lt;/primlaw:levelinfo&gt;
 &lt;heading&gt;
  &lt;subtitle&gt;ENACTMENT NOT IN FORCE&lt;/subtitle&gt;
 &lt;/heading&gt;
 &lt;primlaw:bodytext&gt;
  &lt;p&gt;&lt;text&gt;NOTE: On a day to be fixed by proclamation (S.M. 2009, c. 15, s. 212 (Act, s. 263)), the following is enacted:&lt;/text&gt;&lt;/p&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

   </codeblock>
  </example>
  <section>
   <title>Changes</title>
   <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
   <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.level-not-in-force.dita  -->
	<xsl:message>legis-leg.level-not-in-force.xsl requires manual development!</xsl:message> 

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

	<xsl:template match="leg:heading/title">

		<!--  Original Target XPath:  heading/subtitle   -->
		<heading>
			<subtitle>
				<xsl:apply-templates select="@* | node()"/>
			</subtitle>
		</heading>

	</xsl:template>

	<xsl:template match="Editor's note">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>