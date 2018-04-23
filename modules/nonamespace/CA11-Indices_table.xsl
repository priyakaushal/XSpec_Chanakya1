<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0"
    exclude-result-prefixes="dita dig docinfo ci">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_table.dita">
        <title>table <lnpid>id-CA11-14815</lnpid></title>

        <body>

            <section>

                <p><sourcexml>table</sourcexml> conversion is based on the dpsi value.</p>
                <p>When source documents contains <sourcexml>docinfo:metaitem name="QLDB"
                        value="iclj"</sourcexml> or <sourcexml>docinfo:metaitem name="QLDB"
                        value="iclb"</sourcexml> or <sourcexml>docinfo:metaitem name="QLDB"
                        value="clsi"</sourcexml> then follow the below mentioned mapping.</p>

                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>Title\Titre:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:entrytitle</targetxml> (unless
                    there is no text, in which case remove the entire row).</p>
                <p>When source document is having <sourcexml>dig:body/bodytext</sourcexml> then
                        <sourcexml>dig:body</sourcexml> becomens <targetxml>biblio:body</targetxml>
                    and <sourcexml>bodytext</sourcexml> element should be dropped and convert its
                    child elements as mentioned below.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;Title\Titre:&lt;/entry&gt;
                &lt;entry colname="col2" searchtype="BOOK-TITLE"&gt;The new reality in Canada/United
                    States relations: reconciling security and economic interests and the "smart
                    border declaration".&lt;/entry&gt;
            &lt;/row&gt; ... &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:entrytitle&gt;The new reality in Canada/United States relations: reconciling security and
        economic interests and the "smart border declaration".&lt;/biblio:entrytitle&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
                <p>When <sourcexml>tbody/row/entry</sourcexml> is blank</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;

        &lt;tbody&gt;

            &lt;row&gt;
                &lt;entry colname="col1"/&gt;
                &lt;entry colname="col2"/&gt;
            &lt;/row&gt;

            &lt;row&gt;
                &lt;entry colname="col1"&gt;Title\Titre:&lt;/entry&gt;
                &lt;entry colname="col2" searchtype="BOOK-TITLE"/&gt;
            &lt;/row&gt;
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

