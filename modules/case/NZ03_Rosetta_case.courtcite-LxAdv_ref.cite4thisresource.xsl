<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita case lnci ci ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource">
  <title>case:courtcite <lnpid>id-NZ03-23014</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:courtcite</sourcexml> becomes <targetxml>ref:cite4thisresource/@citetype="court"</targetxml>.</p>
          <pre xml:space="preserve">
&lt;case:courtcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:content&gt;Boniface (Labour Inspector) v Credence Development Ltd (t/as Japanese Tourist
            Centre - JTC) [2011] NZERA 124&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;

<b>Becomes</b>

&lt;ref:cite4thisresource citetype="court"&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:content&gt;Boniface (Labour Inspector) v Credence Development Ltd (t/as Japanese Tourist
            Centre - JTC) [2011] NZERA 124&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/ref:cite4thisresource&gt;
</pre>
    </section>
      <note>If <sourcexml>case:courtcite/ci:cite/@type="cite4thisdoc"</sourcexml> then duplicate all
            the <targetxml>ref:para</targetxml> in the document using the
                <targetxml>lnci:nz@courtcode</targetxml> value in
                <targetxml>@para-scheme</targetxml> and
                <targetxml>@paraschemetype="court-code"</targetxml>. For more clarification please
            refer the example below. </note>
      <example>
            <codeblock><b>SOURCE XML</b>

&lt;case:courtcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:opinionnum num="201"/&gt;
                &lt;ci:jurisinfo&gt;
                    &lt;ci:nz courtcode="nswca"/&gt;
                &lt;/ci:jurisinfo&gt;
                &lt;ci:decisiondate year="2008"/&gt;
            &lt;/ci:caseinfo&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;[2008] NSWCA 201&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:courtcite&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;ref:citations&gt;    
    &lt;ref:cite4thisresource citetype="court"&gt;        
        &lt;lnci:cite&gt;            
            &lt;lnci:case&gt;                
                &lt;lnci:caseinfo&gt;                    
                    &lt;lnci:opinionnum num="201"/&gt;                    
                    &lt;lnci:jurisinfo&gt;                        
                        &lt;lnci:nz courtcode="nswca"/&gt;                        
                    &lt;/lnci:jurisinfo&gt;                    
                    &lt;lnci:decisiondate year="2008"/&gt;                    
                &lt;/lnci:caseinfo&gt;                
            &lt;/lnci:case&gt;            
            &lt;lnci:content&gt;[2008] NSWCA 201&lt;/lnci:content&gt;            
        &lt;/lnci:cite&gt;        
    &lt;/ref:cite4thisresource&gt;    
&lt;/ref:citations&gt;

and

&lt;ref:para num="1" para-scheme="nswlr" para-scheme-type="reporter-abbreviation"&gt;[1]&lt;/ref:para&gt;
&lt;ref:para num="1" para-scheme="nswca" para-scheme-type="court-code"/&gt;  


            </codeblock>
        </example>
      
    <section>
      <title>Changes</title>
        <p>2016-11-17: <ph id="change_20161117_AS">Added instruction and example when
                        <sourcexml>case:courtcite/ci:cite/@type="cite4thisdoc"</sourcexml> then
                    duplicate all the <targetxml>ref:para</targetxml> using the
                        <targetxml>lnci:nz@courtcode</targetxml> Applicable for AU01 and NZ03.
                    Webstar # 6366618 and VSTS #147977</ph></p>
        <p>2016-11-15: <ph id="change_20161115_AS">Added instruction and example when
            <sourcexml>case:courtcite/ci:cite/@type="cite4thisdoc"</sourcexml> then duplicate all the <targetxml>ref:para</targetxml> using the <targetxml>lnci:au@courtcode</targetxml> Applicable for AU01 and NZ03. Webstar # 6366618 and VSTS #147977</ph></p>
      <p>2014-06-18: <ph id="change_20140618_PS">Updated target mapping and snippet, Webteam #: 236888.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.courtcite-LxAdv_ref.cite4thisresource.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="case:courtcite[ci:cite[@type='parallel']]">
        <ref:citations>
            <ref:parallelcite citetype="court">
                <xsl:apply-templates select="node() | @*"/>
            </ref:parallelcite>
        </ref:citations>
    </xsl:template>
    
    
    <xsl:template match="case:courtcite[ci:cite[@type='cite4thisdoc' or not(@type)]]">
        <ref:citations>
            <ref:cite4thisresource citetype="court">
                <xsl:apply-templates select="node() | @*"/>
            </ref:cite4thisresource>
        </ref:citations>
    </xsl:template>
</xsl:stylesheet>