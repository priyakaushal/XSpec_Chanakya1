<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:ext="http://exslt.org/common" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA05_alt_lang_link">
    <title><targetxml>ref:cite4thisresource</targetxml> with <targetxml>ref:parallelcite</targetxml>
        and <targetxml>doc:related-content</targetxml>
        <lnpid>id-CCCC-10497</lnpid></title>
    <body>
        <section>
            <title>Scenario 1 for CA01 and CA04</title>
            <p>If the <sourcexml>case:reportercite</sourcexml> falls within the group for which an
                alternate language format was defined in the below table and
                    <sourcexml>case:parallelcite</sourcexml>, also exist in source data then
                conversion should match the <sourcexml>case:reportercite</sourcexml> citation value
                based on the below table with <sourcexml>case:parallelcite</sourcexml> and if they
                match then generates alternate language markup
                    <targetxml>doc:metadata/doc:docinfo/doc:related-content/doc:related-content-grp</targetxml>
                and if not match then <b>should not create alternate language markup</b>.</p>
            <p>If <sourcexml>case:reportercite</sourcexml> is present and
                    <sourcexml>case:parallelcite</sourcexml> is not present in the source data then
                conversion <b>should not create alternate language markup</b>
                <targetxml>doc:metadata/doc:docinfo/doc:related-content/doc:related-content-grp</targetxml>.</p>
            <p>Value of <targetxml>doc:related-content-grp/@content-type</targetxml> is
                    <b>"alternate-language-version"</b>.</p>
            <p>Value of <targetxml>ref:lnlink/@service</targetxml> is <b>"TRAVERSE"</b>.</p>
            <p>Value of <targetxml>ref:key-name/@name</targetxml> is <b>"normcite"</b></p>
            <p>Value of <targetxml>ref:key-value/@value</targetxml> is the value of
                    <targetxml>ref:parallelcite/lnci:cite/lnci:content</targetxml>.</p>
            <p>Value of <targetxml>ref:locator-params/@name</targetxml> is <b>"normprotocol"</b> and
                    <targetxml>ref:locator-params/@value</targetxml> is <b>CAEditorial</b>.</p>
            <p>Value of <targetxml>ref:locator-params/@name</targetxml> is <b>"countrycode"</b> and
                    <targetxml>ref:locator-params/@value</targetxml> is <b>CA</b>.</p>
            <p>Content of <targetxml>ref:marker</targetxml> is derived from <b>Alternate
                    Language</b> column in tables: <ul>
                    <li>If <b>"French"</b> then <targetxml>ref:marker</targetxml> content is:
                            <b>French Version</b>.</li>
                    <li>If <b>"English"</b> then <targetxml>ref:marker</targetxml> content is:
                            <b>English Version</b>.</li>
                </ul></p>
            <p>Content of <targetxml>ref:locator-params[@name="targetdoclang"]</targetxml> is
                derived from <b>Alternate Language</b> column in tables: <ul>
                    <li>If <b>"English"</b> then the value of
                            <targetxml>ref:locator-params/@name</targetxml> is
                            <b>"targetdoclang"</b> and
                            <targetxml>ref:locator-params/@value</targetxml> is <b>en-CA</b>.</li>
                    <li>If <b>"French"</b> then the value of
                            <targetxml>ref:locator-params/@name</targetxml> is
                            <b>"targetdoclang"</b> and
                            <targetxml>ref:locator-params/@value</targetxml> is <b>fr-CA</b>.</li>
                </ul></p>
            <pre>
&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00040967" spanref="cspan00040967"&gt;
                &lt;ci:reporter value="SCR"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1954"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="82"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00040967"&gt;[1954] S.C.R. 82&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

&lt;case:parallelcite&gt;
    &lt;ci:cite&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00040968" spanref="cspan00040968"&gt;
                &lt;ci:reporter value="SCR"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1954"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="82"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00040968"&gt;[1954] R.C.S. 82&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:parallelcite&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;doc:related-content&gt;
            &lt;doc:related-content-grp content-type="alternate-language-version"&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="TRAVERSE"&gt;
                            &lt;ref:marker&gt;French Version&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="normcite"/&gt;
                                    &lt;ref:key-value value="[1954] R.C.S. 82"/&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;ref:locator-params&gt;
                                    &lt;proc:param name="normprotocol" value="CAEditorial"/&gt;
                                    &lt;proc:param name="countrycode" value="CA"/&gt;
                                    &lt;proc:param name="targetdoclang" value="fr-CA"/&gt;
                                &lt;/ref:locator-params&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
        &lt;/doc:related-content&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
</pre>
        </section>
        <section><b>Scenario for CA02</b></section>
        <section>If <sourcexml>note/@notetype="other"/remotelink</sourcexml> contains text
                    "<b><i>[version anglaise]</i></b>" or "<b><i>[French Version]</i></b>" only
            then, create alternate language markup.
                <targetxml>doc:metadata/doc:docinfo/doc:related-content/doc:related-content-grp</targetxml>
        </section>
        <section>
            <p>Value of <targetxml>doc:related-content-grp/@content-type</targetxml> is
                    <b>"alternate-language-version"</b>.</p>
            <p>Value of <targetxml>ref:lnlink/@service</targetxml> is <b>"DOCUMENT"</b>.</p>
            <p>Create <targetxml>ref:marker</targetxml> to capture the PCDATA of
                    <sourcexml>remotelink</sourcexml>.</p>
            <p>Value of <targetxml>ref:key-name/@name</targetxml> is <b>"DOC-ID"</b></p>
            <p>Value of <targetxml>ref:key-value/@value</targetxml> is the value of
                    <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                    <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever
                is present (if both are present, use <sourcexml>@remotekey2</sourcexml>)..</p>
            <p>Content of <targetxml>ref:locator-params[@name="targetdoclang"]</targetxml> is
                derived from <sourcexml>note/@notetype="other"/remotelink</sourcexml>: <ul>
                    <li>If <b>"[version anglaise]"</b> then the value of
                            <targetxml>ref:locator-params/@name</targetxml> is
                            <b>"targetdoclang"</b> and
                            <targetxml>ref:locator-params/@value</targetxml> is <b>"en-CA"</b>.</li>
                    <li>If <b>"[French Version]"</b> then the value of
                            <targetxml>ref:locator-params/@name</targetxml> is
                            <b>"targetdoclang"</b> and
                            <targetxml>ref:locator-params/@value</targetxml> is <b>"fr-CA"</b>.</li>
                </ul></p>
            <pre>
&lt;note notetype="other"&gt;
    &lt;remotelink dpsi="0F8E" remotekey1="DOC-ID" remotekey2="QSEN 1939"
        service="DOC-ID"&gt;[version anglaise]&lt;/remotelink&gt;
&lt;/note&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;doc:related-content&gt;
            &lt;doc:related-content-grp content-type="alternate-language-version"&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="DOCUMENT"&gt;
                            &lt;ref:marker&gt;[version anglaise]&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="0F8E-QSEN 1939"/&gt;
                                &lt;/ref:locator-key&gt; 
                                &lt;ref:locator-params&gt;
                                    &lt;proc:param name="targetdoclang" value="en-CA"/&gt;
                                &lt;/ref:locator-params&gt;								
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
        &lt;/doc:related-content&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;               
            </pre>
        </section>
        <section>
            <title>Scenario 2 for CA05, CA06, CA07 and CA08</title>
            <p>If the <targetxml>ref:cite4thisresource/@citetype="reporter"</targetxml> falls within
                the group for which an alternate language format was defined in the below table then
                conversion should read the
                    <targetxml>ref:cite4thisresource/@citetype="reporter"/lnci:cite/lnci:content</targetxml>
                citation value based on the below table and create
                    <targetxml>ref:parallelcite/@citetype="parallel"/lnci:cite/lnci:content</targetxml>
                and
                    <targetxml>doc:metadata/doc:docinfo/doc:related-content/doc:related-content-grp</targetxml>.</p>
            <p>Value of <targetxml>doc:related-content-grp/@content-type</targetxml> is
                    <b>"alternate-language-version"</b>.</p>
            <p>Value of <targetxml>ref:lnlink/@service</targetxml> is <b>"TRAVERSE"</b>.</p>
            <p>Value of <targetxml>ref:key-name/@name</targetxml> is <b>"normcite"</b></p>
            <p>Value of <targetxml>ref:key-value/@value</targetxml> is the value of
                    <targetxml>ref:parallelcite/lnci:cite/lnci:content</targetxml>.</p>
            <p>Value of <targetxml>ref:locator-params/@name</targetxml> is <b>"normprotocol"</b> and
                    <targetxml>ref:locator-params/@value</targetxml> is <b>CAEditorial</b>.</p>
            <p>Value of <targetxml>ref:locator-params/@name</targetxml> is <b>"countrycode"</b> and
                    <targetxml>ref:locator-params/@value</targetxml> is <b>CA</b>.</p>
            <p>Content of <targetxml>ref:marker</targetxml> is derived from <b>Alternate
                    Language</b> column in tables: <ul>
                    <li>If <b>"French"</b> then <targetxml>ref:marker</targetxml> content is:
                            <b>French Version</b>.</li>
                    <li>If <b>"English"</b> then <targetxml>ref:marker</targetxml> content is:
                            <b>English Version</b>.</li>
                </ul></p>
            <p>Content of <targetxml>ref:locator-params[@name="targetdoclang"]</targetxml> is
                derived from <b>Alternate Language</b> column in tables: <ul>
                    <li>If <b>"English"</b> then the value of
                            <targetxml>ref:locator-params/@name</targetxml> is
                            <b>"targetdoclang"</b> and
                            <targetxml>ref:locator-params/@value</targetxml> is <b>en-CA</b>.</li>
                    <li>If <b>"French"</b> then the value of
                            <targetxml>ref:locator-params/@name</targetxml> is
                            <b>"targetdoclang"</b> and
                            <targetxml>ref:locator-params/@value</targetxml> is <b>fr-CA</b>.</li>
                </ul></p>
            <note><p>Alternate citations which are blank corresponding to primary citation, then no
                    need to create alternate language citation and
                        <targetxml>doc:related-content</targetxml>. Citations are case-sensitive and
                    should be followed as per the table provided.</p></note>
            <note><p>For CA05 only: Added new common table <b>"Terms conversion for CA05"</b> in
                    which terms translation are present and conversion should refer this table while
                    converting terms
                        <targetxml>ref:cite4thisresource/@citetype="reporter"/lnci:cite/lnci:content</targetxml>
                    from English to French and vice versa.</p></note>
            <note><p>When primary citation and alternate citation is same then conversion should
                    check the document language from
                        <sourcexml>docinfo:doc-lang/@lang="fr"</sourcexml> element. If the document
                    language is <b>"fr"</b> then alternate citation language is <b>english</b> and
                    if document language is <b>"en"</b> then alternate citation is language is
                        <b>french</b>. </p></note>
            <p><note><b>For CA05 and CA06</b></note> Above rule will not be applicable for creating
                RHS link, if source documents have the following DPSI values.</p>
            <p>
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
                                <entry>0U98</entry>
                                <entry>422369</entry>
                                <entry>"Canadian Securities Law Reporter - 06 CSA Regulatory
                                    Documents"</entry>
                            </row>
                            <row>
                                <entry>0U9A</entry>
                                <entry>422373</entry>
                                <entry>Canadian Securities Law Reporter - 07 Former Statutes</entry>
                            </row>
                            <row>
                                <entry>0U9B</entry>
                                <entry>422375</entry>
                                <entry>Canadian Securities Law Reporter - 08 Former
                                    Regulations</entry>
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
                                <entry>Alberta Corporations Law Guide - 05 Former
                                    Regulations</entry>
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
                                <entry>Canadian Estate Administration Guide - 07 Former
                                    Statutes</entry>
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
                                <entry>Santé et sécurité au travail - 05 Archives -
                                    Règlements</entry>
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
                                <entry>Code criminel et lois connexes annotés - 05
                                    Règlements</entry>
                            </row>
                            <row>
                                <entry>0USA</entry>
                                <entry>424449</entry>
                                <entry>Code criminel et lois connexes annotés - 07 Règles de
                                    pratique</entry>
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
                                <entry>Code criminel et lois connexes annotés - 06
                                    Regulations</entry>
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
                                <entry>Canadian Stock Exchanges - 09 NASDAQ Marketplace
                                    Rules</entry>
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
                                <entry>Canadian Stock Exchanges - 12 TSX Rule Book and
                                    Policies</entry>
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
                </table></p>
            <pre>&lt;ref:cite4thisresource citetype="reporter"&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00013178"&gt;
                &lt;lnci:reporter value="ACF"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="1978"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:refnum num="1000"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1978] A.C.F. no 1000&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/ref:cite4thisresource&gt;

