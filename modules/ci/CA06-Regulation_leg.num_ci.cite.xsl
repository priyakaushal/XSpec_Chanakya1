<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:LN="function"
    version="2.0" exclude-result-prefixes="dita ci leg primlawinfo classify docinfo LN">
    

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num_ci.cite">
        <title>leg:num/ci:cite <lnpid>id-CA06-13825</lnpid></title>
        <body>
            <section>
                <ul>
                    <li><sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml> becomes
                            <targetxml>ref:citations/ref:cite4thisresource</targetxml> with
                        attribute <targetxml>@citetype="reporter"</targetxml> and create child
                        element <targetxml>lnci:cite</targetxml> for handling citation markup. <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:num&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:stat&gt;
            &lt;ci:statinfo spanref="stcspan1"&gt;
                &lt;ci:hier&gt;
                    &lt;ci:hierlev label="reg-no" num="225"&gt;
                        &lt;ci:hierlev label="year" num="2007"&gt;
                               &lt;ci:hierlev label="section" num="7" /&gt;
                        &lt;/ci:hierlev&gt;
                    &lt;/ci:hierlev&gt;
                &lt;/ci:hier&gt;
            &lt;/ci:statinfo&gt;
            &lt;ci:statref spanref="stcspan1"&gt;
                &lt;ci:publicationname normpubcode="ABRG" value="ABRG" /&gt;
            &lt;/ci:statref&gt;
        &lt;/ci:stat&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="stcspan1"&gt;Alta. Reg. 225/2007, s. 7&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/leg:num&gt;

		</pre>
                        <pre>
              <b><i>Example: Target Markup</i></b>
            

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:stat&gt;
               &lt;lnci:statinfo&gt;
                &lt;lnci:hier&gt;
                    &lt;lnci:hierlev label="reg-no" num="225"&gt;
                        &lt;lnci:hierlev label="year" num="2007"&gt;
                            &lt;lnci:hierlev label="section" num="7" /&gt;
                        &lt;/lnci:hierlev&gt;
                    &lt;/lnci:hierlev&gt;
                &lt;/lnci:hier&gt;
            &lt;/lnci:statinfo&gt;
             &lt;lnci:statref&gt;
                &lt;lnci:publicationname normpubcode="ABRG" value="ABRG" /&gt;
            &lt;/lnci:statref&gt;
            &lt;/lnci:stat&gt;
            &lt;lnci:content&gt;Alta. Reg. 225/2007, s. 7&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

                    </pre>
                        <note>When text appears inside <sourcexml>leg:num</sourcexml>, then
                            conversion need to move the pinpoint information into
                                <targetxml>lnci:content</targetxml>. This applies to CANADA
                            ONLY.</note>
                        <pre>
            
              <b><i>Example: Source Markup</i></b>

&lt;leg:num&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:stat&gt;
            &lt;ci:statinfo spanref="stcspan1"&gt;
                &lt;ci:hier&gt;
                    &lt;ci:hierlev label="reg-no" num="298"&gt;
                        &lt;ci:hierlev label="year" num="2001" /&gt; 
                    &lt;/ci:hierlev&gt;
                &lt;/ci:hier&gt;
            &lt;/ci:statinfo&gt;
            &lt;ci:statref spanref="stcspan1"&gt;
                &lt;ci:publicationname normpubcode="ONRG2" value="ONRG2" /&gt; 
            &lt;/ci:statref&gt;
        &lt;/ci:stat&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="stcspan1"&gt;O. Reg. 298/01&lt;/ci:span&gt; 
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;, Table2 
&lt;/leg:num&gt;

		</pre>
                        <pre>
              <b><i>Example: Target Markup</i></b>
            

