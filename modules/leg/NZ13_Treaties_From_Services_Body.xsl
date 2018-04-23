<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
    exclude-result-prefixes="dita glp leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ-Treaties-Services_Body">
        <title>Body <lnpid>id-NZ13-25007</lnpid></title>
        <shortdesc>Below described elements are the descendants of <sourcexml>leg:body</sourcexml>.
            Handle in document order unless specifically stated otherwise. Refer to General Markup
            Section for handling of children (including mixed content).</shortdesc>
        <body>
            <section>
                <title>funddoc:body</title>
                <p><sourcexml>leg:body</sourcexml> becomes <targetxml>funddoc:body</targetxml> and
                    children as described below: <ul>
                        <li><sourcexml>/LEGDOC/leg:body/leg:info</sourcexml> becomes
                                <targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
                            with child as described below: <ul>
                                <li><sourcexml>/LEGDOC/leg:body/leg:info/leg:officialname</sourcexml>
                                    becomes
                                        <targetxml>/funddoc:fundamentallegaldocument/funddoc:body/primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>,
                                    attribute <sourcexml>@searchtype</sourcexml> will be suppressed.
                                    Conversion will be populated as below: <pre>


&lt;leg:body&gt;
    &lt;leg:info&gt;
        &lt;leg:officialname searchtype="LEGISLATION"&gt;The Hague Agreement
            concerning the international registration of industrial designs&lt;/leg:officialname&gt;
    &lt;/leg:info&gt;
    ..........
    ..........
&lt;/leg:body&gt;
                    
<b>Becomes</b>
                  
&lt;funddoc:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlawinfo:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlawinfo:levelinfo&gt;
    &lt;/primlaw:level&gt;
    ................
    ................
&lt;/funddoc:body&gt;
</pre>
                                    <note>If Rosetta element <sourcexml>leg:officialname</sourcexml>
                                        contains attribute
                                            <sourcexml>/leg:officialname[@ln.user-displayed="false"]</sourcexml>,
                                        then please refer to General Markup instruction <xref
                                            href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita"
                                            >ln.user_displayed="false"</xref> section in the
                                        CI.</note>
                                </li>
                            </ul>
                        </li>
                        <li><sourcexml>leg:level</sourcexml> becomes
                                <targetxml>primlaw:level</targetxml> comes with
                                <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>
                            and <targetxml>primlaw:level</targetxml> has a required attribute
                                <targetxml>@leveltype</targetxml> and its values are tokenized as
                            below: <ul>
                                <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="agreement"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
                                <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
                            </ul>
                            <note>If the input files are having <sourcexml>@leveltype</sourcexml>
                                values other than the tokenized list shown above, the value will be
                                set as <targetxml>@leveltype="unclassified"</targetxml>, and
                                    <sourcexml>leg:level-vrnt[@leveltype="treaty-conv"]</sourcexml>
                                will become
                                    <targetxml>primlaw:level[@leveltype="treaty"]</targetxml> and
                                    <sourcexml>leg:level-vrnt[@leveltype="intro"]</sourcexml> will
                                become
                                    <targetxml>primlaw:level[@leveltype="introduction"]</targetxml>.</note>
                            <pre>

&lt;leg:level id="IPCPY.HACIRID.BODY"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION TREATY-CONV" leveltype="treaty-conv"&gt;
        &lt;leg:heading&gt;
            &lt;title searchtype="CONV-TITLE"&gt;&lt;refpt type="ext" id="IPCPY.HACIRID"/&gt;The Hague Agreement
                concerning the international registration of industrial designs&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="IPCPY.HACIRID.ENTRY"&gt;
                &lt;leg:level-vrnt
                    toc-caption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement" subdoc="true" searchtype="LEGISLATION ATTACHMENT" leveltype="attachment"&gt;
                    &lt;leg:heading&gt;
                        &lt;edpnum&gt;&lt;refpt type="ext" id="IPCPY.HACIRID.ENTRY"/&gt;[150,001]&lt;/edpnum&gt;
                        &lt;title searchtype="ATTACH-TITLE"&gt;Entry into force of the 1999 Act and of the Common
                            Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague
                            Agreement&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    .............
                    .............
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
           
              <b>Becomes</b>