<b>&lt;!-- Suppressed biblio:entrytitle element --&gt;</b>
</pre>
            </section>

            <section>

                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>By\Par:</sourcexml> or <sourcexml>AUTHOR/AUTEUR:</sourcexml> then
                    drop the complete entry and the next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/byline/person:contributor/@contributor-type="author"</targetxml>.</p>

                <p>If next first <sourcexml>row/entry</sourcexml> does not contain any value then
                    next entry will becomes
                        <targetxml>person:contributor/@contributor-type="author"</targetxml> and
                    merge with its previous
                    <targetxml>biblio:body/biblio:entry/byline</targetxml>.</p>

                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;By\Par:&lt;/entry&gt;
                &lt;entry colname="col2" searchtype="AUTHOR"&gt;Flynn, Stephen E., Apr 2003 &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;Flynn, Stephen E., Apr 2003
            &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>

                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;AUTHOR/AUTEUR:&lt;/entry&gt;
                &lt;entry colname="col2" searchtype="AUTHOR"&gt;par Serge Parisien &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;par Serge Parisien &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/biblio:entry&gt;
    &lt;/biblio:body&gt;</pre>

                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;By\Par:&lt;/entry&gt;
                &lt;entry colname="col2" searchtype="AUTHOR"&gt;Hutchinson, Scott.&lt;/entry&gt;
            &lt;/row&gt;
            &lt;row&gt;
                &lt;entry colname="col1"/&gt;
                &lt;entry colname="col2" searchtype="AUTHOR"&gt;Smith, Brennagh. &lt;/entry&gt;
            &lt;/row&gt;
             ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;Hutchinson, Scott.&lt;/person:contributor&gt;
            &lt;person:contributor contributor-type="author"&gt;Smith, Brennagh. &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>


            </section>

            <section>

                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>REVIEW/CRITIQUE:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/byline/person:contributor/@contributor-type="reviewer"</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;REVIEW/CRITIQUE:&lt;/entry&gt;
                &lt;entry colname="col2" searchtype="REVIEWER"&gt;Frédéric Bachand &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="reviewer"&gt;Frédéric Bachand &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>

                <note>
                    <p>Conversion should not create consecutive <sourcexml>byline</sourcexml>
                        elements. When 2 or more consecutive sibling source elements map to
                            <sourcexml>byline</sourcexml>, data should be merged to a single
                            <sourcexml>byline</sourcexml> element unless this would hamper content
                        ordering.</p>
                </note>
            </section>

            <section>

                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>PUBL/ÉDITEUR:</sourcexml> or <sourcexml>Publ\Editeur:</sourcexml>
                    then drop the complete entry and the next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/pubinfo:publisher</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;Publ\Editeur:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;[Cleveland, Ohio] : Canada-United States Law
                    Institute, Case Western Reserve University School of Law,
                    c2003.&lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:publicationinfo&gt;
            &lt;pubinfo:publisher&gt;[Cleveland, Ohio] : Canada-United States Law Institute, Case Western
                Reserve University School of Law, c2003.&lt;/pubinfo:publisher&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
            </section>

            <section>

                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>SUBJECTS/SUJETS:</sourcexml> or
                        <sourcexml>Subjects\Sujets:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/classify:classification/@classscheme="Subjects"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>
                <p>If next first <sourcexml>row/entry</sourcexml> does not contain any value then
                    next entry will becomes
                        <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                    and merge with its previous
                        <targetxml>classify:classification/@classscheme="Subjects"</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;Subjects\Sujets:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;National security -- Law and legislation --
                    Canada.&lt;/entry&gt;
            &lt;/row&gt;
            &lt;row&gt;
                &lt;entry colname="col1"/&gt;
                &lt;entry colname="col2"&gt;Sécurié nationale -- Aspect économique --
                    États-Unis.&lt;/entry&gt;
            &lt;/row&gt;
            &lt;row&gt;
                &lt;entry colname="col1"/&gt;
                &lt;entry colname="col2"&gt;Droit international privé -- Canada.&lt;/entry&gt;
            &lt;/row&gt;
            &lt;row&gt;
                &lt;entry colname="col1"/&gt;
                &lt;entry colname="col2"&gt;Droit international privé -- États-Unis.&lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;classify:classification classscheme="Subjects"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;National security -- Law and legislation --
                            Canada.&lt;/classify:classname&gt;
                        &lt;classify:classname&gt;Sécurié nationale -- Aspect économique --
                            États-Unis.&lt;/classify:classname&gt;
                        &lt;classify:classname&gt;Droit international privé --
                            Canada.&lt;/classify:classname&gt;
                        &lt;classify:classname&gt;Droit international privé --
                            États-Unis.&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>CITE/RÉFÉRENCE:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/ref:relatedrefs/@referencetype=”CITE”/ref:referenceitem/textitem</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;&lt;entry colname="col1"&gt;CITE/RÉFÉRENCE:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;&lt;ci:cite&gt;&lt;ci:lawrev&gt;&lt;ci:lawrevref ID="cref00001499"
                                spanref="cspan00001499"&gt;&lt;ci:lawrevlocator&gt;&lt;ci:publicationname
                                        normpubcode="RJTH"/&gt;&lt;ci:volume num="28"/&gt;&lt;ci:page num="303"
                                    /&gt;&lt;/ci:lawrevlocator&gt;&lt;/ci:lawrevref&gt;&lt;/ci:lawrev&gt;&lt;ci:content&gt;&lt;ci:span
                                spanid="cspan00001499"&gt;(1994) 28 R.J.T.
                        303&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
                &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;ref:relatedrefs referencetype=”CITE”&gt;
                &lt;ref:referenceitem&gt;
                    &lt;textitem&gt;
                        &lt;lnci:cite&gt;
                            &lt;lnci:lawrev&gt;
                                &lt;lnci:lawrevref ID="cref00001499"&gt;
                                    &lt;lnci:lawrevlocator&gt;
                                        &lt;lnci:publicationname normpubcode="RJTH"/&gt;
                                        &lt;lnci:volume num="28"/&gt;
                                        &lt;lnci:page num="303"/&gt;
                                    &lt;/lnci:lawrevlocator&gt;
                                &lt;/lnci:lawrevref&gt;
                            &lt;/lnci:lawrev&gt;
                            &lt;lnci:content&gt;(1994) 28 R.J.T. 303&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;
                    &lt;/textitem&gt;
                &lt;/ref:referenceitem&gt;
            &lt;/ref:relatedrefs&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
    &lt;/biblio:body&gt;</pre>

            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>CASES/JURISPRUD:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/ref:relatedrefs/@referencetype=”CASES”/ref:referenceitem/textitem</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;CASES/JURISPRUD:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;COUNCIL of
                    Forest Industries v. British Columbia (Chief Electoral Officer)
                                    &lt;ci:cite&gt;&lt;ci:case&gt;&lt;ci:caseinfo&gt;&lt;ci:decisiondate year="2010"
                                /&gt;&lt;/ci:caseinfo&gt;&lt;ci:caseref ID="cref00039366"
                                spanref="cspan00039366"&gt;&lt;ci:reporter value="ADM5"/&gt;&lt;ci:volume
                                    num="16"/&gt;&lt;ci:page num="105"
                                /&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;ci:span spanid="cspan00039366"
                                &gt;(2010), 16 Admin. L.R. (5th) 105&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
                    (B.C. S.C.). VANDER ZALM v. British Columbia (Minister of Finance)
                                    &lt;ci:cite&gt;&lt;ci:case&gt;&lt;ci:caseinfo&gt;&lt;ci:decisiondate year="2010"
                                /&gt;&lt;/ci:caseinfo&gt;&lt;ci:caseref ID="cref00039367"
                                spanref="cspan00039367"&gt;&lt;ci:reporter value="ADM5"/&gt;&lt;ci:volume
                                    num="17"/&gt;&lt;ci:page num="217"
                                /&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt;&lt;ci:span spanid="cspan00039367"
                                &gt;(2010), 17 Admin. L.R. (5th) 217&lt;/ci:span&gt;&lt;/ci:content&gt;&lt;/ci:cite&gt;
                                (B.C. S.C.). &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;ref:relatedrefs referencetype=”CASES”&gt;
                &lt;ref:referenceitem&gt;
                    &lt;textitem&gt;COUNCIL of Forest Industries v. British Columbia (Chief Electoral
                        Officer) &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseinfo&gt;&lt;lnci:decisiondate year="2010"
                                    /&gt;&lt;/lnci:caseinfo&gt;&lt;lnci:caseref ID="cref00039366"&gt;&lt;lnci:reporter
                                        value="ADM5"/&gt;&lt;lnci:volume num="16"/&gt;&lt;lnci:page num="105"
                                    /&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;(2010), 16 Admin.
                                L.R. (5th) 105&lt;/lnci:content&gt;&lt;/lnci:cite&gt; (B.C. S.C.). VANDER ZALM
                        v. British Columbia (Minister of Finance)
                                        &lt;lnci:cite&gt;&lt;lnci:case&gt;&lt;lnci:caseinfo&gt;&lt;lnci:decisiondate
                                        year="2010"/&gt;&lt;/lnci:caseinfo&gt;&lt;lnci:caseref ID="cref00039367"
                                        &gt;&lt;lnci:reporter value="ADM5"/&gt;&lt;lnci:volume num="17"
                                        /&gt;&lt;lnci:page num="217"
                                /&gt;&lt;/lnci:caseref&gt;&lt;/lnci:case&gt;&lt;lnci:content&gt;(2010), 17 Admin. L.R.
                                (5th) 217&lt;/lnci:content&gt;&lt;/lnci:cite&gt; (B.C. S.C.).&lt;/textitem&gt;
                &lt;/ref:referenceitem&gt;
            &lt;/ref:relatedrefs&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
    ...
