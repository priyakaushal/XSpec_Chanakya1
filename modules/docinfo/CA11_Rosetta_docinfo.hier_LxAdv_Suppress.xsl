<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:biblio="urn:x-lexisnexis:content:bibliography:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA11_Rosetta_docinfo.hier_LxAdv_Suppress">
    <title>docinfo:hier -- Suppress <lnpid>id-CA11-14818</lnpid></title>
    <body>
        <section><p>When <sourcexml>docinfo:subtype</sourcexml> element is having value <b>clsi</b>
                OR <b>iclj</b> OR <b>iclb</b> then suppress <targetxml>doc:hier</targetxml> markup
                from conversion.</p>
            <pre>
&lt;docinfo:hier&gt;
    &lt;docinfo:hierlev role="ancestor"&gt;
        &lt;heading&gt;
            &lt;title&gt;Legal Literature/Documentation juridique&lt;/title&gt;
        &lt;/heading&gt;
        &lt;docinfo:hierlev role="me"&gt;
            &lt;heading&gt;
                &lt;title&gt; TITLE: Jane Auxier (British Columbia. Provincial Court. Lower Mainland
                    Family Division). &lt;/title&gt;
            &lt;/heading&gt;
        &lt;/docinfo:hierlev&gt;
    &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;
&lt;docinfo:bookseqnum&gt;2086720&lt;/docinfo:bookseqnum&gt;
        &lt;docinfo:lbu-meta&gt;
                &lt;docinfo:metaitem name="QLDB" value="iclj"/&gt;
        &lt;/docinfo:lbu-meta&gt;
        &lt;docinfo:selector&gt;general digest&lt;/docinfo:selector&gt;
        &lt;docinfo:subtype&gt;iclj&lt;/docinfo:subtype&gt;
&lt;/docinfo&gt;

<b>becomes</b>

&lt;!--Suppress the doc:hier element from target --&gt;

&lt;doc:bookseqnum&gt;2086720&lt;/doc:bookseqnum&gt;
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="QLDB" value="iclj"/&gt;
        &lt;metaitem name="docinfo:subtype" value="iclj"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
&lt;classify:classification classscheme="selector"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;general digest&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

            </pre>
            <title>When &lt;docinfo:subtype&gt;rdna&lt;/docinfo:subtype&gt; then follow below
                instruction</title><p>When <sourcexml>docinfo:subtype</sourcexml> is having value
                    <b>rdna</b> and
                    <sourcexml>docinfo:hier/docinfo:hierlev/@role="ancestor"/heading/title</sourcexml>
                contains any of the below mentioned values then generate that value in
                    <targetxml>biblio:entry/biblio:relevantinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode</targetxml>.</p><ul>
                <li>RDNA.05 - Books</li>
                <li>RDNA.10 - Articles</li>
                <li>RDNA.15 - Internet Sites</li>
                <li>RDNA.20 - Continuing Legal Education</li>
            </ul><pre>
&lt;docinfo:hier&gt;
    &lt;docinfo:hierlev role="ancestor"&gt;&lt;heading&gt;&lt;title&gt;RDNA.05 - Books&lt;/title&gt;&lt;/heading&gt;
    &lt;/docinfo:hierlev&gt;
    ...
&lt;/docinfo:hier&gt;

<b>becomes</b>

&lt;biblio:entry&gt;
    &lt;biblio:relevantinfo&gt;
        &lt;classify:classification&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode&gt;RDNA.05 - Books&lt;/classify:classcode&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/biblio:relevantinfo&gt;