&lt;funddoc:body&gt;
    &lt;primlaw:level xml:id="IPCPY.HACIRID.BODY" leveltype="treaty"&gt;
        &lt;ref:anchor id="IPCPY.HACIRID" anchortype="global"/&gt;
        &lt;heading&gt;
            &lt;title&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
        &lt;/heading&gt;
            &lt;primlaw:level alternatetoccaption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement" includeintoc="true" leveltype="attachment"&gt;
                &lt;ref:anchor id="IPCPY.HACIRID.ENTRY" anchortype="global"/&gt;
                &lt;heading&gt;
                    &lt;desig&gt;[150,001]&lt;/desig&gt;
                    &lt;title&gt;Entry into force of the 1999 Act and of the Common
                        Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague
                        Agreement&lt;/title&gt;
                &lt;/heading&gt;
                ............
                ............
            &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;
&lt;/funddoc:body&gt;

                        </pre>
                            <note>When <sourcexml>leg:level</sourcexml> occurs with attribute
                                    <sourcexml>@id</sourcexml> and its value starts with hyphen(-),
                                then conversion need to prepend the id with an underscore(_) duriong
                                conversion. Please see below examples:</note>
                            <pre>

&lt;leg:level id="-GENEVA-19-SEPTEMBER-1949-A1-S2"&gt;
    &lt;leg:level-vrnt leveltype="subarticle" searchtype="LEGISLATION SUBARTICLE"&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;desig&gt;
                &lt;designum&gt;&lt;refpt
                    id="-GENEVA-19-SEPTEMBER-1949-A1-S2" type="ext"/&gt;2.&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;No Contracting State shall be required to
                        extend the benefit of the provisions of this
                        Convention to any motor vehicle or trailer, or to
                        any driver having remained within its territory
                        for a continuous period exceeding one year.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
                            
                        </pre>
                            <b>Becomes</b>
                            <pre>

&lt;primlaw:level xml:id="_-GENEVA-19-SEPTEMBER-1949-A1-S2" leveltype="subarticle"&gt;
    &lt;heading inline="true"&gt;
        &lt;desig&gt;2.&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;No Contracting State shall be required to
                extend the benefit of the provisions of this
                Convention to any motor vehicle or trailer, or to
                any driver having remained within its territory
                for a continuous period exceeding one year.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
                            
                        </pre>
                            <ul>
                                <li><sourcexml>leg:level-vrnt</sourcexml> will be omitted and all
                                    its contents will be retained in conversion <note>In New Lexis
                                            <targetxml>primlaw:level</targetxml> element is used
                                        instead of Rosetta elements <sourcexml>leg:level</sourcexml>
                                        and <sourcexml>leg:level-vrnt</sourcexml>. So element
                                            <sourcexml>leg:level-vrnt</sourcexml> will be suppressed
                                        from conversion and attributes
                                            <sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will
                                        become <targetxml>primlaw:level/@leveltype</targetxml> with
                                        its value,
                                            <sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will
                                        be suppressed,
                                            <sourcexml>/leg:level-vrnt/@subdoc</sourcexml> will
                                        become <targetxml>primlaw:level/@includeintoc</targetxml>
                                        with its value and
                                            <sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will
                                        become
                                            <targetxml>/primlaw:level/@alternatetoccaption</targetxml>
                                        with all its value.</note> See below example: <pre>
&lt;leg:level id="IPCPY.HACIRID.ENTRY"&gt;
    &lt;leg:level-vrnt
        toc-caption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement"
        subdoc="true" searchtype="LEGISLATION ATTACHMENT" leveltype="attachment"&gt;
        ............
        ............
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
<b>becomes</b>
&lt;primlaw:level xml:id="IPCPY.HACIRID.ENTRY" alternatetoccaption="[150,001] Entry into force of the 1999 Act and of the Common Regulations under the 1999 Act, the 1960 Act and the 1934 Act of the Hague Agreement"
    includeintoc="true" leveltype="unclassified"&gt;
    .............
    .............
