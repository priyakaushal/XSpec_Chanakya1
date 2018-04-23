<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judges">
    <title>case:judges <lnpid>id-ST05-28430</lnpid></title>
    <body>
        <section>
            <ul>
                <li> There are two contexts for /case:judges/case:judge in Standard Rosetta along with NL Xpath: <ol>
                        <li> /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:judges/case:judge, <b>NL Xpath:</b>
                            /compcase:compositecourtcase/compcase:head/compcase:caseinstanceinfo/courtcase:panel/courtcase:judges/person:judge </li>
                        <li> /CASEDOC/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges/case:judge, <b>NL Xpath:</b>
                            /compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:opinion/courtcase:opinionby/person:judge
                        </li>
                </ol>
                    
                    <p><sourcexml>case:judge</sourcexml> becomes <targetxml>person:judge</targetxml></p>
                </li>
            </ul>
        </section>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>

&lt;case:judges&gt;
    &lt;case:judge&gt;Perram&lt;/case:judge&gt; J
&lt;/case:judges&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Perram&lt;/person:judge&gt; J
&lt;/courtcase:opinionby&gt;

OR

&lt;courtcase:panel&gt;
    &lt;courtcase:judges&gt;
        &lt;person:judge&gt;Perram&lt;/person:judge&gt; J
    &lt;/courtcase:judges&gt;
&lt;courtcase:panel&gt;

           </codeblock>
       </example>
                    <note> Capture PCData for judges markup as is in New Lexis and always create <targetxml>person:judge</targetxml> as an immediate
                        child of <targetxml>courtcase:judges</targetxml> or <targetxml>courtcase:opinionby</targetxml>. For example: if there is a
                        Rosetta <sourcexml>case:judges</sourcexml> element and it just contains text then conversion need to create
                            <targetxml>person:judge</targetxml> as a child of <targetxml>courtcase:judges</targetxml> or
                            <targetxml>courtcase:opinionby</targetxml>.</note>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>

&lt;case:judges&gt;
    Glazebrook, O&amp;#x2019;Regan and Baragwanath JJ
&lt;/case:judges&gt;

           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>

&lt;courtcase:opinionby&gt;
    &lt;person:judge&gt;Glazebrook, O&amp;#x2019;Regan and Baragwanath JJ&lt;/person:judge&gt;
&lt;/courtcase:opinionby&gt;

OR

&lt;courtcase:panel&gt;
    &lt;courtcase:judges&gt;
        &lt;person:judge&gt;Glazebrook, O&amp;#x2019;Regan and Baragwanath JJ&lt;/person:judge&gt;
    &lt;/courtcase:judges&gt;
&lt;courtcase:panel&gt;

           </codeblock>
       </example>
                    <note>When <sourcexml>emph</sourcexml> is inside <sourcexml>case:judges</sourcexml> and <sourcexml>@typestyle="smcaps"</sourcexml>
                        then conversion need to omit tag (<sourcexml>emph</sourcexml>) and retain content.</note>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>

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


           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>


&lt;courtcase:opinion&gt;
  &lt;courtcase:opinionby&gt;
    JUDGE M 
    c
    ELREA. 
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinion&gt;

           </codeblock>
       </example>
                    <note>Connecting punctuation and newlines preceding judges can be accomodated in the judges markup.</note>
                    <note>A colon is inserted before case:judges in rosetta xml. In rosetta this colon is used as a separator, that will be handled in
                        presentation spec for New Lexis for all cases.</note>
        <example>
            <title>Source XML based on AU content</title>
            <codeblock>

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


           </codeblock>
       </example>
       <example>
           <title>Target XML</title>
           <codeblock>


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

           </codeblock>
       </example>
        <section>
            <title>Changes</title>
            <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.judges.dita  -->
	<xsl:message>Compcase_case.judges.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:judge">

		<!--  Original Target XPath:  person:judge   -->
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>

	</xsl:template>

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