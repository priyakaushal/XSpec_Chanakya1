<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:ci="http://www.lexis-nexis.com/ci" 
	
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita ci case case2">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
		<title>parallelcite <lnpid>id-UK05-27816</lnpid></title>
		<body>
			<section>
				<p>This project requires that a search on a citation gets both results of the citator document and the case it
					refers to. In order to accomplish this, each citation in <sourcexml>case:parallelcite/ci:cite</sourcexml> must
					be duplicated to both <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
						<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>. This markup enables
					JCite to create both a Cite Definition (in ref:cite4thisresource) and a Cite Reference (in cttr:citations) for
					each citation, which enables a search to pick up both the case summary document and the citator document in
					order to meet the “get both documents” business requirement.</p>
				<note>The LBU has replaced <sourcexml>case:reportercite</sourcexml> markup with
						<sourcexml>case:parallelcite</sourcexml> in all the documents.</note>
				<ul>
					<li>
						<sourcexml>case:parallelcite</sourcexml> becomes <targetxml>cttr:caseinfo/cttr:citations</targetxml> with
						child elements as described below: <ul>
							<li><sourcexml>ci:cite</sourcexml> becomes <targetxml>lnci:cite</targetxml>, and the children processed as
								described under General Markup. </li>
						</ul>
					</li>
					<li>
						<sourcexml>case:parallelcite</sourcexml> also becomes <targetxml>cttr:caseinfo/ref:citations</targetxml>
						with child elements as described below: <ul>
							<li>
								<sourcexml>case:parallelcite/ci:cite</sourcexml> maps to
									<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>, and the children
								processed as described under General Markup. <note>Note that text (PCDATA) occuring inside
										<sourcexml>case:parallelcite</sourcexml> that is not in <sourcexml>ci:cite</sourcexml> elements
									should be moved inside a <targetxml>connector</targetxml> element and put in between multiple
										<targetxml>ref:cite4thisresource</targetxml> elements. However, if the occuring PCDATA consists of
											<u><b>only</b></u> space characters, a <targetxml>connector</targetxml> containing only a space or
									spaces should not be created. Please see the below example for more details. </note><note>Duplicate
									citations cannot have the same IDs or the document becomes invalid. To avoid this validation
									issue,append the IDs for the citations in ref:citations/ref:cite4thisresource/lnci:cite with extra
									text to make them unique.</note>
							</li>
						</ul></li>

				</ul>
				<p>Example <sourcexml>case:parallelcite</sourcexml> with one <sourcexml>ci:cite</sourcexml> child</p>
				<pre>

&lt;case:info&gt;
    ...
    &lt;case:parallelcite&gt; (1877) 
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="LT"/&gt;
                    &lt;ci:volume num="37"/&gt;
                    &lt;ci:page num="488"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;37 LT 488&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
    ...
&lt;/case:info&gt;

<b>Becomes</b>

&lt;cttr:caseinfo&gt;
 &lt;cttr:citations&gt;
 (1877)&lt;ref:cite4thisresource&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="LT"/&gt;
                        &lt;lnci:volume num="37"/&gt; 
                        &lt;lnci:page num="488"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;37 LT 488&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
..........
    &lt;ref:citations&gt;
        &lt;connector&gt;(1877)&lt;/connector&gt;
        &lt;ref:cite4thisresource&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="LT"/&gt;
                        &lt;lnci:volume num="37"/&gt; 
                        &lt;lnci:page num="488"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;37 LT 488&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/cttr:caseinfo&gt;

          </pre>
				<p>Example <sourcexml>case:parallelcite</sourcexml> with more than one <sourcexml>ci:cite</sourcexml> child</p>
				<pre>

&lt;case:info&gt;
  &lt;case:parallelcite&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref&gt;
          &lt;ci:reporter value="CH"/&gt;
          &lt;ci:edition&gt;
            &lt;ci:date year="1974"/&gt;
          &lt;/ci:edition&gt;
          &lt;ci:page num="467"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;[1974] Ch 467&lt;/ci:content&gt;
      &lt;/ci:cite&gt;, 
      &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
          &lt;ci:caseref&gt;
            &lt;ci:reporter value="ALLER"/&gt;
            &lt;ci:volume num="3"/&gt;
            &lt;ci:edition&gt;
              &lt;ci:date year="1974"/&gt;
            &lt;/ci:edition&gt;
            &lt;ci:page num="609"/&gt;
          &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;[1974] 3 All ER 609&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
         &lt;ci:cite searchtype="CASE-REF"&gt;
          &lt;ci:case&gt;
            &lt;ci:caseref&gt;
              &lt;ci:reporter value="EG"/&gt;
              &lt;ci:volume num="232"/&gt;
              &lt;ci:page num="195"/&gt;
            &lt;/ci:caseref&gt;
          &lt;/ci:case&gt;
          &lt;ci:content&gt;232 Estates Gazette 195&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/case:parallelcite&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;cttr:caseinfo&gt; 
&lt;cttr:citations&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="CH"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1974"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="467"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1974] Ch 467&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;,
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="ALLER"/&gt;
            &lt;lnci:volume num="3"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1974"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="609"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1974] 3 All ER 609&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="EG"/&gt;
            &lt;lnci:volume num="232"/&gt;
            &lt;lnci:page num="195"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;232 Estates Gazette 195&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