&lt;/primlaw:level&gt;
                                    </pre>
                                    <ul>
                                        <li>
                                            <p>When target conversion are having
                                                  <targetxml>primlaw:level@leveltype</targetxml>
                                                element with attribute values <targetxml>"clause,
                                                  section and regulation"</targetxml> then within
                                                that <targetxml>primlaw:level</targetxml>, attribute
                                                  <targetxml>@inline</targetxml> (value of
                                                  <b>true</b> or <b>false</b>) is removed at the
                                                following locations (below listed elements). Removal
                                                of <targetxml>@inline</targetxml> attribute will not
                                                propagate to child
                                                  <targetxml>primlaw:level</targetxml>. Please refer
                                                the below snippet for your reference: </p>
                                            <ul>
                                                <li><targetxml>heading</targetxml></li>
                                                <li><targetxml>heading/desig</targetxml></li>
                                                <li><targetxml>heading/altdesig</targetxml></li>
                                                <li><targetxml>heading/title</targetxml></li>
                                                <li><targetxml>heading/alttitle</targetxml></li>
                                                <li><targetxml>alt-heading</targetxml></li>
                                                <li><targetxml>alt-heading/desig</targetxml></li>
                                                <li><targetxml>alt-heading/title</targetxml></li>
                                                <li><targetxml>alt-heading/alttitle</targetxml></li>
                                            </ul>
                                            <note>There are some cases where the source value of
                                                  <sourcexml>@leveltype</sourcexml> does not exactly
                                                match the target value of
                                                  <targetxml>@leveltype</targetxml> then refer the
                                                below shown table: <table id="table_mew_znv_km">
                                                  <tgroup cols="2">
                                                  <colspec colnum="1" colname="col1"/>
                                                  <colspec colnum="2" colname="col2"/>
                                                  <thead>
                                                  <row>
                                                  <entry>leg:level/@leveltype </entry>
                                                  <entry>primlaw:level/@leveltype </entry>
                                                  </row>
                                                  </thead>
                                                  <tbody>
                                                  <row>
                                                  <entry>sect</entry>
                                                  <entry>section</entry>
                                                  </row>
                                                  <row>
                                                  <entry>conv.sect</entry>
                                                  <entry>section</entry>
                                                  </row>
                                                  <row>
                                                  <entry>reg</entry>
                                                  <entry>regulation</entry>
                                                  </row>
                                                  </tbody>
                                                  </tgroup>
                                                </table>
                                            </note>
                                            <pre>
                  <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="1988A4-SCHD2-1"&gt;
    &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true" toc-caption="cl 1."&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;desig searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;&lt;refpt id="1988A4-SCHD2-1" type="ext"/&gt;1.&lt;/designum&gt;&lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;&lt;text&gt;For the purposes of ...&lt;/text&gt;&lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

               </pre>
                                            <pre>
                  <b><i>Example: Target XML 1</i></b>
                  
&lt;primlaw:level alternatetoccaption="cl 1." includeintoc="true" leveltype="clause"&gt;
    &lt;ref:anchor anchortype="global" id="1988A4-SCHD2-1"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;1.&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;&lt;text&gt;For the purposes of ...&lt;/text&gt;&lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;


               </pre>
                                        </li>
                                    </ul>
                                    <p>All its children will be populated as below:</p>
                                    <ul>
                                        <li><sourcexml>leg:heading</sourcexml> becomes
                                                <targetxml>heading</targetxml> with attributes
                                                <sourcexml>@inline</sourcexml> becomes
                                                <targetxml>@inline</targetxml> which has tokenized
                                            values and populated as: <ul>
                                                <li><targetxml>heading[@inline="true"]</targetxml></li>
                                                <li><targetxml>heading[@inline="false"]</targetxml></li>
                                            </ul>
                                            <pre>
&lt;leg:heading&gt;
    &lt;title searchtype="CONV-TITLE"&gt;&lt;refpt type="ext" id="IPCPY.HACIRID"/&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
&lt;/leg:heading&gt;
              
              <b>Becomes</b>
              
&lt;heading&gt;
    &lt;title&gt;The Hague Agreement concerning the international registration of industrial designs&lt;/title&gt;
&lt;/heading&gt;
            </pre>
                                            <p>heading element with <sourcexml>@inline</sourcexml>
                                                attribute:</p>
                                            <pre>
&lt;leg:heading inline="true"&gt;
    &lt;desig&gt;
        &lt;designum&gt;&lt;refpt type="ext" id="CC.UNFCCC.UNFCCC.ART1.1"/&gt;1.&lt;/designum&gt;
    &lt;/desig&gt;
&lt;/leg:heading&gt;              
              <b>Becomes</b>
              
&lt;heading inline="true"&gt;
    &lt;desig value="1."&gt;1.&lt;/desig&gt;
&lt;/heading&gt;
</pre>
                                        </li>
                                        <li><sourcexml>leg:levelbody</sourcexml> and
                                                <sourcexml>leg:bodytext</sourcexml> comes in
                                            following scenarios: <ul>
                                                <li>If element <sourcexml>leg:bodytext</sourcexml>
                                                  is the immediate child of
                                                  <sourcexml>leg:levelbody</sourcexml>, then it
                                                  becomes <targetxml>primlaw:bodytext</targetxml>
                                                  and populated as:
                                                  <pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;deflist&gt;
            &lt;defitem id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"&gt;
                &lt;defterm&gt;
                    &lt;refpt type="ext"
                        id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"/&gt;
                    &lt;emph typestyle="bf"&gt;&amp;ldquo;Climate
                        system&amp;rdquo;&lt;/emph&gt;
                &lt;/defterm&gt;
                &lt;defdesc&gt;
                    &lt;p&gt;
                        &lt;text&gt;means the totality of the atmosphere,
                            hydrosphere, biosphere and geosphere and their
                            interactions.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/defdesc&gt;
            &lt;/defitem&gt;
        &lt;/deflist&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                 <b>Becomes</b>
                  
