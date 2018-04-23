<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
    <title>case:parallelcite <lnpid>id-ST05-28437</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>case:parallelcite</sourcexml>
                becomes <targetxml>/compcase:compositecourtcase/compcase:head/compcase:caseinfo/ref:citations/ref:cite4thisresource/@citetype="parallel"</targetxml>
            </p>
        </section>


        <example>
            <title>Source XML based on UK content</title>
            <codeblock>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="UKHL"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2001"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="23"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2001] UKHL 23&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;

       </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;compcase:caseinfo&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="UKHL"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2001"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="23"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;
                    [2001] UKHL 23
                &lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/compcase:caseinfo&gt;

       </codeblock>
        </example>

        <section>
            <p> When <sourcexml>ci:cite</sourcexml> element occurs more than once within
                    <sourcexml>case:parallelcite</sourcexml> then conversion should create
                    <sourcexml>ref:cite4thisresource/@citetype="parallel"</sourcexml> for each
                    <targetxml>lnci:cite</targetxml> element. Data between the two consecutive
                    <targetxml>lnci:cite</targetxml>, i.e, (, | ; | and) should be captured in
                    <targetxml>connector</targetxml> element. </p>
        </section>


        <example>
            <title>Source XML based on UK content</title>
            <codeblock>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="EWHCTCC" /&gt; 
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2004" /&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="2642" /&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2004] EWHC 2642 (TCC)&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
        , 
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="EWCACIV" /&gt; 
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2005" /&gt; 
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="962" /&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2005] EWCA Civ 962&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;

       </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;compcase:caseinfo&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="EWHCTCC" /&gt; 
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2004" /&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="2642" /&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2004] EWHC 2642 (TCC)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
        &lt;connector&gt;, &lt;/connector&gt;
        &lt;ref:cite4thisresource citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="EWCACIV" /&gt; 
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2005" /&gt; 
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="962" /&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2005] EWCA Civ 962&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/compcase:caseinfo&gt;

       </codeblock>
        </example>

        <section>
            <p> Text (PCDATA) occuring in between <sourcexml>case:parallelcite</sourcexml> and
                    <sourcexml>ci:cite</sourcexml> should be moved inside a
                    <targetxml>connector</targetxml> element and put in between multiple
                    <targetxml>ref:cite4thisresource</targetxml> elements if needed. </p>
        </section>

        <example>
            <title>Source XML based on UK content</title>
            <codeblock>

&lt;case:parallelcite&gt;
    Also reported:
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="KB" /&gt;
                &lt;ci:volume num="1" /&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1922" /&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="123" /&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;[1922] 1 KB 123&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    ; 91 LJKB 355; 
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="LT" /&gt;
                &lt;ci:volume num="126" /&gt;
                &lt;ci:page num="401" /&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;126 LT 401&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    ; 37 TLR 757
&lt;/case:parallelcite&gt;

    </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;ref:citations&gt;
    &lt;connector&gt;Also reported:&lt;/connector&gt;
    &lt;ref:cite4thisresource citetype="parallel"&gt;
        &lt;lnci:cite searchtype="CASE-REF"&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="KB" /&gt;
                    &lt;lnci:volume num="1" /&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1922" /&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="123" /&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1922] 1 KB 123&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;connector&gt;; 91 LJKB 355; &lt;/connector&gt;
    &lt;ref:cite4thisresource citetype="parallel"&gt;
        &lt;lnci:cite searchtype="CASE-REF"&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="LT" /&gt;
                    &lt;lnci:volume num="126" /&gt;
                    &lt;lnci:page num="401" /&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;126 LT 401&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;connector&gt;; 37 TLR 757&lt;/connector&gt;
&lt;/ref:citations&gt;

    </codeblock>
        </example>

        <section>
            <p>
                <b>Handling of PCDATA within <sourcexml>case:parallelcite</sourcexml> when there is
                    no citation markup wihin it.</b> Please note that in the below sample,
                    <sourcexml>case:parallelcite</sourcexml> does not have citation markups
                (ci:cite, ci:content) and it is mapped using
                    <targetxml>lnci:cite/lnci:content</targetxml>. </p>
        </section>

        <example>
            <title>Source XML based on UK </title>
            <codeblock>

