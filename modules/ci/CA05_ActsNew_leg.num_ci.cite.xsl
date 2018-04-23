<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:functx="http://www.functx.com" version="2.0" exclude-result-prefixes="#all">


    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num_ci.cite">
        <title>leg:num/ci:cite <lnpid>id-CA05-13628</lnpid></title>
        <body>
            <section>
                <p><sourcexml>leg:num/ci:cite[@type="cite4thisdoc"]</sourcexml> becomes
                        <targetxml>ref:citations/ref:cite4thisresource</targetxml> with attribute
                        <targetxml>@citetype="reporter"</targetxml> and create child element
                        <targetxml>lnci:cite</targetxml> for handling citation markup.</p>
                <note>When text appears inside <sourcexml>leg:num</sourcexml>, then conversion need
                    to move the pinpoint information into <targetxml>lnci:content</targetxml>. </note>
                <note>If <sourcexml>leg:num</sourcexml> does not contain any citation markup and has
                    just text then it will get converted into
                        <targetxml>ref:citations/ref:cite4thisresource/@citetype="reporter"</targetxml>
                    and create child <targetxml>lnci:cite/lnci:content</targetxml> to capture the
                    text.</note>
            </section>
            <example>
                <title>Mapping of <sourcexml>leg:num/ci:cite</sourcexml></title>
                <codeblock> &lt;leg:num&gt; &lt;ci:cite type="cite4thisdoc"&gt; &lt;ci:stat&gt;
                    &lt;ci:statinfo spanref="stcspan1"&gt; &lt;ci:hier&gt; &lt;ci:hierlev
                    label="year" num="1996"&gt;&lt;ci:hierlev label="chapter" num="1"
                    /&gt;&lt;/ci:hierlev&gt; &lt;/ci:hier&gt; &lt;/ci:statinfo&gt; &lt;ci:statref
                    spanref="stcspan1"&gt; &lt;ci:publicationname normpubcode="RSBC" value="RSBC"
                    /&gt; &lt;/ci:statref&gt; &lt;/ci:stat&gt; &lt;ci:content&gt; &lt;ci:span
                    spanid="stcspan1"&gt;R.S.B.C. 1996, c. 1&lt;/ci:span&gt; &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;, Preamble&lt;/leg:num&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:stat&gt; &lt;lnci:statinfo&gt; &lt;lnci:hier&gt;
                    &lt;lnci:hierlev label="year" num="1996"&gt;&lt;lnci:hierlev label="chapter"
                    num="1" /&gt;&lt;/lnci:hierlev&gt; &lt;/lnci:hier&gt; &lt;/lnci:statinfo&gt;
                    &lt;lnci:statref&gt; &lt;lnci:publicationname normpubcode="RSBC" value="RSBC"
                    /&gt; &lt;/lnci:statref&gt; &lt;/lnci:stat&gt; &lt;lnci:content&gt;R.S.B.C.
                    1996, c. 1, Preamble&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; </codeblock>
            </example>
            <example>
                <title>Mapping of <sourcexml>leg:num</sourcexml> with text only</title>
                <codeblock> &lt;leg:num&gt;R.S.B.C. 1996, c. 117, s. 2&lt;/leg:num&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:content&gt;R.S.B.C. 1996, c. 117, s.
                    2&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
                    &lt;/ref:citations&gt; </codeblock>
            </example>
            <section>
                <note>If no <sourcexml>leg:num</sourcexml> exists in the document with text in it,
                    then we need to create
                        <targetxml>ref:citations/ref:cite4thisresource/@citetype="reporter"</targetxml>
                    and create child <targetxml>lnci:cite/lnci:content</targetxml> and capture the
                        <b>first</b>
                    <sourcexml>leg:officialnum</sourcexml> text in it. (do not do this for the DPSI
                    exclusion list below)</note>
                <note>If the value of <xref
                        href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                            ><sourcexml>leg:num/@ln.user-displayed="false"</sourcexml></xref> is
                        <b>solsak</b> , we have seperate handling for this.</note>
            </section>
            <example>
                <title>If No <sourcexml>leg:num</sourcexml> exit in the document</title>
                <codeblock> &lt;leg:info&gt; &lt;leg:num
                    ln.user-displayed="false"&gt;solsak&lt;/leg:num&gt; &lt;!- - does’t have
                    &lt;leg:num&gt; with text in it - - &gt; &lt;leg:officialnum&gt;SA 2011, c.
                    C-11.5&lt;/leg:officialnum&gt; &lt;leg:officialnum&gt;[Bill 25,
                    2011]&lt;/leg:officialnum&gt; ...... &lt;/leg:info&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;primlawinfo:primlawinfo&gt; &lt;classify:classification
                    classscheme="legislation.indicator"&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;solsak&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/primlawinfo:primlawinfo&gt;
                    &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
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

            <section>
                <title>Changes</title>
                <p>2016-08-19: <ph id="change_20160819_AS">Updated NOTE for no leg:num and for DPSI
                        value table</ph></p>
                <p>2016-07-07 : <ph id="change_20160707_SS"> Updated the instruction for handling
                            <sourcexml>leg:num/ci:cite</sourcexml>, if source documents have
                        following DPSI values.</ph></p>
                <p>2014-06-09: <ph id="change_20140609_PS">Added
                            <targetxml>@citetype="reporter"</targetxml> value in
                            <targetxml>ref:cite4thisresource</targetxml> element, this immediate
                        applies to CA05.</ph></p>
                <p>2014-05-29 : <ph id="change_20140529_SSX"> Added instruction and example, when No
                            <b>leg:num</b> exit with text in it Webteam # 260692</ph></p>
                <p>2014-04-30: <ph id="change_20140430_PS">When input documents are having
                            <sourcexml>leg:num/ci:cite@type="cite4thisdoc"</sourcexml> in source
                        documents then conversion will add attribute
                            <targetxml>@citetype="reporter"</targetxml> inside the
                            <targetxml>ref:cite4thisresource</targetxml>. Webteam # 255931.</ph></p>
                <p>2013-02-28: <ph id="change_20130228_VV">Instruction and example updated for
                            <sourcexml>leg:num/ci:cite</sourcexml> scenario.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.num_ci.cite.dita  -->
    <!--	<xsl:message>leg.num_ci.cite.xsl requires manual development!</xsl:message> -->
    <xsl:variable name="sourceLanguage" select="/LEGDOC/docinfo/docinfo:doc-lang/@lang"/>
    <xsl:variable name="dpsiRestricted">
        <!-- no ref:cite4thisresource or alternate language versions should be created for these restricted dpsis.
            they get ref:citations/ref:parallelcite[@citetype="reporter"] -->
        <xsl:if test="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'dpsi'] = ('0U95', '0U96', '0U9A', '0U9B', '0U9S', '0U9T', '0U9V', '0U9W', '0U9X', '0U9Y', '0UA4', '0UA5', '0UA6', '0UA7', '0UAN', '0UAO', '0UAP', '0UAQ', '0UCM', '0UCN', '0UCO', '0UCP', '0UCV', '0UCW', '0UCX', '0UCY', '0UD9', '0UDA', '0UDB', '0UDC', '0UDF', '0UDG', '0UDL', '0UDM', '0UDN', '0UDO', '0UDT', '0UDU', '0UDV', '0UEE', '0UEF', '0UEG', '0UEJ', '0UFB', '0UFC', '0UFD', '0UFE', '0UFT', '0UFU', '0UHJ', '0UHK', '0UHL', '0UHM', '0UI1', '0UI2', '0UI3', '0UI4', '0UJ2', '0UJ3', '0UJ8', '0UJ9', '0UJA', '0UJB', '0UN0', '0UN5', '0UN6', '0UNO', '0UNP', '0UNZ', '0UOD', '0UOE', '0UOJ', '0UOK', '0UOS', '0UOT', '0UOV', '0UPV', '0UPW', '0UPX', '0UPY', '0US1', '0US6', '0US7', '0USC', '0USD', '0USP', '0UTB', '0UTC', '0UVY', '0UVZ')">
            <xsl:value-of select="'true'"/>
        </xsl:if>
    </xsl:variable>
    <xsl:variable name="first_act" select="lower-case(/*/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'])"/>
    
    <xsl:variable name="citationTranslationTable">
        <!-- the identification of the source language and a term will trigger the translation process.
    subterms are translations that only kick in in the context of that term itself. Order
    of sub/terms matters because we don't want to translate substring of larger strings that translate differently first.
    These terms are stream-specific, while I don't think the list of DPSIs really is.
        -->
        <terms>
            <term en="RSA" fr="RSA"/>            
            <term en="R.S.C." fr="L.R.C."/>
            <term en="S.C." fr="L.C."/>
            <term en="R.S.N.B." fr="L.R.N.-B."/>
            <term en="S.N.B." fr="L.N.-B."/>
            <term en="CQLR" fr="RLRQ"/>
            <term en="C.C.Q." fr="C.C.Q."/>            
            <term en="R.S.Q." fr="L.R.Q."/>
            <term en="S.Q." fr="L.Q."/>
            <term en="RLRQ" fr="CQLR"/>
                <subterm en="s." fr="art."/>
                <subterm en="No." fr="no"/>
                <subterm en="c." fr="ch."/>
                <subterm en="Appendix" fr="appendice"/>
                <subterm en="Long Title" fr="Titre intégral"/>
                <subterm en="Preamble" fr="Préambule"/>               
                <subterm en="Repeal Schedules" fr="Annexe abrogratives"/>
                <subterm en="Repeal Sch" fr="ann abrogative"/>   
                <subterm en="Schedule" fr="annexe"/>
                <subterm en="(2nd Supp.)" fr="(2e suppl.)"/>
                <subterm en="(4th Supp.)" fr="(4e suppl.)"/>
                <subterm en="(3rd Supp.)" fr="(3e suppl.)"/>
                <subterm en="(5th Supp.)" fr="(5e suppl.)"/>
                <subterm en="TP" fr="DT"/>
                <subterm en="RP" fr="DC"/>                             
                <subterm en="Repealed" fr="Abrogée"/>
                <subterm en="Form" fr="formule"/>
                <subterm en="Part" fr="Partie"/>
                <subterm en="Table of Contents" fr="Table des matières"/>
                <subterm en="Introduction" fr="Introduction"/>
                <subterm en="Index" fr="Indice"/>
                <subterm en="Sch" fr="Ann"/>
                <subterm en="SCH" fr="ANN"/>
                <subterm en="Enactment Clause" fr="Formule d'édiction"/>
        </terms>
    </xsl:variable>
    
    <xsl:variable name="citationContent">
        <!-- use leg:num if it has non-solsak content, otherwise use first leg:officialnum
        This is the pinpoint citation for the specific doc. -->
        <citationContent>
            <xsl:choose>
                <xsl:when test="//leg:info[1]/leg:num[child::* or text()][not(contains(., 'solsak'))]">
                    <xsl:copy-of select="//leg:info[1]/leg:num[child::* or text()][not(contains(., 'solsak'))]/node()"/>
                </xsl:when>
                <xsl:when test="//leg:info[1]/leg:officialnum[1][child::* or text()]">
                    <xsl:copy-of select="//leg:info[1]/leg:officialnum[1]/node()"/>
                </xsl:when>
            </xsl:choose>
        </citationContent>
    </xsl:variable>
    
    <xsl:variable name="citationTextPossibilities">
        <xsl:value-of select="string($citationContent)"/>
    </xsl:variable>
    
    <xsl:template match="leg:num[contains(., 'solsak')]" mode="solsak">
        <classify:classification classscheme="legislation.indicator">
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classname>solsak</classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
    </xsl:template>
    
    
    <xsl:template name="createRefCitations">
        <xsl:if test="$citationContent/*:citationContent/node()">
            <ref:citations>
                <xsl:choose>
                    <xsl:when test="$dpsiRestricted = 'true'">
                        <!-- restricted dpsi 'WK' sources ONLY get this parallelcite and nothing else. Customers don't want them
                            searched on in the same way as our proprietary collection -->
                        <ref:parallelcite citetype="reporter">
                            <xsl:choose>
                                <xsl:when test="$citationContent/*:citationContent/ci:cite">
                                    <xsl:apply-templates
                                        select="$citationContent/*:citationContent/node() except text()[preceding-sibling::node()[1][self::ci:cite]]"/>
                                    <!-- suppresses last text node sucked into lnci:content here -->
                                </xsl:when>
                                <xsl:otherwise>
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:apply-templates select="$citationContent/*:citationContent/node()"/>
                                        </lnci:content>
                                    </lnci:cite>
                                </xsl:otherwise>
                            </xsl:choose>
                        </ref:parallelcite>
                        <xsl:if test="$first_act = 'true'">
                            <ref:cite4thisresource>
                                <lnci:cite type="act">
                                    <lnci:content>
                                        <xsl:apply-templates
                                            select="
                                            if (/LEGDOC/leg:body/leg:info/leg:officialnum[1]//ci:content) then
                                            //LEGDOC/leg:body/leg:info/leg:officialnum[1]//ci:content/node()
                                            else
                                            //LEGDOC/leg:body/leg:info/leg:officialnum[1]/text()"
                                        />
                                    </lnci:content>
                                </lnci:cite>
                            </ref:cite4thisresource>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <ref:cite4thisresource>
                            <xsl:attribute name="citetype">
                                <xsl:text>reporter</xsl:text>
                            </xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="$citationContent/*:citationContent/ci:cite">
                                    
                                    <xsl:apply-templates select="$citationContent/*:citationContent/child::* except text()[preceding-sibling::node()[1][self::ci:cite]]"/>
                                    <!-- suppresses last text node sucked into lnci:content here -->
                                </xsl:when>
                                <xsl:otherwise>
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:apply-templates
                                                select="$citationContent/*:citationContent/node()"/>
                                        </lnci:content>
                                    </lnci:cite>
                                </xsl:otherwise>
                            </xsl:choose>

                        </ref:cite4thisresource>
                        <!-- create act level citation for first act docs.
                        does not apply to restricted dpsi 'WK' docs.
                        always pull content from leg:officialnum regardless of
                        where we pull content from for the citation because 
                        leg:num will often have pinpoint info for the doc while
                        leg:officialnum refers to the act level itself-->
                        <xsl:if test="$first_act = 'true'">
                            <ref:cite4thisresource>
                                <lnci:cite type="act">
                                    <lnci:content>
                                        <xsl:apply-templates
                                            select="
                                            if (/LEGDOC/leg:body/leg:info/leg:officialnum[1]//ci:content) then
                                            //LEGDOC/leg:body/leg:info/leg:officialnum[1]//ci:content/node()
                                            else
                                            //LEGDOC/leg:body/leg:info/leg:officialnum[1]/text()"
                                        />
                                    </lnci:content>
                                </lnci:cite>
                            </ref:cite4thisresource>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when
                                test="$sourceLanguage = 'en' and (some $i in $citationTranslationTable/terms/term/@en
                                satisfies (contains($citationTextPossibilities , $i)))">

                                <!-- alt language version detected, create parallelcite translate English to French -->
                                <ref:parallelcite citetype="parallel">
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:for-each
                                                select="$citationContent/*:citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                <!--<xsl:call-template name="translate-string">
                                                  <xsl:with-param name="translate"
                                                  select="'English-French'"/>
                                                </xsl:call-template>-->
                                               <!-- <xsl:call-template name="translate">
                                                    <xsl:with-param name="string" select="."/>
                                                    <xsl:with-param name="old"
                                                        select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"/>
                                                    <xsl:with-param name="new"
                                                        select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>
                                                    
                                                </xsl:call-template>-->
                                            </xsl:for-each>
                                        </lnci:content>
                                    </lnci:cite>
                                </ref:parallelcite>
                            </xsl:when>
                            <xsl:when
                                test="$sourceLanguage = 'fr' and (some $i in $citationTranslationTable/terms/term/@fr
                                satisfies (contains($citationTextPossibilities , $i)))">
                                <!-- alt language version detected, create parallelcite translate French to English -->
                                <ref:parallelcite citetype="parallel">
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:for-each
                                                select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                <xsl:call-template name="translate">
                                                    <xsl:with-param name="string" select="."/>
                                                    <xsl:with-param name="old"
                                                        select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>
                                                    <xsl:with-param name="new"
                                                        select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"/>
                                                </xsl:call-template>
                                            </xsl:for-each>
                                        </lnci:content>
                                    </lnci:cite>
                                </ref:parallelcite>
                            </xsl:when>
                        </xsl:choose>

                    </xsl:otherwise>
                </xsl:choose>

            </ref:citations>
        </xsl:if>
    </xsl:template>

    <xsl:template match="ci:content" priority="25">
        <lnci:content>
            <xsl:apply-templates/>
            <xsl:apply-templates select="parent::ci:cite/following-sibling::text()[1]"/>
        </lnci:content>
    </xsl:template>
    
    
    <!--This template is called from doc:metadata and to be honest doesn't even use leg:num; I just left that in to 
        avoid a named tempate in doc:metadata module.  -->
    
    <xsl:template match="leg:num" mode="doc-related-content-alt-lang">
        <xsl:if test="not($dpsiRestricted='true')">
        <xsl:choose>
            <xsl:when
                test="$sourceLanguage = 'en' and (some $i in $citationTranslationTable/terms/term/@en
                satisfies (contains($citationTextPossibilities , $i)))">
                
                <!-- alt language version detected, create doc:related-content translate English to French -->
                <doc:related-content>
                    <doc:related-content-grp content-type="alternate-language-version">
                        <doc:related-content-item>
                            <doc:related-content-link>
                                <ref:lnlink service="TRAVERSE">
                                    <ref:marker><xsl:text>French Version</xsl:text></ref:marker>
                                    <ref:locator>
                                        <ref:locator-key>
                                            <ref:key-name name="normcite"/>
                                            <ref:key-value>
                                                <xsl:attribute name="value">
                                                    <xsl:for-each
                                                        select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                        <xsl:call-template name="translate">
                                                            <xsl:with-param name="string" select="normalize-space(.)"/>
                                                            <xsl:with-param name="old"
                                                                select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"/>
                                                            <xsl:with-param name="new"
                                                                select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>                                                          
                                                        </xsl:call-template>
                                                    </xsl:for-each>
                                                </xsl:attribute>
                                            </ref:key-value>
                                        </ref:locator-key>
                                        <ref:locator-params>
                                            <proc:param name="normprotocol" value="CAEditorial"/>
                                            <proc:param name="countrycode" value="CA"/>
                                            <proc:param name="targetdoclang">
                                                <xsl:attribute name="value" select="'fr-CA'"/>
                                            </proc:param>
                                        </ref:locator-params>
                                    </ref:locator>
                                </ref:lnlink>
                            </doc:related-content-link>
                        </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>                                  
                            
            </xsl:when>
            <xsl:when
                test="$sourceLanguage = 'fr' and (some $i in $citationTranslationTable/terms/term/@fr
                satisfies (contains($citationTextPossibilities , $i)))">
                <!-- alt language version detected, create parallelcite translate French to English -->
                <doc:related-content>
                    <doc:related-content-grp content-type="alternate-language-version">
                        <doc:related-content-item>
                            <doc:related-content-link>
                                <ref:lnlink service="TRAVERSE">
                                    <ref:marker><xsl:text>English Version</xsl:text></ref:marker>
                                    <ref:locator>
                                        <ref:locator-key>
                                            <ref:key-name name="normcite"/>
                                            <ref:key-value>
                                                <xsl:attribute name="value">
                                                    <xsl:for-each
                                                        select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                        <xsl:call-template name="translate">
                                                            <xsl:with-param name="string" select="."/>
                                                            <xsl:with-param name="old"
                                                                select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>
                                                            <xsl:with-param name="new"
                                                                select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"/>
                                                        </xsl:call-template>
                                                    </xsl:for-each>
                                                </xsl:attribute>
                                            </ref:key-value>
                                        </ref:locator-key>
                                        <ref:locator-params>
                                            <proc:param name="normprotocol" value="CAEditorial"/>
                                            <proc:param name="countrycode" value="CA"/>
                                            <proc:param name="targetdoclang">
                                                <xsl:attribute name="value" select="'en-CA'"/>
                                            </proc:param>
                                        </ref:locator-params>
                                    </ref:locator>
                                </ref:lnlink>
                            </doc:related-content-link>
                        </doc:related-content-item>
                    </doc:related-content-grp>
                </doc:related-content>
            </xsl:when>
        </xsl:choose>
       
        </xsl:if>     
    </xsl:template>

    <!--<xsl:template name="translate-string">
        <xsl:param name="translate"/>      
        <xsl:choose>
            <xsl:when test="$translate = 'English-French'">
                <xsl:variable name="phrasesReplaced">
                    <xsl:call-template name="replace">
                        <xsl:with-param name="string" select="."/>
                        <xsl:with-param name="old"
                            select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"/>
                        <xsl:with-param name="new"
                            select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>

                    </xsl:call-template>
                </xsl:variable>
                <xsl:variable name="translation">
                    <xsl:variable name="tokenizedString" select="tokenize($phrasesReplaced, '\s+')"/>

                    <xsl:for-each select="$tokenizedString">
                        <xsl:variable name="currentValue" select="."/>
                        <xsl:choose>
                            <xsl:when
                                test="$currentValue = $citationTranslationTable/terms/*[@replaceAsWords = 'yes']/@en">
                                <xsl:value-of
                                    select="$citationTranslationTable/terms/*[@replaceAsWords = 'yes'][@en = $currentValue]/@fr"
                                />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$currentValue"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:if test="not(position() = last())">
                            <xsl:value-of select="' '"/>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:value-of select="$translation"/>


            </xsl:when>
            <xsl:when test="$translate = 'French-English'">
                <xsl:variable name="phrasesReplaced">
                    <xsl:call-template name="replace">
                        <xsl:with-param name="string" select="."/>
                        <xsl:with-param name="old"
                            select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>
                        <xsl:with-param name="new"
                            select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"
                        />
                    </xsl:call-template>
                </xsl:variable>
                <xsl:variable name="translation">
                    <xsl:variable name="tokenizedString" select="tokenize($phrasesReplaced, '\s+')"/>
                    <xsl:for-each select="$tokenizedString">
                        <xsl:variable name="currentValue" select="."/>
                        <xsl:choose>
                            <xsl:when
                                test="$currentValue = $citationTranslationTable/terms/*[@replaceAsWord = 'yes']/@fr">
                                <xsl:value-of
                                    select="$citationTranslationTable/terms/*[@replaceAsWord = 'yes'][@fr = $currentValue]/@en"
                                />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$currentValue"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:if test="not(position() = last())">
                            <xsl:value-of select="' '"/>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:value-of select="$translation"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
