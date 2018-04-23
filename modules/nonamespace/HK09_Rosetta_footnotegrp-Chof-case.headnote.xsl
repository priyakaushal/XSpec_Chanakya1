<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK09_Rosetta_footnotegrp-Chof-case.headnote">
	  <title><sourcexml>footnotegrp[parent::case:headnote]</sourcexml> <lnpid>id-HK09-39442</lnpid></title>
  <body>
    <section><p>When <sourcexml>footnotegrp</sourcexml> is a child of
          <sourcexml>case:headnote</sourcexml> the target <targetxml>footnotegroup</targetxml>
        should be wrapped in <targetxml>note</targetxml> as follows: <ul>
          <li>Create <targetxml>note</targetxml>.</li>
          <li>Inside <targetxml>note</targetxml> create <targetxml>bodytext/p/text</targetxml>.</li>
          <li>Map <sourcexml>footnotegrp</sourcexml> to <targetxml>footnotegroup</targetxml> as
            usual (see <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"/> for
            details) and place it inside the <targetxml>text</targetxml> created in the previous
            step.</li>
        </ul></p></section>
    <example>
      <codeblock>
&lt;case:headnote&gt;
  ...
  &lt;footnotegrp&gt;
    &lt;footnote fntoken="06-20085fn001" fnrtokens="06-20085fn001-r" type="default"&gt;
      &lt;fnlabel&gt;1&lt;/fnlabel&gt;
      &lt;fnbody&gt;
        &lt;p&gt;
          &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Editorial note:&lt;/emph&gt; For the sake of completeness, the decision
            of the full court of the High Court of Australia, previously appearing at 1A IPR 484,
            has been reproduced here together with the decision of Windeyer J.&lt;/text&gt;
        &lt;/p&gt;
      &lt;/fnbody&gt;
    &lt;/footnote&gt;
  &lt;/footnotegrp&gt;
&lt;/case:headnote&gt; 
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;compcase:head&gt;
  ...
  &lt;note&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;
          &lt;footnotegroup&gt;
            &lt;footnote&gt;
              &lt;ref:anchor id="_06-20085fn001"/&gt;
              &lt;ref:returnreference&gt;
                &lt;ref:locator anchoridref="_06-20085fn001-r"/&gt;
              &lt;/ref:returnreference&gt;
              &lt;label&gt;1&lt;/label&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;
                    &lt;emph typestyle="bf"&gt;Editorial note:&lt;/emph&gt; For the sake of completeness, the
                    decision of the full court of the High Court of Australia, previously appearing
                    at 1A IPR 484, has been reproduced here together with the decision of
                    Windeyer J.&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/footnote&gt;
          &lt;/footnotegroup&gt;
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/note&gt;
&lt;/compcase:head&gt;
</codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-09-24: <ph id="change_20130924_DSF">Created to resolve WebTeam #237204.</ph></p>
    </section>
  </body>
	</dita:topic>
 

  <xsl:template match="footnotegrp[parent::case:headnote]" priority="25">

		<!--  Original Target XPath:  footnotegroup   -->
	  <note>
	    <bodytext>
	      <p>
	        <text>
	          <footnotegroup>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegroup>
	        </text>
	      </p>
	    </bodytext>
	  </note>

	</xsl:template>

</xsl:stylesheet>