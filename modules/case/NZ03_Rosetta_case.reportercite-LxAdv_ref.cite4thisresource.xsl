<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" 
    xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource">
  <title>case:reportercite <lnpid>id-NZ03-23031</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:reportercite</sourcexml> becomes <targetxml>ref:citations</targetxml> with
          child elements as described below: <ul>
            <li>Create <targetxml>caseinfo:caseinfo/ref:citations/ref:cite4thisresource</targetxml>
              with attribute <targetxml>@citetype</targetxml> defines the type of citation
              "reporter". <note>For handling of citation markup; kindly refer to the instructions
                for <sourcexml>ci:cite</sourcexml> in General Markup Section.</note>
              <note>Conversion should not create consecutive
                  <targetxml>caseinfo:caseinfo</targetxml> elements. When 2 or more sibling source
                elements map to <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a
                single <targetxml>caseinfo:caseinfo</targetxml> element.</note>
            </li>
          </ul>
          <pre>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="NZLR (CA)"/&gt;
                &lt;ci:volume num="1"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1880"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="1"/&gt;
                &lt;ci:pinpoint targettype="para" num="4"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;(1880) 1 NZLR (CA) 1&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;ref:citations&gt;
            &lt;ref:cite4thisresource citetype="reporter"&gt;
                &lt;lnci:cite&gt;
                  &lt;lnci:case&gt;
                      &lt;lnci:caseref&gt;
                          &lt;lnci:reporter value="NZLR (CA)"/&gt;
                          &lt;lnci:volume num="1"/&gt;
                          &lt;lnci:edition&gt;
                              &lt;lnci:date year="1880"/&gt;
                          &lt;/lnci:edition&gt;
                          &lt;lnci:page num="1"/&gt;
                          &lt;lnci:pinpoint targettype="para" num="4"/&gt;
                      &lt;/lnci:caseref&gt;
                  &lt;/lnci:case&gt;
                  &lt;lnci:content&gt;(1880) 1 NZLR (CA) 1&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.reportercite-LxAdv_ref.cite4thisresource.xsl requires manual development!</xsl:message> -->

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
    
    <xsl:template match="case:reportercite[@searchtype='BCNUM']" mode="search">
        <courtcase:statusnotice>
            <courtcase:pubstatus status="none">
                <p>
                    <text>unreported case</text>
                </p>
            </courtcase:pubstatus>
        </courtcase:statusnotice>
        
    </xsl:template>
    <xsl:template match="@searchtype"/>
</xsl:stylesheet>