&lt;/biblio:entry&gt;
</pre><p>When
                    <targetxml>biblio:body/biblio:entry/section/bodytext/p/text</targetxml> having
                    <targetxml>verbatim</targetxml> as a child then conversion will drop
                    <targetxml>verbatim</targetxml> element and retain its content in
                    <targetxml>/bodytext/p/text</targetxml> and also drop single newlines and flow
                content as paragraphs. Where there are more than one consecutive newlines
                    <sourcexml>&lt;nl/&gt;&lt;nl/&gt;</sourcexml> then conversion should convert each
                    <sourcexml>&lt;nl/&gt;</sourcexml> to <targetxml>proc:nl</targetxml> for retaining
                vertical spacing (blank lines between paras).</p><p>However, single
                    <sourcexml>&lt;nl/&gt;</sourcexml> elements should be dropped.</p>
            
  <note>When the set of <sourcexml>&lt;nl's</sourcexml> those are immediately followed by
                    <sourcexml>p/text</sourcexml> than there immediate corresponding
                    <targetxml>proc:nl's</targetxml> those immediately followed by <targetxml>p/text
                </targetxml> in the target should be dropped from the target, and the rest of
                    <targetxml>proc:nl</targetxml> get converted like the way it is.</note>   
            <pre>
&lt;biblio:entry&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;verbatim verbatimclass="future"&gt;Includes analysis of such topics as
                        DNA&lt;nl/&gt; typing to identify suspects, the origin&lt;nl/&gt; and
                        maintenance of DNA polymorphism, and&lt;nl/&gt; technical and ethical issues
                        of further&lt;nl/&gt; forensic DNA development.&lt;nl/&gt;
                    &lt;/verbatim&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/biblio:entry&gt;

<b>becomes</b>

&lt;biblio:entry&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Includes analysis of such topics as DNA typing to identify suspects, the
                    origin and maintenance of DNA polymorphism, and technical and ethical issues of
                    further forensic DNA development.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/biblio:entry&gt;
</pre>
            <p><b>Example for multiple newline break:</b></p>
            <pre>
&lt;biblio:entry&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;verbatim verbatimclass="future"&gt; Trade-marks Act, R.S.C., 1985, c.
                        T-13&lt;nl/&gt;&lt;nl/&gt; Amended 1990, c. 14, s. 8; in force June 12,
                        1990&lt;nl/&gt;&lt;nl/&gt; Amended 1990, c. 20, ss. 79 to 81; brought into
                        force&lt;nl/&gt; August 1, 1990 by SI/90-99, Can. Gaz., Part II, August&lt;nl/&gt;
                        15, 1990&lt;nl/&gt;&lt;nl/&gt; Amended 1992, c. 1, ss. 133 to 135; in force February
                        28,&lt;nl/&gt; 1992&lt;nl/&gt;&lt;nl/&gt; Amended 1993, c. 15, ss. 57 to 72; brought into
                        force,&lt;nl/&gt; except ss. 65 and 66, June 9, 1993; ss. 65 and 66
                        brought&lt;nl/&gt; into force January 15, 1994&lt;nl/&gt;&lt;nl/&gt; Amended 1993, c. 44,
                        ss. 225 to 238; brought into force&lt;nl/&gt; January 1, 1994 (but see s.
                        242)&lt;nl/&gt;&lt;nl/&gt;Other Legislation Concerning Trade-marks&lt;nl/&gt;&lt;nl/&gt; Bank
                        Act, R.S.C. 1985, c. B-1&lt;nl/&gt;&lt;nl/&gt; Canada Agricultural Products Act,
                        R.S.C. 1985, c. 20 (4th&lt;nl/&gt; Supp.)&lt;nl/&gt;&lt;nl/&gt; Competition Act, R.S.C.
                        1985, c. C-34&lt;nl/&gt;&lt;nl/&gt; Consumer Packaging and Labelling Act, R.S.C.
                        1985, c.&lt;nl/&gt; C-38&lt;nl/&gt;&lt;nl/&gt; Criminal Code, R.S.C. 1985, c.
                        C-46&lt;nl/&gt;&lt;nl/&gt; Food and Drug Act, R.S.C. 1985, c. F-27&lt;nl/&gt;&lt;nl/&gt; Meat
                        Inspection Act, R.S.C. 1985 c. 25 (1st Supp.)&lt;nl/&gt;&lt;nl/&gt; Plant Breeders'
                        Rights Act, S.C. 1990, c. 20&lt;nl/&gt;&lt;nl/&gt; Precious Metals Marking Act,
                        R.S.C. 1985, c. P-19&lt;nl/&gt;&lt;nl/&gt; Seeds Act, R.S.C. 1985, c. S-8&lt;nl/&gt;&lt;nl/&gt;
                        Standards Council of Canada Act, R.S.C. 1985, c. S-16&lt;nl/&gt;&lt;nl/&gt; Textile
                        Labelling Act, R.S.C. 1985, c. T-10&lt;nl/&gt;&lt;nl/&gt; Timber Marking Act, R.S.C.
                        1985 c. T-11&lt;nl/&gt;&lt;nl/&gt; Tobacco Products Control Act, R.S.C. 1985, c.
                        14&lt;nl/&gt; (4th Supp.), ss. 2, 5, 8, and 9 &lt;/verbatim&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/biblio:entry&gt;

