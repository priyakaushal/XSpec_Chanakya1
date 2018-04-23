<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote">
    <title>case:headnote <lnpid>id-AU13-20433</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:headnote</sourcexml> becomes <targetxml>
                        compcase:compositecourtcase/compcase:head</targetxml>.</li>
            </ul>
        </section>
        <example>
            <title>Source: <sourcexml>case:headnote</sourcexml></title>
            
            <codeblock>
             
&lt;case:headnote&gt;
    ...
&lt;/case:headnote&gt;


         </codeblock>
     </example>
        
        
        <example>
            <title>Target: <sourcexml>compcase:head</sourcexml></title>
            
            <codeblock>
             

&lt;compcase:head&gt;
    ...
&lt;/compcase:head&gt;


         </codeblock>
     </example>        
        <section>
            <title>case:headnote/footnotegrp and case:headnote/page</title>
            <p>If <sourcexml>footnotegrp</sourcexml> occurs as a direct child of
                    <sourcexml>case:headnote</sourcexml> then the conversion should append this
                element as children of nearest element containing bodytext.</p>
            
            <p>If <sourcexml>page</sourcexml> occurs as a direct child of
                    <sourcexml>case:headnote</sourcexml> then the conversion should append this
                element as children of nearest element.</p>
            
            <p>The resulting conversion should maintain a physical order with the existing document content.</p>
        </section>
        <example>
            <title>Source: <sourcexml>case:headnote/footnotegrp and
                case:headnote/page</sourcexml></title>
            
            <codeblock>
             
&lt;case:body&gt;
  &lt;case:headnote&gt;
    ...
    &lt;case:factsummary&gt;
        &lt;l&gt;
          &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;&amp;amp;hellip;&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
              &lt;text&gt;&lt;/text&gt;
            &lt;/p&gt;
          &lt;/li&gt;
          &lt;li&gt;
            &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(d)&lt;/emph&gt;&lt;/lilabel&gt;
            &lt;p&gt;
              &lt;text&gt;in the opinion of the Commission, the death of the veteran was due to an accident that would not 
                 have occurred, or to a disease that would not have been contracted, but for his or her having rendered 
                 eligible war service or but for changes in the veteran's environment consequent upon his or her having
                 rendered eligible war service &amp;amp;hellip;&amp;amp;rdquo;&lt;/text&gt;
            &lt;/p&gt;
          &lt;/li&gt;
        &lt;/l&gt;
        &lt;p&gt;&lt;text&gt;Counsel for W relied upon dictionary definitions of &amp;amp;ldquo;consequent upon&amp;amp;rdquo; to mean 
            &amp;amp;ldquo;following as a result&amp;amp;rdquo; and &amp;amp;ldquo;following logically&amp;amp;rdquo;.&lt;/text&gt;&lt;/p&gt;
    &lt;/case:factsummary&gt;
        &lt;footnotegrp&gt;
         &lt;footnote fntoken="2011-80-NSWLR-486.fn_a" fnrtokens="2011-80-NSWLR-486.fnr_a"&gt;
          &lt;fnlabel&gt;*&lt;/fnlabel&gt;
          &lt;fnbody&gt;
           &lt;p&gt;
            &lt;text&gt;[EDITORIAL NOTE: An application for special leave to appeal to the High Court was
             refused.]&lt;/text&gt;
           &lt;/p&gt;
          &lt;/fnbody&gt;
         &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
        &lt;page count="487" reporter="NSWLR" text="(2011) 80 NSWLR 486 at " subdoc="true"/&gt;
   &lt;case:decisionsummary&gt;
    &lt;p&gt;
     &lt;text&gt;...             
             
         </codeblock>
        </example>
        
        
        <example>
            <title>Target: <sourcexml>compcase:head/casesum:summaries</sourcexml> with
                    <targetxml>footnotegroup</targetxml> and <targetxml>ref:page</targetxml></title>
            
            <codeblock>
             
