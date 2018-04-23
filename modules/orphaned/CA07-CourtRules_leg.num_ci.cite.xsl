<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num_ci.cite">
    <title>leg:num/ci:cite <lnpid>id-CA07-14026</lnpid></title>
    <body>
        <section>
            <ul>
                <li><sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml> becomes
                        <targetxml>ref:citations/ref:cite4thisresource</targetxml> with attribute
                        <targetxml>@citetype="reporter"</targetxml> and create child element
                        <targetxml>lnci:cite</targetxml> for handling citation markup. <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:num&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:stat&gt;
            &lt;ci:statinfo spanref="stcspan1"&gt;
                &lt;ci:hier&gt;
                    &lt;ci:hierlev label="year" num="1985"&gt;
                        &lt;ci:hierlev label="appendix" num="II"&gt;
                            &lt;ci:hierlev label="chapter" num="4"&gt;
                                &lt;ci:hierlev label="section" num="XXVIII" /&gt;
                            &lt;/ci:hierlev&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hierlev&gt;
                &lt;/ci:hier&gt;
            &lt;/ci:statinfo&gt;
            &lt;ci:statref spanref="stcspan1"&gt;
                &lt;ci:publicationname normpubcode="RSC" value="RSC" /&gt;
            &lt;/ci:statref&gt;
        &lt;/ci:stat&gt;
        &lt;ci:content&gt;&lt;ci:span spanid="stcspan1"&gt;R.S.C. 1985, Appendix II, No. 4, s. XXVIII&lt;/ci:span&gt;&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/leg:num&gt;

                        </pre>
                    <b>becomes</b>
                    <pre>
              <b><i>Example: Target Markup</i></b>
            

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
           &lt;lnci:stat&gt;
               &lt;lnci:statinfo&gt;
                    &lt;lnci:hier&gt;
                         &lt;lnci:hierlev label="year" num="1985"&gt;
                             &lt;lnci:hierlev label="appendix" num="II"&gt;
                                 &lt;lnci:hierlev label="chapter" num="4"&gt;
                                     &lt;lnci:hierlev label="section" num="XXVIII" /&gt;
                                 &lt;/lnci:hierlev&gt;
                             &lt;/lnci:hierlev&gt;
                         &lt;/lnci:hierlev&gt;
                     &lt;/lnci:hier&gt;
            &lt;/lnci:statinfo&gt;
            &lt;lnci:statref&gt;
                &lt;lnci:publicationname normpubcode="RSC" value="RSC" /&gt;
            &lt;/lnci:statref&gt;
           &lt;/lnci:stat&gt;
                &lt;lnci:content&gt;R.S.C. 1985, Appendix II, No. 4, s. XXVIII&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

                    </pre>
               <note>For the following DPSI values
                    <sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml> becomes
                    <targetxml>ref:citations/ref:parallelcite</targetxml> with attribute
                    <targetxml>@citetype="reporter"</targetxml> and create child element
                    <targetxml>lnci:cite</targetxml> for handling citation markup. </note>
      <table>
                    <tgroup cols="3">
                        <thead>
                            <row>
                                <entry>DPSI</entry>
                                <entry>PCSI</entry>
                                <entry>Publication Title for online directory</entry>
                            </row>
                        </thead>
                        <tbody>
                            <row>
                                <entry>0U95</entry>
                                <entry>422350</entry>
                                <entry>Canadian Securities Law Reporter - 04 Statutes</entry>
                            </row>
                            <row>
                                <entry>0U96</entry>
                                <entry>422352</entry>
                                <entry>Canadian Securities Law Reporter - 05 Regulations</entry>
                            </row>
                            <row>
                                <entry>0U9A</entry>
                                <entry>422373</entry>
                                <entry>Canadian Securities Law Reporter - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0U9B</entry>
                                <entry>422375</entry>
                                <entry>Canadian Securities Law Reporter - 08 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0U9S</entry>
                                <entry>422423</entry>
                                <entry>Canadian Health Facilities Law Guide - 04 Statutes</entry>
                            </row>
                            <row>
                                <entry>0U9T</entry>
                                <entry>422427</entry>
                                <entry>Canadian Health Facilities Law Guide - 03 Regulations</entry>
                            </row>
                            <row>
                                <entry>0U9V</entry>
                                <entry>422431</entry>
                                <entry>Canadian Commercial Law Guide - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0U9W</entry>
                                <entry>422433</entry>
                                <entry>Canadian Commercial Law Guide - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0U9X</entry>
                                <entry>422435</entry>
                                <entry>Canadian Commercial Law Guide - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0U9Y</entry>
                                <entry>422437</entry>
                                <entry>Canadian Commercial Law Guide - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UA4</entry>
                                <entry>422454</entry>
                                <entry>Canadian Family Law Guide - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UA5</entry>
                                <entry>422456</entry>
                                <entry>Canadian Family Law Guide - 03 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UA6</entry>
                                <entry>422458</entry>
                                <entry>Canadian Family Law Guide - 06 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UA7</entry>
                                <entry>422460</entry>
                                <entry>Canadian Family Law Guide - 04 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UAN</entry>
                                <entry>422535</entry>
                                <entry>Alberta Corporations Law Guide - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UAO</entry>
                                <entry>422538</entry>
                                <entry>Alberta Corporations Law Guide - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UAP</entry>
                                <entry>422541</entry>
                                <entry>Alberta Corporations Law Guide - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UAQ</entry>
                                <entry>422543</entry>
                                <entry>Alberta Corporations Law Guide - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UCM</entry>
                                <entry>422792</entry>
                                <entry>BC Real Estate Law Guide - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UCN</entry>
                                <entry>422795</entry>
                                <entry>BC Real Estate Law Guide - 03 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UCO</entry>
                                <entry>422797</entry>
                                <entry>BC Real Estate Law Guide - 06 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UCP</entry>
                                <entry>422800</entry>
                                <entry>BC Real Estate Law Guide - 04 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UCV</entry>
                                <entry>422815</entry>
                                <entry>Canada Corporations Law - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UCW</entry>
                                <entry>422817</entry>
                                <entry>Canada Corporations Law - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UCX</entry>
                                <entry>422819</entry>
                                <entry>Canada Corporations Law - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UCY</entry>
                                <entry>422821</entry>
                                <entry>Canada Corporations Law - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UD9</entry>
                                <entry>422867</entry>
                                <entry>Canadian Estate Administration Guide - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UDA</entry>
                                <entry>422869</entry>
                                <entry>Canadian Estate Administration Guide - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UDB</entry>
                                <entry>422871</entry>
                                <entry>Canadian Estate Administration Guide - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UDC</entry>
                                <entry>422876</entry>
                                <entry>Canadian Estate Administration Guide - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UDF</entry>
                                <entry>422883</entry>
                                <entry>Employment Insurance - 03 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UDG</entry>
                                <entry>422885</entry>
                                <entry>Employment Insurance - 02 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UDL</entry>
                                <entry>422896</entry>
                                <entry>Corporate Secretary's Guide - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UDM</entry>
                                <entry>422898</entry>
                                <entry>Ontario Accident Benefit Cases - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UDN</entry>
                                <entry>422900</entry>
                                <entry>Ontario Accident Benefit Cases - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UDO</entry>
                                <entry>422902</entry>
                                <entry>Corporate Secretary's Guide - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UDT</entry>
                                <entry>422912</entry>
                                <entry>Employment Standards - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UDU</entry>
                                <entry>422914</entry>
                                <entry>Employment Standards - 03 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UDV</entry>
                                <entry>422916</entry>
                                <entry>Employment Standards - 06 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UEE</entry>
                                <entry>422993</entry>
                                <entry>Ontario Corporations Law - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UEF</entry>
                                <entry>422995</entry>
                                <entry>Ontario Corporations Law - 06 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UEG</entry>
                                <entry>422998</entry>
                                <entry>Ontario Corporations Law - 04 Regulations  </entry>
                            </row>
                            <row>
                                <entry>0UEJ</entry>
                                <entry>423005</entry>
                                <entry>Employment Standards - 04 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UFB</entry>
                                <entry>423071</entry>
                                <entry>Human Rights/Equity Issues - 04 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UFC</entry>
                                <entry>423074</entry>
                                <entry>Human Rights/Equity Issues - 02 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UFD</entry>
                                <entry>423080</entry>
                                <entry>Human Rights/Equity Issues - 05 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UFE</entry>
                                <entry>423083</entry>
                                <entry>Human Rights/Equity Issues - 03 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UFT</entry>
                                <entry>423231</entry>
                                <entry>Employment Safety &amp; Health - 05 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UFU</entry>
                                <entry>423233</entry>
                                <entry>Employment Safety &amp; Health - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UHJ</entry>
                                <entry>423355</entry>
                                <entry>Benefits and Pensions - 08 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UHK</entry>
                                <entry>423357</entry>
                                <entry>Benefits and Pensions - 06 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UHL</entry>
                                <entry>423359</entry>
                                <entry>Benefits and Pensions - 09 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UHM</entry>
                                <entry>423361</entry>
                                <entry>Benefits and Pensions - 07 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UI1</entry>
                                <entry>423416</entry>
                                <entry>Labour Relations - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UI2</entry>
                                <entry>423418</entry>
                                <entry>Labour Relations - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UI3</entry>
                                <entry>423420</entry>
                                <entry>Labour Relations - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UI4</entry>
                                <entry>423422</entry>
                                <entry>Labour Relations - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UJ2</entry>
                                <entry>423520</entry>
                                <entry>The Directors Manual - 03 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UJ3</entry>
                                <entry>423524</entry>
                                <entry>The Directors Manual - 04 Former Statutes </entry>
                            </row>
                            <row>
                                <entry>0UJ8</entry>
                                <entry>423553</entry>
                                <entry>Ontario Real Estate Law Guide - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UJ9</entry>
                                <entry>423555</entry>
                                <entry>Ontario Real Estate Law Guide - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UJA</entry>
                                <entry>423557</entry>
                                <entry>Ontario Real Estate Law Guide - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UJB</entry>
                                <entry>423559</entry>
                                <entry>Ontario Real Estate Law Guide - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UN0</entry>
                                <entry>423954</entry>
                                <entry>Charte canadienne des droits et libertés - 04 Lois</entry>
                            </row>
                            <row>
                                <entry>0UN5</entry>
                                <entry>423964</entry>
                                <entry>Droit immobilier québécois - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0UN6</entry>
                                <entry>423966</entry>
                                <entry>Droit immobilier québécois - 04 Règlements</entry>
                            </row>
                            <row>
                                <entry>0UNO</entry>
                                <entry>424005</entry>
                                <entry>Droit de la famille québécois - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0UNP</entry>
                                <entry>424008</entry>
                                <entry>Droit de la famille québécois - 04 Règlements</entry>
                            </row>
                            <row>
                                <entry>0UNZ</entry>
                                <entry>424032</entry>
                                <entry>Droits et libertés de la personne en milieu de travail - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0UOD</entry>
                                <entry>424086</entry>
                                <entry>La société par actions au Québec - 04 Lois</entry>
                            </row>
                            <row>
                                <entry>0UOE</entry>
                                <entry>424088</entry>
                                <entry>La société par actions au Québec - 05 Règlements</entry>
                            </row>
                            <row>
                                <entry>0UOJ</entry>
                                <entry>424100</entry>
                                <entry>Relations de travail - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0UOK</entry>
                                <entry>424103</entry>
                                <entry>Relations de travail - 04 Règlements</entry>
                            </row>
                            <row>
                                <entry>0UOS</entry>
                                <entry>424128</entry>
                                <entry>Santé et sécurité au travail - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0UOT</entry>
                                <entry>424130</entry>
                                <entry>Santé et sécurité au travail - 04 Règlements</entry>
                            </row>
                            <row>
                                <entry>0UOV</entry>
                                <entry>424134</entry>
                                <entry>Santé et sécurité au travail - 05 Archives - Règlements</entry>
                            </row>
                            <row>
                                <entry>0UPV</entry>
                                <entry>424244</entry>
                                <entry>BC Corporations Law - 06 Statutes</entry>
                            </row>
                            <row>
                                <entry>0UPW</entry>
                                <entry>424247</entry>
                                <entry>BC Corporations Law - 04 Regulations</entry>
                            </row>
                            <row>
                                <entry>0UPX</entry>
                                <entry>424250</entry>
                                <entry>BC Corporations Law - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0UPY</entry>
                                <entry>424253</entry>
                                <entry>BC Corporations Law - 05 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0US1</entry>
                                <entry>424424</entry>
                                <entry>Employment Safety &amp; Health - 06 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0US6</entry>
                                <entry>424440</entry>
                                <entry>Code criminel et lois connexes annotés - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0US7</entry>
                                <entry>424443</entry>
                                <entry>Code criminel et lois connexes annotés - 05 Règlements</entry>
                            </row>
                            <row>
                                <entry>0USC</entry>
                                <entry>424454</entry>
                                <entry>Code criminel et lois connexes annotés - 09 Archives - Lois</entry>
                            </row>
                            <row>
                                <entry>0USD</entry>
                                <entry>424456</entry>
                                <entry>Code criminel et lois connexes annotés - 11 Archives - Règlements</entry>
                            </row>
                            <row>
                                <entry>0USP</entry>
                                <entry>424500</entry>
                                <entry>Code criminel et lois connexes annotés - 12 Former Regulations</entry>
                            </row>
                            <row>
                                <entry>0UTB</entry>
                                <entry>424562</entry>
                                <entry>Régimes de retraite au Québec - 03 Lois</entry>
                            </row>
                            <row>
                                <entry>0UTC</entry>
                                <entry>424564</entry>
                                <entry>Régimes de retraite au Québec - 04 Règlements</entry>
                            </row>
                            <row>
                                <entry>0UVY</entry>
                                <entry>424842</entry>
                                <entry>Code criminel et lois connexes annotés - 04 Acts</entry>
                            </row>
                            <row>
                                <entry>0UVZ</entry>
                                <entry>424846</entry>
                                <entry>Code criminel et lois connexes annotés - 06 Regulations</entry>
                            </row>
                        </tbody>
                    </tgroup>
                </table>
                </li>

            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-07-07 : <ph id="change_20160707_SS"> Updated the instruction for the given DPSI  
                <sourcexml>leg:num/ci:cite</sourcexml> will become "<targetxml>ref:citations/ref:parallelcite[@citetype="reporter"]</targetxml>"</ph>.</p>
            <p>2014-05-01: <ph id="change_20140501_SSX">Instruction and example added for handling
                        <sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml>. Webteam #
                    255931 . </ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.num_ci.cite.dita  -->
    
    <xsl:variable name="Parallel_Citation_num">
        <codes>
            <code key="annexe" value="schedule"/>
            <code key="SOR" value="DORS"/>
            <code key="R.S.C." value="L.R.C."/>
            <code key="L.R.C." value="R.S.C."/>
            <code key="C.R.C." value="C.R.C."/>
            <code key="DORS" value="SOR"/>
            <code key="RSQ,CCQ," value="LRQ,CCQ"/>
            <code key="RSQ,CCR" value="LRQ,CCR"/>
            <code key="CQLR" value="RLRQ"/>
            <code key="LRQ" value="RSQ"/>
            <code key="L.N.-B." value="S.N.B"/>
            <code key="L.C." value="S.C."/>
            <code key="S.C." value="L.C."/>
            <code key="LRQ,CCQ" value="RSQ,CCQ,"/>
            <code key="LRQ,CCR" value="RSQ,CCR"/>
            <code key="RLRQ" value="CQLR"/>
            
        </codes>
    </xsl:variable>
  <!--  <xsl:template match="leg:num[not(starts-with(.,'solsak'))]" mode="doc_related_content">
        <xsl:variable name="content" select="."/>
        <xsl:variable name="content_cite" select="following::ci:content"/>
        <xsl:for-each select="$Parallel_Citation_num/*:codes/*:code">
            <xsl:variable name="code" select="."/>
            <xsl:if
                test="starts-with($content, $code/@key) or starts-with($content_cite, $code/@key)">
                <doc:related-content>
                    <doc:related-content-grp content-type="alternate-language-version">
                        <doc:related-content-item>
                            <doc:related-content-link>
                                <ref:lnlink service="TRAVERSE">
                                    <ref:marker>French Version</ref:marker>
                                    <ref:locator>
                                        <ref:locator-key>
                                            <ref:key-name name="normcite"/>
                                            <ref:key-value>
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                        select="replace($content, $code/@key, $code/@value)"
                                                    />
                                                </xsl:attribute>
                                            </ref:key-value>
                                        </ref:locator-key>
                                        <ref:locator-params>
                                            <proc:param name="normprotocol" value="CAEditorial"/>
                                            <proc:param name="countrycode" value="CA"/>
                                            <proc:param name="targetdoclang" value="fr-CA"/>
                                        </ref:locator-params>
                                    </ref:locator>
                                </ref:lnlink>
                            </doc:related-content-link>
                        </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
