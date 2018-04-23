<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>case:parallelcite <lnpid>id-IN04-38810</lnpid></title>
   <body>
      <section>
         <ul><li>
                    <sourcexml>case:parallelcite/ci:cite</sourcexml> is now mapped to two places:
                        <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
                        <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>,
                    see example. <note>LBU has in requirements that a search on a citation gets both
                        results of the citator document and the case it refers to. In order to
                        accomplish this, we need to map
                            <sourcexml>case:parallelcite/ci:cite</sourcexml> to
                            <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml> so
                        the JCite search should pick up both the case summary document and the
                        citator document for the case. This would allow the JCite to get what it
                        needs to meet the “get both documents” business requirement. </note>
                    <note>
                        <p>Duplicate citations cannot have the same IDs or the document becomes
                            invalid. To avoid this validation error, append the IDs for the
                            citations in ref:citations/ref:cite4thisresource/lnci:cite with extra
                            text (such as '_1') to make them unique.</p>
                    </note> The children can be converted as follows : <ul>
                        <li>
                            <sourcexml>ci:case</sourcexml> maps to <targetxml>lnci:case</targetxml>. </li>
                        <li>
                            <sourcexml>ci:content</sourcexml> maps to
                                <targetxml>lnci:content</targetxml>. </li>
                    </ul>
                    <pre>

&lt;case:info&gt;
    &lt;case:parallelcite&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="INBLR"/&gt;
                    &lt;ci:volume num="14"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1912"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="741"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;1912 &amp;#x0028;14&amp;#x0029; BLR 741&lt;/citefragment&gt;&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:parallelcite&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;cttr:caseinfo&gt; 
    &lt;cttr:citations&gt;
        &lt;lnci:cite type="case"&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="INBLR"/&gt;
                    &lt;lnci:volume num="14"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1912"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="741"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;1912 &amp;#x0028;14&amp;#x0029; BLR 741&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/cttr:citations&gt;
    ....
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource&gt;
            &lt;lnci:cite type="case"&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="INBLR"/&gt;
                        &lt;lnci:volume num="14"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="1912"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="741"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;1912 &amp;#x0028;14&amp;#x0029; BLR 741&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/cttr:caseinfo&gt;

</pre>
                </li></ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2016-08-18: <ph id="change_20160818_SS">Created.</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_case_parallelcite.dita  -->
	<xsl:message>IN04_case_parallelcite.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:parallelcite/ci:cite">

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="ci:case">

		<!--  Original Target XPath:  lnci:case   -->
		<lnci:case>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:case>

	</xsl:template>

	<xsl:template match="ci:content">

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

</xsl:stylesheet>