&lt;case:parallelcite&gt;(CASE C-213/89)&lt;/case:parallelcite&gt;

    </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="parallel"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:content&gt;
                (CASE C-213/89)
            &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

    </codeblock>
        </example>


        <note>When <sourcexml>case:reportercite</sourcexml> and
                <sourcexml>case:parallelcite</sourcexml> elements occurs as sibling then
            conversion should create seperate <sourcexml>ref:citations</sourcexml> for both
                <sourcexml>case:reportercite</sourcexml> and
                <sourcexml>case:parallelcite</sourcexml> in target xml</note>

        <example>
            <title>Source XML based on UK content</title>
            <codeblock>
    
    &lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="ALLERREP"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1921"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="515"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1921] All ER Rep 515&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
&lt;case:parallelcite&gt;Also reported:
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="KB"/&gt;
                        &lt;ci:volume num="1"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1922"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="123"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;[1922] 1 KB 123&lt;/ci:content&gt;
        &lt;/ci:cite&gt;; 91 LJKB 355; 
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="LT"/&gt;
                        &lt;ci:volume num="126"/&gt;
                            &lt;ci:page num="401"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;126 LT 401&lt;/ci:content&gt;
        &lt;/ci:cite&gt;;
    37 TLR 757&lt;/case:parallelcite&gt;
&lt;case:parallelcite&gt;Also reported: 
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="KB"/&gt;
                &lt;ci:volume num="1"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1922"/&gt;
                    &lt;/ci:edition&gt;
                &lt;ci:page num="343"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;[1922] 1 KB 343&lt;/ci:content&gt;
    &lt;/ci:cite&gt;; 91 LJKB 355; 
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="LT"/&gt;
                &lt;ci:volume num="126"/&gt;
                &lt;ci:page num="401"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;126 LT 401&lt;/ci:content&gt;
    &lt;/ci:cite&gt;; 38 TLR 44
&lt;/case:parallelcite&gt;
              
               
           </codeblock>
            <title>Target XML</title>
            <codeblock>
               
  &lt;ref:citations&gt;
  &lt;ref:cite4thisresource citetype="reporter"&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="ALLERREP"/&gt;
          &lt;lnci:edition&gt;
            &lt;lnci:date year="1921"/&gt;
          &lt;/lnci:edition&gt;
          &lt;lnci:page num="515"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[1921] All ER Rep 515&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
&lt;ref:citations&gt;
  &lt;connector&gt;Also reported:&lt;/connector&gt;
  &lt;ref:cite4thisresource citetype="parallel"&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="KB"/&gt;
          &lt;lnci:volume num="1"&gt; &lt;/lnci:volume&gt;
          &lt;lnci:edition&gt;
            &lt;lnci:date year="1922"/&gt;
          &lt;/lnci:edition&gt;
          &lt;lnci:page num="123"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[1922] 1 KB 123&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
  &lt;connector&gt;; 91 LJKB 355; &lt;/connector&gt;
  &lt;ref:cite4thisresource citetype="parallel"&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="LT"/&gt;
          &lt;lnci:volume num="126"&gt; &lt;/lnci:volume&gt;
          &lt;lnci:page num="401"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;126 LT 401&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
  &lt;connector&gt;; 37 TLR 757&lt;/connector&gt;
  &lt;connector&gt;Also reported: &lt;/connector&gt;
  &lt;ref:cite4thisresource citetype="parallel"&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="KB"/&gt;
          &lt;lnci:volume num="1"&gt; &lt;/lnci:volume&gt;
          &lt;lnci:edition&gt;
            &lt;lnci:date year="1922"/&gt;
          &lt;/lnci:edition&gt;
          &lt;lnci:page num="343"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[1922] 1 KB 343&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
  &lt;connector&gt;; 91 LJKB 355; &lt;/connector&gt;
  &lt;ref:cite4thisresource citetype="parallel"&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="LT"/&gt;
          &lt;lnci:volume num="126"&gt; &lt;/lnci:volume&gt;
          &lt;lnci:page num="401"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;126 LT 401&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
  &lt;connector&gt;; 38 TLR 44&lt;/connector&gt;
&lt;/ref:citations&gt;

               
           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.parallelcite.dita  -->
	<xsl:message>Compcase_case.parallelcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:parallelcite">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head/compcase:caseinfo/ref:citations/ref:cite4thisresource/@citetype="parallel"   -->
		<compcase:compositecourtcase xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:head>
				<compcase:caseinfo>
					<ref:citations>
						<ref:cite4thisresource>
							<xsl:attribute name="citetype">
								<xsl:text>parallel</xsl:text>
							</xsl:attribute>
						</ref:cite4thisresource>
					</ref:citations>
				</compcase:caseinfo>
			</compcase:head>
		</compcase:compositecourtcase>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ref:cite4thisresource/@citetype=&#34;parallel&#34;">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="case:reportercite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="ref:citations">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>