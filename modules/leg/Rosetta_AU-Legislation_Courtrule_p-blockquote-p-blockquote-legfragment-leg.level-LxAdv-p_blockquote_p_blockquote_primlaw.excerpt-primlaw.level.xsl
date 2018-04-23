<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU-Legislation_Courtrule_p-blockquote-p-blockquote-legfragment-leg.level-to-LexisAdvance_p_blockquote_p_blockquote_primlaw.excerpt-primlaw.level">
  <title>(AU Legislation &amp; Courtrule) <sourcexml>p/blockquote/p/blockquote/legfragment/leg:level</sourcexml> to 
      <targetxml>p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level</targetxml> <lnpid>id-CCCC-10226</lnpid></title>
  <body>
    <section>
      <p>
        <b>Handling for AU legislation/Courtrule:
          p/blockquote/p/blockquote/legfragment/leg:level</b> If
        <sourcexml>legfragment</sourcexml> is the child of <sourcexml>blockquote</sourcexml> and
        input Xpath has nested blockquotes i.e.,
        <sourcexml>p/blockquote/p/blockquote/legfragment/leg:level</sourcexml> then don't omit
        <sourcexml>blockquote</sourcexml> from conversion and convert xpath as is i.e.,
        <sourcexml>p/blockquote/p/blockquote/legfragment/leg:level</sourcexml> will become
        <targetxml>p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level</targetxml>.
        <note>The above rule will be applicable only when the input documents has nested
          blockquotes and if legfragment is the child element of one of the blockquote and the
          immediate child of <sourcexml>legfragment</sourcexml> is
          <sourcexml>leg:level</sourcexml>.</note>
        <codeblock>

    &lt;blockquote&gt;
              &lt;p&gt;
                  &lt;text&gt;Hence 'offices' on the 6th floor of the Myer Emporium in Bourke Street Melbourne would be offices in planning terms if located separately from the Myers Department Store (that is to say Myers shop) but in fact, being located as they are in and as part of the dominant use of shop, they are merely an ancillary part of the shop. In planning terms they are shop, admittedly part of a shop, and not a separate use as office.&lt;/text&gt;&lt;/p&gt;
    &lt;/blockquote&gt;
    &lt;blockquote&gt;
        &lt;p&gt;
            &lt;text&gt;The third question fails to keep clear the distinction between a separate use and an activity that is an ancillary part of a single use. If there is a separate use in planning terms, then it is not an ancillary part of some other use. If it is ancillary to one use, it is not at the same time a separate use. This was the situation at common law prior to the insertion of Clause 5AAA into the Melbourne Metropolitan Planning Scheme Ordinance. By common law here I mean the law that had been developed in relation to this question in a series of decided cases. Clause 5AAA was translated into the Regional Section of the Bulla Planning Scheme that came into operation on the 16 February 1988. The wording of Clause 5AAA in both those places was lengthy and convoluted. This wording became the subject of many jokes because of the convolutions. It read:-&lt;/text&gt;
            &lt;blockquote&gt;
                &lt;legfragment&gt;
                    &lt;leg:level&gt;
                        &lt;leg:level-vrnt leveltype="clause"&gt;
                            &lt;leg:heading inline="true"&gt;&lt;desig&gt;&lt;designum&gt;&amp;#x201c;5AAA&lt;/designum&gt;&lt;/desig&gt;&lt;/leg:heading&gt;
                            &lt;leg:levelbody&gt;
                                &lt;leg:level&gt;
                                    &lt;leg:level-vrnt leveltype="subclause"&gt;
                                        &lt;leg:heading inline="true"&gt;&lt;desig&gt;&lt;designum&gt;(1)&lt;/designum&gt;&lt;/desig&gt;&lt;/leg:heading&gt;
                                        &lt;leg:levelbody&gt;
                                            &lt;leg:bodytext&gt;
                                                &lt;p&gt;&lt;text&gt;Where the activities carried on or proposed to be carried on land include activities which fall within or are directed to two or more of the purposes specified or included in any Column of the Table to Clause 7 of this Ordinance those activities shall, for the purpose of the Planning Scheme, comprise the use of the land for the dominant or primary purpose of those activities unless those activities are directed towards more than one separate and distinct purpose neither of which is ancillary or incidental to the other.&lt;/text&gt;&lt;/p&gt;
                                            &lt;/leg:bodytext&gt;
                                        &lt;/leg:levelbody&gt;
                                    &lt;/leg:level-vrnt&gt;
                                &lt;/leg:level&gt;
                            &lt;/leg:levelbody&gt;
                        &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt;
                &lt;/legfragment&gt;
            &lt;/blockquote&gt;
        &lt;/p&gt;
    &lt;/blockquote&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

    &lt;blockquote&gt;
        &lt;p&gt;
        &lt;text&gt;Hence 'offices' on the 6th floor of the Myer Emporium in Bourke Street Melbourne would be offices in planning terms if located separately from the Myers Department Store (that is to say Myers shop) but in fact, being located as they are in and as part of the dominant use of shop, they are merely an ancillary part of the shop. In planning terms they are shop, admittedly part of a shop, and not a separate use as office.&lt;/text&gt;&lt;/p&gt;
    &lt;/blockquote&gt;
    &lt;blockquote&gt;
        &lt;p&gt;
            &lt;text&gt;The third question fails to keep clear the distinction between a separate use and an activity that is an ancillary part of a single use. If there is a separate use in planning terms, then it is not an ancillary part of some other use. If it is ancillary to one use, it is not at the same time a separate use. This was the situation at common law prior to the insertion of Clause 5AAA into the Melbourne Metropolitan Planning Scheme Ordinance. By common law here I mean the law that had been developed in relation to this question in a series of decided cases. Clause 5AAA was translated into the Regional Section of the Bulla Planning Scheme that came into operation on the 16 February 1988. The wording of Clause 5AAA in both those places was lengthy and convoluted. This wording became the subject of many jokes because of the convolutions. It read:-&lt;/text&gt;
            &lt;blockquote&gt;
                &lt;primlaw:excerpt&gt;
                    &lt;primlaw:level leveltype="clause"&gt;
                        &lt;heading inline="true"&gt;&lt;desig&gt;&amp;#x201c;5AAA&lt;/desig&gt;&lt;/heading&gt;
                        &lt;primlaw:bodytext&gt;
                            &lt;primlaw:level leveltype="subclause"&gt;
                                &lt;heading inline="true"&gt;&lt;desig&gt;(1)&lt;/desig&gt;&lt;/heading&gt;
                                &lt;primlaw:bodytext&gt;
                                    &lt;p&gt;&lt;text&gt;Where the activities carried on or proposed to be carried on land include activities which fall within or are directed to two or more of the purposes specified or included in any Column of the Table to Clause 7 of this Ordinance those activities shall, for the purpose of the Planning Scheme, comprise the use of the land for the dominant or primary purpose of those activities unless those activities are directed towards more than one separate and distinct purpose neither of which is ancillary or incidental to the other.&lt;/text&gt;&lt;/p&gt;
                                &lt;/primlaw:bodytext&gt;
                            &lt;/primlaw:level&gt;
                        &lt;/primlaw:bodytext&gt;
                    &lt;/primlaw:level&gt;
                &lt;/primlaw:excerpt&gt;
            &lt;/blockquote&gt;
        &lt;/p&gt;
    &lt;/blockquote&gt;

