<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite">
    <title>case:reportercite <lnpid>id-MY10-18008</lnpid></title>
    <body>
        <section> This project requires that a search on a citation gets both results of the citator
            document and the case it refers to. In order to accomplish this, each citation in
                <sourcexml>case:reportercite/ci:cite</sourcexml> must be duplicated to both
                <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
                <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>.
            This markup enables JCite to create both a Cite Definition (in ref:cite4thisresource)
            and a Cite Reference (in cttr:citations) for each citation, which enables a search to
            pick up both the case summary document and the citator document in order to meet the
            “get both documents” business requirement. <note>Conversion should not create
                consecutive <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more
                consecutive sibling source elements map to <targetxml>caseinfo:caseinfo</targetxml>,
                data should be merged to a single <targetxml>caseinfo:caseinfo</targetxml> element
                unless this would hamper content ordering.</note><ul>
                <li>
                    <sourcexml>case:reportercite</sourcexml> becomes
                        <targetxml>cttr:caseinfo/cttr:citations</targetxml> with child elements as
                    described below: <ul>
                        <li><sourcexml>ci:cite</sourcexml> becomes <targetxml>lnci:cite</targetxml>,
                            and the children processed as described under General Markup. </li>
                    </ul>
                </li>
                <li>
                    <sourcexml>case:reportercite</sourcexml> also becomes
                        <targetxml>cttr:caseinfo/ref:citations</targetxml> with child elements as
                    described below: <ul>
                        <li> Create
                                <targetxml>caseinfo:caseinfo/ref:citations/ref:cite4thisresource</targetxml>
                            with attribute <targetxml>@citetype="reporter"</targetxml>. <note>Within
                                    <targetxml>ref:citations</targetxml>, note that text (PCDATA)
                                occuring inside <sourcexml>case:parallelcite</sourcexml> that is not
                                in <sourcexml>ci:cite</sourcexml> elements should be moved inside a
                                    <targetxml>connector</targetxml> element and put in between
                                multiple <targetxml>ref:cite4thisresource</targetxml> elements.
                                However, if the occuring PCDATA consists of <u><b>only</b></u> space
                                characters, a <targetxml>connector</targetxml> containing only a
                                space or spaces should not be created. Please see the below example
                                for more details. </note></li>
                        <li><sourcexml>ci:cite</sourcexml> becomes <targetxml>lnci:cite</targetxml>,
                            and the children processed as described under General Markup.
                        </li>
                    </ul>
                </li>
            </ul>
            <pre>
&lt;case:reportercite&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cr000001" spanref="cr000001-001"&gt;
                &lt;ci:reporter value="MLJ"/&gt;
                &lt;ci:volume num="3"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1988"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="107"/&gt;
            &lt;/ci:caseref&gt;
            &lt;ci:caseref ID="cr000002" spanref="cr000002-001"&gt;
                &lt;ci:reporter value="CLJ"/&gt;
                &lt;ci:volume num="2"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1988"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="144"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;&lt;citefragment searchtype="CASE-CITE-REF"&gt;&lt;ci:span
            spanid="cr000001-001"&gt;[1988] 3 MLJ 107&lt;/ci:span&gt;; &lt;ci:span
                spanid="cr000002-001"&gt;[1988] 2 CLJ
                144&lt;/ci:span&gt;&lt;/citefragment&gt;&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

<b>Becomes</b>
&lt;cttr:caseinfo&gt;
&lt;cttr:citations&gt;
  &lt;lnci:cite type="CASE-REF"&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="MLJ" /&gt;
                    &lt;lnci:volume num="3"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1988"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="107"/&gt;
                &lt;/lnci:caseref&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="CLJ"/&gt;
                    &lt;lnci:volume num="2"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1988"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="144"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1988] 3 MLJ 107; [1988] 2 CLJ 144&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
..........
&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite type="CASE-REF"&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="MLJ" /&gt;
                    &lt;lnci:volume num="3"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1988"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="107"/&gt;
                &lt;/lnci:caseref&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="CLJ"/&gt;
                    &lt;lnci:volume num="2"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1988"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="144"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1988] 3 MLJ 107; [1988] 2 CLJ 144&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

            </pre>
        </section>
        <!-- deleted section:
      
      If <sourcexml>case:reportercite/@searchtype</sourcexml> has a value of "BCNUM", this indicates that the case is unreported and additional
      markup should be added to <targetxml>courtcase:head</targetxml> 
      
      (taken from AU01 - CaseLaw)  -->
        <section>
            <title>Changes</title>
            <p>2014-01-09: <ph id="change_20140109_BRT">Deleted note regarding duplicate citation IDs, and deleted <targetxml>lnci:caseref/@ID</targetxml> from the target example.</ph></p>
            <p>2013-11-13: <ph id="change_20131113_BRT">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY10_Citator\case.reportercite.dita  -->
	<xsl:message>MY10_Citator_case.reportercite.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:reportercite/ci:cite">

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:reportercite">

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations   -->
		<cttr:caseinfo>
			<cttr:citations>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="case:parallelcite">

		<!--  Original Target XPath:  connector   -->
		<connector>
			<xsl:apply-templates select="@* | node()"/>
		</connector>

	</xsl:template>

</xsl:stylesheet>