-->





   <!-- <xsl:template name="replace">
        <!-\- this will replace every string at every occurrence in the order given.
            Order can make a big difference, so make sure global variable term/subterm order is carefully tested -\->
        <xsl:param name="string"/>
        <xsl:param name="old"/>
        <xsl:param name="new"/>
        <xsl:variable name="oldRegexFormat" select="functx:escape-for-regex($old[1])"/>

        <xsl:analyze-string select="$string" regex="{$oldRegexFormat}">
            <xsl:matching-substring>
                <xsl:value-of select="$new[1]"/>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:choose>
                    <xsl:when test="count($old) > 1">
                        <xsl:call-template name="replace">
                            <xsl:with-param name="string" select="."/>
                            <xsl:with-param name="old" select="$old[position() > 1]"/>
                            <xsl:with-param name="new" select="$new[position() > 1]"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="."/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:non-matching-substring>
        </xsl:analyze-string>

    </xsl:template>

    <xsl:function name="functx:escape-for-regex" as="xs:string">
        <xsl:param name="arg" as="xs:string?"/>

        <xsl:sequence
            select="replace($arg, '(\.|\[|\]|\\|\||\-|\^|\$|\?|\*|\+|\{|\}|\(|\))', '\\$1')"/>

    </xsl:function>-->


</xsl:stylesheet>