..........
  &lt;ref:citations&gt;
    &lt;ref:cite4thisresource&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="CH"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1974"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="467"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1974] Ch 467&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;connector&gt;,&lt;/connector&gt;
    &lt;ref:cite4thisresource&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="ALLER"/&gt;
            &lt;lnci:volume num="3"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1974"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="609"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1974] 3 All ER 609&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
    &lt;ref:cite4thisresource&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
            &lt;lnci:reporter value="EG"/&gt;
            &lt;lnci:volume num="232"/&gt;
            &lt;lnci:page num="195"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;232 Estates Gazette 195&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
&lt;/cttr:caseinfo&gt;

</pre>
			</section>
			<note>If <sourcexml>case:paralellcite</sourcexml> contains PCDATA directly, without a child
					<sourcexml>ci:cite</sourcexml>, then an <targetxml>lnci:cite</targetxml> and child
					<targetxml>lnci:content</targetxml> are created and the PCDATA is placed within the created
					<targetxml>lnci:content</targetxml> element. Therefore, in this scenario,
					<sourcexml>case:info/case:paralellcite</sourcexml> becomes
					<targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml> and
					<targetxml>cttr:caseinfo/cttr:citations/lnci:cite/lnci:content</targetxml>.</note>
			<section>
				<title>Source XML showing <sourcexml>case:paralellcite</sourcexml> containing simple PCDATA with no child
						<sourcexml>ci:cite</sourcexml> element.</title>
				<codeblock> &lt;case:info&gt; &lt;!-- ... --&gt; &lt;case:parallelcite&gt;[1991] ECR I-1799, [1991] 2 CMLR
					737&lt;/case:parallelcite&gt; &lt;!-- ... --&gt; &lt;/case:info&gt; </codeblock>
			</section>
			<section>
				<title>Target XML</title>
				<codeblock> &lt;cttr:caseinfo&gt; &lt;cttr:citations&gt; &lt;lnci:cite&gt; &lt;lnci:content&gt;[1991] ECR
					I-1799, [1991] 2 CMLR 737&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/cttr:citations&gt; &lt;!-- ... --&gt;
					&lt;ref:citations&gt; &lt;ref:cite4thisresource&gt; &lt;lnci:cite&gt; &lt;lnci:content&gt;[1991] ECR I-1799,
					[1991] 2 CMLR 737&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
					&lt;/ref:citations&gt; &lt;!-- ... --&gt; &lt;/cttr:caseinfo&gt; </codeblock>
			</section>
			<section>
				<title>Changes</title>
				<p>2013-11-14: <ph id="change_20131114_brt">Added instructions and examples for duplicating the citation in
							<targetxml>cttr:caseinfo/cttr:citations</targetxml>. </ph></p>
				<p>2013-08-30: <ph id="change_20130830_raj">Removed instruction for creating
							<targetxml>ref:cite4thisresource[@citetype="parallel"]</targetxml>. Added markup example showing
							<sourcexml>case:parallelcite</sourcexml> with one and more than one <sourcexml>ci:cite</sourcexml>
						child.</ph></p>
				<p>2013-07-18: <ph id="change_20130718_raj">Added instructions for not creating <targetxml>connector</targetxml>
						elements when only space characters occur in between <sourcexml>case:parallelcite</sourcexml> and
							<sourcexml>ci:cite</sourcexml> elements.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\parallelcite.dita  -->

	<xsl:template match="text()[parent::case:parallelcite or parent::case:reportercite or parent::case2:parallelcite or parent::case2:reportercite ]" 
		mode="ref.citations">
		<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:value-of select="."/>
		</connector>
	</xsl:template>
	
	<xsl:template match="text()" mode="ref.citations"/>
	
	<xsl:template match="text()[not(preceding-sibling::*)][parent::case:parallelcite] | text()[not(preceding-sibling::*)][parent::case2:parallelcite]">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="case:parallelcite | case2:parallelcite | case:reportercite | case2:reportercite"
		mode="cttr.citations">
		<xsl:for-each select="node()"><!--  -->
			<xsl:apply-templates select=".">
				<xsl:with-param name="increment-caserefid" select="'yes'" tunnel="yes"/>
			</xsl:apply-templates>
		</xsl:for-each>            
	</xsl:template>   
	
	<!-- "Note: The LBU has replaced case:reportercite markup with case:parallelcite in all the documents. "-->
	
	<!--  Original Target XPath:  cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content   -->
	<xsl:template match="case:parallelcite | case2:parallelcite | case:reportercite | case2:reportercite"
		mode="ref.citations">
		<xsl:apply-templates select="text()" mode="ref.citations"/>		
			<xsl:for-each select="ci:cite">
				<ref:cite4thisresource>
					<xsl:apply-templates select=".">
						<xsl:with-param name="increment-caserefid" select="'yes'" tunnel="yes"/>
					</xsl:apply-templates>
				</ref:cite4thisresource>
			</xsl:for-each>            
	</xsl:template>   
	
	
</xsl:stylesheet>