<b>Becomes</b>

&lt;ref:parallelcite citetype="parallel"&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:content&gt;[1978] F.C.J. No. 1000&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/ref:parallelcite&gt;

<b>and</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;doc:related-content&gt;
            &lt;doc:related-content-grp content-type="alternate-language-version"&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="TRAVERSE"&gt;
                            &lt;ref:marker&gt;English Version&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="normcite"/&gt;
                                    &lt;ref:key-value value="[1978] F.C.J. No. 1000"/&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;ref:locator-params&gt;
                                    &lt;proc:param name="normprotocol" value="CAEditorial"/&gt;
                                    &lt;proc:param name="countrycode" value="CA"/&gt;
                                    &lt;proc:param name="targetdoclang" value="en-CA"/&gt;
                                &lt;/ref:locator-params&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
        &lt;/doc:related-content&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
</pre>
            <p>Below Table is for <b>CA01</b></p>
            <table frame="all" pgwide="90">
                <tgroup cols="6">
                    <thead>
                        <row>
                            <entry align="center">Primary Language</entry>
                            <entry align="center">Primary Ciatation</entry>
                            <entry align="center">Alternate Citation</entry>
                            <entry align="center">Alternate Language</entry>
                            <entry align="center">Primary Format</entry>
                            <entry align="center">Alternate Format</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>French</entry>
                            <entry>A.C.F.</entry>
                            <entry>F.C.J.</entry>
                            <entry>English</entry>
                            <entry>[2014] A.C.F. no 503</entry>
                            <entry>[2014] F.C.J. No. 503</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>A.C.I.</entry>
                            <entry>T.C.J.</entry>
                            <entry>English</entry>
                            <entry>[2014] A.C.I. no 76</entry>
                            <entry>[2014] T.C.J. No. 76</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>A.C.S.</entry>
                            <entry>S.C.J.</entry>
                            <entry>English</entry>
                            <entry>[2014] A.C.S. no 40</entry>
                            <entry>[2014] S.C.J. No. 40</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] A.J. No. 543</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2012] B.C.J. 3012</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2010] Y.J. No. 193</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>A.C.A.C.</entry>
                            <entry>C.M.A.J.</entry>
                            <entry>English</entry>
                            <entry>[1986] A.C.A.C. no 1</entry>
                            <entry>[1986] C.M.A.J. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>I.L.R.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1992] I.L.R. 1-2848; [2009] I.L.R. I-4809</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.M.A.J.</entry>
                            <entry>A.C.A.C.</entry>
                            <entry>French</entry>
                            <entry>[1995] C.M.A.J. No. 12</entry>
                            <entry>[1995] A.C.A.C. no 12</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>C.N.L.R.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1981] 2 C.N.L.R. 78</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>DTC</entry>
                            <entry/>
                            <entry/>
                            <entry>84 DTC 6395</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>Ex.C.R.</entry>
                            <entry> R.C. de l'É</entry>
                            <entry>French</entry>
                            <entry>[1965] 1 Ex.C.R. 403</entry>
                            <entry>[1965] 1 R.C. de l'É. 403</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>Ex.C.J.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>F.C.J.</entry>
                            <entry>A.C.F.</entry>
                            <entry>French</entry>
                            <entry>[2000] F.C.J. No. 1985</entry>
                            <entry>[2000] A.C.F. no 1985</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>F.C.R</entry>
                            <entry>R.C.F.</entry>
                            <entry>French</entry>
                            <entry>[2013] 4 F.C.R. 63</entry>
                            <entry>[2013] 4 R.C.F. 63</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>F.C.</entry>
                            <entry>C.F.</entry>
                            <entry>French</entry>
                            <entry>[1992] 2 F.C. 401 </entry>
                            <entry>[1992] 2 C.F. 401 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>J.C.J.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry>[2003] J.C.J. No. 56</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>UKPC</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry>[2003] UKPC 56</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>Q.J. </entry>
                            <entry>J.Q.</entry>
                            <entry>French</entry>
                            <entry>[2010] Q.J. No. 32170</entry>
                            <entry>[2013] J.Q. no 3697</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No. </entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>J.Q.</entry>
                            <entry>Q.J.</entry>
                            <entry>English</entry>
                            <entry>[2013] J.Q. no 3697</entry>
                            <entry>[2010] Q.J. No. 32170</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>M.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1998] M.J. No. 588</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.J.</entry>
                            <entry>A.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1984] N.B.J. No. 8</entry>
                            <entry>[2013] A.N.-B. no 22</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>A.N.-B.</entry>
                            <entry>N.B.J.</entry>
                            <entry>English</entry>
                            <entry>[2013] A.N.-B. no 22</entry>
                            <entry>[1984] N.B.J. No. 8</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1953] N.J. No. 4</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] N.S.J. No. 253</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Nu.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] Nu.J. No. 14</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.W.T.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2003] N.W.T.J. No. 22</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1997] O.J. No. 2445</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.R.</entry>
                            <entry/>
                            <entry/>
                            <entry>119 O.R. (3d) 370; [1970] 2 O.R. 589; [1960] O.R. 125"</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.E.I.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] P.E.I. J. No. 21</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry> R.C. de l'É</entry>
                            <entry>Ex. C.R.</entry>
                            <entry>English</entry>
                            <entry>[1970] R.C. de l'É. 981; [1965] 1 R.C. de l'É. 263</entry>
                            <entry>[1970] Ex. C.R. 1006; [1965] 1 Ex.C.R. 376; [1969] 2 Ex.C.R. 246;
                                [1961] Ex.C.R. 1; 20 Ex.C.R. 86</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>Ex. C.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1970] Ex. C.J. No. 27; </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>R.C.F.</entry>
                            <entry>F.C.R.</entry>
                            <entry>English</entry>
                            <entry>[2013] 4 R.C.F. 63</entry>
                            <entry>[2013] 4 F.C.R. 63</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.F.</entry>
                            <entry>F.C.</entry>
                            <entry>English</entry>
                            <entry>[1992] 2 C.F. 401 </entry>
                            <entry>[1992] 2 F.C. 401 </entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>R.C.S.</entry>
                            <entry>S.C.R.</entry>
                            <entry>English</entry>
                            <entry>[1970] R.C.S. 2; [1998] 1 R.C.S. 756</entry>
                            <entry>[1970] S.C.R. 2; [1998] 1 S.C.R. 756</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>S.C.C.A.</entry>
                            <entry>C.S.C.R.</entry>
                            <entry>French</entry>
                            <entry>[1995] S.C.C.A. No. 328</entry>
                            <entry>[2013] C.S.C.R. no 412 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.S.C.R.</entry>
                            <entry>S.C.C.A.</entry>
                            <entry>English</entry>
                            <entry>[2013] C.S.C.R. no 412 </entry>
                            <entry>[1995] S.C.C.A. No. 328</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>S.C.J.</entry>
                            <entry>A.C.S.</entry>
                            <entry>French</entry>
                            <entry>[1908] S.C.J. No. 24 </entry>
                            <entry>[2013] A.C.S. no 24</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>S.C.R.</entry>
                            <entry>R.C.S.</entry>
                            <entry>French</entry>
                            <entry>[1998] 1 S.C.R. 756; [1996] S.C.R. 196; (1920), 61 S.C.R.
                                193</entry>
                            <entry>[1998] 1 R.C.S. 756; [1966] R.C.S. 196</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>S.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1986] S.J. No. 186 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>T.C.J.</entry>
                            <entry>A.C.I.</entry>
                            <entry>French</entry>
                            <entry>[2012] T.C.J. No. 330</entry>
                            <entry>[2012] A.C.I. no 330</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <p>Below Table is for <b>CA04</b>:</p>
            <table frame="all" pgwide="95">
                <tgroup cols="6">
                    <thead>
                        <row>
                            <entry align="center">Primary Language</entry>
                            <entry align="center">Primary ciatation</entry>
                            <entry align="center">Alternate Citation</entry>
                            <entry align="center">Alternate Language</entry>
                            <entry align="center">Primary Format</entry>
                            <entry align="center">Alternate Format</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry/>
                            <entry>A.E.A.B.D</entry>
                            <entry/>
                            <entry/>
                            <entry>[1997] A.E.A.B.D. No. 3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.E.U.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2012] A.E.U.B.D. No. 198</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNAUC</entry>
                            <entry/>
                            <entry/>
                            <entry>2009 LNAUC 249</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNAERCB</entry>
                            <entry/>
                            <entry/>
                            <entry>2008 LNAERCB 59</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.G.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1998] A.G.A.A. No. 38</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.I.P.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1999] A.I.P.C.D. No. 42</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2009] A.L.R.B.D. No. 69</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.M.G.B.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1997] A.M.G.B.O. No. 97</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>A.M.S.A.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] A.M.S.A.T.D. No. 3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNABASC</entry>
                            <entry/>
                            <entry/>
                            <entry>2012 LNABASC 7</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.C.A.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1998] B.C.C.A.A.A. No. 136</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.C.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2004] B.C.C.O. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.E.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] B.C.E.A. No. 8</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.E.S.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] B.C.E.S.T.D. No. 35</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.H.R.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1999] B.C.H.R.T.D. No. 60</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.I.P.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] B.C.I.P.C.D. No. 7</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2005] B.C.L.R.B.D. No. 130</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.L.I.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1994] B.C.L.I. No. 15</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2008] B.C.R.B.D. No. 203</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNBCSC</entry>
                            <entry/>
                            <entry/>
                            <entry>1999 LNBCSC 1014</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C.S.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2004] B.C.S.C.D. No. 950</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNBCWCA</entry>
                            <entry/>
                            <entry/>
                            <entry>2013 LNBCWCA 7</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.A.P.P.R.T.D.</entry>
                            <entry>D.T.C.R.P.A.P.</entry>
                            <entry>French</entry>
                            <entry>[1995] C.A.P.P.R.T.D. No. 3</entry>
                            <entry>[1995] D.T.C.R.P.A.P. no 3</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.A.R.T.D.</entry>
                            <entry>D.C.R.A.C.</entry>
                            <entry>French</entry>
                            <entry>[2007] C.A.R.T.D. No. 27</entry>
                            <entry>[2007] D.C.R.A.C. no 27</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.R.A.C.</entry>
                            <entry>C.A.R.T.D.</entry>
                            <entry>English</entry>
                            <entry>[2007] D.C.R.A.C. no 27</entry>
                            <entry>[2007] C.A.R.T.D. No. 27</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.A.T.D.</entry>
                            <entry>D.T.A.C.</entry>
                            <entry>French</entry>
                            <entry>[1989] C.A.T.D. No. 90</entry>
                            <entry>[1989] D.T.A.C. no 90</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.T.A.C.</entry>
                            <entry>C.A.T.D.</entry>
                            <entry>English</entry>
                            <entry>[1989] D.T.A.C. no 90</entry>
                            <entry>[1989] C.A.T.D. No. 90</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.T.A.T.D.</entry>
                            <entry>D.T.A.T.C.</entry>
                            <entry>French</entry>
                            <entry>[2011] C.T.A.T.D. No. 34</entry>
                            <entry>[2011] D.T.A.T.C. no 34</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.T.A.T.C.</entry>
                            <entry>C.T.A.T.D.</entry>
                            <entry>English</entry>
                            <entry>[2011] D.T.A.T.C. no 34</entry>
                            <entry>[2011] C.T.A.T.D. No. 34</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.B.D.</entry>
                            <entry>D.C.D.A.</entry>
                            <entry>French</entry>
                            <entry>[1998] C.B.D. No. 16</entry>
                            <entry>[1998] D.C.D.A. no 16</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.D.A.</entry>
                            <entry>C.B.D.</entry>
                            <entry>English</entry>
                            <entry>[1998] D.C.D.A. no 16</entry>
                            <entry>[1998] C.B.D. No. 16</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.B.S.C.D.</entry>
                            <entry>D.C.C.N.R.</entry>
                            <entry>French</entry>
                            <entry>[2009] C.B.S.C.D. No. 22</entry>
                            <entry>[2009] D.C.C.N.R. no 22</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.C.N.R.</entry>
                            <entry>C.B.S.C.D.</entry>
                            <entry>English</entry>
                            <entry>[2009] D.C.C.N.R. no 22</entry>
                            <entry>[2009] C.B.S.C.D. No. 22</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNCPAT</entry>
                            <entry>LNCBREV</entry>
                            <entry>French</entry>
                            <entry>2013 LNCPAT 18</entry>
                            <entry>2013 LNCBREV 18</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNCBREV</entry>
                            <entry>LNCPAT</entry>
                            <entry>English</entry>
                            <entry>2013 LNCBREV 18</entry>
                            <entry>2013 LNCPAT 18</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>S.C.C.P.V.P.C.</entry>
                            <entry>C.P.C.S.F.</entry>
                            <entry>English</entry>
                            <entry>[2004] S.C.C.P.V.P.C. no 44</entry>
                            <entry>[2007] C.P.C.S.F. No. 24</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.P.C.S.F.</entry>
                            <entry>S.C.C.P.V.P.C.</entry>
                            <entry>French</entry>
                            <entry>[2007] C.P.C.S.F. No. 24</entry>
                            <entry>[2004] S.C.C.P.V.P.C. no 44</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.T.C.C.</entry>
                            <entry>C.C.T.D.</entry>
                            <entry>English</entry>
                            <entry>[2013] D.T.C.C. no 9</entry>
                            <entry>[2013] C.C.T.D. No. 9</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.C.T.D.</entry>
                            <entry>D.T.C.C.</entry>
                            <entry>French</entry>
                            <entry>[2013] C.C.T.D. No. 9</entry>
                            <entry>[2013] D.T.C.C. no 9</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNCNEB</entry>
                            <entry>LNCONE</entry>
                            <entry>French</entry>
                            <entry>2013 LNCNEB 2</entry>
                            <entry>2013 LNCONE 2</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNCONE</entry>
                            <entry>LNCNEB</entry>
                            <entry>English</entry>
                            <entry>2013 LNCONE 2</entry>
                            <entry>2013 LNCNEB 2</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.H.R.D.</entry>
                            <entry>D.C.D.P.</entry>
                            <entry>French</entry>
                            <entry>[2003] C.H.R.D. No. 33</entry>
                            <entry>[2003] D.C.D.P. No 33</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.D.P.</entry>
                            <entry>C.H.R.D.</entry>
                            <entry>English</entry>
                            <entry>[2013] D.C.D.P. no 35</entry>
                            <entry>[2003] C.H.R.D. No. 33</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNCIRA</entry>
                            <entry/>
                            <entry/>
                            <entry>2008 LNCIRA 14</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.I.T.</entry>
                            <entry>T.C.I.</entry>
                            <entry>French</entry>
                            <entry>[1978] C.I.T. No. 16</entry>
                            <entry>[1986] T.C.I. no 29</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>T.C.I.</entry>
                            <entry>C.I.T.</entry>
                            <entry>English</entry>
                            <entry>[1986] T.C.I. no 29</entry>
                            <entry>[1978] C.I.T. No. 16</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.I.T.T.</entry>
                            <entry>T.C.C.E.</entry>
                            <entry>French</entry>
                            <entry>[2002] C.I.T.T. No. 109</entry>
                            <entry>[2002] T.C.C.E. No 109</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>T.C.C.E.</entry>
                            <entry>C.I.T.T.</entry>
                            <entry>English</entry>
                            <entry>[2002] T.C.C.E. No 109</entry>
                            <entry>[2002] C.I.T.T. No. 109</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.L.A.D.</entry>
                            <entry>D.A.T.C.</entry>
                            <entry>French</entry>
                            <entry>[1983] C.L.A.D. No. 49</entry>
                            <entry>[2011] D.A.T.C. no 318</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.A.T.C.</entry>
                            <entry>C.L.A.D.</entry>
                            <entry>English</entry>
                            <entry>[2011] D.A.T.C. no 318</entry>
                            <entry>[1983] C.L.A.D. No. 49</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNQCCLP</entry>
                            <entry/>
                            <entry/>
                            <entry>2004 LNQCCLP 6500</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.A.R.S.C.C.T.</entry>
                            <entry>C.L.C.R.S.O.D.</entry>
                            <entry>English</entry>
                            <entry>[2000] D.A.R.S.C.C.T. no 1</entry>
                            <entry>[2000] C.L.C.R.S.O.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.L.C.R.S.O.D.</entry>
                            <entry>D.A.R.S.C.C.T.</entry>
                            <entry>French</entry>
                            <entry>[2000] C.L.C.R.S.O.D. No. 1</entry>
                            <entry>[2000] D.A.R.S.C.C.T. no 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNTSSTC</entry>
                            <entry>LNOHSTC</entry>
                            <entry>English</entry>
                            <entry>2013 LNTSSTC 40</entry>
                            <entry>2013 LNOHSTC 35</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNOHSTC</entry>
                            <entry>LNTSSTC</entry>
                            <entry>French</entry>
                            <entry>2013 LNOHSTC 35</entry>
                            <entry>2013 LNTSSTC 40</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.O.M.C.</entry>
                            <entry>T.M.O.B.</entry>
                            <entry>English</entry>
                            <entry>[2009] C.O.M.C. no 24</entry>
                            <entry>[2009] T.M.O.B. No 24</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>T.M.O.B</entry>
                            <entry>C.O.M.C.</entry>
                            <entry>French</entry>
                            <entry>[1986] T.M.O.B. No. 14</entry>
                            <entry>[1986] C.O.M.C. no 14</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNCCAP</entry>
                            <entry>LNCPEN</entry>
                            <entry>English</entry>
                            <entry>2012 LNCCAP 17</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNCPEN</entry>
                            <entry>LNCCAP</entry>
                            <entry>French</entry>
                            <entry>2005 LNCPEN 132</entry>
                            <entry>2012 LNCCAP 17</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNCRTCB</entry>
                            <entry>LNCRTCR</entry>
                            <entry>French</entry>
                            <entry>2013 LNCRTCB 113</entry>
                            <entry>2013 LNCRTCR 113</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNCRTCR</entry>
                            <entry>LNCRTCB</entry>
                            <entry>English</entry>
                            <entry>2013 LNCRTCR 113</entry>
                            <entry>2013 LNCRTCB 113</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNCRTCF</entry>
                            <entry>LNCRTCE</entry>
                            <entry>English</entry>
                            <entry>2009 LNCRTCF 41</entry>
                            <entry>2007 LNCRTCE 100</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNCRTCE</entry>
                            <entry>LNCRTCF</entry>
                            <entry>French</entry>
                            <entry>2007 LNCRTCE 100</entry>
                            <entry>2009 LNCRTCF 41</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.C.R.T.Q.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2002] D.C.R.T.Q. no 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>C.P.S.S.R.B.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2005] C.P.S.S.R.B. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.P.S.L.R.B.</entry>
                            <entry>C.R.T.F.P.C.</entry>
                            <entry>French</entry>
                            <entry>[2008] C.P.S.L.R.B. No. 6</entry>
                            <entry>[2014] C.R.T.F.P.C. no 40</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.R.T.F.P.C.</entry>
                            <entry>C.P.S.L.R.B.</entry>
                            <entry>English</entry>
                            <entry>[2014] C.R.T.F.P.C. no 40</entry>
                            <entry>[2008] C.P.S.L.R.B. No. 6</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.A.A.C.C.T.</entry>
                            <entry>C.L.C.A.O.D.</entry>
                            <entry>English</entry>
                            <entry>[2001] D.A.A.C.C.T. no 12</entry>
                            <entry>[2002] C.L.C.A.O.D. No. 22</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.L.C.A.O.D.</entry>
                            <entry>D.A.A.C.C.T.</entry>
                            <entry>French</entry>
                            <entry>[2002] C.L.C.A.O.D. No. 22</entry>
                            <entry>[2001] D.A.A.C.C.T. no 12</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>P.R.B.D.</entry>
                            <entry>D.C.R.M.</entry>
                            <entry>French</entry>
                            <entry>[1994] P.R.B.D. No. 1</entry>
                            <entry>[1994] D.C.R.M. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.R.M.</entry>
                            <entry>P.R.B.D.</entry>
                            <entry>English</entry>
                            <entry>[1994] D.C.R.M. No. 1</entry>
                            <entry>[1994] P.R.B.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.I.R.B.D.</entry>
                            <entry>D.C.C.R.I.</entry>
                            <entry>French</entry>
                            <entry>[2004] C.I.R.B.D. No. 23</entry>
                            <entry>[2014] D.C.C.R.I. no 4</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.C.R.I.</entry>
                            <entry>C.I.R.B.D.</entry>
                            <entry>English</entry>
                            <entry>[2014] D.C.C.R.I. no 4</entry>
                            <entry>[2004] C.I.R.B.D. No. 23</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.L.R.B.D.</entry>
                            <entry>D.C.C.R.T.</entry>
                            <entry>French</entry>
                            <entry>[1996] C.L.R.B.D. No. 24</entry>
                            <entry>[1998] D.C.C.R.T. no 17</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.C.R.T.</entry>
                            <entry>C.L.R.B.D.</entry>
                            <entry>English</entry>
                            <entry>[1998] D.C.C.R.T. no 17</entry>
                            <entry>[1996] C.L.R.B.D. No. 24</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>I.A.D.D.</entry>
                            <entry>D.S.A.I.</entry>
                            <entry>French</entry>
                            <entry>[2013] I.A.D.D. No. 30</entry>
                            <entry>[2013] D.S.A.I. no 30</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.S.A.I.</entry>
                            <entry>I.A.D.D.</entry>
                            <entry>English</entry>
                            <entry>[2013] D.S.A.I. no 30</entry>
                            <entry>[2013] I.A.D.D. No. 30</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>I.A.B.D.</entry>
                            <entry>D.C.A.I.</entry>
                            <entry>French</entry>
                            <entry>[1987] I.A.B.D. No. 1</entry>
                            <entry>[1987] D.C.A.I. no 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.A.I.</entry>
                            <entry>I.A.B.D.</entry>
                            <entry>English</entry>
                            <entry>[1987] D.C.A.I. no 1</entry>
                            <entry>[1987] I.A.B.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>R.P.D.D.</entry>
                            <entry>D.S.P.R.</entry>
                            <entry>French</entry>
                            <entry>[2013] R.P.D.D. No. 35</entry>
                            <entry>[2013] D.S.P.R. no 35</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.S.P.R.</entry>
                            <entry>R.P.D.D.</entry>
                            <entry>English</entry>
                            <entry>[2013] D.S.P.R. no 35</entry>
                            <entry>[2013] R.P.D.D. No. 35</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.R.D.D.</entry>
                            <entry>D.S.S.R.</entry>
                            <entry>French</entry>
                            <entry>[1989] C.R.D.D. No. 298</entry>
                            <entry>[1998] D.S.S.R. no 300</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.S.S.R.</entry>
                            <entry>C.R.D.D.</entry>
                            <entry>English</entry>
                            <entry>[1998] D.S.S.R. no 300</entry>
                            <entry>[1989] C.R.D.D. No. 298</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>F.T.A.D.</entry>
                            <entry>D.A.L.E.</entry>
                            <entry>French</entry>
                            <entry>[1994] F.T.A.D. No. 13</entry>
                            <entry>[1994] D.A.L.E. no 12</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.A.L.E.</entry>
                            <entry>F.T.A.D.</entry>
                            <entry>English</entry>
                            <entry>[1994] D.A.L.E. no 12</entry>
                            <entry>[1994] F.T.A.D. No. 13</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.S.I.</entry>
                            <entry>I.D.D.</entry>
                            <entry>English</entry>
                            <entry>[2013] D.S.I. no 6</entry>
                            <entry>[2013] I.D.D. No. 5</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>I.D.D.</entry>
                            <entry>D.S.I.</entry>
                            <entry>French</entry>
                            <entry>[2013] I.D.D. No. 5</entry>
                            <entry>[2013] D.S.I. no 6</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.S.Arb.I.</entry>
                            <entry>I.Adj.D.D.</entry>
                            <entry>English</entry>
                            <entry>[2002] D.S.Arb.I. no 1</entry>
                            <entry>[2002] I.Adj.D.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>I.Adj.D.D.</entry>
                            <entry>D.S.Arb.I.</entry>
                            <entry>French</entry>
                            <entry>[2002] I.Adj.D.D. No. 1</entry>
                            <entry>[2002] D.S.Arb.I. no 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNICAO</entry>
                            <entry/>
                            <entry/>
                            <entry>2013 LNICAO 12</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>I.D.A.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1984] I.D.A.C.D. No. 4; [2007] I.D.A.C.D. No. 56</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>L.S.D.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1994] L.S.D.D. No. 222</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>M.A.I.C.A.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2010] M.A.I.C.A.C.D. No. 16</entry>
                            <entry>N/A</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>M.H.R.B.A.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] M.H.R.B.A.D. No. 105</entry>
                            <entry>N/A</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNMBCPS</entry>
                            <entry/>
                            <entry/>
                            <entry>2014 LNMBCPS 2</entry>
                            <entry>N/A</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.D.A.N.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1991] D.D.A.N. no 18</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNCMFDA</entry>
                            <entry/>
                            <entry/>
                            <entry>2005 LNCMFDA 3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>M.G.A.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2012] M.G.A.D. No. 28</entry>
                            <entry>N/A</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>M.L.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] M.L.B.D. No. 10</entry>
                            <entry>N/A</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>M.M.B.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2006] M.M.B.O. No. 1</entry>
                            <entry>N/A</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.E.S.D.</entry>
                            <entry>D.N.E.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1989] N.B.E.S.D. No. 38</entry>
                            <entry>[1993] D.N.E.N.-B. no 8</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry>D.C.T.E.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1995] N.B.L.E.B.D. No. 2</entry>
                            <entry>[2014] D.C.T.E.N.-B. no 7</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.N.E.N.-B.</entry>
                            <entry>N.B.E.S.D.</entry>
                            <entry>English</entry>
                            <entry>[1993] D.N.E.N.-B. no 8</entry>
                            <entry>[1989] N.B.E.S.D. No. 38</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.T.E.N.-B.</entry>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry>English</entry>
                            <entry>[2014] D.C.T.E.N.-B. no 7</entry>
                            <entry>[1995] N.B.L.E.B.D. No. 2</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.H.R.B.I.D.</entry>
                            <entry>D.C.E.D.P.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1974] N.B.H.R.B.I.D. No. 1</entry>
                            <entry>[1997] D.C.E.D.P.N.-B. no 2</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.E.D.P.N.-B.</entry>
                            <entry>N.B.H.R.B.I.D.</entry>
                            <entry>English</entry>
                            <entry>[1997] D.C.E.D.P.N.-B. no 2</entry>
                            <entry>[1974] N.B.H.R.B.I.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.I.R.D.</entry>
                            <entry>D.R.I.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1988] N.B.I.R.D. No. 1</entry>
                            <entry>[1988] D.R.I.N.-B. No 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry>D.C.T.E.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1995] N.B.L.E.B.D. No. 2</entry>
                            <entry>[1999] D.C.T.E.N.-B. no 90</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.R.I.N.-B.</entry>
                            <entry>N.B.I.R.D.</entry>
                            <entry>English</entry>
                            <entry>[1988] D.R.I.N.-B. No 1/[1993] D.R.I.N.B. no 18</entry>
                            <entry>[1988] N.B.I.R.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.T.E.N.-B.</entry>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry>English</entry>
                            <entry>[1999] D.C.T.E.N.-B. no 90</entry>
                            <entry>[1995] N.B.L.E.B.D. No. 2</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.L.A.A.</entry>
                            <entry>D.A.T.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1999] N.B.L.A.A. No. 43</entry>
                            <entry>[2009] D.A.T.N.-B. no 14</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.A.T.N.-B.</entry>
                            <entry>N.B.L.A.A.</entry>
                            <entry>English</entry>
                            <entry>[2009] D.A.T.N.-B. no 14</entry>
                            <entry>[1999] N.B.L.A.A. No. 43</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry>D.C.T.E.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[2010] N.B.L.E.B.D. No. 42</entry>
                            <entry>[2000] D.C.T.E.N.-B. no 58</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.C.T.E.N.-B.</entry>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry>English</entry>
                            <entry>[2000] D.C.T.E.N.-B. no 58</entry>
                            <entry>[2010] N.B.L.E.B.D. No. 42</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B.P.S.L.R.D.</entry>
                            <entry>D.R.T.S.P.N.-B.</entry>
                            <entry>French</entry>
                            <entry>[1975] N.B.P.S.L.R.D. No. 4</entry>
                            <entry>[1993] D.R.T.S.P.N.-B. no 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.H.R.B.I.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1988] N.H.R.B.I.D. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.L.H.R.B.I.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2009] N.L.H.R.B.I.D. No. 5</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.L.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2011] N.L.L.A.A. No. 17,</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Nfld. L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] Nfld. L.A.A. No. 1 (Js prior to 2002)</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.L.L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2006] N.L.L.R.B.D. No. 13,</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Nfld. L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2003] Nfld. L.R.B.D. No. 21 (Js prior to 2004)</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S.H.R.B.I.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] N.S.H.R.B.I.D. No. 3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S.F.I.P.P.A.R.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] N.S.F.I.P.P.A.R. No. 2</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] N.S.L.A.A. No. 5</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S.L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2003] N.S.L.R.B.D. No. 2</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S.U.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2009] N.S.U.R.B.D. No. 187</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.W.T.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] N.W.T.L.A.A. No. 3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.R.T.S.P.N.-B.</entry>
                            <entry>N.B.P.S.L.R.D.</entry>
                            <entry>English</entry>
                            <entry>[1993] D.R.T.S.P.N.-B. no 1</entry>
                            <entry>[1975] N.B.P.S.L.R.D. No. 4</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.B.L.E.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2009] N.B.L.E.B.D. No. 49</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNIIROC</entry>
                            <entry>LNOCRCVM</entry>
                            <entry>French</entry>
                            <entry>2013 LNIIROC 49</entry>
                            <entry>2013 LNOCRCVM 49</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNOCRCVM</entry>
                            <entry>LNIIROC</entry>
                            <entry>English</entry>
                            <entry>2013 LNOCRCVM 49</entry>
                            <entry>2013 LNIIROC 49</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.A.G.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2010] O.A.G.C.D. No. 257</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.A.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] O.A.R.B.D. No. 264</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.C.C.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2006] O.C.C.B.D. No. 142</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.C.P.S.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.C.P.S.D. No. 10</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.C.R.A.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] O.C.R.A.T.D. No. 64</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNONCTD</entry>
                            <entry>LNONECD</entry>
                            <entry>French</entry>
                            <entry>2014 LNONCTD 4</entry>
                            <entry>2014 LNONECD 4</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNONECD</entry>
                            <entry>LNONCTD</entry>
                            <entry>English</entry>
                            <entry>2014 LNONECD 4</entry>
                            <entry>2014 LNONCTD 4</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.E.A.B.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] O.E.A.B. No. 67</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.E.R.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.E.R.T.D. No. 9</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNONOEB</entry>
                            <entry>LNONECD</entry>
                            <entry>French</entry>
                            <entry>1988 LNONOEB 1</entry>
                            <entry>1998 LNONECD 11</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNONECD</entry>
                            <entry>LNONOEB</entry>
                            <entry>English</entry>
                            <entry>1998 LNONECD 11</entry>
                            <entry>1988 LNONOEB 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.E.S.A.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.E.S.A.D. No. 294</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.G.S.B.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.G.S.B.A. No. 66</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.H.R.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.H.R.T.D. No. 281</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.H.R.B.I.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] O.H.R.B.I.D. No. 14</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.F.S.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.F.S.C.D. No. 78</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.F.S.C.I.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] O.F.S.C.I.D. No. 213</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.I.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1998] O.I.C.D. No. 110</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.I.P.C.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] O.I.P.C. No. 292; [1988] O.I.P.C. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.L.A.A. No. 146; [1948] O.L.A.A. No. 4</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.L.A.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] O.L.A.T.D. No. 298; [2000] O.L.A.T.D. No. 418</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>OLRB Rep.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1983] OLRB Rep. December 1982; [1985] OLRB Rep. May 690</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.L.R.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] O.L.R.D. No. 4376</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.M.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.M.B.D. No. 353</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.C.A.M.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1995] D.C.A.M.O. no 2251</entry>
                            <entry>This is a source with a selection of French sources but they do
                                not have "parallels"</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.O.H.S.A.D</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.O.H.S.A.D. No. 18</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.P.E.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.P.E.D. No. 13</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.É.S.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1989] D.É.S.O. No 3</entry>
                            <entry>There are a small smattering of French decisions</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.P.S.G.B.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.P.S.G.B.A. No. 3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.R.B.D. No. 1128</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.R.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2014] O.R.C.D. No. 11</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.R.H.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] O.R.H.T.D. No. 207</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNONLTB</entry>
                            <entry/>
                            <entry/>
                            <entry>2012 LNONLTB 1907</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNONOSC</entry>
                            <entry/>
                            <entry/>
                            <entry>1985 LNONOSC 496</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.W.S.I.A.T.D</entry>
                            <entry/>
                            <entry/>
                            <entry>[2013] O.W.S.I.A.T.D. No. 1989</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.E.I.H.R.B.I.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1978] P.E.I.H.R.B.I.D. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.E.I.H.R.P.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2000] P.E.I.H.R.P.D. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.E.I.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1996] P.E.I.L.A.A. No. 2</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.E.I.L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1989] P.E.I.L.R.B.D. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1990] P.R.B.D. No. 8</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LNCTDFP</entry>
                            <entry>LNCPSST</entry>
                            <entry>English</entry>
                            <entry>2010 LNCTDFP 6</entry>
                            <entry>2009 LNCPSST 33</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>LNCPSST</entry>
                            <entry>LNCTDFP</entry>
                            <entry>French</entry>
                            <entry>2009 LNCPSST 33</entry>
                            <entry>2010 LNCTDFP 6</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>T.S.E.D.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1980] T.S.E.D.D. No. 17</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNSARTQ</entry>
                            <entry/>
                            <entry/>
                            <entry>2014 LNSARTQ 126</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>S.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1999] S.L.A.A. No. 2</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>S.L.R.B.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1987] S.L.R.B.D. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>S.M.B.A.A.C.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1999] S.M.B.A.A.C.D. No. 347</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>D.T.C.R.P.A.P.</entry>
                            <entry>C.A.P.P.R.T.D.</entry>
                            <entry>English</entry>
                            <entry>[2012] D.T.C.R.P.A.P. no 1</entry>
                            <entry>[2012] C.A.P.P.R.T.D. No. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.D.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2004] R.S.D.D. No. 6</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.I.T.T.</entry>
                            <entry>T.C.C.E.</entry>
                            <entry>French</entry>
                            <entry>[2011] C.I.T.T. No. 17</entry>
                            <entry>[2011] T.C.C.E. no 17</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>T.C.C.E.</entry>
                            <entry>C.I.T.T.</entry>
                            <entry>English</entry>
                            <entry>[2011] T.C.C.E. no 17</entry>
                            <entry>[2011] C.I.T.T. No. 17</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Q.H.R.T.J.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2012] Q.H.R.T.J. No. 5</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>J.T.D.P.Q.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2012] J.T.D.P.Q. no 5</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.T.P.Q.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1989] D.T.P.Q. no 2</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNQCTAQ</entry>
                            <entry/>
                            <entry/>
                            <entry>2004 LNQCTAQ 1998</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNQCTAQ</entry>
                            <entry/>
                            <entry/>
                            <entry>2004 LNQCTAQ 1999</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNQCTAQ</entry>
                            <entry/>
                            <entry/>
                            <entry>2006 LNQCTAQ 3795</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>LNQCTAQ</entry>
                            <entry/>
                            <entry/>
                            <entry>2010 LNQCTAQ 217</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.T.T.Q.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2004] D.T.T.Q. no 17</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.H.R.B.A.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[2010] Y.H.R.B.A.D. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.L.A.A.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1995] Y.L.A.A. No. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O.W.C.A.T.D.</entry>
                            <entry/>
                            <entry/>
                            <entry>[1988] O.W.C.A.T.D. No. 1046</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>R.A.D.D.</entry>
                            <entry>D.S.A.R.</entry>
                            <entry>French</entry>
                            <entry>[2014] R.A.D.D. No. 66</entry>
                            <entry>[2014] D.S.A.R. no 66</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>D.S.A.R.</entry>
                            <entry>R.A.D.D.</entry>
                            <entry/>
                            <entry>[2014] D.S.A.R. no 66</entry>
                            <entry>[2014] R.A.D.D. No. 66</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>T.B.R.</entry>
                            <entry/>
                            <entry/>
                            <entry>(1961), 2 T.B.R. 186</entry>
                            <entry/>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <p>Below Table is for <b>CA05</b></p>
            <table frame="all" pgwide="90">
                <tgroup cols="6">
                    <thead>
                        <row>
                            <entry align="center">Primary Language</entry>
                            <entry align="center">Primary ciatation</entry>
                            <entry align="center">Alternate Citation</entry>
                            <entry align="center">Alternate Language</entry>
                            <entry align="center">Primary Format</entry>
                            <entry align="center">Alternate Format</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry/>
                            <entry>SA; RSA</entry>
                            <entry/>
                            <entry/>
                            <entry>SA 2000, c. A-26.5; RSA 2000, c. A-1 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>S.B.C.; R.S.B.C.</entry>
                            <entry/>
                            <entry/>
                            <entry>S.B.C. 1997, c. 1; R.S.B.C. 1996, c. 1 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>S.C.</entry>
                            <entry>L.C.</entry>
                            <entry>French</entry>
                            <entry>S.C. 2012, c. 1</entry>
                            <entry>L.C. 2012, ch. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>R.S.C.</entry>
                            <entry>L.R.C.</entry>
                            <entry>French</entry>
                            <entry>R.S.C. 1985, c. A-1; R.S.C. 1970, c. A-14</entry>
                            <entry>L.R.C. 1985, ch. A-1; S.R.C. 1970, ch. A-14 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>s.</entry>
                            <entry>art.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.C.</entry>
                            <entry>S.C.</entry>
                            <entry>English</entry>
                            <entry>L.C. 2012, ch. 1</entry>
                            <entry>S.C. 2012, c. 1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.R.C.</entry>
                            <entry>R.S.C.</entry>
                            <entry>English</entry>
                            <entry>L.R.C. 1985, ch. A-1; S.R.C. 1970, ch. A-14; R.S.C. 1985, c. 1
                                (5e suppl.), art. 69</entry>
                            <entry>R.S.C. 1985, c. A-1; R.S.C. 1970, c. A-14; L.R.C. 1985, c. 1 (5e
                                suppl.), s. 69</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>art.</entry>
                            <entry>s.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>C.C.S.M.; R.S.M.; S.M.</entry>
                            <entry/>
                            <entry/>
                            <entry>C.C.S.M., c. W210; R.S.M. 1987, c. W210; S.M. 2011, c. 26 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>R.S.N.B.</entry>
                            <entry>L.R.N.-B.</entry>
                            <entry>French</entry>
                            <entry>R.S.N.B. 2011, c. 100 </entry>
                            <entry>L.R.N.-B. 2011, ch. 100 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>S.N.B.</entry>
                            <entry>L.N.-B.</entry>
                            <entry>French</entry>
                            <entry>S.N.B. 2012, c. 19</entry>
                            <entry>L.N.-B. 2012, ch. 19</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>2012, c. 19</entry>
                            <entry>1981, ch. B-9.1</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.R.N.-B.</entry>
                            <entry>R.S.N.B.</entry>
                            <entry>English</entry>
                            <entry>L.R.N.-B. 2011, ch. 100 </entry>
                            <entry>R.S.N.B. 2011, c. 100 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.N.-B.</entry>
                            <entry>S.N.B.</entry>
                            <entry>English</entry>
                            <entry>L.N.-B. 1981, ch. B-9.1</entry>
                            <entry>S.N.B. 1981, c. B-9.1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>1981</entry>
                            <entry>2012</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B-9.1</entry>
                            <entry>19</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>RSNL; SNL</entry>
                            <entry/>
                            <entry/>
                            <entry>RSNL 1990, c. Y-1, s. 21; SNL 2016, c. A-1.02, s. 10</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.N.; S.N.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.S.N. 1990, c. U-3; S.N. 1999, c. 1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.N.W.T.; S.N.W.T.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.S.N.W.T. 1988, c. E-10; S.N.W.T. 1994, c. 26</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.N.S.; S.N.S.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.S.N.S. 1989, c. 351; S.N.S. 1995-96, c. 12</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>S.N.W.T. (NU); R.S.N.W.T. (NU); S.Nu.</entry>
                            <entry/>
                            <entry/>
                            <entry>S.N.W.T. 1994, c. 26 (NU); R.S.N.W.T. 1988, c. L-9 (NU); S.Nu.
                                2005, c. 2</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.O.; S.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.S.O. 1990, c. A.2; S.O. 1996, c. 17</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.P.E.I.; S.P.E.I.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.S.P.E.I. 1988, c. A-1; S.P.E.I. 2013, c. 39</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>CQLR</entry>
                            <entry>RLRQ</entry>
                            <entry>French</entry>
                            <entry>CQLR, c. A-2.1</entry>
                            <entry>RLRQ, c. A-2.1 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.C.Q.</entry>
                            <entry>C.C.Q.</entry>
                            <entry>French</entry>
                            <entry>C.C.Q.-1992</entry>
                            <entry>C.C.Q.-1992</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>S.Q.</entry>
                            <entry>L.Q.</entry>
                            <entry>French</entry>
                            <entry>S.Q. 2007, c. 11</entry>
                            <entry>L.Q. 2007, c. 38 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c. 11</entry>
                            <entry>c. 38</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>R.S.Q.</entry>
                            <entry>L.R.Q.</entry>
                            <entry>French</entry>
                            <entry>R.S.Q,. c. M-1.2</entry>
                            <entry>L.R.Q., c. I-3 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c. M-1.2</entry>
                            <entry>c. I-3 </entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>RLRQ</entry>
                            <entry>CQLR</entry>
                            <entry>English</entry>
                            <entry>RLRQ, c. A-2.1 </entry>
                            <entry>CQLR, c. A-2.1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.C.Q.</entry>
                            <entry>C.C.Q.</entry>
                            <entry>English</entry>
                            <entry>C.C.Q.-1992</entry>
                            <entry>C.C.Q.-1992</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.Q.</entry>
                            <entry>S.Q.</entry>
                            <entry>English</entry>
                            <entry>L.Q. 2007, c. 38 </entry>
                            <entry>S.Q. 2007, c. 11</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c. 38 </entry>
                            <entry>c. 11</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.R.Q.</entry>
                            <entry>R.S.Q.</entry>
                            <entry>English</entry>
                            <entry>L.R.Q., c. I-3 </entry>
                            <entry>R.S.Q,. c. M-1.2</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c. I-3 </entry>
                            <entry>c. M-1.2</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.S.; S.S.</entry>
                            <entry/>
                            <entry/>
                            <entry>S.S. 2009, c. M-20.01; R.S.S. 1978, c. A-3</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.S.Y.; S.Y.</entry>
                            <entry/>
                            <entry/>
                            <entry>S.Y. 2013, c. 6; R.S.Y. 2002, c. 1 </entry>
                            <entry/>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <table>
                <title>Terms Conversion for CA05</title>
                <tgroup cols="2">
                    <thead>
                        <row>
                            <entry>English Terms</entry>
                            <entry>French Terms</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>s.</entry>
                            <entry>art.</entry>
                        </row>
                        <row>
                            <entry>No.</entry>
                            <entry>no</entry>
                        </row>
                        <row>
                            <entry>c. </entry>
                            <entry>ch.</entry>
                        </row>
                        <row>
                            <entry>Appendix</entry>
                            <entry>appendice</entry>
                        </row>
                        <row>
                            <entry>Long Title</entry>
                            <entry>Titre intégral</entry>
                        </row>
                        <row>
                            <entry>Preamble</entry>
                            <entry>Préambule</entry>
                        </row>
                        <row>
                            <entry>Enactment Clause</entry>
                            <entry>Formule d'édiction</entry>
                        </row>
                        <row>
                            <entry>Schedule</entry>
                            <entry>annexe</entry>
                        </row>
                        <row>
                            <entry>(2nd Supp.)</entry>
                            <entry>(2e suppl.)</entry>
                        </row>
                        <row>
                            <entry>(4th Supp.)</entry>
                            <entry>(4e suppl.)</entry>
                        </row>
                        <row>
                            <entry>(3rd Supp.)</entry>
                            <entry>(3e suppl.)</entry>
                        </row>
                        <row>
                            <entry>(5th Supp.)</entry>
                            <entry>(5e suppl.)</entry>
                        </row>
                        <row>
                            <entry>TP</entry>
                            <entry>DT</entry>
                        </row>
                        <row>
                            <entry>RP</entry>
                            <entry>DC</entry>
                        </row>
                        <row>
                            <entry>Repeal Sch</entry>
                            <entry>ann abrogative</entry>
                        </row>
                        <row>
                            <entry>Repeal Schedules</entry>
                            <entry>Annexe abrogratives</entry>
                        </row>
                        <row>
                            <entry>Repealed</entry>
                            <entry>Abrogée</entry>
                        </row>
                        <row>
                            <entry>Form</entry>
                            <entry>formule</entry>
                        </row>
                        <row>
                            <entry>Part</entry>
                            <entry>Partie</entry>
                        </row>
                        <row>
                            <entry>Table of Contents</entry>
                            <entry>Table des matières</entry>
                        </row>
                        <row>
                            <entry>Introduction</entry>
                            <entry>Introduction</entry>
                        </row>
                        <row>
                            <entry>Index</entry>
                            <entry>Indice</entry>
                        </row>
                        <row>
                            <entry>Sch</entry>
                            <entry>Ann</entry>
                        </row>
                        <row>
                            <entry>SCH</entry>
                            <entry>ANN</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <p>Below Table is for <b>CA06</b> and <b>CA07</b></p>
            <table frame="all" pgwide="95">
                <tgroup cols="6">
                    <thead>
                        <row>
                            <entry align="center">Primary Language</entry>
                            <entry align="center">Primary ciatation</entry>
                            <entry align="center">Alternate Citation</entry>
                            <entry align="center">Alternate Language</entry>
                            <entry align="center">Primary Format</entry>
                            <entry align="center">Alternate Format</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry/>
                            <entry>Alta. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>Alta. Reg. 272/96</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>B.C. Reg</entry>
                            <entry/>
                            <entry/>
                            <entry>B.C. Reg. 337/95</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>SI</entry>
                            <entry>TR</entry>
                            <entry>French</entry>
                            <entry>SI/2011-30 </entry>
                            <entry>TR/2011-30, </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>Preamble</entry>
                            <entry>Préambule</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Long Title</entry>
                            <entry>Titre intégral</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Short Title</entry>
                            <entry>Titre abrégé</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Enactment Clause</entry>
                            <entry>Formule d'édiction</entry>
                            <entry/>
                            <entry>SI/2004-134 Enactment Clause</entry>
                            <entry>TR/2004-134 Formule d'édiction</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>C.R.C.</entry>
                            <entry>C.R.C.</entry>
                            <entry>French</entry>
                            <entry>C.R.C., c. 870</entry>
                            <entry> C.R.C., ch. 870</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Schedule</entry>
                            <entry>annexe</entry>
                            <entry/>
                            <entry>C.R.C., c. 285, Schedule I</entry>
                            <entry>C.R.C., c. 285, annexe I</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>SOR</entry>
                            <entry>DORS</entry>
                            <entry>French</entry>
                            <entry>SOR/89-207</entry>
                            <entry>DORS/89-207</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>Sch.</entry>
                            <entry>Annexe</entry>
                            <entry>French</entry>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>TR</entry>
                            <entry>SI</entry>
                            <entry>English</entry>
                            <entry>TR/2011-30, </entry>
                            <entry>SI/2011-30 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>Préambule</entry>
                            <entry>Preamble</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Titre intégral</entry>
                            <entry>Long Title</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Titre abrégé</entry>
                            <entry>Short Title</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Formule d'édiction</entry>
                            <entry>Enactment Clause</entry>
                            <entry/>
                            <entry>TR/2004-134 Formule d'édiction</entry>
                            <entry>SI/2004-134 Enactment Clause</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>C.R.C.</entry>
                            <entry>C.R.C.</entry>
                            <entry>English</entry>
                            <entry>C.R.C., ch. 870</entry>
                            <entry>C.R.C., c. 870 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>annexe</entry>
                            <entry>Schedule</entry>
                            <entry/>
                            <entry>C.R.C., c. 285, annexe I</entry>
                            <entry>C.R.C., c. 285, Schedule I</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>DORS</entry>
                            <entry>SOR</entry>
                            <entry>English</entry>
                            <entry>DORS/89-207</entry>
                            <entry> SOR/89-207</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>Annexe</entry>
                            <entry>Sch.</entry>
                            <entry>English</entry>
                            <entry/>
                            <entry> </entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>Man. Reg. 19/99</entry>
                            <entry/>
                            <entry/>
                            <entry>Man. Reg. 19/99</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>N.B. Reg.</entry>
                            <entry>Règl. du N.-B.</entry>
                            <entry>French</entry>
                            <entry>N.B. Reg. 82-222</entry>
                            <entry>Règl. du N.-B. 82-222</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>Règl. du N.-B.</entry>
                            <entry>N.B. Reg.</entry>
                            <entry>English</entry>
                            <entry>Règl. du N.-B. 82-222</entry>
                            <entry>N.B. Reg. 82-222</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>C.N.L.R.</entry>
                            <entry/>
                            <entry/>
                            <entry>C.N.L.R. 1139/96 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.L.R.</entry>
                            <entry/>
                            <entry/>
                            <entry> N.L.R. 11/07</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.R.N.W.T.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.R.N.W.T. 1990, c. A-1</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.W.T. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>N.W.T. Reg. 085-95</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>N.S. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>N.S. Reg. 1/97</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.R.N.W.T. 1990</entry>
                            <entry/>
                            <entry/>
                            <entry>R.R.N.W.T. 1990, c. A-1, </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Nu. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>Nu. Reg. 085-95</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.R.O. 1990, Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>R.R.O. 1990, Reg. 17</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>O. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>O. Reg. 191/11</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>P.E.I. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>P.E.I. Reg. EC301/85</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>RSQ </entry>
                            <entry>LRQ</entry>
                            <entry>French</entry>
                            <entry>RSQ c.A-2.1 r1, </entry>
                            <entry>LRQ ch.A-2.1 r1, </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry> </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>r1</entry>
                            <entry>r1</entry>
                            <entry/>
                            <entry> </entry>
                            <entry> </entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>RSQ,CCQ,</entry>
                            <entry>LRQ,CCQ</entry>
                            <entry>French</entry>
                            <entry>RSQ,CCQ,R1 </entry>
                            <entry>LRQ,CCQ,R1 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>R</entry>
                            <entry>R</entry>
                            <entry/>
                            <entry> </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>RSQ,CCR</entry>
                            <entry>LRQ,CCR</entry>
                            <entry>French</entry>
                            <entry>RSQ,CCR,R1 </entry>
                            <entry>LRQ,CCR,R1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>R</entry>
                            <entry>R</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>CQLR</entry>
                            <entry>RLRQ</entry>
                            <entry>French</entry>
                            <entry>CQLR, c. A-2.1, r.1.1</entry>
                            <entry>RLRQ, c. A-2.1, r.1.1</entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LRQ</entry>
                            <entry>RSQ </entry>
                            <entry>English</entry>
                            <entry>LRQ ch.A-2.1 r1, </entry>
                            <entry>RSQ c.A-2.1 r1, </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c. </entry>
                            <entry/>
                            <entry> </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>r1</entry>
                            <entry>r1 </entry>
                            <entry/>
                            <entry> </entry>
                            <entry> </entry>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LRQ,CCQ</entry>
                            <entry>RSQ,CCQ,</entry>
                            <entry>English</entry>
                            <entry>LRQ,CCQ,R1</entry>
                            <entry>RSQ,CCQ,R1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>R</entry>
                            <entry>R</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>LRQ,CCR</entry>
                            <entry>RSQ,CCR</entry>
                            <entry>English</entry>
                            <entry>LRQ,CCR,R1 </entry>
                            <entry>RSQ,CCR,R1</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>R</entry>
                            <entry>R</entry>
                            <entry/>
                            <entry> </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>S. Reg.</entry>
                            <entry/>
                            <entry/>
                            <entry>S. Reg. 78/66</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>R.R.S. c. S-15.1, Reg</entry>
                            <entry/>
                            <entry/>
                            <entry>R.R.S. c. S-15.1, Reg 2 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Sask. O.C.</entry>
                            <entry/>
                            <entry/>
                            <entry>Sask. O.C. 109/76</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.O.I.C. </entry>
                            <entry/>
                            <entry/>
                            <entry>Y.O.I.C. 2013/207</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.C.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>Y.C.O. 2011/09 </entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.F.S.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>Y.F.S.O. 2010/04</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.M.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>Y.M.O. 2012/15</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.S.F.V.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>Y.S.F.V.O. 2011/01</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.W.C.H.S.B.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>Y.W.C.H.S.B.O. 2011/01</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Y.W.C.B.O.</entry>
                            <entry/>
                            <entry/>
                            <entry>Y.W.C.B.O. 1990/002</entry>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>RLRQ</entry>
                            <entry>CQLR</entry>
                            <entry>English</entry>
                            <entry>RLRQ, ch. A-6.002, r. 1</entry>
                            <entry>CQLR, c. A-6.002, r. 1</entry>
                        </row>



                    </tbody>
                </tgroup>
            </table>
            <note>Below mentioned short term citations come any combinations with the mandatory
                (primary or alternative citations already mentioned in above conversion table)
                citations then short terms ciatation should be converetd according to below
                table:</note>
            <table>
                <title>Terms Conversion for CA06 and CA07</title>
                <tgroup cols="2">
                    <thead>
                        <row>
                            <entry>English Terms</entry>
                            <entry>French Terms</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>s.</entry>
                            <entry>art.</entry>
                        </row>
                        <row>
                            <entry>No.</entry>
                            <entry>no</entry>
                        </row>
                        <row>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                        </row>
                        <row>
                            <entry>Appendix</entry>
                            <entry>appendice</entry>
                        </row>
                        <row>
                            <entry>Preamble</entry>
                            <entry>Préambule</entry>
                        </row>
                        <row>
                            <entry>Enactment Clause</entry>
                            <entry>Formule d'édiction</entry>
                        </row>
                        <row>
                            <entry>Schedule</entry>
                            <entry>annexe</entry>
                        </row>
                        <row>
                            <entry>Long Title</entry>
                            <entry>Titre intégral</entry>
                        </row>
                        <row>
                            <entry>(2nd Supp.)</entry>
                            <entry>(2e suppl.)</entry>
                        </row>
                        <row>
                            <entry>(3rd Supp.)</entry>
                            <entry>(3e suppl.)</entry>
                        </row>
                        <row>
                            <entry>(4th Supp.)</entry>
                            <entry>(4e suppl.)</entry>
                        </row>
                        <row>
                            <entry>(5th Supp.)</entry>
                            <entry>(5e suppl.)</entry>
                        </row>
                        <row>
                            <entry>TP</entry>
                            <entry>DT</entry>
                        </row>
                        <row>
                            <entry>RP</entry>
                            <entry>DC</entry>
                        </row>
                        <row>
                            <entry>Repeal Sch</entry>
                            <entry>ann abrogative</entry>
                        </row>
                        <row>
                            <entry>Repeal Schedules</entry>
                            <entry>Annexe abrogratives</entry>
                        </row>
                        <row>
                            <entry>Repealed</entry>
                            <entry>Abrogée</entry>
                        </row>
                        <row>
                            <entry>Form</entry>
                            <entry>formule</entry>
                        </row>
                        <row>
                            <entry>Part</entry>
                            <entry>Partie</entry>
                        </row>
                        <row>
                            <entry>Table of Contents</entry>
                            <entry>Table des matières</entry>
                        </row>
                        <row>
                            <entry>Introduction</entry>
                            <entry>Introduction</entry>
                        </row>
                        <row>
                            <entry>Index</entry>
                            <entry>Indice</entry>
                        </row>
                        <row>
                            <entry>Sch</entry>
                            <entry>Ann</entry>
                        </row>
                        <row>
                            <entry>SCH</entry>
                            <entry>ANN</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <p>Below Table is for <b>CA08</b>:</p>
            <table frame="all" pgwide="95">
                <tgroup cols="6">
                    <thead>
                        <row>
                            <entry align="center">Primary Language</entry>
                            <entry align="center">Primary ciatation</entry>
                            <entry align="center">Alternate Citation</entry>
                            <entry align="center">Alternate Language</entry>
                            <entry align="center">Primary Format</entry>
                            <entry align="center">Alternate Format</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>English</entry>
                            <entry>R.S.C.</entry>
                            <entry>L.R.C.</entry>
                            <entry>French</entry>
                            <entry>R.S.C. 1985, App. II, No. 3 </entry>
                            <entry>L.R.C. 1985, appendice II, no 22</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>App. II</entry>
                            <entry>appendice II</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>No.</entry>
                            <entry>no</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>s. L</entry>
                            <entry>art. L</entry>
                            <entry/>
                            <entry>R.S.C. 1985, Appendix II, No. 4, s. L</entry>
                            <entry>L.R.C. 1985, appendice II, no 4, art. L</entry>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>George III </entry>
                            <entry>George III </entry>
                            <entry>French</entry>
                            <entry>31 George III, c. 31 (U.K.)</entry>
                            <entry>14 George III, ch. 83 (R.-U.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(U.K.)</entry>
                            <entry>(R.-U.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>Victoria</entry>
                            <entry>Victoria</entry>
                            <entry>French</entry>
                            <entry>3-4 Victoria, c. 35 (U.K.)</entry>
                            <entry>3-4 Victoria, ch. 35 (R.-U.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(U.K.)</entry>
                            <entry>(R.-U.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>Elizabeth II</entry>
                            <entry>Elizabeth II</entry>
                            <entry>French</entry>
                            <entry>23-24 Elizabeth II, c. 28 (Canada)</entry>
                            <entry>23 Elizabeth II, ch. 13 (Canada)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(Canada)</entry>
                            <entry>(Canada)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>George VI</entry>
                            <entry>George VI</entry>
                            <entry>French</entry>
                            <entry>13 George VI, c. 81 (U.K.)</entry>
                            <entry>14 George VI, ch. 6 (R.-U.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(U.K.)</entry>
                            <entry>(R.-U.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>George V</entry>
                            <entry>George V</entry>
                            <entry>French</entry>
                            <entry>22 George V, c. 4 (U.K.)</entry>
                            <entry>22 George V, ch. 4 (R.-U.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(U.K.)</entry>
                            <entry>(R.-U.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>English</entry>
                            <entry>Edward VII</entry>
                            <entry>Edward VII</entry>
                            <entry>French</entry>
                            <entry>7 Edward VII, c. 11 (U.K.)</entry>
                            <entry>7 Edouard VII, ch. 11 (R.-U.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>c.</entry>
                            <entry>ch.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(U.K.)</entry>
                            <entry>(R.-U.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>L.R.C.</entry>
                            <entry>R.S.C.</entry>
                            <entry>English</entry>
                            <entry>L.R.C. 1985, appendice II, no 22</entry>
                            <entry>R.S.C. 1985, Appendix II, No. 3 </entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>appendice II</entry>
                            <entry>Appendix II</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>George III </entry>
                            <entry>George III </entry>
                            <entry>English</entry>
                            <entry>14 George III, ch. 83 (R.-U.)</entry>
                            <entry>31 George III, c. 31 (U.K.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>Victoria </entry>
                            <entry>Victoria </entry>
                            <entry>English</entry>
                            <entry>3-4 Victoria, ch. 35 (R.-U.)</entry>
                            <entry>3-4 Victoria, c. 35 (U.K.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(R.-U.)</entry>
                            <entry>(U.K.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>Elizabeth II </entry>
                            <entry>Elizabeth II </entry>
                            <entry>English</entry>
                            <entry>23 Elizabeth II, ch. 13 (Canada)</entry>
                            <entry>23-24 Elizabeth II, c. 28 (Canada)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(Canada)</entry>
                            <entry>(Canada)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>George VI</entry>
                            <entry>George VI</entry>
                            <entry>English</entry>
                            <entry>14 George VI, ch. 6 (R.-U.)</entry>
                            <entry>13 George VI, c. 81 (U.K.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(R.-U.)</entry>
                            <entry>(U.K.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>George V</entry>
                            <entry>George V</entry>
                            <entry>English</entry>
                            <entry>22 George V, ch. 4 (R.-U.)</entry>
                            <entry>22 George V, c. 4 (U.K.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(R.-U.)</entry>
                            <entry>(U.K.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>Edouard VII</entry>
                            <entry>Edward VII</entry>
                            <entry>English</entry>
                            <entry>7 Edouard VII, ch. 11 (R.-U.)</entry>
                            <entry>7 Edward VII, c. 11 (U.K.)</entry>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(R.-U.)</entry>
                            <entry>(U.K.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry>French</entry>
                            <entry>art.</entry>
                            <entry>s.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>no</entry>
                            <entry>No.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>ch.</entry>
                            <entry>c.</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>appendice</entry>
                            <entry>Appendix</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Titre intégral</entry>
                            <entry>Long Title</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Préambule</entry>
                            <entry>Preamble</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Formule d'édiction</entry>
                            <entry>Enactment Clause</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>annexe</entry>
                            <entry>Schedule</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(2e suppl.)</entry>
                            <entry>(2nd Supp.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(3e suppl.)</entry>
                            <entry>(3rd Supp.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(4e suppl.)</entry>
                            <entry>(4th Supp.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>(5e suppl.)</entry>
                            <entry>(5th Supp.)</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>DT</entry>
                            <entry>TD</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>DC</entry>
                            <entry>RP</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>ann abrogative</entry>
                            <entry>Repeal Sch</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Annexe abrogratives</entry>
                            <entry>Repeal Schedules</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Abrogée</entry>
                            <entry>Repealed</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>formule</entry>
                            <entry>Form</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Partie</entry>
                            <entry>Part</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                            <entry>Table des matières</entry>
                            <entry>Table of Contents</entry>
                            <entry/>
                            <entry/>
                            <entry/>
                        </row>
                    </tbody>
                </tgroup>
            </table>
        </section>
        <section>
            <title>Changes</title>
            <p>2017-04-06: <ph id="change_20170406_RS">updated Alternate Format (L.N.-B. 1981, ch. B-9.1 changed to L.N.-B. 2012, ch. 19 and S.N.B. 2012, c. 19 changed to S.N.B. 1981, c. B-9.1) 
                for corresponding of Primary Format (S.N.B. 2012, c. 19 and L.N.-B. 1981, ch. B-9.1) for CA05. [Webstar #6834330]</ph> </p>
            <p>2017-03-29: <ph id="change_20170329_SS">Updated references in the table of L.R.N.B.
                to L.R.N.-B. and L.N.B. to L.N.-B. for CA05.</ph> [Webstar #6834330]</p>
            <p>2017-03-15: <ph id="change_20170315_SS"><b>For CA05</b> alternate language
                abbreviation for changed from R.S.N.L; S.N.L. to RSNL; SNL (removed periods).
                Webstar #6750120</ph></p>
            <p>2017-02-06: <ph id="change_20170206_RS">Added some French to English terms for translation of the citation inside the table for CA06 and CA07 i.e. <b>ch. A-6.002, r. 1</b></ph></p>
            <p>2016-11-10: <ph id="change_20161110_AS"><b>For CA05</b>alternate language abbreviation for R.S.C 1970 changed to S.R.C. Webstar #6714384</ph></p>
            <p>2016-07-07: <ph id="change_20160707_AS"><b>For CA05 and CA06</b>- Block RHS link to
                    alternate version for given DPSI values</ph></p>
            <p>2015-02-23: <ph id="change_20150223_SEP">Updated Scenario for CA02, when
                        <b>"DOC-ID"</b> used with <b>"DOCUMENT"</b> service,
                        <targetxml>proc:param/@name="targetdoclang"</targetxml> should be included.
                    RFA# 2201, Applicable on CA02.</ph></p>
            <p>2015-02-19: <ph id="change_20150219_SEP">Updated Scenario for CA02, <b>"DOC-ID"</b>
                    should be used with <b>"DOCUMENT"</b> service. RFA# 1873, Applicable on
                    CA02.</ph></p>
            <p>2015-02-13: <ph id="change_20150213_PS">Updated citation <b>R.S.N.B.</b>, added
                    period in the last. RFA# 200, Applicable on CA05.</ph></p>
            <p>2015-01-26: <ph id="change_20150126_SEP">Update proc:param name="normprotocol" from
                    value="jcite" to value="CAEditorial"; for CA01, CA02, CA04, CA05, CA06, CA07 and
                    CA08. R4.5 RFA #1873.</ph></p>
            <p>2014-12-19: <ph id="change_20141219_PS">Updated citation from <b>[2000] A.C.F. No.
                        1985</b> to <b>[2000] A.C.F. no 1985</b>, for CA01.</ph></p>
            <p>2014-12-16: <ph id="change_20141216_SS">Added note for conversion of short term
                    citations and it's come any combinations with the mandatory (primary or
                    alternative citation) citations then short terms ciatation should be converetd
                    according to short table. Applicable on CA06-CA07.</ph></p>
            <p>2014-12-16: <ph id="change_20141216_PS">Added note to identify primary and alternate
                    language when primary and alternate citation are same. Applicable on
                    CA05-CA08.</ph></p>
            <p>2014-11-18: <ph id="change_20141118_AS">For CA02- Updated instructions for
                    "proc:param name="targetdoclang" value="" for both English and French. P4, Db
                    issue #365</ph></p>
            <p>2014-11-11: <ph id="change_20141111_PS">Added note and table <b>"Terms conversion for
                        CA05"</b> for terms translation, Applicable on CA05.</ph></p>
            <p>2014-11-06: <ph id="change_20141106_SSX">Added some english to french terms for
                    translation of the citation and also update <b>c. to ch. </b> in <b>CA06 and
                        CA07 table</b></ph></p>
            <p>2014-10-20: <ph id="change_20141020_SS">Updated the old citation inside the table for
                        <b>CA08</b> stream i.e. <b>appendice II</b> to <b>Appendix II</b>.</ph></p>
            <p>2014-10-20: <ph id="change_20141020_AS">Updated instruction to remove english version
                    and add french version. P4 Db issue #324</ph></p>
            <p>2014-10-01: <ph id="change_20141001_SS">Added the new citation inside the table for
                        <b>CA08</b> stream i.e. <b>Annexe abrogratives</b> to <b>Repeal
                        Schedules</b>.</ph></p>
            <p>2014-10-01: <ph id="change_20141001_PS">Updated CA05 table for <b>"s."</b> to
                        <b>"art."</b> and <b>"art."</b> to <b>"s."</b> for citation <b>"L.R.C."</b>
                    and <b>"R.S.C."</b>. Also updated the citation <b>"L.N.B."</b> to generate
                        <b>ch.</b> to <b>c.</b>. Applicable on CA05.</ph></p>
            <p>2014-09-23: <ph id="change_201409_23_SSX">Added English <sourcexml>Enactment
                        Clause</sourcexml> To <targetxml>Formule d'édiction </targetxml>,
                        <sourcexml>Long Title</sourcexml> To <targetxml>Titre intégral</targetxml>,
                        <sourcexml>Short Title</sourcexml> To <targetxml>Titre
                        abrégé</targetxml>,<sourcexml>Preamble</sourcexml> To <targetxml>Préambule
                    </targetxml> and vice versa in CA06-CA07 Table</ph></p>
            <p>2014-09-03: <ph id="change_20140903_SEP">Added instructions for proc:param
                    name="targetdoclang". <b>R4.5 #1873.</b></ph></p>
            <p>2014-08-27: <ph id="change_20140827_AS">Added the new rule for CA02 content streams
                    for alternate language. <b>P4 issue #324.</b></ph></p>
            <p>2014-08-25: <ph id="change_20140825_SS">Added the new citation inside the table for
                    CA08 i.e. <b>R.S.C. 1985, Appendix II, No. 4, s. L</b>.</ph></p>
            <p>2014-08-25: <ph id="change_20140825_PS">Added <b>Schedule</b> to <b>Annexe</b> and
                    vice a versa in C.R.C citation, Applicable for CA06 and CA07.</ph></p>
            <p>2014-08-21: <ph id="change_20140821_AS">Updated C.O.M.C. with "no" and T.M.O.B. "No."
                    for CA04- Db issue #326</ph></p>
            <p>2014-08-11: <ph id="change_20140811_AS">Added alternate citation for corresponding
                    primary LNCRTCF and LNCRTCE citation as provided in alternate and primary format
                    for CA04- Db issue #321</ph></p>
            <p>2014-08-11: <ph id="change_20140811_PS">Updated references in the table of L.R.N.-B.
                    to L.R.N.B. and L.N.-B. to L.N.B. for CA05.</ph></p>
            <p>2014-08-01: <ph id="change_201408-01_AS">Updated Primary and Alternate Languages for
                    C.B.D,D.B.D.A,LNCRTCE and 2009 LNCRTCF 41... Db issue P4.313</ph></p>
            <p>2014-07-28: <ph id="change_20140728_SS">Added the new citation inside the table for
                    CA06 and CA07 i.e. <b>CQLR, c. A-2.1, r.1.1 </b>.</ph></p>
            <p>2014-07-24: <ph id="change_20140724_PS">Added new rule for conversion of CA01, CA02,
                    CA04 and updated instruction for CA05-CA08.</ph></p>
            <p>2014-07-21: <ph id="change_20140721_PS">Updated CA01 citation <b>[1986] A.C.A.C. no
                        1</b> and snippet.</ph></p>
            <p>2014-07-09: <ph id="change_20140709_AS">Added primary and alternate language for
                    CA04- Db issue #250</ph></p>
            <p>2014-07-07: <ph id="change_20140707_SSX">Added R and Sch alternatives in CA06 and
                    CA07 table</ph></p>
            <p>2014-06-27: <ph id="change_20140627_AS">Added table for CA04....Db issue
                #1552</ph></p>
            <p>2014-06-25: <ph id="change_20140625">Added instruction for
                        <targetxml>ref:marker</targetxml> and updated table for <b>CA01-CA02</b>,
                        <b>CA05-CA07</b>.</ph></p>
            <p>2014-06-20 : <ph id="change_20140620_CSN">Changed
                        <targetxml>ref:parallelcite@citetype</targetxml> to <b>"parallel"</b> from
                        <b>"FrenchVersion"</b> or <b>"EnglishVersion"</b> to be consistent with
                        <targetxml>ref:parallelcite@citetype</targetxml> evreywhere else.</ph></p>
            <p>2014-06-17: <ph id="change_20140617_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LxAdv_CA-ref.cite4thisresource-LxAdv-ref.parallelcite-doc.related-content.dita  -->
 

<!-- Vikas Rohilla : Created the Tempalte for case:reportercite -->
    <xsl:template  match="case:reportercite" mode="docrelated-content">
        <xsl:variable name="reportercite">
            <xsl:value-of select="ci:cite/ci:content"/>
        </xsl:variable>
        <xsl:variable name="alternate-cite">
            <xsl:for-each select="$docRelatedContent-TableCA01/ext:references/ext:reference">
                <xsl:variable name="primary-cite" select="@primary-citation"/>
                <xsl:if test="contains($reportercite,$primary-cite)">
                    <xsl:value-of select="@alternate-citation"/>
                </xsl:if>
            </xsl:for-each>    
        </xsl:variable>
        <xsl:if test="count(../case:parallelcite[descendant::ci:content[contains(.,$alternate-cite)]]) > 0 and $alternate-cite!=''">
            <doc:related-content>
                <doc:related-content-grp content-type="alternate-language-version">
                    <doc:related-content-item>
                        <doc:related-content-link>
                            <ref:lnlink service="TRAVERSE">                                
                                <ref:marker>
                                    <xsl:choose>
                                        <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='fr'">
                                            <xsl:text>English Version</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='en'">
                                            <xsl:text>French Version</xsl:text>
                                        </xsl:when>
                                    </xsl:choose>
                                    </ref:marker>
                                <ref:locator>
                                    <ref:locator-key>
                                        <ref:key-name name="normcite"/>
                                        <ref:key-value>
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="../case:parallelcite[ci:cite/ci:content[contains(.,$alternate-cite)]]"/>
                                            </xsl:attribute>
                                        </ref:key-value>
                                    </ref:locator-key>
                                    <ref:locator-params>
                                        <proc:param name="normprotocol" value="CAEditorial"/>
                                        <proc:param name="countrycode">
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="/CASEDOC/docinfo/docinfo:doc-country/@iso-cc"/>
                                            </xsl:attribute>
                                        </proc:param>
                                        <proc:param>
                                            <xsl:attribute name="name">targetdoclang</xsl:attribute>
                                            <xsl:attribute name="value">
                                               <!-- <xsl:value-of select="concat(/CASEDOC/docinfo/docinfo:doc-lang/@lang,'-',/CASEDOC/docinfo/docinfo:doc-country/@iso-cc)"/>-->
                                                <xsl:choose>
                                                    <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='fr'">
                                                        <xsl:text>en-CA</xsl:text>
                                                    </xsl:when>
                                                    <xsl:when test="/CASEDOC/docinfo/docinfo:doc-lang/@lang='en'">
                                                        <xsl:text>fr-CA</xsl:text>
                                                    </xsl:when>
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
    </xsl:template>


</xsl:stylesheet>