<b>becomes</b>

&lt;biblio:entry&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt; Trade-marks Act, R.S.C., 1985, c. T-13 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Amended 1990, c. 14, s. 8; in force June 12, 1990 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Amended 1990, c. 20, ss. 79 to 81; brought into force August 1, 1990 by
                    SI/90-99, Can. Gaz., Part II, August 15, 1990 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Amended 1992, c. 1, ss. 133 to 135; in force February 28, 1992 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Amended 1993, c. 15, ss. 57 to 72; brought into force, except ss. 65 and 66,
                    June 9, 1993; ss. 65 and 66 brought into force January 15, 1994 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Amended 1993, c. 44, ss. 225 to 238; brought into force January 1, 1994 (but
                    see s. 242) &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                Other Legislation Concerning Trade-marks &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Bank Act, R.S.C. 1985, c. B-1 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Canada Agricultural Products Act, R.S.C. 1985, c. 20 (4th Supp.) &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Competition Act, R.S.C. 1985, c. C-34 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Consumer Packaging and Labelling Act, R.S.C. 1985, c. C-38 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Criminal Code, R.S.C. 1985, c. C-46 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Food and Drug Act, R.S.C. 1985, c. F-27 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Meat Inspection Act, R.S.C. 1985 c. 25 (1st Supp.) &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Plant Breeders' Rights Act, S.C. 1990, c. 20 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Precious Metals Marking Act, R.S.C. 1985, c. P-19 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Seeds Act, R.S.C. 1985, c. S-8 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Standards Council of Canada Act, R.S.C. 1985, c. S-16 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Textile Labelling Act, R.S.C. 1985, c. T-10 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Timber Marking Act, R.S.C. 1985 c. T-11 &lt;proc:nl/&gt;&lt;proc:nl/&gt;
                 Tobacco Products Control Act, R.S.C. 1985, c. 14 (4th Supp.), ss. 2, 5, 8, and 9 &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/biblio:entry&gt;
</pre>
            <p><b>Example for dropping immediate proc:nl of p/text in the target.</b></p>
           <pre>
&lt;biblio:entry&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;nl/&gt;
                        &lt;nl/&gt;
  The Glossary of Genetic Terms appears courtesy of the National Human Genome Research Institute (NHGRI), a division of the U.S. Department of Health and Human Services. 
                        &lt;nl/&gt;
                    &lt;nl/&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/biblio:entry&gt;

<b>becomes</b>

 &lt;biblio:entry&gt;
            &lt;section&gt;
                &lt;bodytext&gt;
                    &lt;p&gt; 
		         &lt;text&gt;
 The Glossary of Genetic Terms appears courtesy of the National Human Genome Research Institute (NHGRI), a division of the U.S. Department of Health and Human Services. 
                              &lt;proc:nl/&gt;
                          &lt;proc:nl/&gt;
                      &lt;/text&gt;
                   &lt;/p&gt;
               &lt;/bodytext&gt;
          &lt;/section&gt;
