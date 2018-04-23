<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.parallelcite">
  <title>case:parallelcite <lnpid>id-UK04-27626</lnpid></title>
  <body>
    <p>The element <sourcexml>case:info/case:parallelcite</sourcexml> becomes
        <targetxml>courtorder:head/ref:citations/ref:parallelcite/@citetype="parallel"</targetxml>.
      The source attribute <sourcexml>case:parallelcite/@searchtype</sourcexml> is dropped.
      Conversion of the child elements and their subelements is described below. </p>
    <ul>
      <li><sourcexml>ci:cite</sourcexml> becomes <targetxml>lnci:cite</targetxml>, with the attributes of <sourcexml>ci:cite</sourcexml> mapped directly one-to-one to the attributes of the same name in <targetxml>lnci:cite</targetxml>.</li>
      <li><sourcexml>ci:cite/ci:case</sourcexml> becomes <targetxml>lnci:cite/lnci:courtorder</targetxml>, with the attributes of <sourcexml>ci:case</sourcexml> mapped directly one-to-one to the attributes of the same name in <targetxml>lnci:courtorder</targetxml>.</li>
      <li><sourcexml>ci:cite/ci:case/ci:caseref</sourcexml> becomes <targetxml>lnci:cite/lnci:courtorder/lnci:courtorderref</targetxml>, with the attributes of <sourcexml>ci:caseref</sourcexml> mapped directly one-to-one to the attributes of the same name in <targetxml>lnci:courtorderref</targetxml>. Then, all child elements (and their attributes) of <sourcexml>ci:caseref</sourcexml> are mapped one-to-one to child elements of <targetxml>lnci:courtorderref</targetxml>, except the "ci:" namespace in the source is changed to the "lnci:" namespace in the target.</li>
      <li><sourcexml>ci:cite/ci:content</sourcexml> becomes <targetxml>lnci:cite/lnci:content</targetxml>, with the attributes of <sourcexml>ci:content</sourcexml> mapped directly one-to-one to the attributes of the same name in <targetxml>lnci:content</targetxml>.</li>
      <li><sourcexml>ci:cite/ci:content/citefragment</sourcexml> is a container and its content also becomes <targetxml>lnci:cite/lnci:content</targetxml>. That is, the <sourcexml>citefragment</sourcexml> start-tag and end-tag are dropped and its PCDATA content becomes part of <targetxml>lnci:content</targetxml>. The attribute <sourcexml>citefragment/@searchtype</sourcexml> is dropped.</li>
    </ul>
    
    <p>If <sourcexml>case:parallelcite</sourcexml> contains PCDATA directly, without a child
        <sourcexml>ci:cite</sourcexml>, then an <targetxml>lnci:cite</targetxml> and child
        <targetxml>lnci:content</targetxml> are created and the PCDATA is placed within the created
        <targetxml>lnci:content</targetxml> element. Therefore, in this scenario,
        <sourcexml>case:info/case:parallelcite</sourcexml> becomes
        <targetxml>courtorder:head/ref:citations/ref:parallelcite/@citetype="parallel"/lnci:cite/lnci:content</targetxml>.</p>
    
    <section>
      <title>Source XML showing <sourcexml>case:parallelcite</sourcexml> containing a child <sourcexml>ci:cite</sourcexml> element.</title>
      <codeblock>
&lt;case:info&gt;
    &lt;!--...--&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite&gt;
            &lt;ci:content&gt;(Chancery 1/90)&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;
      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>
&lt;courtorder:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:content&gt;(Chancery 2/90)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
    &lt;/ref:citations&gt;
&lt;/courtorder:head&gt;
        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing <sourcexml>case:parallelcite</sourcexml> containing simple PCDATA with no child <sourcexml>ci:cite</sourcexml> element.</title>
      <codeblock>
&lt;case:info&gt;
    &lt;!--...--&gt;
    &lt;case:parallelcite&gt;(Chancery 2/93)&lt;/case:parallelcite&gt;
&lt;/case:info&gt;
      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>
&lt;courtorder:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:content&gt;(Chancery 2/93)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
    &lt;/ref:citations&gt;
&lt;/courtorder:head&gt;
        </codeblock>
    </section>
    
    <section>
      <title>Changes</title>
      <p>2015-09-30: <ph id="change_20150930_PS">Changed target of conversion instruction to be
            <targetxml>ref:parallelcite</targetxml>, and updated examples. (Previous taget was
            <targetxml>ref:cite4thisresource</targetxml>.)</ph></p>
      <p>2013-10-25: <ph id="change_20131025_JCG">No substantive change, just a correction of a typographic error: fixed spelling of "parallel" (was misspelt as "paralell" in several places).</ph></p>
      <p>2013-05-28: <ph id="change_20130528_JCG">Updated instruction and added an example to handle a new scenario in the redelivered content where <sourcexml>ci:cite</sourcexml> appears as a chlid element.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.parallelcite.dita  -->
	<!--<xsl:message>UK04_CourtOrder_case.parallelcite.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:info/case:parallelcite">
		<xsl:choose>
			<xsl:when test="ci:cite">
				<ref:citations>
					<ref:parallelcite citetype='parallel'>
						<xsl:apply-templates select="@*|node()"/>
					</ref:parallelcite>
				</ref:citations>
			</xsl:when>
			<xsl:otherwise>
				<ref:citations>
					<ref:parallelcite citetype='parallel'>
						<lnci:cite>
							<lnci:content>
						<xsl:apply-templates select="@*|node()"/>
							</lnci:content>
						</lnci:cite>
					</ref:parallelcite>
				</ref:citations>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

	<xsl:template match="case:parallelcite/@searchtype"/>
	<xsl:template match="case:parallelcite/ci:cite" priority="50">
		<lnci:cite>
			<xsl:apply-templates select="@*|node()"/>
		</lnci:cite>
	</xsl:template>
	
    <xsl:template match="case:parallelcite/ci:cite/ci:case" priority="50">
		<lnci:courtorder>
			<xsl:apply-templates select="@*|node()"/>
		</lnci:courtorder>		
	</xsl:template>
	
    <xsl:template match="case:parallelcite/ci:cite/ci:case/ci:caseref" priority="50">
		<lnci:courtorderref>
			<xsl:apply-templates select="@*|node()"/>
		</lnci:courtorderref>
	</xsl:template>
	
    <xsl:template match="case:parallelcite/ci:cite/ci:content" priority="50">
		<lnci:content>
			<xsl:apply-templates select="@*|node()"/>
		</lnci:content>
	</xsl:template>
	
    <xsl:template match="case:parallelcite/ci:cite/ci:content/citefragment" priority="50">
		<xsl:apply-templates select="@*|node()"/>
	</xsl:template>
	
</xsl:stylesheet>