&lt;/biblio:body&gt;</pre>
            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value <sourcexml>DATE
                        INCLUDED IN ICLL:</sourcexml> then drop the complete entry and the next
                    entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/biblio:issuedate</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;DATE INCLUDED IN ICLL:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;February 14, 1990  &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:publicationinfo&gt;
            &lt;biblio:issuedate&gt;February 14, 1990 &lt;/biblio:issuedate&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
    &lt;/biblio:body&gt;</pre>

                <note>
                    <p>Conversion should not create consecutive
                            <targetxml>biblio:publicationinfo</targetxml> elements. When 2 or more
                        consecutive sibling source elements map to
                            <targetxml>biblio:publicationinfo</targetxml>, data should be merged to
                        a single <targetxml>biblio:publicationinfo</targetxml> element unless this
                        would hamper content ordering.</p>
                </note>
            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>STATUTES/LOIS:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/ref:relatedrefs/@referencetype="STATUTES"/ref:referenceitem/textitem</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;STATUTES/LOIS:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;CONVENTION FOR THE SUPPRESSION OF UNLAWFUL ACTS AGAINST THE
                    SAFETY OF CIVIL AVIATION, 1971 &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:relevantinfo&gt;
        &lt;ref:relatedrefs referencetype="STATUTES"&gt;
                &lt;ref:referenceitem&gt;
                    &lt;textitem&gt;CONVENTION FOR THE SUPPRESSION OF UNLAWFUL ACTS AGAINST THE
                        SAFETY OF CIVIL AVIATION, 1971 &lt;/textitem&gt;
                &lt;/ref:referenceitem&gt;
            &lt;/ref:relatedrefs&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
    ...