-->
    
    <xsl:variable name="Citation_Language">
        <codes>
            <code key="SOR" value="French Version"/>
            <code key="C.R.C." value="French Version"/>
            <code key="DORS" value="English Version"/>
            <code key="RSQ,CCQ," value="French Version"/>
            <code key="RSQ,CCR" value="French Version"/>
            <code key="CQLR" value="French Version"/>
            <code key="LRQ" value="English Version"/>
            <code key="LRQ,CCQ" value="English Version"/>
            <code key="LRQ,CCR" value="English Version"/>
            <code key="RLRQ" value="English Version"/>
            <code key="RSQ" value="French Version"/>
            <code key="C.N.L.R." value="English Version"/>
            <code key="N.L.R." value="English Version"/>
            <code key="R.R.N.W.T." value="English Version"/>
            <code key="N.W.T. Reg." value="English Version"/>
            <code key="N.S. Reg." value="English Version"/>
            <code key="R.R.N.W.T. 1990" value="English Version"/>
            <code key="Nu. Reg." value="English Version"/>
            <code key="R.R.O. 1990, Reg." value="English Version"/>
            <code key="R.R.O. 1990, Reg." value="English Version"/>
            <code key="O. Reg." value="English Version"/>
        </codes>
    </xsl:variable>
    <xsl:variable name="language" select="/LEGDOC/docinfo/docinfo:doc-lang/@lang"/>
    <xsl:variable name="officialnum_citation" select="/LEGDOC/leg:body/leg:info/leg:num[not(starts-with(.,'solsak'))]"/>
    

    <xsl:template match="leg:num[not(starts-with(.,'solsak'))]" mode="doc_related_content">
        <xsl:variable name="contentValue" select="."/>
        <xsl:for-each select="$Citation_Num/codes/code">
        <xsl:variable name="code" select="."/>
        <xsl:if test="starts-with($contentValue, $code/@key) or starts-with($officialnum_citation,$code/@key)">
            <xsl:variable name="code" select="."/>
            <doc:related-content>
                <doc:related-content-grp content-type="alternate-language-version">
                    <doc:related-content-item>
                        <doc:related-content-link>
                            <ref:lnlink service="TRAVERSE">
                                <ref:marker>
                                    <xsl:for-each select="$Citation_Language/*:codes/*:code">
                                        <xsl:variable name="code_language" select="."/>
                                        <xsl:if test="starts-with($contentValue, $code_language/@key)">
                                            <xsl:value-of select="concat(substring-before(replace($contentValue, $code_language/@key, $code_language/@value),' Version'),' Version')"/>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ref:marker>
                                <ref:locator>
                                    <ref:locator-key>
                                        <ref:key-name name="normcite"/>
                                        <ref:key-value>
                                            <xsl:attribute name="value">
                                                <xsl:value-of
                                                    select="replace($contentValue, $code/@key, $code/@value)"/>
                                            </xsl:attribute>
                                        </ref:key-value>
                                    </ref:locator-key>
                                    <ref:locator-params>
                                        <proc:param name="normprotocol" value="CAEditorial"/>
                                        <proc:param name="countrycode" value="CA"/>
                                        <proc:param name="targetdoclang">
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="$language='en'">
                                                        <xsl:text>fr-CA</xsl:text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:text>en-CA</xsl:text>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </proc:param>
                                    </ref:locator-params>
                                </ref:locator>
                            </ref:lnlink>
                        </doc:related-content-link>
                    </doc:related-content-item>
                </doc:related-content-grp>
            </doc:related-content>
        </xsl:if>
    </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>