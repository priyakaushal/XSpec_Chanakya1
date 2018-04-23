<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LxAdv-cttr.usagegroup_AddingSortWeightInformation">
  <title>Adding Sort Weight Information to cttr:usagegroup <lnpid>id-MY10-18017</lnpid></title>
  <body>
    <section>
      <p>Attributes <targetxml>@negativesortweight</targetxml> and
          <targetxml>@positivesortweight</targetxml> are added to the element
          <targetxml>cttr:usagegroup</targetxml>. The value of the attribute is a combination of
        ranking of designation of annotation (A), ranking of annotation type (B), usagegroup type
        (C) and decision date (D).</p>
      <p>Value for <targetxml>@negativesortweight</targetxml> attribute is the combination of the
        following values.</p>
      <ul id="ul_bqk_tsn_il">
        <li> (A) Rank of the value of <sourcexml>cttr:use-group/cttr:use/@signal</sourcexml>
          attribute. If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml> elements
          then the <sourcexml>@signal</sourcexml> value with highest ranking should be choosen. The
            <sourcexml>@signal</sourcexml> attirubute values and its ranking is given below, <ul id="ul_lqk_tsn_il">
            <li>1 - Negative</li>
            <li>2 - Cautionary</li>
            <li>3 - Positive</li>
            <li>4 - Neutral</li>
            <li>5 - Other blank</li>
          </ul>
        </li>
        <li> (B) Rank of the value of <sourcexml>cttr:use-group/cttr:use</sourcexml> element. If
          there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml> elements, then only the
          value with highest ranking should be choosen from
            <sourcexml>cttr:use-group/cttr:use</sourcexml> with highest ranked
            <sourcexml>@signal</sourcexml> attribute. <ul id="ul_vqk_tsn_il">
            <li>1 - Overruled</li>
            <li>2 - Overruled in part</li>
            <li>3 - Disapproved</li>
            <li>4 - Other Negative</li>
            <li>1 - Not followed</li>
            <li>2 - Not applied</li>
            <li>3 - Questioned</li>
            <li>4 - Doubted</li>
            <li>5 - Explained</li>
            <li>6 - Distinguished</li>
            <li>7 - Other Cautionary</li>
            <li>1 - Followed</li>
            <li>2 - Applied</li>
            <li>3 - Approved</li>
            <li>4 - Adopted</li>
            <li>5 - Other Positive</li>
            <li>1 - Considered</li>
            <li>2 - Discussed</li>
            <li>3 - Cited</li>
            <li>4 - Referred to</li>
            <li>5 - See</li>
            <li>6 - Neutral Other</li>
            <li>1 - Other</li>
          </ul>
        </li>
        <li> (C) If there is only one <sourcexml>cttr:use-group/cttr:use</sourcexml> element the
          value will be 1, and if there are more than one
            <sourcexml>cttr:use-group/cttr:use</sourcexml> elements the value will be 2. </li>
        <li> (D) Value of attrubutes @year, @month and @day of
            <sourcexml>cttr:annot/case:info/case:dates/case:decisiondate/date</sourcexml> in
          YYYYMMDD format. If the <sourcexml>case:decisiondate</sourcexml> is not available the
          value will be "00000000". </li>
      </ul>
    </section>
    <example>
      <title>Populating <targetxml>@negativesortweight</targetxml> - Source</title>
      <codeblock>

&lt;cttr:annot signal="cautionary"&gt;
  &lt;case:info&gt;
    ...
    &lt;case:courtinfo&gt;
      &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
          &lt;date day="31" month="08" year="1920"&gt;31/8/1920&lt;/date&gt;
        &lt;/case:decisiondate&gt;
      &lt;/case:dates&gt;
      ...
    &lt;/case:courtinfo&gt;
  &lt;/case:info&gt;
  &lt;cttr:use-group&gt;
    &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
    &lt;cttr:use signal="neutral"&gt;Cited&lt;/cttr:use&gt;
  &lt;/cttr:use-group&gt;
  ...
&lt;/cttr:annot&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating <targetxml>@negativesortweight</targetxml> - Target</title>
      <codeblock>

&lt;cttr:refitem&gt;
  &lt;cttr:consideredcase treatment="cautionary"&gt;
    &lt;cttr:caseinfo&gt;
      ...
      &lt;decision:dates&gt;
        &lt;decision:decisiondate day="31" month="08" year="1920"&gt;
          &lt;date-text&gt;31/8/1920&lt;/date-text&gt;
        &lt;/decision:decisiondate&gt;
      &lt;/decision:dates&gt;
    &lt;/cttr:caseinfo&gt;
    &lt;cttr:usagegroup negativesortweight="44219200831" positivesortweight="44219200831"&gt;
      &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Referred to&lt;/text&gt;
      &lt;/cttr:usage&gt;
      &lt;cttr:usage usagetype="neutral"&gt;
        &lt;text&gt;Cited&lt;/text&gt;
      &lt;/cttr:usage&gt;
    &lt;/cttr:usagegroup&gt;
    ...