&lt;primlaw:bodytext&gt;
    &lt;deflist&gt;
        &lt;defitem&gt;
            &lt;defterm&gt;
                &lt;ref:anchor anchortype="global" id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"/&gt;
                &lt;emph typestyle="bf"&gt;&amp;#x201C;Climate
                    system&amp;#x201D;&lt;/emph&gt;
            &lt;/defterm&gt;
            &lt;defdesc&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;means the totality of the atmosphere,
                            hydrosphere, biosphere and geosphere and their
                            interactions.&lt;/text&gt;
                        
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/defdesc&gt;
        &lt;/defitem&gt;
    &lt;/deflist&gt;
&lt;/primlaw:bodytext&gt;
</pre>
                                                </li>
                                                <li>If the element
                                                  <sourcexml>leg:levelbody</sourcexml> has the
                                                  immediate child <sourcexml>leg:level</sourcexml>
                                                  then it becomes
                                                  <targetxml>primlaw:level</targetxml> and populated
                                                  as:
                                                  <pre>  
&lt;leg:levelbody&gt;
    &lt;leg:level id="IPC_IC.SGM_CONV.INTRO_4"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION INTRO" leveltype="intro"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;Members,&lt;/emph&gt;
                        &lt;/text&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;Desiring&lt;/emph&gt; to reduce distortions and impediments to
                            international trade, and taking into account the need to promote effective and adequate
                            protection of intellectual property rights, and to ensure that measures and procedures to
                            enforce intellectual property rights do not themselves become barriers to legitimate
                            trade;&lt;/text&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;Recognizing&lt;/emph&gt; , to this end, the need for new rules and
                        disciplines concerning:&lt;/text&gt;
                        ..........
                        ..........
                    &lt;/p&gt;
                    .............
                    .............
                &lt;/leg:bodytext&gt;
                .............
                .............
            &lt;/leg:levelbody&gt;
            .............
            .............
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;                
                <b>Becomes</b>
                  
&lt;primlaw:level xml:id="IPC_IC.SGM_CONV.INTRO_4" leveltype="introduction"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Members,&lt;/emph&gt;
            &lt;/text&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Desiring&lt;/emph&gt; to reduce distortions and impediments to
                international trade, and taking into account the need to promote effective and adequate
                protection of intellectual property rights, and to ensure that measures and procedures to
                enforce intellectual property rights do not themselves become barriers to legitimate
                trade;&lt;/text&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Recognizing&lt;/emph&gt; , to this end, the need for new rules and
                disciplines concerning:&lt;/text&gt;
            ..........
            ..........
        &lt;/p&gt;
        .............
        .............
    &lt;/primlaw:bodytext&gt;
    .............
    .............
    
    .............
    .............
    
&lt;/primlaw:level&gt;
</pre>
                                                </li>
                                                <li>
                                                  <sourcexml>leg:histnote</sourcexml> becomes
                                                  <targetxml>note[@notetype="historical"]</targetxml>
                                                  <pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;leg:histnote&gt;
            &lt;p&gt;
                &lt;text&gt;[Art am WIPO Notice No 10/2007 , effective 1 January 2008]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:histnote&gt;
        ...........
        ...........
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;        
          <b>Becomes</b>
&lt;primlaw:bodytext&gt;
    &lt;note notetype="historical"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[Art am WIPO Notice No 10/2007 , effective 1 January 2008]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;                                        
    &lt;/note&gt;
    .........
    .........
&lt;/primlaw:bodytext&gt;          
</pre>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ13_Treaties_From_Services\Body.dita  -->
    <!--	<xsl:message>NZ13_Treaties_From_Services_Body.xsl requires manual development!</xsl:message> -->

