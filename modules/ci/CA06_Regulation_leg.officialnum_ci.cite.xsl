<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum_ci.cite">
        <title>leg:officialnum_ci:cite <lnpid>id-CA06-13828</lnpid></title>
        <body>
            <section>
                <p>If source document having <sourcexml>leg:officialnum/ci:cite</sourcexml> becomes
                        <targetxml>ref:citations/ref:cite4thisresource</targetxml> with attribute
                        <targetxml>@citetype="reporter"</targetxml> and create child element
                        <targetxml>lnci:cite</targetxml> for handling citation markup. </p>
            </section>

            <example>
                <title>Mapping of <sourcexml>leg:officialnum/ci:cite</sourcexml></title>
                <codeblock> &lt;leg:officialnum&gt; &lt;ci:cite type="cite4thisdoc"&gt;
                    &lt;ci:stat&gt; &lt;ci:statinfo spanref="stcspan1"&gt; &lt;ci:hier&gt;
                    &lt;ci:hierlev label="year" num="1997"&gt; &lt;ci:hierlev label="reg-no"
                    num="175"/&gt; &lt;/ci:hierlev&gt; &lt;/ci:hier&gt; &lt;/ci:statinfo&gt;
                    &lt;ci:statref spanref="stcspan1"&gt; &lt;ci:publicationname normpubcode="CARG2"
                    value="CARG2"/&gt; &lt;/ci:statref&gt; &lt;/ci:stat&gt; &lt;ci:content&gt;
                    &lt;ci:span spanid="stcspan1"&gt;DORS/97-175&lt;/ci:span&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;/leg:officialnum&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:stat&gt; &lt;lnci:statinfo&gt; &lt;lnci:hier&gt;
                    &lt;lnci:hierlev label="year" num="1997"&gt; &lt;lnci:hierlev label="reg-no"
                    num="175"/&gt; &lt;/lnci:hierlev&gt; &lt;/lnci:hier&gt; &lt;/lnci:statinfo&gt;
                    &lt;lnci:statref&gt; &lt;lnci:publicationname normpubcode="CARG2" value="CARG2"
                    /&gt; &lt;/lnci:statref&gt; &lt;/lnci:stat&gt;
                    &lt;lnci:content&gt;DORS/97-175&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2014-04-30: <ph id="change_20140430_SS">Update the instruction for adding the
                        attribute <targetxml>@citetype</targetxml> with "<b>reporter</b>" value
                        inside the <targetxml>ref:cite4thisresource</targetxml> in target conversion
                        when input is having
                            <sourcexml>leg:officialnum/ci:cite@type="cite4thisdoc"</sourcexml>.
                        Webteam # 255931 . </ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.officialnum_ci.cite.dita  -->
    <!--<xsl:message>leg.officialnum_ci.cite.xsl requires manual development!</xsl:message> -->
   
    <xsl:variable name="dpsi_restricted">
        <codes>
            <code key="0U95"/>
            <code key="0U96"/>
            <code key="0U98"/>
            <code key="0U9A"/>
            <code key="0U9B"/>
            <code key="0U9S"/>
            <code key="0U9T"/>
            <code key="0U9V"/>
            <code key="0U9W"/>
            <code key="0U9X"/>
            <code key="0U9Y"/>
            <code key="0UA4"/>
            <code key="0UA5"/>
            <code key="0UA6"/>
            <code key="0UA7"/>
            <code key="0UAN"/>
            <code key="0UAO"/>
            <code key="0UAP"/>
            <code key="0UAQ"/>
            <code key="0UCM"/>
            <code key="0UCN"/>
            <code key="0UCO"/>
            <code key="0UCP"/>
            <code key="0UCV"/>
            <code key="0UCW"/>
            <code key="0UCX"/>
            <code key="0UCY"/>
            <code key="0UD9"/>
            <code key="0UDA"/>
            <code key="0UDB"/>
            <code key="0UDC"/>
            <code key="0UDF"/>
            <code key="0UDG"/>
            <code key="0UDL"/>
            <code key="0UDM"/>
            <code key="0UDN"/>
            <code key="0UDO"/>
            <code key="0UDT"/>
            <code key="0UDU"/>
            <code key="0UDV"/>
            <code key="0UEE"/>
            <code key="0UEF"/>
            <code key="0UEG"/>
            <code key="0UEJ"/>
            <code key="0UFB"/>
            <code key="0UFC"/>
            <code key="0UFD"/>
            <code key="0UFE"/>
            <code key="0UFT"/>
            <code key="0UFU"/>
            <code key="0UHJ"/>
            <code key="0UHK"/>
            <code key="0UHL"/>
            <code key="0UHM"/>
            <code key="0UI1"/>
            <code key="0UI2"/>
            <code key="0UI3"/>
            <code key="0UI4"/>
            <code key="0UJ2"/>
            <code key="0UJ3"/>
            <code key="0UJ8"/>
            <code key="0UJ9"/>
            <code key="0UJA"/>
            <code key="0UJB"/>
            <code key="0UN0"/>
            <code key="0UN5"/>
            <code key="0UN6"/>
            <code key="0UNO"/>
            <code key="0UNP"/>
            <code key="0UNZ"/>
            <code key="0UOD"/>
            <code key="0UOE"/>
            <code key="0UOJ"/>
            <code key="0UOK"/>
            <code key="0UOS"/>
            <code key="0UOT"/>
            <code key="0UOV"/>
            <code key="0UPV"/>
            <code key="0UPW"/>
            <code key="0UPX"/>
            <code key="0UPY"/>
            <code key="0US1"/>
            <code key="0US6"/>
            <code key="0US7"/>
            <code key="0USC"/>
            <code key="0USD"/>
            <code key="0USP"/>
            <code key="0UTB"/>
            <code key="0UTC"/>
            <code key="0UVY"/>
            <code key="0UVZ"/>
            <code key="0USA"/>
            <code key="0UW1"/>
            <code key="0V1Y"/>
            <code key="0V22"/>
            <code key="0V24"/>
            <code key="0V26"/>
            <code key="0V28"/>
            <code key="0V2A"/>
            <code key="0V2B"/>
            <code key="0V2F"/>
            <code key="0V2I"/>
            <code key="0VNX"/>
            <code key="0VNX"/>
        </codes>
    </xsl:variable>
    <xsl:variable name="Citation_num">
        <codes>
            <code key="SOR" value="DORS"/>
            <code key="C.R.C." value="C.R.C."/>
            <code key="DORS" value="SOR"/>
            <code key="RSQ,CCQ," value="LRQ,CCQ"/>
            <code key="RSQ,CCR" value="LRQ,CCR"/>
            <code key="CQLR" value="RLRQ"/>
            <code key="LRQ" value="RSQ"/>
            <code key="LRQ,CCQ" value="RSQ,CCQ,"/>
            <code key="LRQ,CCR" value="RSQ,CCR"/>
            <code key="RLRQ" value="CQLR"/>
            <code key="Alta. Reg." value="Alta. Reg."/>
            <code key="Règl. du N.-B." value="N.B. Reg."/>
            <code key="C.N.L.R." value="N.B. Reg."/>
            <code key="N.L.R." value="N.L.R."/>
            <code key="R.R.N.W.T." value="R.R.N.W.T."/>
            <code key="N.W.T. Reg." value="N.W.T. Reg."/>
            <code key="N.S. Reg." value="N.S. Reg."/>
            <code key="R.R.N.W.T. 1990" value="R.R.N.W.T."/>
            <code key="Nu. Reg." value="Nu. Reg."/>
            <code key="R.R.O. 1990, Reg." value="R.R.O. 1990, Reg."/>
            <code key="O. Reg." value="O. Reg."/>
            <code key="P.E.I. Reg." value="P.E.I. Reg."/>
            <code key="RSQ" value="LRQ"/>
            <code key="S. Reg." value="S. Reg."/>
            <code key="R.R.S. c. S-15.1, Reg" value="R.R.S. c. S-15.1, Reg"/>
            <code key="Sask. O.C." value="Sask. O.C."/>
            <code key="Y.O.I.C." value="Y.O.I.C."/>
            <code key="Y.C.O." value="Y.C.O."/>
            <code key="Y.F.S.O." value="Y.F.S.O."/>
            <code key="Y.M.O." value="Y.M.O."/>
            <code key="Y.S.F.V.O." value="Y.S.F.V.O."/>
            <code key="TR" value="SI"/>
            <code key="Y.W.C.H.S.B.O." value="Y.W.C.H.S.B.O."/>
            <code key="Y.W.C.B.O." value="Y.W.C.B.O."/>
            <code key="SI" value="TR"/>
            <code key="Sch" value="Annexe"/>
            <code key="ch" value="c"/>
            
        </codes>
    </xsl:variable>
    
 <!--   <xsl:variable name="first_act" select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='actFirstDoc']"/>-->
    
    <xsl:template match="ci:cite" mode="cite">

        <!--  Original Target XPath:  ref:citations/ref:cite4thisresource   -->
        <ref:citations>
            <ref:cite4thisresource>
                <xsl:attribute name="citetype">
                    <xsl:text>reporter</xsl:text>
                </xsl:attribute>
                
                <lnci:cite>
                    <lnci:stat>
                        <lnci:statinfo>
                            <lnci:hier>
                                <xsl:apply-templates select="descendant::ci:hierlev[1]"/>
                            </lnci:hier>
                        </lnci:statinfo>
                        <lnci:statref>
                            <xsl:apply-templates select="descendant::ci:publicationname"/>
                        </lnci:statref>
                    </lnci:stat>
                    <lnci:content>
                        <xsl:value-of select="descendant::ci:span"/>
                    </lnci:content>
                </lnci:cite>
            </ref:cite4thisresource>
            <xsl:if test="contains($first_act,'true')">
            <ref:cite4thisresource>
                <lnci:cite type="act">
                    <lnci:content>
                        <xsl:value-of select="descendant::ci:span"/>
                    </lnci:content>
                </lnci:cite>
            </ref:cite4thisresource>
            </xsl:if>
            <xsl:variable name="spanValue" select="ci:content/ci:span"/>
            <xsl:for-each select="$Citation_num/*:codes/*:code">
                <xsl:variable name="code" select="."/>
                <xsl:if test="starts-with($spanValue, $code/@key)">
                    <ref:parallelcite citetype="parallel">
                        <lnci:cite>
                            <lnci:content>
                                <xsl:value-of
                                    select="replace($spanValue, $code/@key, $code/@value)"/>
                            </lnci:content>
                        </lnci:cite>
                    </ref:parallelcite>
                </xsl:if>
            </xsl:for-each>
        </ref:citations>

    </xsl:template>
    
    <xsl:template match="leg:officialnum[not(child::ci:cite)][not(preceding-sibling::leg:num[child::ci:cite]) and not(preceding-sibling::leg:num[not(contains(.,'solsak'))])]" mode="ref_citation_officialnum">
        <xsl:variable name="content_value" select="."/>
        <xsl:variable name="leg:num_content" select="/LEGDOC/leg:body/leg:info/leg:num[2]/text()"/>
        <xsl:variable name="dpsi" select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='dpsi']"/>
        
        <xsl:for-each select="$Citation_num/*:codes/*:code">
            <xsl:variable name="code" select="."/>
            <xsl:choose>
                <xsl:when test="$dpsi=$dpsi_restricted/*:codes/*:code/@*:key and (starts-with($content_value, $code/@key))">
                    <ref:citations>
                    <ref:parallelcite citetype="reporter">
                        <lnci:cite>
                            <lnci:content>
                                <xsl:value-of
                                    select="$content_value"/>
                            </lnci:content>
                        </lnci:cite>
                    </ref:parallelcite>
                       <xsl:if test="contains($first_act,'true')">
                           <ref:cite4thisresource>
                               <lnci:cite type="act">
                                   <lnci:content>
                                       <xsl:value-of select="$content_value "/>
                                   </lnci:content>
                               </lnci:cite>
                           </ref:cite4thisresource>
                       </xsl:if>
                    </ref:citations>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:if test="starts-with($content_value, $code/@key)">
                        <ref:citations>
                            <ref:cite4thisresource citetype="reporter">
                                <lnci:cite>
                                    <lnci:content>
                                        <xsl:value-of select="$content_value"/>
                                    </lnci:content>
                                </lnci:cite>
                            </ref:cite4thisresource>
                            <!-- 2018-01-26: JL: we need to filter on actFirstDoc here as well.
                        WEBSTAR 7104228 
                    Condition is from 
                    Exception and Single Document Retrieval handling For CA05,CA06,CA07,CA08 
                    if docinfo:custom-metafields/docinfo:custom-metafield[@name="actFirstDoc"] is having the value True then 
                    this should be handled to generate the firstActDocument in target and an additional ref:cite4thisresource/lnci:cite/@type="act" 
                    will be created where target lnci:content will be a direct copy from leg:officialnum. See Example.  
                    -->
                            
                            <xsl:if test="contains($first_act,'true')">
                            <ref:cite4thisresource>
                                <lnci:cite type="act">
                                    <lnci:content>
                                        <xsl:value-of select="$content_value"/>
                                    </lnci:content>
                                </lnci:cite>
                            </ref:cite4thisresource>
                            </xsl:if>
                            <ref:parallelcite citetype="parallel">
                                <lnci:cite>
                                    <lnci:content>
                                        <xsl:value-of
                                            select="replace($content_value, $code/@key, $code/@value)"/>
                                    </lnci:content>
                                </lnci:cite>
                            </ref:parallelcite>
                        </ref:citations>
                    </xsl:if>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
        
    <xsl:template match="ci:hierlev" priority="2">
        <lnci:hierlev>
            <xsl:attribute name="label">
                <xsl:value-of select="@label"/>
            </xsl:attribute>
            <xsl:attribute name="num">
                <xsl:value-of select="@num"/>
            </xsl:attribute>
            <xsl:apply-templates select="child::ci:hierlev"/>
        </lnci:hierlev>
    </xsl:template>
    
    
    <xsl:template match="ci:publicationname" priority="2">
        <lnci:publicationname>
            <xsl:attribute name="normpubcode">
                <xsl:value-of select="@normpubcode"/>
            </xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="@value"/>
            </xsl:attribute>
        </lnci:publicationname>
    </xsl:template>

</xsl:stylesheet>
