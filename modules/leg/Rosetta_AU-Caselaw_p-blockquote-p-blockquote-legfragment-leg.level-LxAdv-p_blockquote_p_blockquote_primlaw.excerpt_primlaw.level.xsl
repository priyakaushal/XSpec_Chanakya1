<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU-Caselaw_p-blockquote-p-blockquote-legfragment-leg.level-LxAdv-p_blockquote_p_blockquote_primlaw.excerpt_primlaw.level">
  <title>(AU Caselaw) <sourcexml>p/blockquote/p/blockquote/legfragment/leg:level</sourcexml> to <targetxml>p/blockquote/p/blockquote/primlaw:excerpt</targetxml> <lnpid>id-CCCC-10225</lnpid></title>
  <body>
    <section>
      <p>
          <b>Handling for Case Law:</b> <sourcexml>p/blockquote/p/blockquote/legfragment/leg:level</sourcexml> becomes <targetxml>p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level</targetxml>.


        <codeblock>
        <b>Handling of p/blockquote/p/blockquote/legfragment/leg:level:</b>

&lt;p&gt;
    &lt;text&gt;These propositions were reiterated by Gillard J in &lt;ci:cite searchtype="CASE-REF"
                    &gt;&lt;ci:case&gt;&lt;ci:caseref ID="cr000275" spanref="cr000275-001"&gt;&lt;ci:reporter
                        value="urj"/&gt;&lt;ci:refnum num="BC200507079"
                    /&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;citefragment searchtype="CASE-NAME-REF"
                        &gt;&lt;emph typestyle="it"&gt;Sitch (decd) (No 2),
                    Re&lt;/emph&gt;&lt;/citefragment&gt;&lt;citefragment searchtype="CASE-CITE-REF"&gt; [2005] VSC
                    383; &lt;ci:span spanid="cr000275-001"&gt;
                    BC200507079&lt;/ci:span&gt;&lt;/citefragment&gt; ... &lt;/text&gt;
    &lt;blockquote&gt;
        &lt;p&gt;
            &lt;text&gt;In the past the general practice was that if an application failed the plaintiff
                was not ordered to pay the costs. See, for example, in &lt;ci:cite
                    searchtype="CASE-REF"&gt;&lt;ci:content&gt;&lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph
                                typestyle="it"&gt;re
                    Kennedy&lt;/emph&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt; ... &lt;/text&gt;
            &lt;blockquote&gt;
                &lt;legfragment&gt;
                    &lt;leg:level&gt;
                        &lt;leg:level-vrnt leveltype="subsect"&gt;
                            &lt;leg:heading inline="true"&gt;
                                &lt;desig&gt;
                                    &lt;designum&gt;(6)&lt;/designum&gt;
                                &lt;/desig&gt;
                            &lt;/leg:heading&gt;
                            &lt;leg:levelbody&gt;
                                &lt;leg:bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;The Court may make such order as to the costs of any
                                            proceeding under this part as it deems just.&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/leg:bodytext&gt;
                            &lt;/leg:levelbody&gt;
                        &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt;
                &lt;/legfragment&gt;
            &lt;/blockquote&gt;
        &lt;/p&gt;
    &lt;/blockquote&gt;
&lt;/p&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

&lt;p&gt;
    &lt;text&gt;These propositions were reiterated by Gillard J in &lt;lnci:cite type="case"
                    &gt;&lt;lnci:case&gt;&lt;lnci:caseref ID="cr000275"&gt;&lt;lnci:reporter value="urj"/&gt;&lt;lnci:refnum
                        num="BC200507079"/&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;&lt;emph
                    typestyle="it"&gt;Sitch (decd) (No 2), Re&lt;/emph&gt; [2005] VSC 383;
                            BC200507079 ... &lt;/text&gt;
    &lt;blockquote&gt;
        &lt;p&gt;
            &lt;text&gt;In the past the general practice was that if an application failed the plaintiff
                was not ordered to pay the costs. See, for example, in &lt;lnci:cite
                    type="case"&gt;&lt;lnci:content&gt;&lt;emph typestyle="it"&gt;re
                        Kennedy&lt;/emph&gt;&lt;/lnci:content&gt;&lt;/lnci:cite&gt; ... &lt;/text&gt;
            &lt;blockquote&gt;
                &lt;primlaw:excerpt&gt;
                    &lt;primlaw:level leveltype="subsection"&gt;
                        &lt;heading inline="true"&gt;
                            &lt;desig&gt;(6)&lt;/desig&gt;
                        &lt;/heading&gt;
                        &lt;primlaw:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;The Court may make such order as to the costs of any
                                    proceeding under this part as it deems just.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/primlaw:bodytext&gt;
                    &lt;/primlaw:level&gt;
                &lt;/primlaw:excerpt&gt;
            &lt;/blockquote&gt;
        &lt;/p&gt;
    &lt;/blockquote&gt;
&lt;/p&gt;
 
</codeblock>
      </p>
    </section>
    
    <section>
      <title>Changes</title>
      <p>2013-10-22: <ph id="change_20131022_PS">Created and webstar # is 5070931.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU-Caselaw_p-blockquote-p-blockquote-legfragment-leg.level-LxAdv-p_blockquote_p_blockquote_primlaw.excerpt_primlaw.level.dita  -->
	<xsl:message>Rosetta_AU-Caselaw_p-blockquote-p-blockquote-legfragment-leg.level-LxAdv-p_blockquote_p_blockquote_primlaw.excerpt_primlaw.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="p/blockquote/p/blockquote/legfragment/leg:level">

		<!--  Original Target XPath:  p/blockquote/p/blockquote/primlaw:excerpt   -->
		<p>
		    <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<p>
				    <blockquote>
						<primlaw:excerpt xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
							<xsl:apply-templates select="@* | node()"/>
						</primlaw:excerpt>
					</blockquote>
				</p>
			</blockquote>
		</p>

	</xsl:template>

</xsl:stylesheet>