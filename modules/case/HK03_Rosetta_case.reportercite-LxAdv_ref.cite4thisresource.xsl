<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK03_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource">
  <title>case:reportercite <lnpid>id-HK03-37225</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:reportercite</sourcexml> becomes <targetxml>ref:citations</targetxml> with
          child elements as described below: <ul>
            <li> Create <targetxml>caseinfo:caseinfo/ref:citations/ref:cite4thisresource</targetxml>
              with attribute <targetxml>@citetype</targetxml> defines the type of citation
              "reporter". <note class="- topic/note ">For handling of citation markup; kindly refer
                to the instructions for <sourcexml>ci:cite</sourcexml> in the General Markup
                section.</note>
              <note>Conversion should not create consecutive
                  <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more consecutive
                sibling source elements map to <targetxml>caseinfo:caseinfo</targetxml>, data should
                be merged to a single <targetxml>caseinfo:caseinfo</targetxml> element unless this
                would hamper content ordering.</note>
            </li>
          </ul>
          <pre xml:space="preserve" class="- topic/pre ">
&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="2010"/&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="HKCU"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2010"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="1606"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                [2010] HKCU 1606&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;ref:citations&gt;
  &lt;ref:cite4thisresource citetype="reporter"&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseinfo&gt;
          &lt;lnci:decisiondate year="2010"/&gt;
        &lt;/lnci:caseinfo&gt;
        &lt;lnci:caseref&gt;
          &lt;lnci:reporter value="HKCU"/&gt;          
          &lt;lnci:edition&gt;
            &lt;lnci:date year="2010"/&gt;
          &lt;/lnci:edition&gt;
          &lt;lnci:page num="1606"/&gt;         
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;[2010] HKCU 1606&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
  &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
</pre>
        </li>
      </ul>
    </section>
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
                &lt;ci:refnum num="197700025"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;197700025&lt;/citefragment&gt;
            &lt;refpt id="197700025" type="ext"/&gt;
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
                    &lt;lnci:refnum num="197700025"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;197700025&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
&lt;/courtcase:head&gt;

           </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK03\HK03_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource.dita  -->
	 

	<xsl:template match="case:reportercite">

		<!--  Original Target XPath:  ref:citations   -->
		<ref:citations>
		    <ref:cite4thisresource>
		        <xsl:attribute name="citetype">
		            <xsl:text>reporter</xsl:text>
		        </xsl:attribute>
		        <xsl:apply-templates select="@* | node()"/>
		    </ref:cite4thisresource>
		</ref:citations>

	</xsl:template>

    <xsl:template match="case:reportercite[@searchtype='BCNUM']">
        <courtcase:statusnotice>
            <courtcase:pubstatus>
                <xsl:attribute name="status">
                    <xsl:text>none</xsl:text>
                </xsl:attribute>
                <p>
                    <text>unreported case</text>
                </p>
            </courtcase:pubstatus>
        </courtcase:statusnotice>
    </xsl:template>

	<!--<xsl:template match="ci:cite">

		<!-\-  Original Target XPath:  caseinfo:caseinfo   -\->
		<caseinfo:caseinfo>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:caseinfo>

	</xsl:template>-->

<!--	<xsl:template match="case:reportercite/@searchtype">

		<!-\-  Original Target XPath:  courtcase:head   -\->
		<courtcase:head>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:head>

	</xsl:template>-->

</xsl:stylesheet>