&lt;/biblio:body&gt;</pre>
            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value <sourcexml>CDN CURRENT
                        LAW:</sourcexml> or <sourcexml>ICLL ISSUE NUMBER:</sourcexml> then drop the
                    complete entry and the next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/pubinfo:issue</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;CDN CURRENT LAW:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;Canadian Current Law, Issue 0701 &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:publicationinfo&gt;
            &lt;pubinfo:issue&gt;Canadian Current Law, Issue 0701 &lt;/pubinfo:issue&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
    ...
    &lt;/biblio:body&gt;</pre>

                <note>
                    <p>Conversion should not create consecutive
                            <targetxml>biblio:publicationinfo</targetxml> elements. When 2 or more
                        consecutive sibling source elements map to
                            <targetxml>biblio:publicationinfo</targetxml>, data should be merged to
                        a single <targetxml>biblio:publicationinfo</targetxml> element unless this
                        would hamper content ordering.</p>
                </note>

            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>JURIS/JURID:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/biblio:jurisdiction</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;JURIS/JURID:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;Canada  &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:publicationinfo&gt;
            &lt;biblio:jurisdiction&gt;Canada &lt;/biblio:jurisdiction&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
    ...
&lt;/biblio:body&gt;</pre>
            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>NOTES:</sourcexml> then drop the complete entry and the next
                    entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/note</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;NOTES:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;19 p.  Issued also in French. &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;19 p. Issued also in French. &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/biblio:entry&gt;
    ...
&lt;/biblio:body&gt;</pre>

            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>SERIES/SÉRIE:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/nitf:series</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;SERIES/SÉRIE:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;(Background paper for parliamentarians ; BP- 52E).  &lt;/entry&gt;
            &lt;/row&gt;
            ...
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:publicationinfo&gt;
            &lt;nitf:series&gt;(Background paper for parliamentarians ; BP- 52E).
            &lt;/nitf:series&gt;
        &lt;/biblio:publicationinfo&gt;
    &lt;/biblio:entry&gt;
    ...
