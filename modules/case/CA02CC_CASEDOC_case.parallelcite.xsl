<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita case lnci source_lnci ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.parallelcite">
   <title>case:parallelcite <lnpid>id-CA02CC-12428</lnpid></title>
   <body>
      <section>
<ul>
         <li>
                    <sourcexml>case:parallelcite</sourcexml> becomes
             <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> and will be a child element of
                        <targetxml>casedigest:head/casedigest:caseinfo/ref:citations</targetxml>
                    <note>
                        <p><b>Discussion Board Issue: </b> ci:reporter needs to be used to reorder
                            the list of cites so that reporter cite is in a list of reporter cites
                            and parallel cites are marked up as reporter cites. This will not be an
                            issue if a reload of the data fixes the order.</p>
                        <p><b>Update: </b> The order of the cites is driven by the source document
                            and a future reload of the source document is required to get the cites
                            in the LBU desired order.</p>
                    </note>
                    <note><b>As per CA team:</b> We should replace <sourcexml>nl</sourcexml> within
                        a citation with a single space character. We shouldn’t be styling citations
                        like this.</note>
                    <note>Rosetta element <sourcexml>case:parallelcite</sourcexml> will be moved
                        into <targetxml>casedigest:head</targetxml>, means parallelcite will map
                        under <targetxml>casedigest:head</targetxml></note> Please see below
                    examples. <pre>
                    
&lt;case:parallelcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00016684" spanref="cspan00016684"&gt;
                &lt;ci:reporter value="OJ"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2004"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="340"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00016684"&gt;[2004] O.J. No. 340&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;


<b>Becomes</b>
                        

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="parallel"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="cref00016684"&gt;
                            &lt;lnci:reporter value="OJ"/&gt;
                            &lt;lnci:edition&gt;
                                &lt;lnci:date year="2004"/&gt;
                            &lt;/lnci:edition&gt;
                            &lt;lnci:refnum num="340"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;[2004] O.J. No. 340&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt; 
&lt;/casedigest:head&gt;

             </pre>
                    <p>
                        <note>When text appears inside <sourcexml>case:parallelcite</sourcexml>,
                            then conversion need to move the pinpoint information into
                                <sourcexml>lnci:content</sourcexml>. This applies to CANADA
                            ONLY.</note> Please see below example for the same:</p>
                    <pre>

&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00054999" spanref="cspan00054999"&gt;
                &lt;ci:reporter value="SCR"/&gt;
                &lt;ci:volume num="32"/&gt;
                &lt;ci:page num="147"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00054999"&gt;32 S.C.R. 147&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt; at 152
&lt;/case:parallelcite&gt;
    
</pre>
                    <b>Becomes</b>
                    <pre>

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;ref:citations&gt;
            &lt;ref:parallelcite citetype="parallel"&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:case&gt;
                        &lt;lnci:caseref ID="cref00054999"&gt;
                            &lt;lnci:reporter value="SCR"/&gt;
                            &lt;lnci:volume num="32"/&gt;
                            &lt;lnci:page num="147"/&gt;
                        &lt;/lnci:caseref&gt;
                    &lt;/lnci:case&gt;
                    &lt;lnci:content&gt;32 S.C.R. 147 at 152&lt;/lnci:content&gt;
                &lt;/lnci:cite&gt;
            &lt;/ref:parallelcite&gt;
        &lt;/ref:citations&gt;
    &lt;/casedigest:caseinfo&gt; 
&lt;/casedigest:head&gt;
    
</pre>
                </li>
      </ul>
</section>
      <section>
          <title>Changes</title>
          <p>2014-05-09: <ph id="change_20140509_AS">ref:parallelcite open close tags updated<b>DB item # 193</b></ph></p>
		  <p>2014-03-26: <ph id="change_20140326_SEP">Clarify that parallelcite will map to digest:body and still get the value "parallel".<b>DB item # 145</b></ph></p>
          <p>2014-04-16: <ph id="change_20140416_AS">ref:citation in head<b>DB item # 1152,1156</b></ph></p>
          <p>2014-06-11: <ph id="change_20140611_SSX">Updated instruction and example to add
                    attribute <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> in
                    target.</ph></p>
      </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.parallelcite.dita  -->
	

<!-- Sudhanshu Srivastava edited on 16-May-2017. -->

<!--    <xsl:template match="case:parallelcite" mode="parallelorcourt">
		<!-\-  Original Target XPath:  ref:parallelcite/@citetype="parallel"   -\->
                <xsl:choose>
                    <xsl:when test="count(ci:cite) &gt; 1">
                        <xsl:for-each select="ci:cite">
                            <ref:parallelcite>
                                <xsl:attribute name="citetype">
                                    <xsl:text>parallel</xsl:text>
                                </xsl:attribute>
                                <lnci:cite>
                                <xsl:apply-templates select="node()"/>
                                </lnci:cite>
                            </ref:parallelcite>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <ref:parallelcite>
                            <xsl:attribute name="citetype">
                                <xsl:text>parallel</xsl:text>
                            </xsl:attribute>
                            <xsl:apply-templates select="@* | node()"/>
                        </ref:parallelcite>        
                    </xsl:otherwise>
                </xsl:choose>
                
	</xsl:template>
    -->
<!--    <xsl:template match="case:parallelcite[not(preceding-sibling::case:parallelcite)]" priority="2" mode="wrapinfo">
        
      <!-\-  <ref:citations>-\->
            <ref:parallelcite citetype="parallel">
                <xsl:apply-templates select="@* | node()"/>
            </ref:parallelcite>
            <xsl:apply-templates select="following-sibling::case:parallelcite" mode="followparallel"/>
        <!-\-</ref:citations>-\->
        <xsl:apply-templates select="following-sibling::case:courtinfo/case:filenum"/>
    </xsl:template>
    
    <xsl:template match="case:parallelcite" mode="followparallel">
        <ref:parallelcite citetype="parallel">
            <xsl:apply-templates select="@* | node()"/>
        </ref:parallelcite>
    </xsl:template>
    
    <xsl:template match="case:parallelcite" priority="1"/>
    -->
    
    <xsl:template match="case:parallelcite" mode="wrapinfo">
        <xsl:choose>
            <xsl:when test="count(ci:cite) &gt; 1">
                <xsl:for-each select="ci:cite">
                    <ref:parallelcite citetype="parallel">
                        <xsl:apply-templates select="self::node()"/>
                    </ref:parallelcite>            
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <ref:parallelcite citetype="parallel">
                    <xsl:apply-templates select="node()"/>
                </ref:parallelcite>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
</xsl:stylesheet>