</codeblock>
      </p>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="blockquote[p/blockquote/legfragment[*[1][self::leg:level]]]">

		<!--  Original Target XPath:  p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level   -->
	    <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <!-- Paul: i removed the <p> element child of blockquote here as it is already created in the child <p> template
	            which we know is there because of the match predicate. having it here creates <p>/<p> duplicate nesting.-->
						    <xsl:apply-templates select="node()"/>
			</blockquote>
		

	</xsl:template>
    
<!--    <xsl:template match="blockquote/p/blockquote[legfragment[*[1][self::leg:level]]]">
        
        <!-\-  Original Target XPath:  p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level   -\->
            <blockquote>
                <p>
                    <xsl:apply-templates select="node()"/>
                </p>
            </blockquote>
        
        
    </xsl:template>-->
    
	<!--<xsl:template match="legfragment">

		<!-\-  Original Target XPath:  p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level   -\->
		<p>
			<blockquote>
				<p>
					<blockquote>
						<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<primlaw:level>
								<xsl:apply-templates select="@* | node()"/>
							</primlaw:level>
						</primlaw:excerpt>
					</blockquote>
				</p>
			</blockquote>
		</p>

	</xsl:template>

	<xsl:template match="blockquote">

		<!-\-  Original Target XPath:  p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level   -\->
		<p>
			<blockquote>
				<p>
					<blockquote>
						<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<primlaw:level>
								<xsl:apply-templates select="@* | node()"/>
							</primlaw:level>
						</primlaw:excerpt>
					</blockquote>
				</p>
			</blockquote>
		</p>

	</xsl:template>

	<xsl:template match="leg:level">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>