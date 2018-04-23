<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody_leg.bodytext">
   <title>leg:levelbody <lnpid>id-PH01-33414</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
            <ul>
              <li>
                If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:level</targetxml> i.e, 
                <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
              </li>
              <li>
                If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
              </li>
            </ul>
          </li>
        </ul>
      </section>
     <p>When <sourcexml>leg:levelbody/leg:level</sourcexml></p>
<pre>
&lt;leg:levelbody&gt;
    &lt;leg:level id="PHLAW.ACT000009.S1"&gt;
        &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" subdoc="true"
            toc-caption="SECTION 1."&gt;
            &lt;leg:heading inline="true"&gt;
                &lt;desig searchtype="SECT-NUM"&gt;
                    &lt;designum&gt;&lt;refpt id="PHLAW.ACT000009.S1" type="ext"/&gt;SECTION
                        1.&lt;/designum&gt;
                &lt;/desig&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;If upon opening any package of dutiable goods, a
                            deficiency of any article shall, on examination by the
                            inspector, be found, or if any article is found to be
                            totally destroyed, the same shall be certified to the
                            Collector, who, if he shall be satisfied that such
                            deficiency has occurred through no fault of the owner,
                            importer, or another person interested in such goods,
                            shall make allowance for the same in estimating and
                            assessing duties.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

<b>becomes</b>

&lt;primlaw:level xml:id="PHLAW.ACT000009.BODY" leveltype="act"&gt;
    &lt;ref:anchor id="PHLAW.ACT000009" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;ACT NO. 9&lt;proc:nl/&gt;AN ACT PROVIDING FOR AN ALLOWANCE IN ESTIMATING AND
            ASSESSING DUTIABLE GOODS IN CASE OF LOSS OR DESTRUCTION OF THE SAME&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:level includeintoc="true" alternatetoccaption="SECTION 1." leveltype="section"&gt;
        &lt;heading inline="true"&gt; &lt;/heading&gt;
        &lt;ref:anchor id="PHLAW.ACT000009.S1" anchortype="global"/&gt; 
        &lt;heading&gt;
            &lt;desig&gt;SECTION 1.&lt;/desig&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;If upon opening any package of dutiable goods, a deficiency of any
                    article shall, on examination by the inspector, be found, or if any
                    article is found to be totally destroyed, the same shall be certified to
                    the Collector, who, if he shall be satisfied that such deficiency has
                    occurred through no fault of the owner, importer, or another person
                    interested in such goods, shall make allowance for the same in
                    estimating and assessing duties.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;
</pre>
     <p><sourcexml>leg:levelbody/leg:bodytext</sourcexml></p>

<pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;If upon opening any package of dutiable goods, a deficiency of any article shall,
                on examination by the inspector, be found, or if any article is found to be totally
                destroyed, the same shall be certified to the Collector, who, if he shall be
                satisfied that such deficiency has occurred through no fault of the owner, importer,
                or another person interested in such goods, shall make allowance for the same in
                estimating and assessing duties.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

<b>becomes</b>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;If upon opening any package of dutiable goods, a deficiency of any article shall, on
            examination by the inspector, be found, or if any article is found to be totally
            destroyed, the same shall be certified to the Collector, who, if he shall be satisfied
            that such deficiency has occurred through no fault of the owner, importer, or another
            person interested in such goods, shall make allowance for the same in estimating and
            assessing duties.&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;
</pre>
        <section>
            <title>Changes</title>
            <p>2014-08-07: Created.</p>
        </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH01-Legislation\leg.levelbody_leg.bodytext.dita  -->
	<xsl:message>leg.levelbody_leg.bodytext.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>