&lt;/biblio:entry&gt;       
               
           </pre>
            
            <p>When
                    <sourcexml>docinfo:subtype</sourcexml> is having value <b>rdna</b> and if
                    <sourcexml>docinfo:hier/docinfo:hierlev/@role="ancestor"/heading/title</sourcexml>
                contains <b>"RDNA.25 - Glossary"</b> then suppress:
                    <sourcexml>&lt;publication-original searchtype="BOOK-TITLE"&gt;Glossary of
                    Genetic Terms &lt;/publication-original&gt;</sourcexml> and do not generate
                    <targetxml>biblio:entrytitle</targetxml> for this particular
                    <sourcexml>publication-original</sourcexml> from target
            conversion.</p><pre>
&lt;docinfo:subtype&gt;rdna&lt;/docinfo:subtype&gt;

<b>and</b>

&lt;docinfo:hierlev role="ancestor"&gt;
    &lt;heading&gt;
        &lt;title&gt;RDNA.25 - Glossary&lt;/title&gt;
    &lt;/heading&gt;
&lt;/docinfo:hierlev&gt;

<b>becomes</b>

&lt;!-- Suppress below publication-original element with its content --&gt;
&lt;publication-original searchtype="BOOK-TITLE"&gt;Glossary of Genetic Terms &lt;/publication-original&gt;
</pre></section>
        <section>
            <title>Changes</title>
            <p>2015-02-25: <ph id="change_20150225_AK">Added a rule with example for dropping set of <targetxml>proc:nl</targetxml> those occured immediately after <targetxml>p/text</targetxml> in the target.</ph></p>
            <p>2014-12-19: <ph id="change_20141218_AK">Added an example with input and output file when <sourcexml>docinfo:subtype</sourcexml> element is having value <b>clsi</b> OR <b>iclj</b> OR <b>iclb</b> then suppress doc:hier markup from conversion</ph></p>
            <p>2014-10-24: <ph id="change_20141024_SEP">Retain multiple consecutive newlines instead
                    of converting to p/text. Phase 6 Canada Discussion RFA # 146.</ph></p>
            <p>2014-10-08: <ph id="change_20141008_PS">Instruction updated and example added for
                    multiple line break, Applicable on CA11.</ph></p>
            <p>2014-09-26: <ph id="change_20140926_PS">Created, This immediately applies to
                    CA11.</ph></p>
        </section>

    </body>
	</dita:topic>
    
    
    
    
    <xsl:template match="docinfo:hier" priority="25">
    <xsl:if test="$subtype!='clsi' and $subtype!='iclj' and $subtype!='iclb'">
        <doc:hier>
            <xsl:apply-templates select="@* | node()"/>
        </doc:hier>
    </xsl:if>    
    </xsl:template>
    
    <xsl:template match="docinfo:hierlev">
        
        <!--  Original Target XPath:  doc:hier/doc:hierlev   -->
        <doc:hierlev>
            <!--  @SBy:  @exclude-from-displayunits already taken care of in creating doc:hier/@includeintoc   -->
            <xsl:apply-templates select="@* except @exclude-from-displayunits"/>
            
            <xsl:apply-templates select="node()"/>
        </doc:hierlev>
        
    </xsl:template>
    
    <xsl:template match="docinfo:hierlev/@role"/>
    
    <xsl:template match="docinfo:hierlev/@exclude-from-displayunits[ . = 'true' ]">
        
        <!--  Original Target XPath:  doc:hier/@includeintoc="false"   -->
        <xsl:attribute name="includeintoc" select=" 'false' "/>
        
    </xsl:template>
    
    <xsl:template match="inlineobject[ancestor::docinfo:hierlev]"/>
    
    

    
</xsl:stylesheet>