&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:stat&gt;
               &lt;lnci:statinfo&gt;
                &lt;lnci:hier&gt;
                    &lt;lnci:hierlev label="reg-no" num="298"&gt;
                        &lt;lnci:hierlev label="year" num="2001"/&gt;
                    &lt;/lnci:hierlev&gt;
                &lt;/lnci:hier&gt;
            &lt;/lnci:statinfo&gt;
             &lt;lnci:statref&gt;
                &lt;lnci:publicationname normpubcode="ONRG2" value="ONRG2"/&gt;
            &lt;/lnci:statref&gt;
            &lt;/lnci:stat&gt;
                &lt;lnci:content&gt;O. Reg. 298/01, Table2&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

                    </pre>
                    </li>

                </ul>
            </section>
            <section>
                <note><b>Scenario 1 :</b>FIRST apply this scenario before applying the below
                    Scenario 2.<ul id="ul_gdf_wcs_vw">
                        <li>If <sourcexml>leg:num</sourcexml> does not exist inside the input
                            document then use the first <sourcexml>leg:officialnum</sourcexml> to
                            create only one
                                <targetxml>ref:citations/ref:cite4thisresource[@citetype="reporter"]</targetxml>
                            with child <targetxml>lnci:cite/lnci:content</targetxml> elements. (do
                            not do this for the DPSI exclusion list in Scenario 2 below)</li>
                    </ul></note>
                <note>If the value of <xref
                        href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                            ><sourcexml>leg:num/@ln.user-displayed="false"</sourcexml></xref> is
                        <b>solsak</b> , we have seperate handling for this.</note>
            </section>
            <example>
                <title>If No <sourcexml>leg:num</sourcexml> exit in the document</title>
                <codeblock> &lt;leg:info&gt; &lt;!- - If &lt;leg:num&gt; does not exist in source
                    document- - &gt; &lt;leg:officialnum&gt;SA 2011, c.
                    C-11.5&lt;/leg:officialnum&gt; &lt;leg:officialnum&gt;[Bill 25,
                    2011]&lt;/leg:officialnum&gt; ...... &lt;/leg:info&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:content&gt;SA 2011, c. C-11.5&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
                    &lt;primlawinfo:primlawinfo&gt; ..... &lt;primlawinfo:identifier
                    idtype="officialnum"&gt;SA 2011, c. C-11.5&lt;/primlawinfo:identifier&gt;
                    &lt;primlawinfo:identifier idtype="officialnum"&gt;[Bill 25,
                    2011]&lt;/primlawinfo:identifier&gt; &lt;/primlawinfo:primlawinfo&gt;
                </codeblock>
            </example>
            <note>For documents with the following DPSI values, NL conversion needs to convert
                    <sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml> to
                    <targetxml>ref:citations/ref:parallelcite</targetxml> with attribute
                    <targetxml>@citetype="reporter"</targetxml> and create child element
                    <targetxml>lnci:cite</targetxml> for handling citation markup. Also for
                documents with these DPSI values, if <sourcexml>leg:num</sourcexml> has no child
                    <sourcexml>ci:cite</sourcexml> and for the first
                    <sourcexml>leg:officialnum</sourcexml> then conversion should also create
                    <targetxml>ref:citations/ref:parallelcite</targetxml> with attribute
                    <targetxml>@citetype=”reporter” </targetxml> and the text going in
                lnci:content.</note>
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
                            <entry>Canadian Estate Administration Guide - 05 Former
                                Regulations</entry>
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
                            <entry>Droits et libertés de la personne en milieu de travail - 03
                                Lois</entry>
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
                            <entry>Code criminel et lois connexes annotés - 09 Archives -
                                Lois</entry>
                        </row>
                        <row>
                            <entry>0USD</entry>
                            <entry>424456</entry>
                            <entry>Code criminel et lois connexes annotés - 11 Archives -
                                Règlements</entry>
                        </row>
                        <row>
                            <entry>0USP</entry>
                            <entry>424500</entry>
                            <entry>Code criminel et lois connexes annotés - 12 Former
                                Regulations</entry>
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
            <note><b>Scenario 2 : </b>FIRST apply above Scenario 1 before applying this scenario.<ul
                    id="ul_qy5_zcs_vw">
                    <li>For documents containing the following DPSI values then conversion needs to
                        drop <sourcexml>leg:num </sourcexml>and the first
                            <sourcexml>leg:officialnum</sourcexml> in the target document.. </li>
                </ul></note>
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
                            <entry>0USA</entry>
                            <entry>424449</entry>
                            <entry>Code criminel et lois connexes annotés - 07 Règles de
                                pratique</entry>
                        </row>
                        <row>
                            <entry>0UW1</entry>
                            <entry>424849</entry>
                            <entry>Code criminel et lois connexes annotés - 08 Codes of
                                Practice</entry>
                        </row>
                        <row>
                            <entry>0V1Y</entry>
                            <entry>425433</entry>
                            <entry>Canadian Stock Exchanges - 02 IIROC &amp; Universal Market
                                Integrity Rules and Policies</entry>
                        </row>
                        <row>
                            <entry>0V22</entry>
                            <entry>425442</entry>
                            <entry>Canadian Stock Exchanges - 04 MFDA By-laws, Rules and
                                Policies</entry>
                        </row>
                        <row>
                            <entry>0V24</entry>
                            <entry>425448</entry>
                            <entry>Canadian Stock Exchanges - 07 ICE Futures Canada Inc.
                                Rules</entry>
                        </row>
                        <row>
                            <entry>0V26</entry>
                            <entry>425452</entry>
                            <entry>Canadian Stock Exchanges - 09 NASDAQ Marketplace Rules</entry>
                        </row>
                        <row>
                            <entry>0V28</entry>
                            <entry>425455</entry>
                            <entry>Canadian Stock Exchanges - 10 CNSX Rules, Policies and
                                Notices</entry>
                        </row>
                        <row>
                            <entry>0V2A</entry>
                            <entry>425459</entry>
                            <entry>Canadian Stock Exchanges - 12 TSX Rule Book and Policies</entry>
                        </row>
                        <row>
                            <entry>0V2B</entry>
                            <entry>425463</entry>
                            <entry>"Canadian Stock Exchanges - 13 TSX Venture Exchange Rules and
                                Policies"</entry>
                        </row>
                        <row>
                            <entry>0V2F</entry>
                            <entry>425474</entry>
                            <entry>Canadian Stock Exchanges - 15 NEX Policies</entry>
                        </row>
                        <row>
                            <entry>0V2I</entry>
                            <entry>425481</entry>
                            <entry>Canadian Stock Exchanges - 18 Montreal Stock Exchange Rules,
                                Policies, Guidelines and Fees</entry>
                        </row>
                        <row>
                            <entry>0VNX</entry>
                            <entry>TBD</entry>
                            <entry>Canadian Securities Law Reporter - 09 Securities Commissions
                                (Codes of Practice)</entry>
                        </row>
                        <row>
                            <entry>0VNX</entry>
                            <entry>TBD</entry>
                            <entry>Canadian Securities Law Reporter - 09 Securities Commissions
                                (Treaties)</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <section>
                <title>Changes</title>
                <p>2016-08-19: <ph id="change_20160819_AS">Updated NOTE for scenario1, Scenario2 and
                        instructions for DPSI value table</ph></p>
                <p>2016-08-04: <ph id="change_20160804_AS">Instruction to run Scenario1 first.
                        WebStar: WebTeam # 331046 </ph></p>
                <p>2016-07-07 : <ph id="change_20160707_AS"> Updated the instruction for handling
                            <sourcexml>leg:num/ci:cite</sourcexml></ph>, if source documents have
                    the following DPSI values.</p>
                <p>2014-08-01 : <ph id="change_20140801_SS"> Updated the instruction and example,
                        when <sourcexml>leg:num</sourcexml> does not exit inside the input document
                        then create only one target
                            "<targetxml>ref:citations/ref:cite4thisresource[@citetype="reporter"]</targetxml>"</ph>.</p>
                <p>2014-05-29 : <ph id="change_20140529_SSX"> Added instruction and example, when No
                            <sourcexml>leg:num</sourcexml> exit with text in it Webteam #
                        260692</ph></p>
                <p>2014-04-30: <ph id="change_20140430_SS">Update the instruction for adding the
                        attribute <targetxml>@citetype</targetxml> with "<b>reporter</b>" value
                        inside the <targetxml>ref:cite4thisresource</targetxml> in target conversion
                        when input is having
                            <sourcexml>leg:num/ci:cite@type="cite4thisdoc"</sourcexml>. Webteam #
                        255931 . </ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.num_ci.cite.dita  -->
    <!--	<xsl:message>CA06-Regulation_leg.num_ci.cite.xsl requires manual development!</xsl:message> -->
    <xsl:variable name="dpsi_restricted-1">
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
            <code key="0USA"/>
            <code key="0USC"/>
            <code key="0USD"/>
            <code key="0USP"/>
            <code key="0UTB"/>
            <code key="0UTC"/>
            <code key="0UVY"/>
            <code key="0UVZ"/>
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
    <xsl:variable name="Citation_Num">
        <codes>
            <code key="SI" value="TR"/>
            <code key="C.R.C." value="C.R.C."/>
            <code key="SOR" value="DORS"/>
            <code key="N.B. Reg." value="Règl. du N.-B."/>
            <code key="RSQ" value="LRQ"/>
            <code key="RSQ,CCQ," value="LRQ,CCQ"/>
            <code key="RSQ,CCR" value="LRQ,CCR"/>
            <code key="CQLR" value="RLRQ"/>
            <code key="TR" value="SI"/>
            <code key="DORS" value="SOR"/>
            <code key="Règl. du N.-B." value="N.B. Reg."/>
            <code key="LRQ" value="RSQ"/>
            <code key="LRQ,CCQ" value="RSQ,CCQ,"/>
            <code key="LRQ,CCR" value="RSQ,CCR"/>
            <code key="RLRQ" value="CQLR"/>
            <xsl:variable name="exKey"
                select="matches(//ci:span[ancestor::leg:num], 'SI') or matches(//ci:span[ancestor::leg:num], 'TR') or matches(//ci:span[ancestor::leg:num], 'C.R.C.') or matches(//ci:span[ancestor::leg:num], 'C.R.C.') or matches(//ci:span[ancestor::leg:num], 'SOR') or matches(//ci:span[ancestor::leg:num], 'DORS') or matches(//ci:span[ancestor::leg:num], 'N.B. Reg.') or matches(//ci:span[ancestor::leg:num], 'Règl. du N.-B.') or matches(//ci:span[ancestor::leg:num], 'RSQ') or matches(//ci:span[ancestor::leg:num], 'LRQ') or matches(//ci:span[ancestor::leg:num], 'RSQ,CCQ,') or matches(//ci:span[ancestor::leg:num], 'LRQ,CCQ') or matches(//ci:span[ancestor::leg:num], 'RSQ,CCR') or matches(//ci:span[ancestor::leg:num], 'LRQ,CCR') or matches(//ci:span[ancestor::leg:num], 'CQLR') or matches(//ci:span[ancestor::leg:num], 'RLRQ') or matches(//ci:span[ancestor::leg:num], 'TR') or matches(//ci:span[ancestor::leg:num], 'SI') or matches(//ci:span[ancestor::leg:num], 'DORS') or matches(//ci:span[ancestor::leg:num], 'SOR') or matches(//ci:span[ancestor::leg:num], 'Règl. du N.-B.') or matches(//ci:span[ancestor::leg:num], 'N.B. Reg.') or matches(//ci:span[ancestor::leg:num], 'LRQ') or matches(//ci:span[ancestor::leg:num], 'RSQ') or matches(//ci:span[ancestor::leg:num], 'LRQ,CCQ') or matches(//ci:span[ancestor::leg:num], 'RSQ,CCQ,') or matches(//ci:span[ancestor::leg:num], 'LRQ,CCR') or matches(//ci:span[ancestor::leg:num], 'RSQ,CCR') or matches(//ci:span[ancestor::leg:num], 'RLRQ') or matches(//ci:span[ancestor::leg:num], 'CQLR')"/>
            <xsl:choose>
                <xsl:when test="$exKey">
                    <code key="Preamble" value="Préambule"/>
                    <code key="Long Title" value="Titre intégral"/>
                    <code key="Short Title" value="Titre abrégé"/>
                    <code key="Enactment Clause" value="Formule d'édiction"/>
                    <code key="c." value="ch."/>
                    <code key="Schedule" value="annexe"/>
                    <code key="Annexe" value="Sch."/>
                    <code key="r1" value="r1"/>
                    <code key="R" value="R"/>
                    <code key="2nd" value="2e"/>
                    <code key="4th" value="4e"/>
                    <code key="3rd" value="3e"/>
                    <code key="5th" value="5e"/>
                    <code key="Supp." value="suppl."/>
                    <code key="TP" value="DT"/>
                    <code key="RP" value="DC"/>
                    <code key="Repeal Sch" value="ann abrogative"/>
                    <code key="Repeal Schedules" value="Annexe abrogratives"/>
                    <code key="Repealed" value="Abrogée"/>
                    <code key="Form" value="formule"/>
                    <code key="Part" value="Partie"/>
                    <code key="Table of Contents" value="Table des matières"/>
                    <code key="Introduction" value="Introduction"/>
                    <code key="index" value="Indice"/>
                    <code key="Indice" value="Index"/>
                    <code key="Sch" value="Ann"/>
                    <code key="SCH" value="ANN"/>
                    <code key="Préambule" value="Preamble"/>
                    <code key="Titre intégral" value="Long Title"/>
                    <code key="Titre abrégé" value="Short Title"/>
                    <code key="Formule d'édiction" value="Enactment Clause"/>
                    <code key="ch." value="c."/>
                    <code key="annexe" value="Schedule"/>
                    <code key="Sch." value="Annexe"/>
                    <code key="r1" value="r1"/>
                    <code key="R" value="R"/>
                    <code key="2e" value="2nd"/>
                    <code key="4e" value="4th"/>
                    <code key="3e" value="3rd"/>
                    <code key="5e" value="5th"/>
                    <code key="suppl." value="Supp."/>
                    <code key="DT" value="TP"/>
                    <code key="DC" value="RP"/>
                    <code key="ann abrogative" value="Repeal Sch"/>
                    <code key="Annexe abrogratives" value="Repeal Schedules"/>
                    <code key="Abrogée" value="Repealed"/>
                    <code key="formule" value="Form"/>
                    <code key="Partie" value="Part"/>
                    <code key="Table des matières" value="Table of Contents"/>
                    <code key="Introduction" value="Introduction"/>
                    <code key="Ann" value="Sch"/>
                    <code key="ANN" value="SCH"/>
                </xsl:when>
                <xsl:otherwise/>
            </xsl:choose>
        </codes>
    </xsl:variable>
    
    <!--<xsl:variable name="Citation_Language">
        <codes>
            <code key="L.R.C." value="French Version"/>
            <code key="R.S.C." value="English Version"/>
        </codes>
    </xsl:variable>-->
    <xsl:key name="version" match="*:code" use="string(@key)"/>
    
    <!--<xsl:variable name="language" select="/LEGDOC/docinfo/docinfo:doc-lang/@lang"/>-->
    <!--Key kCodeByName for match the code -->
    <xsl:key name="kCodeByName" match="code" use="string(@key)"/>
    
    <xsl:template match="leg:num" priority="2">
        <xsl:variable name="content" select="."/>
        <xsl:variable name="dpsi" select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='dpsi']"/>
        <!--  Original Target XPath:  ref:citations/ref:cite4thisresource   -->
        <xsl:choose>
            <xsl:when test="contains(., 'solsak')">
                <primlawinfo:primlawinfo>
                    <classify:classification classscheme="legislation.indicator">
                        <classify:classitem>
                            <classify:classitem-identifier>
                                <classify:classname>solsak</classify:classname>
                            </classify:classitem-identifier>
                        </classify:classitem>
                    </classify:classification>
                    <xsl:if test="following-sibling::leg:officialname">
                        <legisinfo:legisinfo>
                            <legisinfo:names>
                                <xsl:apply-templates select="following-sibling::leg:officialname"/>
                            </legisinfo:names>
                        </legisinfo:legisinfo>
                    </xsl:if>
                    <xsl:apply-templates select="following-sibling::leg:dates"/>
                    <xsl:apply-templates select="following-sibling::leg:officialnum[not(child::ci:cite)]"/>
                </primlawinfo:primlawinfo>
                <!--<xsl:if
                    test="preceding-sibling::leg:officialnum | following-sibling::leg:officialnum">
                    <ref:citations>
                        <ref:cite4thisresource citetype="reporter">
                            <lnci:cite>
                                <lnci:content>
                                    <xsl:value-of
                                        select="preceding-sibling::leg:officialnum | following-sibling::leg:officialnum[1]"
                                    />
                                </lnci:content>
                            </lnci:cite>
                        </ref:cite4thisresource>
                    </ref:citations>
                </xsl:if>-->
                
                <xsl:apply-templates select="following-sibling::leg:officialnum[not(child::ci:cite)][not(preceding-sibling::leg:num[child::ci:cite]) and not(preceding-sibling::leg:num[not(contains(.,'solsak'))])]" mode="ref_citation_officialnum"/>
            </xsl:when>
            <xsl:when test="child::ci:cite[@type = 'cite4thisdoc'] and not(($dpsi = $dpsi_restricted-1/*:codes/*:code/@*:key))">
                <ref:citations>
                    <xsl:variable name="content" select="normalize-space(.)"/>
                    <!--<xsl:for-each select="$Citation_Num/*:codes/*:code">-->
                    <!--<xsl:variable name="code" select="."/>-->
                    <xsl:if
                        test="matches($content, concat('^(', string-join($Citation_Num//*:code/@*:key, ')|('), ')'))">
                        <ref:parallelcite citetype="parallel">
                            <lnci:cite>
                                <lnci:content>
                                    <xsl:variable name="string_token">
                                        <root>
                                            <xsl:for-each select="tokenize($content, ' ')">
                                                <p>
                                                    <xsl:value-of select="."/>
                                                </p>
                                            </xsl:for-each>
                                        </root>
                                    </xsl:variable>
                                    <xsl:variable name="content_replace">
                                        <xsl:for-each select="$string_token//*:p">
                                            <xsl:variable name="val" select="normalize-space(.)"/>
                                            <xsl:choose>
                                                <xsl:when test="($val = $Citation_Num/*:codes/*:code/@*:key) and (not(contains($val,'(')) or not(contains($val,')')))">
                                                    <xsl:variable name="process">
                                                        
                                                        <xsl:for-each
                                                            select="$Citation_Num/*:codes/*:code">
                                                            <xsl:if test="$val = @*:key">
                                                                <xsl:element name="pr">
                                                                    <xsl:value-of select="replace($val, @*:key, @*:value)"/>
                                                                </xsl:element>
                                                            </xsl:if>
                                                            
                                                        </xsl:for-each>
                                                    </xsl:variable>
                                                    
                                                    <p>
                                                        <xsl:value-of select="$process//*:pr[1]"/>
                                                    </p>        
                                                </xsl:when>
                                                <xsl:when test="contains($val,'(')">
                                                    <xsl:variable name="process">
                                                        <xsl:variable name="val_1" select="substring-after($val,'(')"/>
                                                        <!--<xsl:message>
                                                            <xsl:value-of select="$val_1"/>
                                                        </xsl:message>-->
                                                        <xsl:for-each
                                                            select="$Citation_Num/*:codes/*:code">
                                                            <xsl:if test="$val_1 = @*:key">
                                                                <xsl:element name="pr">
                                                                    <xsl:value-of select="concat('(',replace($val_1,@*:key, @*:value))"/>
                                                                </xsl:element>
                                                            </xsl:if>
                                                            
                                                        </xsl:for-each>
                                                    </xsl:variable>
                                                    
                                                    <p>
                                                        <xsl:value-of select="$process//*:pr[1]"/>
                                                    </p>  
                                                </xsl:when>
                                                <xsl:when test="contains($val,')')">
                                                    <xsl:variable name="process">
                                                        <xsl:variable name="val_1" select="substring-before($val,')')"/>
                                                        <!--<xsl:message>
                                                            <xsl:value-of select="$val_1"/>
                                                        </xsl:message>-->
                                                        <xsl:for-each
                                                            select="$Citation_Num/*:codes/*:code">
                                                            <xsl:if test="$val_1 = @*:key">
                                                                <xsl:element name="pr">
                                                                    <xsl:value-of select="concat(replace($val_1,@*:key, @*:value),')')"/>
                                                                </xsl:element>
                                                            </xsl:if>
                                                            
                                                        </xsl:for-each>
                                                    </xsl:variable>
                                                    
                                                    <p>
                                                        <xsl:value-of select="$process//*:pr[1]"/>
                                                    </p>  
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <p><xsl:value-of select="$val"/></p>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            
                                        </xsl:for-each>
                                    </xsl:variable>
                                    <xsl:value-of select="string-join($content_replace//*:p, ' ')"/>
                                    <!--<xsl:value-of
                                            select="LN:getString($content, $Parallel_Citation_num/*:codes/*:code[1], 1, count($Parallel_Citation_num/*:codes/*:code))"
                                        />-->
                                </lnci:content>
                            </lnci:cite>
                        </ref:parallelcite>
                    </xsl:if>
                    <!--</xsl:for-each>-->
                    
                    <xsl:if
                        test="following-sibling::leg:officialnum[starts-with(., 'Enacted as: S.M')]">
                        <xsl:apply-templates
                            select="following-sibling::leg:officialnum[starts-with(., 'Enacted as: S.M')]"
                            mode="parallel"/>
                    </xsl:if>
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
                                <xsl:if test="text()[preceding-sibling::ci:cite] != ''">
                                    <xsl:value-of select="text()[preceding-sibling::ci:cite]"/>
                                </xsl:if>
                            </lnci:content>
                        </lnci:cite>
                    </ref:cite4thisresource>
                    <xsl:if test="contains($first_act,'true')">
                    <ref:cite4thisresource>
                        <lnci:cite type="act">
                            <xsl:choose>
                                <xsl:when test="contains(descendant::ci:span, ', s. 1')">
                                    <lnci:content>
                                        <xsl:value-of
                                            select="replace(descendant::ci:span, ', s. 1', '')"/>
                                    </lnci:content>
                                </xsl:when>
                                <xsl:otherwise>
                                    <lnci:content>
                                        <xsl:value-of select="descendant::ci:span"/>
                                        <xsl:if test="text()[preceding-sibling::ci:cite] != ''">
                                            <xsl:value-of
                                                select="text()[preceding-sibling::ci:cite]"/>
                                        </xsl:if>
                                    </lnci:content>
                                </xsl:otherwise>
                            </xsl:choose>
                        </lnci:cite>
                    </ref:cite4thisresource>
                    </xsl:if>
                    
                    <!--                    <ref:cite4thisresource citetype="reporter">
                        <lnci:cite>
                            <lnci:content>
                                <xsl:value-of select="descendant::ci:span"/>
                            </lnci:content>
                        </lnci:cite>
                    </ref:cite4thisresource>-->
                </ref:citations>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when
                        test="($dpsi = $dpsi_restricted-1/*:codes/*:code/@*:key) and matches($content, concat('^(', string-join($Citation_Num//*:code/@*:key, ')|('), ')'))">
                        <ref:citations>
                            <xsl:variable name="content" select="."/>
                            <ref:parallelcite citetype="reporter">
                                <lnci:cite>
                                    <lnci:content>
                                        <xsl:choose>
                                            <xsl:when test="$dpsi='0USA' or $dpsi='0UW1' or $dpsi='0V1Y' or $dpsi='0V22' or $dpsi='0V24' or $dpsi='0V26' or $dpsi='0V28' or $dpsi='0V2A' or $dpsi='0V2B' or $dpsi='0V2F' or $dpsi='0V2I' or $dpsi='0VNX' or $dpsi='0VNX'">
                                                <xsl:value-of select="//leg:officialnum[1]"/>
                                            </xsl:when>
                                            <xsl:otherwise>                                        <xsl:value-of select="."/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </lnci:content>
                                </lnci:cite>
                            </ref:parallelcite>
                        </ref:citations>
                    </xsl:when>
                    <xsl:otherwise>
                        <ref:citations>
                            <xsl:variable name="content" select="."/>
                            <xsl:if
                                test="matches($content, concat('^(', string-join($Citation_Num//*:code/@*:key, ')|('), ')'))">
                                
                                
                                <ref:parallelcite citetype="parallel">
                                    <lnci:cite>
                                        <lnci:content>
                                            <!--<xsl:for-each select="$code/@key">-->
                                            <!--<xsl:value-of
                                            select="replace($content, $code/@key, $code/@value)"/>-->
                                            <xsl:value-of
                                                select="LN:getString($content, $Citation_Num//*:code[1], 1, count($Citation_Num//*:code))"
                                            />
                                        </lnci:content>
                                    </lnci:cite>
                                </ref:parallelcite>
                                
                            </xsl:if>
                            <ref:cite4thisresource citetype="reporter">
                                <lnci:cite>
                                    <lnci:content>
                                        <xsl:value-of select="normalize-space(.)"/>
                                    </lnci:content>
                                </lnci:cite>
                            </ref:cite4thisresource>
                        </ref:citations>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:function name="LN:getString">
        <xsl:param name="string"/>
        <xsl:param name="code"/>
        <xsl:param name="start"/>
        <xsl:param name="end"/>
        <xsl:choose>
            <xsl:when test="$start &gt; $end">
                <xsl:value-of select="$string"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="key" select="$code/@*:key"/>
                <xsl:variable name="value" select="$code/@*:value"/>
                <xsl:variable name="seq" select="$start + 1"/>
                <xsl:value-of
                    select="LN:getString(replace($string, $key, $value), $Citation_Num//*:code[$seq], $seq, $end)"
                />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>


    <xsl:template match="ci:hierlev" priority="21">
        <lnci:hierlev>            
            <xsl:attribute name="num">
                <xsl:value-of select="@num"/>
            </xsl:attribute>
            <xsl:attribute name="label">
                <xsl:value-of select="@label"/>
            </xsl:attribute>
            <xsl:apply-templates select="child::ci:hierlev"/>
        </lnci:hierlev>
    </xsl:template>

    <xsl:template match="ci:publicationname" priority="21">
        <lnci:publicationname>
            <xsl:attribute name="normpubcode">
                <xsl:value-of select="@normpubcode"/>
            </xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="@value"/>
            </xsl:attribute>
        </lnci:publicationname>
    </xsl:template>
    <xsl:template match="ci:content" mode="doc-related">
        
        <xsl:variable name="dpsi"
            select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'dpsi']"/>
        <xsl:variable name="contentValue" select="."/>
        <xsl:choose>
            <xsl:when test="$dpsi = $dpsi_restricted-1/*:codes/*:code/@*:key"/>
            <xsl:otherwise>
                <!--<xsl:for-each select="$Parallel_Citation_num/*:codes/*:code">
            <xsl:variable name="code" select="."/>
            <xsl:message>
                <xsl:value-of select="$code"/>
            </xsl:message>-->
                <xsl:if
                    test="matches($contentValue, concat('^(', string-join($Citation_Num//*:code/@*:key, ')|('), ')'))">
                    <doc:related-content>
                        <doc:related-content-grp content-type="alternate-language-version">
                            <doc:related-content-item>
                                <doc:related-content-link>
                                    <ref:lnlink service="TRAVERSE">
                                        <ref:marker>
                                            <xsl:variable name="cont-text" select="substring-before(., ' ')"/>
                                            <xsl:if test="matches($cont-text, 'SI') or matches($cont-text, 'C.R.C.') or matches($cont-text, 'SOR') or matches($cont-text, 'Man. Reg.') or matches($cont-text, 'N.B. Reg.') or matches($cont-text, 'RSQ') or matches($cont-text, 'RSQ,CCQ,') or matches($cont-text, 'RSQ,CCR') or matches($cont-text, 'CQLR')">
                                                <xsl:text>French Version</xsl:text>
                                            </xsl:if>
                                            <xsl:if test="matches($cont-text, 'TR') or matches($cont-text, 'C.R.C.') or matches($cont-text, 'DORS') or matches($cont-text, 'Règl. du') or matches($cont-text, 'LRQ') or matches($cont-text, 'LRQ,CCQ') or matches($cont-text, 'LRQ,CCR') or matches($cont-text, 'RLRQ')">
                                                <xsl:text>English Version</xsl:text>
                                            </xsl:if>                    
                                        </ref:marker>
                                        <ref:locator>
                                            <ref:locator-key>
                                                <ref:key-name name="normcite"/>
                                                <ref:key-value>
                                                    <xsl:variable name="contentValue1" select="normalize-space(ancestor::leg:num)"/>
                                                    <xsl:attribute name="value">
                                                        <xsl:variable name="string_token">
                                                            <root>
                                                                <xsl:for-each select="tokenize($contentValue1, ' ')">
                                                                    <p>
                                                                        <xsl:value-of select="."/>
                                                                    </p>
                                                                </xsl:for-each>
                                                            </root>
                                                        </xsl:variable>
                                                        <xsl:variable name="content_replace">
                                                            <xsl:for-each select="$string_token//*:p">
                                                                <xsl:variable name="val" select="normalize-space(.)"/>
                                                                <xsl:choose>
                                                                    <xsl:when test="(replace($val,',','') = $Citation_Num/*:codes/*:code/@*:key) and (not(contains($val,'(')) or not(contains($val,')')))">
                                                                        <xsl:variable name="process">
                                                                            
                                                                            <xsl:for-each
                                                                                select="$Citation_Num/*:codes/*:code">
                                                                                <xsl:if test="$val = @*:key">
                                                                                    <xsl:element name="pr">
                                                                                        <xsl:value-of select="replace($val, @*:key, @*:value)"/>
                                                                                    </xsl:element>
                                                                                </xsl:if>
                                                                                
                                                                            </xsl:for-each>
                                                                        </xsl:variable>
                                                                        
                                                                        <p>
                                                                            <xsl:value-of select="$process//*:pr[1]"/>
                                                                        </p>        
                                                                    </xsl:when>
                                                                    <xsl:when test="contains($val,'(')">
                                                                        <xsl:variable name="process">
                                                                            <xsl:variable name="val_1" select="substring-after($val,'(')"/>
                                                                            <xsl:for-each
                                                                                select="$Citation_Num/*:codes/*:code">
                                                                                <xsl:if test="replace($val_1,',','') = @*:key">
                                                                                    <xsl:element name="pr">
                                                                                        <xsl:value-of select="concat('(',replace($val_1,@*:key, @*:value))"/>
                                                                                    </xsl:element>
                                                                                </xsl:if>
                                                                            </xsl:for-each>
                                                                        </xsl:variable>
                                                                        
                                                                        <p>
                                                                            <xsl:value-of select="$process//*:pr[1]"/>
                                                                        </p>  
                                                                    </xsl:when>
                                                                    <xsl:when test="contains($val,')')">
                                                                        <xsl:variable name="process">
                                                                            <xsl:variable name="val_1" select="substring-before($val,')')"/>
                                                                            <xsl:for-each
                                                                                select="$Citation_Num/*:codes/*:code">
                                                                                <xsl:if test="replace($val_1,',','') = @*:key">
                                                                                    <xsl:element name="pr">
                                                                                        <xsl:value-of select="concat(replace($val_1,@*:key, @*:value),')')"/>
                                                                                    </xsl:element>
                                                                                </xsl:if>
                                                                                
                                                                            </xsl:for-each>
                                                                        </xsl:variable>
                                                                        
                                                                        <p>
                                                                            <xsl:value-of select="$process//*:pr[1]"/>
                                                                        </p>  
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <p><xsl:value-of select="$val"/></p>
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                                
                                                            </xsl:for-each>
                                                        </xsl:variable>
                                                        <xsl:value-of select="string-join($content_replace//*:p, ' ')"/>
                                                    </xsl:attribute>
                                                </ref:key-value>
                                            </ref:locator-key>
                                            <ref:locator-params>
                                                <proc:param name="normprotocol" value="CAEditorial"/>
                                                <proc:param name="countrycode" value="CA"/>
                                                <proc:param name="targetdoclang">
                                                    <xsl:attribute name="value">
                                                        <xsl:choose>
                                                            <xsl:when test="$language = 'en'">
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
                <!--</xsl:for-each>-->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