&lt;/biblio:body&gt;</pre>
            </section>

            <section>
                <p>When <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>Symposium:</sourcexml> then drop the complete entry and the next
                    entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/abstract/abstracttype="Symposium"/bodytext/p/text</targetxml>.</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="340" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"/&gt;
                &lt;entry colname="col2"/&gt;
            &lt;/row&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;Symposium: &lt;/entry&gt;
                &lt;entry colname="col2"&gt;Canada-U.S. security and the economy in the North
                    American context.&lt;/entry&gt;
            &lt;/row&gt;
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;abstract abstracttype="Symposium"&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Canada-U.S. security and the economy in the North American context.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/abstract&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>

            </section>

            <section>
                <p>If <sourcexml>tbody/row/entry</sourcexml> contains value
                        <sourcexml>CONTRIB/CONTRIB:</sourcexml> then drop the complete entry and the
                    next entry of that particular row becomes
                        <targetxml>biblio:body/biblio:entry/biblio:relevantinfo/classify:classification/@classscheme="contributor"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>

                <p>Example: 1</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="340" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;CONTRIB/CONTRIB:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;Canadiana 8909 &lt;/entry&gt;
            &lt;/row&gt;
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;classify:classification classscheme="contributor"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;Canadiana 8909 &lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
                <p>Example: 2</p>
                <pre>&lt;table frame="none"&gt;
    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
        &lt;colspec colnum="2" colname="col2" colwidth="340" colsep="0" rowsep="0"/&gt;
        &lt;tbody&gt;
            &lt;row&gt;
                &lt;entry colname="col1"&gt;CONTRIB/CONTRIB:&lt;/entry&gt;
                &lt;entry colname="col2"&gt;York U. &lt;/entry&gt;
            &lt;/row&gt;
        &lt;/tbody&gt;
    &lt;/tgroup&gt;
&lt;/table&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;biblio:body&gt;
    &lt;biblio:entry&gt;
        &lt;biblio:relevantinfo&gt;
            &lt;classify:classification classscheme="contributor"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;York U. &lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/biblio:relevantinfo&gt;
    &lt;/biblio:entry&gt;
&lt;/biblio:body&gt;</pre>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-12-05: <ph id="change_20141205_AK">change the
                            <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/pubinfo:aggregationname</targetxml>
                        to
                            <targetxml>biblio:body/biblio:entry/biblio:publicationinfo/nitf:series</targetxml>.
                        Applicable to CA11.</ph></p>
                <p>2014-11-14: <ph id="change_20141114_AK">change the attribute value from capital
                        to lower case for
                            <targetxml>contributor/@contributor-type</targetxml>to<targetxml>contributor/@contributor-type</targetxml>.
                        Applicable to CA11.</ph></p>
                <p>2014-11-05: <ph id="change_20141105_AK">change the attribute value from
                            <targetxml>classscheme="Contributor:"</targetxml> to
                            <targetxml>classscheme="contributor"</targetxml>. Applicable to
                        CA11.</ph></p>
                <p>2014-10-14: <ph id="change_20141014_PS">Create a generic rule when
                            <sourcexml>tbody/row/entry</sourcexml> contains value
                            <sourcexml>CONTRIB/CONTRIB:</sourcexml>. Applicable on CA11.</ph></p>
                <p>2014-09-08: <ph id="change_20140908_PS">Added instruction of blank
                            <sourcexml>tbody/row/entry</sourcexml> in case of
                            <sourcexml>Title\Titre:</sourcexml> and also add sample snippet.
                        Applicable on CA11.</ph></p>
                <p>2013-10-24: <ph id="change_20131024_PS">Add new Regular Expression when
                            <sourcexml>tbody/row/entry</sourcexml> contains value
                            <sourcexml>CONTRIB/CONTRIB:</sourcexml>.</ph></p>
                <p>2013-09-10: <ph id="change_20130910_PS">Corrected Spelling mistake of
                            <targetxml>biblio:provenance</targetxml> and updated Regular Expression
                        when <sourcexml>tbody/row/entry</sourcexml> contains value
                            <sourcexml>CONTRIB/CONTRIB:</sourcexml>.</ph></p>
                <p>2013-07-05: <ph id="change_20130705_PS">Added new instruction and snippet for
                        value <sourcexml>By\Par:</sourcexml> or
                            <sourcexml>AUTHOR/AUTEUR:</sourcexml>.</ph></p>
                <p>2013-06-18: <ph id="change_20130618_PS">Added note for 2 consecutive
                            <targetxml>biblio:publicationinfo</targetxml>.</ph></p>
                <p>2013-05-27: <ph id="change_20130527_PS">Removed CR number DADB2013050305244400,
                        DADB2013050305391000, DADB2013050305453200 and
                    DADB2013050307172100.</ph></p>
            </section>
        </body>
    </dita:topic>

  
    <xsl:template match="table">
        <xsl:if test="($name='QLDB') and ($value='iclj' or $value='iclb' or $value='clsi')">
                <xsl:apply-templates select="@* | node()"/>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="tgroup|tbody"> 
        <xsl:apply-templates select="@* | node()" />
    </xsl:template>