&lt;/cttr:refitem&gt;

	</codeblock>
    </example>
    <section><p> Value for <targetxml>@positivesortweight</targetxml> attribute is the combination
        of the following values</p>
      <ul>
        <li> (A) Rank of the value of <sourcexml>cttr:use-group/cttr:use/@signal</sourcexml>
          attribute. If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml> elements
          then the <sourcexml>@signal</sourcexml> value with highest ranking should be choosen. The
            <sourcexml>@signal</sourcexml> attirubute values and its ranking is given below, <ul>
            <li>1 - Positive</li>
            <li>2 - Negative</li>
            <li>3 - Cautionary</li>
            <li>4 - Neutral</li>
            <li>5 - Other blank</li>
          </ul>
        </li>
        <li> (B) Rank of the value of <sourcexml>cttr:use-group/cttr:use</sourcexml> element. If
          there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml> elements, then only the
          value with highest ranking should be choosen from
            <sourcexml>cttr:use-group/cttr:use</sourcexml> with highest ranked
            <sourcexml>@signal</sourcexml> attribute. <ul>
            <li>1 - Overruled</li>
            <li>2 - Overruled in part</li>
            <li>3 - Disapproved</li>
            <li>4 - Other Negative</li>
            <li>1 - Not followed</li>
            <li>2 - Not applied</li>
            <li>3 - Questioned</li>
            <li>4 - Doubted</li>
            <li>5 - Explained</li>
            <li>6 - Distinguished</li>
            <li>7 - Other Cautionary</li>
            <li>1 - Followed</li>
            <li>2 - Applied</li>
            <li>3 - Approved</li>
            <li>4 - Adopted</li>
            <li>5 - Other Positive</li>
            <li>1 - Considered</li>
            <li>2 - Discussed</li>
            <li>3 - Cited</li>
            <li>4 - Referred to</li>
            <li>5 - See</li>
            <li>6 - Neutral Other</li>
            <li>1 - Other</li>
          </ul>
        </li>
        <li> (C) If there is only one <sourcexml>cttr:use-group/cttr:use</sourcexml> element the
          value will be 1, and if there are more than one
            <sourcexml>cttr:use-group/cttr:use</sourcexml> elements the value will be 2. </li>
        <li> (D) Value of attrubutes @year, @month and @day of
            <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>
          in YYYYMMDD format. If the <sourcexml>case:decisiondate</sourcexml> is not available the
          value will be "00000000". </li>
      </ul></section>
    <example>
      <title>Populating <targetxml>@positivesortweight</targetxml> - Source</title>
      <codeblock>

&lt;cttr:annot signal="negative"&gt;
  &lt;case:info&gt;
   ...
   &lt;case:courtinfo&gt;
    &lt;case:dates&gt;
      &lt;case:decisiondate&gt;&lt;date day="25" month="07" year="1955"
      &gt;25/7/1955&lt;/date&gt;&lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
   ...
   &lt;/case:courtinfo&gt;
  &lt;/case:info&gt;
  &lt;cttr:use-group&gt;
    &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
    &lt;cttr:use signal="positive"&gt;Applied&lt;/cttr:use&gt;
  &lt;/cttr:use-group&gt;
...
&lt;/cttr:annot&gt;

	</codeblock>
    </example>
    <example>
      <title>Populating <targetxml>@positivesortweight</targetxml> - Target</title>
      <codeblock>

&lt;cttr:refitem&gt;
  &lt;cttr:consideredcase treatment="negative"&gt;
  &lt;cttr:caseinfo&gt;
    ...
    &lt;decision:dates&gt;
    &lt;decision:decisiondate day="25" month="07" year="1955"&gt;
    &lt;date-text&gt;25/7/1955&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
    &lt;/decision:dates&gt;
  &lt;/cttr:caseinfo&gt;
  &lt;cttr:usagegroup negativesortweight="32219550725" positivesortweight="12219550725"&gt;
    &lt;cttr:usage usagetype="neutral"&gt;
      &lt;text&gt;Referred to&lt;/text&gt;
    &lt;/cttr:usage&gt;
    &lt;cttr:usage usagetype="positive"&gt;
      &lt;text&gt;Applied&lt;/text&gt;
    &lt;/cttr:usage&gt;
  &lt;/cttr:usagegroup&gt;
  &lt;/cttr:consideredcase&gt;
&lt;/cttr:refitem&gt;

	</codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-09-03: <ph id="change_20130903_raj">Created per WebStar: WebTeam #233689</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita  -->
	<xsl:message>MY10_Citator_LxAdv-cttr.usagegroup_AddingSortWeightInformation.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:use-group/cttr:use/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @negativesortweight   -->
		<xsl:attribute name="negativesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="cttr:use-group/cttr:use"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @negativesortweight   -->
		<xsl:attribute name="negativesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @negativesortweight   -->
		<xsl:attribute name="negativesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:dates/case:decisiondate/date"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @negativesortweight   -->
		<xsl:attribute name="negativesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @negativesortweight   -->
		<xsl:attribute name="negativesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @positivesortweight   -->
		<xsl:attribute name="positivesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>