<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_jrnl_prelim-footnote">
    <title>jrnl:prelim/footnotegrp/footnote <lnpid>id-CA15-35429</lnpid></title>
    <body>
        <p> These instructions are for <sourcexml>footnotegrp/footnote</sourcexml> occurring within
                <sourcexml>jrnl:prelim</sourcexml>, i.e.
                <sourcexml>jrnl:prelim/footnotegrp/footnote</sourcexml>.</p>
        <p><i>Summary of action:</i> Each individual <sourcexml>footnote</sourcexml> is <u>moved</u>
            to <sourcexml>footnotegrp</sourcexml> at end of file. Note that the rules below are
            expressed in terms of source markup to help clarify the movement of data. Conversion of
                <sourcexml>footnote</sourcexml> to <targetxml>footnote</targetxml> is per usual
            rules as described in General Markup section.</p>
        <section><ul>
                <li>Suppress the tag <sourcexml>footnotegrp</sourcexml>.</li>
                <li>Suppress <sourcexml>heading/title</sourcexml>, the tags and the content.</li>
                <li>Move each <sourcexml>footnote</sourcexml> to become the first child or children
                    of <sourcexml>jrnl:body/jrnl:bodytext/level/bodytext/footnotegrp</sourcexml>.<ul>
                        <li>Maintain sequence when moving.</li>
                        <li>If file does not contain <sourcexml>bodytext/footnotegrp</sourcexml>,
                            then create <targetxml>p/text/footnotegroup</targetxml> in target as
                            last child of last <targetxml>bodytext</targetxml>.</li>
                    </ul></li>
            </ul></section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;jrnl:prelim&gt;
    &lt;footnotegrp&gt;
        &lt;heading&gt;
            &lt;title&gt;TITLE&amp;#x00A0;NOTE:&lt;/title&gt;
        &lt;/heading&gt;
        &lt;footnote fntoken="fn-111-plus" fnrtokens="fnr-111-plus"&gt;
            &lt;fnlabel&gt;+&lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;text&gt;I would like to express my thanks to ...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;
    &lt;footnotegrp&gt;
        &lt;heading&gt;
            &lt;title&gt;BIOGRAPHY:&lt;/title&gt;
        &lt;/heading&gt;
        &lt;footnote fntoken="fn-111-star" fnrtokens="fnr-111-star"&gt;
            &lt;fnlabel&gt;*&lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;text&gt;Associate Professor and Director, First Nations Law Program,
                        Faculty of Law, University of British Columbia.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;
&lt;/jrnl:prelim&gt;
&lt;jrnl:bodytext&gt;
    &lt;level&gt;
        &lt;bodytext&gt;
            ...
            &lt;!-- the footnotes above will be moved to become first children of the footnotegrp below --&gt;
            &lt;footnotegrp&gt;
                &lt;footnote fntoken="fn-111-1" fnrtokens="fnr-111-1"&gt;
                    &lt;fnlabel&gt;1&lt;/fnlabel&gt;
                    &lt;fnbody&gt;
                        &lt;p&gt;
                            &lt;text&gt;Letter of Dr. D.W. Larson, Professor of...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/fnbody&gt;
                &lt;/footnote&gt;
                ...
            &lt;/footnotegrp&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/jrnl:bodytext&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;nitf:body.content&gt;
  &lt;bodytext&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        ...
        &lt;p&gt;
          &lt;text&gt;
            &lt;footnotegroup&gt;
              &lt;footnote&gt;
                 &lt;ref:anchor id="fn-111-plus"/&gt;
                 &lt;ref:returnreference&gt;
                     &lt;ref:locator anchoridref="fnr-111-plus" anchortype="local"/&gt;
                 &lt;/ref:returnreference&gt;
                 &lt;label&gt;+&lt;/label&gt;
                 &lt;bodytext&gt;
                     &lt;p&gt;
                        &lt;text&gt;I would like to express my thanks to ...&lt;/text&gt;
                     &lt;/p&gt;
                 &lt;/bodytext&gt;
              &lt;/footnote&gt;
              &lt;footnote&gt;
                 &lt;ref:anchor id="fn-111-star"/&gt;
                 &lt;ref:returnreference&gt;
                     &lt;ref:locator anchoridref="fnr-111-star" anchortype="local"/&gt;
                 &lt;/ref:returnreference&gt;
                 &lt;label&gt;*&lt;/label&gt;
                 &lt;bodytext&gt;
                     &lt;p&gt;
                        &lt;text&gt;Associate Professor and Director, First Nations Law Program,
                            Faculty of Law, University of British Columbia.&lt;/text&gt;
                     &lt;/p&gt;
                 &lt;/bodytext&gt;
              &lt;/footnote&gt;
              &lt;footnote&gt;
                 &lt;ref:anchor id="fn-111-1"/&gt;
                 &lt;ref:returnreference&gt;
                     &lt;ref:locator anchoridref="fnr-111-1" anchortype="local"/&gt;
                 &lt;/ref:returnreference&gt;
                 &lt;label&gt;1&lt;/label&gt;
                 &lt;bodytext&gt;
                     &lt;p&gt;
                        &lt;text&gt;Letter of Dr. D.W. Larson, Professor of...&lt;/text&gt;
                     &lt;/p&gt;
                 &lt;/bodytext&gt;
              &lt;/footnote&gt;
              ...
            &lt;/footnotegroup&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/bodytext&gt;
&lt;/nitf:body.content&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-05-27: <ph id="change_20150527_AS">New rule. Target is not new. Instructions for
                    moving footnotes from preliminary portion in source to end of file in target.
                    RFA 48 and 54.</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_jrnl_prelim-footnote.dita  -->
	<!--<xsl:message>CA15_Rosetta_jrnl_prelim-footnote.xsl requires manual development!</xsl:message> 
-->
  <!--  <xsl:template match="jrnl:prelim/footnotegrp/footnote" priority="2">

	    <xsl:apply-templates select="@*|node()"></xsl:apply-templates>
		

	</xsl:template>-->

	<!--<xsl:template match="heading">		
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>-->

	<!--<xsl:template match="tittle">
		<!-\-  Original Target XPath:  footnote   -\->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>-->
<!--
	<xsl:template match="footnote">

	    <footnotegrp>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegrp>

	</xsl:template>-->

	<!--<xsl:template match="footnotegrp">

		<!-\-  Original Target XPath:  footnote   -\->
		<footnote>
			<xsl:apply-templates select="@* | node()"/>
		</footnote>

	</xsl:template>-->

	<!--<xsl:template match="heading/title">

		<!-\-  Original Target XPath:  p/text/footnotegroup   -\->
		<p>
			<text>
				<footnotegroup>
					<xsl:apply-templates select="@* | node()"/>
				</footnotegroup>
			</text>
		</p>

	</xsl:template>

-->
	

</xsl:stylesheet>