<xsl:template match="row">
    <xsl:apply-templates select="@* | node() except entry[@colname='col2']" />
</xsl:template>

    <xsl:template match="colspec"/>
    
    <!-- JL: updated to match on 'Title\Titre' and to pick up citations in col 2 -->
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'TITLE/TITRE:') or contains(. , 'Title\\Titre:') or contains(.,'Title\Titre:')]">
        <xsl:choose>
            <xsl:when test="following-sibling::entry[@colname = 'col2']=''">
            </xsl:when>
            <xsl:otherwise>
                <biblio:entrytitle>
                    <xsl:apply-templates select="//ci:cite[parent::entry[@colname='col2'][preceding-sibling::entry[@colname='col1'][contains(.,'TITLE/TITRE:')]]]"/>
                    <xsl:apply-templates select="following-sibling::entry[@colname = 'col2']/node()"/>
                </biblio:entrytitle>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'AUTHOR/AUTEUR:') or matches(., 'By\\Par:')]">
        <xsl:choose>
            <xsl:when test="following::entry[@colname = 'col1'][contains(.,'REVIEW/CRITIQUE:') and not(contains(.,'PUBL') and contains(.,'NOTES:'))]">
                <byline>
                    <xsl:apply-templates
                        select="following::entry[@colname = 'col2'] [@searchtype = 'AUTHOR']"/>
                    <xsl:apply-templates
                        select="following::entry[@colname = 'col2']  [@searchtype = 'REVIEWER']"/>
                </byline>
            </xsl:when>
            <xsl:otherwise>
                <byline>
                    <xsl:apply-templates
                        select="following::entry[@colname = 'col2' and @searchtype = 'AUTHOR']"/>
                </byline>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col2' and @searchtype = 'AUTHOR']">
        <person:contributor>
            <xsl:attribute name="contributor-type">author</xsl:attribute>
            <xsl:value-of select="."/>
        </person:contributor>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'REVIEW/CRITIQUE:')]">
        <xsl:choose>
            <xsl:when test="preceding::entry[@colname = 'col1'][matches(., 'AUTHOR/AUTEUR:') or matches(., 'By\\Par:')] and not(contains(.,'PUBL') and contains(.,'NOTES:'))">
            </xsl:when>
            <xsl:otherwise>
                <byline>
                    <xsl:apply-templates
                        select="following::entry[@colname = 'col2']  [@searchtype = 'REVIEWER']"/>
                </byline>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col2'] [@searchtype = 'REVIEWER']">
        <person:contributor>
            <xsl:attribute name="contributor-type">reviewer</xsl:attribute>
            <xsl:value-of select="."/>
        </person:contributor>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'Publ') or matches(.,'PUBL')]">
        <biblio:publicationinfo>
            <pubinfo:publisher>
                <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
            </pubinfo:publisher>
        </biblio:publicationinfo>
    </xsl:template>
    
    <xsl:template
        match="row/entry[@colname = 'col1'][matches(., 'SUBJECTS/SUJETS:') or matches(., 'Subjects\\Sujets:')]">
                <biblio:relevantinfo>
                    <classify:classification>
                        <xsl:attribute name="classscheme">Subjects</xsl:attribute>
                        <classify:classitem>
                            <classify:classitem-identifier> 
                                <classify:classname>
                                    <xsl:value-of select="following-sibling::entry[@colname='col2']"/>
                                </classify:classname>
                                    <xsl:apply-templates
                                        select="following::entry[@colname='col2'] except following::entry[@colname='col2'][preceding::entry[@colname='col1'][contains(.,'STATUTES/LOIS:') or contains(.,'CONTRIB/CONTRIB:') or contains(.,'DATE INCLUDED IN ICLL:') or contains(.,'ICLL ISSUE NUMBER:') or contains(.,'CDN CURRENT LAW:')]]"/>
                            </classify:classitem-identifier>
                        </classify:classitem>
                    </classify:classification>
                </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname='col2'][preceding-sibling::entry[@colname='col1']=''][preceding::entry[@colname='col1'][contains(.,'Subjects\Sujets:') or contains(.,'SUBJECTS/SUJETS:')]][not(following::entry[@colname='col1'][contains(.,'STATUTES/LOIS:') or contains(.,'CONTRIB/CONTRIB:') or contains(.,'DATE INCLUDED IN ICLL:') or contains(.,'ICLL ISSUE NUMBER:') or contains(.,'CDN CURRENT LAW:')])]" priority="25">
        <xsl:if test="entry[@colname='col2']!=''">
            <classify:classname>
                <xsl:value-of select="."/>
            </classify:classname>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(.,'CITE')]">
                <biblio:relevantinfo>
                    <ref:relatedrefs>
                        <xsl:attribute name="referencetype">CITE</xsl:attribute>
                        <ref:referenceitem>
                                <xsl:apply-templates select="following-sibling::entry[@colname = 'col2']"/>
                        </ref:referenceitem>
                    </ref:relatedrefs>
                </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template match="entry[@colname='col2'][preceding-sibling::entry[@colname = 'col1'][matches(.,'CITE')]]">
        <textitem>
            <xsl:apply-templates select="@*|node()"/>
           
        </textitem>
    </xsl:template>
    
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(.,'CASES/JURISPRUD:')]">
                <biblio:relevantinfo>
                    <ref:relatedrefs referencetype='CASES'>
                        <ref:referenceitem>
                                    <xsl:apply-templates select="following-sibling::entry[@colname='col2']"/>
                        </ref:referenceitem>
                    </ref:relatedrefs>
                    
                </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template match="entry[@colname='col2'][preceding-sibling::entry[@colname = 'col1'][matches(.,'CASES/JURISPRUD:')]]">
        <textitem>
            <xsl:apply-templates select="@*|node()"/>
            
        </textitem>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'DATE INCLUDED IN ICLL:')]">
        <biblio:publicationinfo>
            <biblio:issuedate>
                <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
            </biblio:issuedate>
        </biblio:publicationinfo>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'STATUTES/LOIS:')]">
        <biblio:relevantinfo>
            <ref:relatedrefs>
                <xsl:attribute name="referencetype">STATUTES</xsl:attribute>
                <ref:referenceitem>
                    <textitem>
                        <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
                    </textitem>
                </ref:referenceitem>
            </ref:relatedrefs>
        </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template
        match="row/entry[@colname = 'col1'][matches(., 'CDN CURRENT LAW:') or matches(., 'ICLL ISSUE NUMBER:')]">
        <biblio:publicationinfo>
            <pubinfo:issue>
                <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
            </pubinfo:issue>
        </biblio:publicationinfo>
    </xsl:template>
    
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'JURIS/JURID:')]">
        <biblio:publicationinfo>
            <biblio:jurisdiction>
                <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
            </biblio:jurisdiction>
        </biblio:publicationinfo>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'NOTES:')]">
        <note>
            <bodytext>
                <p>
                    <text>
                        <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
                    </text>
                </p>
            </bodytext>
        </note>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'SERIES/SÉRIE:')]">
        <biblio:publicationinfo>
            <nitf:series>
                <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
            </nitf:series>
        </biblio:publicationinfo>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'Symposium:')]">
        <abstract>
            <xsl:attribute name="abstracttype">Symposium</xsl:attribute>
            <bodytext>
                <p>
                    <text>
                        <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
                    </text>
                </p>
            </bodytext>
        </abstract>
    </xsl:template>
    
    <xsl:template match="row/entry[@colname = 'col1'][matches(., 'CONTRIB/CONTRIB:')]">
        <biblio:relevantinfo>
            <classify:classification classscheme="contributor">
                <classify:classitem>
                    <classify:classitem-identifier>
                        <classify:classname>
                            <xsl:value-of select="following-sibling::entry[@colname = 'col2']"/>
                        </classify:classname>
                    </classify:classitem-identifier>
                </classify:classitem>
            </classify:classification>
        </biblio:relevantinfo>
    </xsl:template>
    
    
    <!-- using xsl:for-each-group to wrap  -->
    
   <!-- <xsl:template match="tbody" priority="25">
        <xsl:for-each-group select="*" group-adjacent="if(self::row/entry[@colname = 'col1'][matches(., 'SUBJECTS/SUJETS:') or matches(., 'Subjects\\Sujets:')]|self::row/entry[@colname = 'col1'][matches(.,'CITE')]|row/entry[@colname = 'col1'][matches(.,'CASES/JURISPRUD:')]|row/entry[@colname = 'col1'][matches(., 'STATUTES/LOIS:')]|row/entry[@colname = 'col1'][matches(., 'CONTRIB/CONTRIB:')]) then 0 else 1">
            
            <xsl:choose>
                <xsl:when test="current-grouping-key()=0">
                    <ref>
                        <xsl:apply-templates select="current-group()"/>
                    </ref>
                </xsl:when>
                <xsl:otherwise>
                    <notref>
                        <xsl:copy-of select="current-group()"/>
                    </notref>
                </xsl:otherwise>
            </xsl:choose>
            
        </xsl:for-each-group>
    </xsl:template>-->
    
    
    
    <xsl:template name="wrapps">
        <xsl:param name="node"/>
        <xsl:for-each select="$node/child::node()">
            <xsl:copy>
                <xsl:copy-of select="@*"/>
                <xsl:apply-templates mode="hierarchy"/>
            </xsl:copy>
            
        </xsl:for-each>
        <xsl:if test="$node/following-sibling::*[1][self::biblio:relevantinfo]">
            <xsl:call-template name="wrapps">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::biblio:relevantinfo]"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="$node/following-sibling::*[1][self::biblio:publicationinfo]">
            <xsl:call-template name="wrapps">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::biblio:publicationinfo]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="biblio:relevantinfo[not(preceding-sibling::*[1][self::biblio:relevantinfo])]" mode="hierarchy">
        <biblio:relevantinfo>
            <xsl:apply-templates select="node()|@*" mode="hierarchy"/>
            <xsl:if test="following-sibling::*[1][self::biblio:relevantinfo]">
                <xsl:call-template name="wrapps">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::biblio:relevantinfo]"/>
                </xsl:call-template>
            </xsl:if>
        </biblio:relevantinfo>
    </xsl:template>
    
    <xsl:template match="biblio:relevantinfo[preceding-sibling::*[1][self::biblio:relevantinfo]]" mode="hierarchy"/>
    
    <xsl:template match="biblio:publicationinfo[not(preceding-sibling::*[1][self::biblio:publicationinfo])]" mode="hierarchy">
        <biblio:publicationinfo>
            <xsl:apply-templates select="node()|@*" mode="hierarchy"/>
            <xsl:if test="following-sibling::*[1][self::biblio:publicationinfo]">
                <xsl:call-template name="wrapps">
                    <xsl:with-param name="node" select="following-sibling::*[1][self::biblio:publicationinfo]"/>
                </xsl:call-template>
            </xsl:if>
        </biblio:publicationinfo>
    </xsl:template>
    
    <xsl:template match="biblio:publicationinfo[preceding-sibling::*[1][self::biblio:publicationinfo]]" mode="hierarchy"/>
    
    <xsl:template match="pubinfo:issue[ancestor::biblio:relevantinfo]" mode="suppress"/>
    <xsl:template match="biblio:issuedate[ancestor::biblio:relevantinfo]" mode="suppress"/>
    <xsl:template match="ref:relatedrefs[parent::biblio:publicationinfo]" mode="suppress"/>
    <xsl:template match="biblio:jurisdiction[parent::biblio:relevantinfo]" mode="suppress"/>
    
    <xsl:template match="table/@frame"/>
    <xsl:template match="tgroup/@rowsep|tgroup/@colsep|tgroup/@cols|entry/@colname"/>
    <xsl:template match="row/entry[@colname='col1'][(not(text()) or text()='none')]"/>
    <xsl:template match="entry[@colname='col2'][preceding::entry[@colname = 'col1'][matches(., 'SUBJECTS/SUJETS:') or matches(., 'Subjects\\Sujets:')]]"/>
 
        
</xsl:stylesheet>
