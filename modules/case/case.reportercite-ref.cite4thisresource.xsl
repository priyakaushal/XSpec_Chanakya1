<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.reportercite-ref.cite4thisresource">
  <title>case:reportercite <lnpid>id-ST01-26220</lnpid></title>
  <body>
    <section>
      <p>
                <sourcexml>case:reportercite</sourcexml> becomes
                    <targetxml>ref:citations</targetxml>. Create
                    <targetxml>ref:cite4thisresource</targetxml> with attribute
                    <targetxml>@citetype</targetxml> defines the type of citation, it should be set
                to "reporter". <note>For handling of citation markup; refer to <xref href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref> instructions under General Markup Section.</note>
                <note>Conversion should not create consecutive
                        <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more sibling
                    source elements map to <targetxml>caseinfo:caseinfo</targetxml>, data should be
                    merged to a single <targetxml>caseinfo:caseinfo</targetxml> element.</note>
            </p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:info&gt;
    &lt;case:reportercite&gt;
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="ALLER"/&gt;
                    &lt;ci:volume num="1"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1936"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="217"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1936] 1 All ER 217&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:reportercite&gt;
&lt;/case:info&gt;

    </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;caseinfo:caseinfo&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="ALLER"/&gt;
                        &lt;lnci:volume num="1"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="1936"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="217"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[1936] 1 All ER 217&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/caseinfo:caseinfo&gt;

    </codeblock>
    </example>

    <section>
      <p> Text (PCDATA) occuring in between <sourcexml>case:reportercite</sourcexml> and
          <sourcexml>ci:cite</sourcexml> should be moved inside a <targetxml>connector</targetxml>
        element and put in between multiple <targetxml>ref:cite4thisresource</targetxml> elements if
        needed. </p>
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="RPC" /&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1984" /&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="239" /&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1984] RPC 239&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    , [1981] FSR 33, 1980 Y No 323 (Transcript:Marten Meredith)
&lt;/case:reportercite&gt;


    </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="RPC" /&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1984" /&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="239" /&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;[1984] RPC 239&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
    &lt;connector&gt;, [1981] FSR 33, 1980 Y No 323 (Transcript:Marten Meredith)&lt;/connector&gt;
&lt;/ref:citations&gt;

    </codeblock>
    </example>
      <section>
          <p>If <sourcexml>case:reportercite/@searchtype</sourcexml> has a value of "BCNUM", this indicates that the case is unreported and additional
              markup should be added to <targetxml>courtcase:head</targetxml>: <ul>
                  <li>Create <targetxml>courtcase:statusnotice</targetxml>.<ul>
                      <li>Create <targetxml>courtcase:pubstatus</targetxml> with the attribute <targetxml>@status</targetxml> set to "none". <ul>
                          <li>Create <targetxml>p/text</targetxml> and populate <targetxml>text</targetxml> with "unreported case" (don't include
                              quotes).</li>
                      </ul>
                      </li>
                  </ul></li>
              </ul>
          </p>
      </section>
      <example>
          <title>Additional markup for an unreported case</title>
          <codeblock>

&lt;case:reportercite searchtype="BCNUM"&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="urj"/&gt;
                &lt;ci:refnum num="BC9002970"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;BC9002970&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

           </codeblock>
          <b>becomes</b>
          <codeblock>

&lt;courtcase:head&gt;
    &lt;courtcase:statusnotice&gt;
        &lt;courtcase:pubstatus status="none"&gt;
            &lt;p&gt;
                &lt;text&gt;unreported case&lt;/text&gt;
            &lt;/p&gt;
        &lt;/courtcase:pubstatus&gt;
    &lt;/courtcase:statusnotice&gt;
    ...
    &lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="urj"/&gt;
                    &lt;lnci:refnum num="BC9002970"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;BC9002970&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
&lt;/courtcase:head&gt;

           </codeblock>
      </example>
      
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.reportercite-ref.cite4thisresource.dita  -->
	<xsl:message>case.reportercite-ref.cite4thisresource.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:reportercite">

		<!--  Original Target XPath:  ref:citations   -->
		<ref:citations>
			<xsl:apply-templates select="@* | node()"/>
		</ref:citations>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:  connector   -->
		<connector>
			<xsl:apply-templates select="@* | node()"/>
		</connector>

	</xsl:template>

	<xsl:template match="case:reportercite/@searchtype">

		<!--  Original Target XPath:  courtcase:head   -->
		<courtcase:head>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:head>

	</xsl:template>

</xsl:stylesheet>