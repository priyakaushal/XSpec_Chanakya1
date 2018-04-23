<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.judges_DescendantOf_case.info-LxAdv_courtcase.judges">
  <title>case:judges[ancestor::case:info] <lnpid>id-ST01-26235</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.judges_DescendantOf_case.info-LxAdv_courtcase.judges.dita#Rosetta_case.judges_DescendantOf_case.info-LxAdv_courtcase.judges/mapping"/>
<ul><li>Always create <targetxml>person:judge</targetxml> as an immediate child of
      <targetxml>courtcase:judges</targetxml>. For example: if there is a Rosetta
      <sourcexml>case:judges</sourcexml> element and it just contains text, create
      <targetxml>person:judge</targetxml> as a child of
      <targetxml>courtcase:judges</targetxml>.</li>
      
      <li>When <sourcexml>emph</sourcexml> is inside <sourcexml>case:judges</sourcexml> and
        <sourcexml>@typestyle="smcaps"</sourcexml>, omit  (<sourcexml>emph</sourcexml>) and retain
        the content.</li>
      <li>Connecting punctuation and newlines preceding judges
        can be accomodated in the judges markup.</li></ul>  
    <example><title>Example 1 - <sourcexml>case:judges</sourcexml> with text</title><codeblock>
&lt;case:headnote&gt;
  ...
  &lt;case:info&gt;
    &lt;case:courtinfo&gt;
      &lt;case:judges&gt;MacIntosh, J.&lt;/case:judges&gt;
      ...
    &lt;/case:courtinfo&gt;
  &lt;/case:info&gt;
&lt;/case:headnote&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:head&gt;
  ...
  &lt;caseinfo:caseinfo&gt;
    &lt;courtcase:panel&gt;
      &lt;courtcase:judges&gt;
             &lt;person:judge&gt;MacIntosh, J.&lt;/person:judge&gt;
      &lt;/courtcase:judges&gt;
    &lt;/courtcase:panel&gt;
    ...
  &lt;/caseinfo:caseinfo&gt;
&lt;/courtcase:head&gt;
           </codeblock>
    </example>
    <example><title>Example 2 - suppressing <sourcexml>emph</sourcexml></title>
  <pre xml:space="preserve">

&lt;case:judgment&gt;
  &lt;case:courtinfo&gt;
      &lt;case:judges&gt;
          JUDGE M 
          &lt;emph typestyle="smcaps"&gt;c&lt;/emph&gt; 
          ELREA. 
      &lt;/case:judges&gt;
  &lt;/case:courtinfo&gt;
  ...
&lt;/case:judgment&gt;

<b>Becomes</b>

&lt;courtcase:opinion&gt;
  &lt;courtcase:opinionby&gt;
    JUDGE M 
    c
    ELREA. 
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinion&gt;

</pre>
</example>
    <example><title>Example 3 - Preserving connecting punctuation</title>
      <pre xml:space="preserve">

&lt;case:info&gt;
    ...
    &lt;case:courtinfo&gt;
        &lt;case:juris&gt;NSW&lt;/case:juris&gt; 
        &lt;case:courtname&gt;Equity Division&lt;/case:courtname&gt; 
        &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt; 
        &lt;nl/&gt;
        -
        &lt;case:judges&gt;
            &lt;case:judge&gt;Young J&lt;/case:judge&gt; 
        &lt;/case:judges&gt;
        &lt;case:dates&gt;
            &lt;case:hearingdates&gt;10 June; 1 July 1986&lt;/case:hearingdates&gt; 
        &lt;/case:dates&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;caseinfo:caseinfo&gt;
    ...
    &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
            &lt;proc:nl/&gt;
            -
            &lt;person:judge&gt;Young J&lt;/person:judge&gt; 
        &lt;/courtcase:judges&gt;
    &lt;/courtcase:panel&gt;
    ...
&lt;/caseinfo:caseinfo&gt;

</pre>
    </example>
    
    
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.judges_DescendantOf_case.info-LxAdv_courtcase.judges.dita#Rosetta_case.judges_DescendantOf_case.info-LxAdv_courtcase.judges/changes"/>-->
    <!--<section>
            <title>Changes Specific to CA01</title>
            </section>-->

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.judges_DescendantOf_case.info-courtcase.judges.dita  -->
	<xsl:message>case.judges_DescendantOf_case.info-courtcase.judges.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:judges">

		<!--  Original Target XPath:  person:judge   -->
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@typestyle=&#34;smcaps&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>