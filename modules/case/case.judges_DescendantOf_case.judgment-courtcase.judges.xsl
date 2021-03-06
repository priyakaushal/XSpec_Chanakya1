<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.judges_DescendantOf_case.info-courtcase.judges">
  <title>case:judges[ancestor::case:judgment] <lnpid>id-ST01-26236</lnpid></title>
  <body>
    <section id="mapping">
      <p><sourcexml>/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges</sourcexml> becomes
        <targetxml>courtcase:body/courtcase:opinion/courtcase:opinionby/person:judge</targetxml>.
        The children of <sourcexml>case:judges</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:judge</sourcexml> becomes <targetxml>person:judge</targetxml></li>
          <li>Any <sourcexml>nl</sourcexml> elements inside <sourcexml>case:judges</sourcexml>
            should be suppressed.</li>
         </ul>  
        <note><ul> <li>Always create <targetxml>person:judge</targetxml> as an immediate child of
          <targetxml>courtcase:judges</targetxml>. For example: if there is a Rosetta
          <sourcexml>case:judges</sourcexml> element and it just contains text, create
          <targetxml>person:judge</targetxml> as a child of
          <targetxml>courtcase:judges</targetxml>.</li>
          
          <li>When <sourcexml>emph</sourcexml> is inside <sourcexml>case:judges</sourcexml> and
            <sourcexml>@typestyle="smcaps"</sourcexml>, omit  (<sourcexml>emph</sourcexml>) and retain
            the content.</li>
          <li>Connecting punctuation and newlines preceding judges
            can be accomodated in the judges markup.</li></ul>  </note>
        </p>
    </section>
    <section>
      <title>Example 1 - <sourcexml>case:judges</sourcexml> with text</title>
      
                    <pre>

&lt;case:judgment&gt;
	&lt;case:courtinfo&gt;
		&lt;case:judges&gt;JUDGE M c ELREA.&lt;/case:judges&gt;
	&lt;/case:courtinfo&gt;
...
&lt;/case:judgment&gt;
                
            </pre>
                    <b>Becomes</b>
                    <pre>

&lt;courtcase:opinion&gt;
	&lt;courtcase:opinionby&gt;
		&lt;person:judge&gt;JUDGE M c ELREA.&lt;/person:judge&gt;
	&lt;/courtcase:opinion&gt;
&lt;/courtcase:opinion&gt;
                
            </pre>
    </section>
    <section>
      <title>Example 2 - <sourcexml>case:judges/case:judge</sourcexml></title>
      <pre xml:space="preserve">
        
&lt;case:judgment&gt;
	&lt;case:courtinfo&gt;
     &lt;case:judges&gt;
        &lt;case:judge&gt;RICHMOND J.&lt;/case:judge&gt;
     &lt;/case:judges&gt;
   &lt;/case:courtinfo&gt;
...
&lt;/case:judgment&gt;
            
<b>Becomes</b>

  

&lt;courtcase:opinion&gt;
   &lt;courtcase:opinionby&gt;
      &lt;person:judge&gt;RICHMOND J.&lt;/person:judge&gt;
   &lt;/courtcase:opinionby&gt;
&lt;/courtcase:opinion&gt;
  
</pre>
    </section>
    <!--section id="changes">
      <title>Changes</title>
		  <p>2014-04-08 <ph id="change_20140408_brt"></ph></p>
    </section-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.judges_DescendantOf_case.judgment-courtcase.judges.dita  -->
	<xsl:message>case.judges_DescendantOf_case.judgment-courtcase.judges.xsl requires manual development!</xsl:message> 

	<xsl:template match="/case:body/case:content/case:judgments/case:judgment/case:courtinfo/case:judges">

		<!--  Original Target XPath:  courtcase:body/courtcase:opinion/courtcase:opinionby/person:judge   -->
		<courtcase:body>
			<courtcase:opinion>
				<courtcase:opinionby>
					<person:judge>
						<xsl:apply-templates select="@* | node()"/>
					</person:judge>
				</courtcase:opinionby>
			</courtcase:opinion>
		</courtcase:body>

	</xsl:template>

	<xsl:template match="case:judges">

		<!--  Original Target XPath:  person:judge   -->
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>

	</xsl:template>

	<xsl:template match="case:judge">

		<!--  Original Target XPath:  person:judge   -->
		<person:judge>
			<xsl:apply-templates select="@* | node()"/>
		</person:judge>

	</xsl:template>

	<xsl:template match="nl">

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

	<xsl:template match="case:judges/case:judge">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>