<xsl:variable name="level_type">
    <codes>
        <code key="act" value="act"/>
        <code key="addendum" value="addendum"/>
        <code key="agreement" value="agreement"/>
        <code key="amendment" value="amendment"/>
        <code key="annex" value="annex"/>
        <code key="appendix" value="appendix"/>
        <code key="article" value="article"/>
        <code key="attachment" value="attachment"/>
        <code key="canon" value="canon"/>
        <code key="chapter" value="chapter"/>
        <code key="clause" value="clause"/>
        <code key="companion" value="companion"/>
        <code key="constitution" value="constitution"/>
        <code key="dictionary" value="dictionary"/>
        <code key="division" value="division"/>
        <code key="endnote" value="endnote"/>
        <code key="exhibit" value="exhibit"/>
        <code key="form" value="form"/>
        <code key="hierarchy-note" value="hierarchy-note"/>
        <code key="instrument" value="instrument"/>
        <code key="introduction" value="introduction"/>
        <code key="intro" value="introduction"/>
        <code key="order" value="order"/>
        <code key="paragraph" value="paragraph"/>
        <code key="part" value="part"/>
        <code key="preamble" value="preamble"/>
        <code key="procedural-guide" value="procedural-guide"/>
        <code key="regulation" value="regulation"/>
        <code key="reg" value="regulation"/>
        <code key="regulatory-code" value="regulatory-code"/>
        <code key="rule" value="rule"/>
        <code key="schedule" value="schedule"/>
        <code key="section" value="section"/>
        <code key="sect" value="section"/>
        <code key="conv.sect" value="section"/>
        <code key="subarticle" value="subarticle"/>
        <code key="subchapter" value="subchapter"/>
        <code key="subclause" value="subclause"/>
        <code key="subdivision" value="subdivision"/>
        <code key="subparagraph" value="subparagraph"/>
        <code key="subpart" value="subpart"/>
        <code key="subregulation" value="subregulation"/>
        <code key="subschedule" value="subschedule"/>
        <code key="subrule" value="subrule"/>
        <code key="subsection" value="subsection"/>
        <code key="subsect" value="subsection"/>
        <code key="subtitle" value="subtitle"/>
        <code key="supplement" value="supplement"/>
        <code key="table-of-contents" value="table-of-contents"/>
        <code key="title" value="title"/>
        <code key="topic" value="topic"/>
        <code key="treaty" value="treaty"/>
        <code key="treaty-conv" value="treaty"/>
        <code key="agency" value="agency"/>
        <code key="subagency" value="subagency"/>
        <code key="unclassified" value="unclassified"/>
    </codes>
</xsl:variable>

<xsl:key name="level-type" match="*:code" use="string(@key)"/>

    <xsl:template match="leg:body">

        <!--  Original Target XPath:  funddoc:body   -->
        <funddoc:body>
            <xsl:apply-templates select="@* | node()"/>
        </funddoc:body>

    </xsl:template>

    <xsl:template match="leg:info">
        <primlaw:level>
            <xsl:attribute name="leveltype" select="'unclassified'"/>
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo
                    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
                    <legisinfo:legisinfo
                        xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
                        <xsl:apply-templates select="@* | node()"/>
                    </legisinfo:legisinfo>
                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
        </primlaw:level>
    </xsl:template>
    
    <xsl:template match="leg:level">
        <primlaw:level>
            <xsl:apply-templates select="@* |leg:level-vrnt/@*"/>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>    
    </xsl:template>
    
    <xsl:template match="leg:level-vrnt">
        <xsl:apply-templates select="node()"/>
    </xsl:template>
    
    <xsl:template match="@leveltype">
        <xsl:attribute name="leveltype">    
        <xsl:variable name="leveltype_value">
            <xsl:value-of select="key('level-type',.,$level_type)/@value"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$leveltype_value!=''">
                <xsl:value-of select="$leveltype_value"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>unclassified</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:attribute>
    </xsl:template>
        
    <xsl:template match="leg:level-vrnt/@toc-caption">
        <xsl:attribute name="alternatetoccaption">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="leg:level-vrnt/@subdoc">
            <xsl:attribute name="includeintoc">
                <xsl:value-of select="."/>
            </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="leg:level-vrnt/@searchtype"/>
    
    <xsl:template match="leg:heading">
        <xsl:apply-templates select="descendant::refpt"/>
        <heading>
            <xsl:apply-templates select="@* | node()"/>
        </heading>        
    </xsl:template>
    
    <xsl:template match="@inline">
        <xsl:attribute name="inline">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    
    <xsl:template match="leg:bodytext">
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>        
    </xsl:template>
    
    <xsl:template match="leg:bodytext[preceding-sibling::leg:level and not(child::footnotegrp or child::glp:note or child::leg:histnote)]" priority="35">
        <primlaw:level>
            <xsl:attribute name="leveltype" select="'unclassified'"/>
            <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>
        </primlaw:level>
    </xsl:template>
    
    <xsl:template match="leg:levelbody">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="legfragment">
        <primlaw:excerpt>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:excerpt>
        
    </xsl:template>
    
    <xsl:template match="leg:levelinfo|leg:levelinfo/@*"/>
    
</xsl:stylesheet>