&lt;compcase:head&gt;
   ...
 &lt;casesum:summaries&gt;
  &lt;casesum:editorialsummary&gt;
    &lt;p&gt;
      &lt;list&gt;
      &lt;listitem&gt;
        &lt;label&gt;&lt;emph typestyle="ro"&gt;&amp;amp;#x2026;&lt;/emph&gt;&lt;/label&gt;
        &lt;p&gt;
          &lt;text&gt;&lt;/text&gt;
        &lt;/p&gt;
      &lt;/listitem&gt;
      &lt;listitem&gt;
        &lt;label&gt;&lt;emph typestyle="ro"&gt;(d)&lt;/emph&gt;&lt;/label&gt;
        &lt;p&gt;
          &lt;text&gt;in the opinion of the Commission, the death of the veteran was due to an accident that would
             not have occurred, or to a disease that would not have been contracted, but for his or her having
            rendered eligible war service or but for changes in the veteran's environment consequent upon his 
            or her having rendered eligible war service &amp;amp;#x2026;&amp;amp;#x201D;&lt;/text&gt;
        &lt;/p&gt;
      &lt;/listitem&gt;
      &lt;/list&gt;
    &lt;/p&gt;
    
    &lt;p&gt;
      &lt;text&gt;Counsel for W relied upon dictionary definitions of &amp;amp;#x201C;consequent upon&amp;amp;#x201D; to 
            mean &amp;amp;#x201C;following as a result&amp;amp;#x201D; and &amp;amp;#x201C;following logically&amp;amp;#x201D;.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
             &lt;footnotegroup&gt;
               &lt;footnote&gt;
                 &lt;ref:anchor id="_2011-80-NSWLR-486.fn_a" /&gt; 
                 &lt;ref:returnreference&gt;
                    &lt;ref:locator anchoridref="_2011-80-NSWLR-486.fnr_a" anchortype="local" /&gt; 
                 &lt;/ref:returnreference&gt;
                 &lt;label&gt;*&lt;/label&gt; 
                 &lt;bodytext&gt;
                    &lt;p&gt;
                     &lt;text&gt;[EDITORIAL NOTE: An application for special leave to appeal to the High Court was refused.]&lt;/text&gt; 
                    &lt;/p&gt;
                 &lt;/bodytext&gt;
               &lt;/footnote&gt;
             &lt;/footnotegroup&gt;
        &lt;/text&gt;
    &lt;/p&gt;
     &lt;ref:page includeintoc="true" num="487" page-scheme="500067" page-scheme-type="reporter-series-code" /&gt; 
     &lt;/casesum:editorialsummary&gt;
     &lt;casesum:decisionsummary&gt;
           &lt;bodytext&gt;
             &lt;p&gt;...

         </codeblock>
        </example>
        <section>
            <title>Changes</title>  
            <p>2015-04-22: <ph id="change_20150422_ss-1">Added instruction and example for <sourcexml>footnotegroup and page</sourcexml> elements that
                occur as child of <sourcexml>case:headnote</sourcexml>.</ph></p> 
        </section> 
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU13_composite_cases\case.headnote.dita  -->
	<xsl:message>AU13_composite_cases_case.headnote.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:headnote">

		<!--  Original Target XPath:  compcase:compositecourtcase/compcase:head   -->
		<compcase:compositecourtcase xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:head>
				<xsl:apply-templates select="@* | node()"/>
			</compcase:head>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="compcase:head">

		<!--  Original Target XPath:  footnotegroup   -->
		<footnotegroup>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegroup>

	</xsl:template>

	<xsl:template match="footnotegrp">

		<!--  Original Target XPath:  footnotegroup   -->
		<footnotegroup>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegroup>

	</xsl:template>

	<xsl:template match="page">

		<!--  Original Target XPath:  footnotegroup   -->
		<footnotegroup>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegroup>

	</xsl:template>

	<xsl:template match="case:headnote/footnotegrp and&#xA;                case:headnote/page">

		<!--  Original Target XPath:  footnotegroup   -->
		<footnotegroup>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegroup>

	</xsl:template>

	<xsl:template match="compcase:head/casesum:summaries">

		<!--  Original Target XPath:  footnotegroup   -->
		<footnotegroup>
			<xsl:apply-templates select="@* | node()"/>
		</footnotegroup>

	</xsl:template>

	<xsl:template match="footnotegroup and page">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>