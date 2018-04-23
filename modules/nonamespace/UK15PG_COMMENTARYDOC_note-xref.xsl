<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK15PG_COMMENTARYDOC_note-xref">
        <title>note[@notetype="xref"] <lnpid>id-UK15-30424</lnpid></title>

        <body>
            <section>
                <p><sourcexml>note[@notetype="xref"]</sourcexml> becomes
                        <targetxml>marginnote</targetxml>. The mapping of
                        <sourcexml>note[@notetype="xref"]</sourcexml> varies slightly depending on
                    the parent:<ul>
                        <li><sourcexml>note[@notetype="xref"][ancestor::text]</sourcexml> becomes
                                <targetxml>marginnote</targetxml>.</li>
                        <li><sourcexml>note[@notetype="xref"][parent::bodytext]</sourcexml> becomes
                                <targetxml>seclaw:bodytext/p/text/marginnote</targetxml>. Conversion
                            should <b>not</b> create a new <targetxml>p</targetxml> element, but
                            instead place the newly created <targetxml>text/marginnote</targetxml>
                            in <targetxml>p</targetxml> that was mapped from the preceding sibling
                                <sourcexml>p</sourcexml> of
                                <sourcexml>note[@notetype="xref"]</sourcexml>.</li>
                        <li><sourcexml>note[@notetype="xref"][parent::li]</sourcexml> becomes
                                <targetxml>listitem/bodytext/p/text/marginnote</targetxml>.
                            Conversion should <b>not</b> create a new <targetxml>p</targetxml>
                            element, but instead place the newly created
                                <targetxml>text/marginnote</targetxml> in <targetxml>p</targetxml>
                            that was mapped from the preceding sibling <sourcexml>p</sourcexml> of
                                <sourcexml>note[@notetype="xref"]</sourcexml>.</li>
                        <li><sourcexml>note[@notetype="xref"][parent::p]</sourcexml> becomes
                                <targetxml>text/marginnote</targetxml>.</li>
                    </ul></p>
                <p>In <b>all</b> situations the children of <targetxml>marginnote</targetxml> should
                    be populated as follows:<ul>
                        <li>Create the required child <targetxml>marginnote/ref:anchor</targetxml>
                            and populate <targetxml>ref:anchor/@id</targetxml> with a concatenation
                            of the following values separated by "_" (don't include quotation marks):<ul>
                                <li>uk</li>
                                <li>the value in
                                        <sourcexml>/COMMENTARYDOC/docinfo/docinfo:doc-id</sourcexml></li>
                                <li>a digit, starting with 1 that is incremented by 1 for each
                                    occurence of <sourcexml>note[@notetype="xref"]</sourcexml> in a
                                    document</li>
                            </ul></li>
                        <li>The content of <sourcexml>bodytext/note[@notetype="xref"]</sourcexml>
                            should be placed in <targetxml>marginnote/bodytext</targetxml>.</li>
                    </ul></p>
                <note id="guidance-multiple-consecutive-bodytext_note">In all scenarios, if the
                    source contains multiple consecutive
                        <sourcexml>note[notetype="xref"]</sourcexml> elements, then a single
                        <targetxml>text</targetxml> element is created with a single
                        <targetxml>marginnote</targetxml> element as a child. In other words,
                    multiple consecutive <sourcexml>note[notetype="xref"]</sourcexml> source
                    elements are merged into a single <targetxml>text/marginnote</targetxml> target
                    element.</note>
            </section>
            <example>
                <title>Example:
                    <sourcexml>note[@notetype="xref"][parent::bodytext]</sourcexml></title>
                <codeblock> &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Complainants in cases of sexual
                    assault automatically qualify for special measures unless the witness has
                    expressed a view that no assistance is required.&lt;/text&gt; &lt;/p&gt;
                    &lt;note notetype="xref"&gt; &lt;p&gt; &lt;text&gt; &lt;ci:cite
                    searchtype="LEG-REF" status="valid"&gt; &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt; &lt;ci:sesslawnum num="1999_23a"/&gt;
                    &lt;ci:hierpinpoint&gt; &lt;ci:hierlev label="section" num="17"/&gt;
                    &lt;/ci:hierpinpoint&gt; &lt;/ci:sesslawinfo&gt; &lt;ci:sesslawref&gt;
                    &lt;ci:standardname normpubcode="UK_ACTS"/&gt; &lt;/ci:sesslawref&gt;
                    &lt;/ci:sesslaw&gt; &lt;ci:content&gt;YJCEA 1999, s 17(4)&lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/note&gt; ... &lt;/bodytext&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;seclaw:bodytext&gt; &lt;p&gt; &lt;text&gt;Complainants in cases of
                    sexual assault automatically qualify for special measures unless the witness has
                    expressed a view that no assistance is required.&lt;/text&gt; &lt;text&gt;
                    &lt;marginnote&gt; &lt;ref:anchor id="uk_0OL2_146023_51"/&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; &lt;lnci:cite status="valid"&gt; &lt;lnci:sesslaw&gt;
                    &lt;lnci:sesslawinfo&gt; &lt;lnci:sesslawnum num="1999_23a"/&gt;
                    &lt;lnci:hierpinpoint&gt; &lt;lnci:hierlev label="section" num="17"/&gt;
                    &lt;/lnci:hierpinpoint&gt; &lt;/lnci:sesslawinfo&gt; &lt;lnci:sesslawref&gt;
                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt; &lt;/lnci:sesslawref&gt;
                    &lt;/lnci:sesslaw&gt; &lt;lnci:content&gt;YJCEA 1999, s
                    17(4)&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/marginnote&gt; &lt;/text&gt; &lt;/p&gt; ...
                    &lt;/seclaw:bodytext&gt; </codeblock>
            </example>
            <example>
                <title>Example:
                    <sourcexml>note[@notetype="xref"][ancestor::text]</sourcexml></title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt; &lt;note
                    notetype="xref"&gt; &lt;p&gt; &lt;text&gt;&lt;remotelink service="DOC-ID"
                    remotekey1="REFPTID" refpt="07UD_3_ADMIRALTY:HTGUIDES-COURT_17:HTGUIDES-APP"
                    dpsi="07UD"&gt;Admiralty and Commercial Court Guide, Appendix
                    17&lt;/remotelink&gt; &lt;/text&gt; &lt;/p&gt; &lt;/note&gt; Note: E-mail
                    communications with the court, and especially with the listing office are
                    permitted in certain circumstances (see Appendix 17 of the Guide) and are
                    commonly used in Commercial Court cases. Including an address can therefore be
                    helpful. If your firm's policy is not to accept service of documents by e-mail
                    then it is suggested that alongside your e-mail address you insert the wording
                    ‘Service of documents by e-mail not accepted’.&lt;/emph&gt; &lt;/text&gt;
                    &lt;/p&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;emph typestyle="bf"&gt;&lt;marginnote&gt;
                    &lt;ref:anchor id="uk_DN_0OKN_129611_18"/&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;Admiralty and Commercial Court Guide, Appendix
                    17&lt;/ref:content&gt; &lt;ref:locator
                    anchoridref="_07UD_3_ADMIRALTY:HTGUIDES-COURT_17:HTGUIDES-APP"&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value
                    value="_07UD_07UD_3_ADMIRALTY:HTGUIDES-COURT_17:HTGUIDES-APP"/&gt;
                    &lt;/ref:locator-key&gt; &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/marginnote&gt;Note: E-mail communications with the court, and especially
                    with the listing office are permitted in certain circumstances (see Appendix 17
                    of the Guide) and are commonly used in Commercial Court cases. Including an
                    address can therefore be helpful. If your firm's policy is not to accept service
                    of documents by e-mail then it is suggested that alongside your e-mail address
                    you insert the wording ‘Service of documents by e-mail not
                    accepted’.&lt;/emph&gt; &lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Example: <sourcexml>note[@notetype="xref"][parent::p]</sourcexml></title>
                <codeblock> &lt;p&gt; &lt;text&gt;the steps which it is reasonable for A [&lt;emph
                    typestyle="it"&gt;in this case, a website operator&lt;/emph&gt;] to have to
                    taken include steps for ensuring that in the circumstances concerned the
                    information provided is in an accessible format.&lt;/text&gt; &lt;note
                    notetype="xref"&gt; &lt;p&gt; &lt;text&gt; &lt;ci:cite searchtype="LEG-REF"
                    status="valid"&gt; &lt;ci:sesslaw&gt; &lt;ci:sesslawinfo&gt; &lt;ci:sesslawnum
                    num="2010_15a"/&gt; &lt;ci:hierpinpoint&gt; &lt;ci:hierlev label="section"
                    num="20"/&gt; &lt;/ci:hierpinpoint&gt; &lt;/ci:sesslawinfo&gt;
                    &lt;ci:sesslawref&gt; &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                    &lt;/ci:sesslawref&gt; &lt;/ci:sesslaw&gt; &lt;ci:content&gt;EqA 2010, s
                    20(3)&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
                    &lt;/p&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;p&gt; &lt;text&gt;the steps which it is reasonable for A [&lt;emph
                    typestyle="it"&gt;in this case, a website operator&lt;/emph&gt;] to have to
                    taken include steps for ensuring that in the circumstances concerned the
                    information provided is in an accessible format.&lt;/text&gt; &lt;text&gt;
                    &lt;marginnote&gt; &lt;ref:anchor id="uk_0ONJ_174344_3"/&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt; &lt;lnci:cite status="valid"&gt; &lt;lnci:sesslaw&gt;
                    &lt;lnci:sesslawinfo&gt; &lt;lnci:sesslawnum num="2010_15a"/&gt;
                    &lt;lnci:hierpinpoint&gt; &lt;lnci:hierlev label="section" num="20"/&gt;
                    &lt;/lnci:hierpinpoint&gt; &lt;/lnci:sesslawinfo&gt; &lt;lnci:sesslawref&gt;
                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt; &lt;/lnci:sesslawref&gt;
                    &lt;/lnci:sesslaw&gt; &lt;lnci:content&gt;EqA 2010, s 20(6)&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/marginnote&gt; &lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Multiple Consecutive <sourcexml>note</sourcexml> Elements</title>
                <codeblock> &lt;p&gt;&lt;text&gt; establishes an overall standard requiring a
                    prospectus to contain the '&lt;emph typestyle="it"&gt;information necessary to
                    enable investors to make an informed assessment&lt;/emph&gt;' of (amongst other
                    things) the '&lt;emph typestyle="it"&gt;financial position&lt;/emph&gt;' and
                    '&lt;emph typestyle="it"&gt;prospects&lt;/emph&gt;' of the issuing company (the
                    &lt;emph typestyle="bf"&gt;Company&lt;/emph&gt;), in a form which is '&lt;emph
                    typestyle="it"&gt;comprehensible and easy to analyse&lt;/emph&gt;',
                    and&lt;/text&gt; &lt;note notetype="xref"&gt; &lt;p&gt; &lt;text&gt; &lt;ci:cite
                    searchtype="LEG-REF" status="valid"&gt; &lt;ci:sesslaw&gt;
                    &lt;ci:sesslawinfo&gt; &lt;ci:sesslawnum num="2000_8a"/&gt;
                    &lt;ci:hierpinpoint&gt; &lt;ci:hierlev label="section" num="87A"/&gt;
                    &lt;/ci:hierpinpoint&gt; &lt;/ci:sesslawinfo&gt; &lt;ci:sesslawref&gt;
                    &lt;ci:standardname normpubcode="UK_ACTS"/&gt; &lt;/ci:sesslawref&gt;
                    &lt;/ci:sesslaw&gt; &lt;ci:content&gt;Financial Services and Markets Act 2000, s
                    87A&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;/note&gt;
                    &lt;note notetype="xref"&gt; &lt;p&gt; &lt;text&gt; &lt;url&gt; &lt;remotelink
                    hrefclass="http"
                    href="eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2003:345:0064:0089:EN:PDF"
                    newwindow="YES"&gt;based on PD, Article 5(1)&lt;/remotelink&gt; &lt;/url&gt;
                    &lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;note notetype="xref"&gt; &lt;p&gt;
                    &lt;text&gt;Prospectus Rules, &lt;remotelink service="DOC-ID"
                    remotekey1="REFPTID" refpt="0QGU_1_PR:HTBOOK_2.1.1:HTTARGET" dpsi="0QGU"&gt;PR
                    2.1.1&lt;/remotelink&gt; UK&lt;/text&gt; &lt;/p&gt; &lt;/note&gt; &lt;/p&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;p&gt;&lt;text&gt; establishes an overall standard requiring a
                    prospectus to contain the '&lt;emph typestyle="it"&gt;information necessary to
                    enable investors to make an informed assessment&lt;/emph&gt;' of (amongst other
                    things) the '&lt;emph typestyle="it"&gt;financial position&lt;/emph&gt;' and
                    '&lt;emph typestyle="it"&gt;prospects&lt;/emph&gt;' of the issuing company (the
                    &lt;emph typestyle="bf"&gt;Company&lt;/emph&gt;), in a form which is '&lt;emph
                    typestyle="it"&gt;comprehensible and easy to analyse&lt;/emph&gt;',
                    and&lt;/text&gt; &lt;text&gt; &lt;marginnote&gt; &lt;ref:anchor
                    id="uk_0OJW_119496_2"/&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; &lt;lnci:cite
                    status="valid"&gt; &lt;lnci:sesslaw&gt; &lt;lnci:sesslawinfo&gt;
                    &lt;lnci:sesslawnum num="2000_8a"/&gt; &lt;lnci:hierpinpoint&gt;
                    &lt;lnci:hierlev num="87A" label="section"/&gt; &lt;/lnci:hierpinpoint&gt;
                    &lt;/lnci:sesslawinfo&gt; &lt;lnci:sesslawref&gt; &lt;lnci:standardname
                    normpubcode="UK_ACTS"/&gt; &lt;/lnci:sesslawref&gt; &lt;/lnci:sesslaw&gt;
                    &lt;lnci:content&gt;Financial Services and Markets Act 2000, s
                    87A&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/text&gt; &lt;/p&gt; &lt;p&gt;
                    &lt;text&gt; &lt;ref:lnlink service="URL"&gt; &lt;ref:marker&gt;based on PD,
                    Article 5(1)&lt;/ref:marker&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="URL"/&gt; &lt;ref:key-value
                    value="http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2003:345:0064:0089:EN:PDF"
                    /&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:lnlink&gt;
                    &lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; Prospectus Rules,
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt; &lt;ref:content&gt;PR
                    2.1.1&lt;/ref:content&gt; &lt;ref:locator
                    anchoridref="_0QGU_1_PR_HTBOOK_2.1.1_HTTARGET"&gt; &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0QGU"/&gt;
                    &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt; UK
                    &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/marginnote&gt; &lt;/text&gt;
                    &lt;/p&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2014-04-17: <ph id="change_20140417_JCG">Added A note and example to specify that
                        multiple consecutive <sourcexml>note</sourcexml> elements are converted to a
                        single <targetxml>marginnote</targetxml> element. (Responds to issue #1389
                        on R4.5 post-initial launch issue list for UK15cs.)</ph></p>
                <p>2013-07-14: <ph id="change_20130714_DSF">Added directions and example for the
                        scenario when note[@notetype="xref"] is a child of p.</ph></p>
                <p>2013-05-31: <ph id="change_20130531_DSF">Added directions and example for the
                        scenario when note[@notetype="xref"] is a descendant of text.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_COMMENTARYDOC_note-xref.dita  -->
    <!--	<xsl:message>UK15PG_COMMENTARYDOC_note-xref.xsl requires manual development!</xsl:message> -->

    <!--<xsl:template match="note[@notetype = 'xref']">

        <!-\-  Original Target XPath:  marginnote   -\->
        <marginnote>

            <xsl:apply-templates select="@* | node()"/>
        </marginnote>

    </xsl:template>-->
 
        <xsl:template match="note[@notetype = 'xref'][ancestor::text]">

        <!--  Original Target XPath:  marginnote   -->
        <marginnote>
            <xsl:apply-templates select="@* | node()"/>
        </marginnote>

    </xsl:template>

    <xsl:template match="note[@notetype = 'xref'][parent::bodytext]">

        <!--  Original Target XPath:  seclaw:bodytext/p/text/marginnote   -->
        <seclaw:bodytext>
            <p>
                <text>
                    <marginnote>
                        <xsl:apply-templates select="@* | node()"/>
                    </marginnote>
                </text>
            </p>
        </seclaw:bodytext>

    </xsl:template>

   <!-- <xsl:template match="p[not(parent::abstract/parent::levelprelim)]">

        <!-\-  Original Target XPath:  text/marginnote   -\->
        <text>
            <marginnote>
                <xsl:apply-templates select="@* | node()"/>
            </marginnote>
        </text>

    </xsl:template>-->

    <xsl:template match="note[@notetype = 'xref'][parent::li]">

        <!--  Original Target XPath:  listitem/bodytext/p/text/marginnote   -->
        <listitem>
            <bodytext>
                <p>
                    <text>
                        <marginnote>
                            <xsl:apply-templates select="@* | node()"/>
                        </marginnote>
                    </text>
                </p>
            </bodytext>
        </listitem>

    </xsl:template>

    <xsl:template match="note[1][@notetype = 'xref'][parent::p]">
        <xsl:variable name="i" select="count(preceding::note[@notetype='xref'][parent::p][not(preceding-sibling::note[@notetype='xref'])]) + 1"/>
        <!--  Original Target XPath:  text/marginnote   -->
        <text>
            <marginnote>
                <ref:anchor>
                    <xsl:attribute name="id">
                        <!-- BRT 10/10/17 translate ':' to '_' -->
                        <xsl:value-of
                            select="concat('uk', '_', translate(/COMMENTARYDOC/docinfo/docinfo:doc-id, ':', '_'),'_',$i)"/>
                    </xsl:attribute>
                </ref:anchor>
                <xsl:for-each select="p">
                    <xsl:call-template name="p"/>
                </xsl:for-each>
                <xsl:for-each select="link">
                    <bodytext>
                        
                        <xsl:call-template name="createNoteLnlinkElement">
                            <xsl:with-param name="linkElement">
                                <xsl:copy-of select="self::*"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </bodytext>
                    
                        
                    
                    <!--<xsl:apply-templates select="link"/>-->
                </xsl:for-each>
                <!--<xsl:for-each select="following-sibling::note">
                    <xsl:apply-templates select="@* | node() "/>
                </xsl:for-each>-->
                <!--<xsl:apply-templates select="@* | node() "/>-->
            </marginnote>
        </text>
    </xsl:template>

    <xsl:template name="p">
        <bodytext>
            <p>
                <xsl:apply-templates select="@* | node()"/>
            </p>
            <xsl:if test="./parent::note/following-sibling::note">
                <xsl:for-each select="./parent::note/following-sibling::note">
                    <!--<xsl:apply-templates select="@* |node() "/>-->
                    <xsl:apply-templates select="node()"/>
                </xsl:for-each>
            </xsl:if>
        </bodytext>
    </xsl:template>

 
    <!--<xsl:template match="/COMMENTARYDOC/docinfo/docinfo:doc-id">

        <!-\-  Original Target XPath:  marginnote/bodytext   -\->
        <marginnote>
            <bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </marginnote>

    </xsl:template>-->

    <xsl:template match="bodytext/note[@notetype = 'xref']">

        <!--  Original Target XPath:  marginnote/bodytext   -->
        <marginnote>
            <bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </marginnote>

    </xsl:template>

    <!--<xsl:template match="note[notetype = 'xref']">

        <!-\-  Original Target XPath:  text   -\->
        <text>
            <xsl:apply-templates select="@* | node()"/>
        </text>

    </xsl:template>-->

    <xsl:template match="note">
        <xsl:if test="not(./@notetype='xref')">
            <marginnote>
            <xsl:apply-templates select="@* | node()"/>
        </marginnote>
        </xsl:if>

        <!--  Original Target XPath:  marginnote   -->
        

    </xsl:template>
    <xsl:template name="createNoteLnlinkElement">
        <xsl:param name="linkElement"/>
        <ref:lnlink>
            <xsl:attribute name="service" select="'ATTACHMENT'"/>
            <ref:marker role="label">
                <xsl:apply-templates select="$linkElement/link/node()"/>
            </ref:marker>
            <ref:locator>
                <ref:locator-key>
                    <ref:key-name name="attachment-key"/>
                    <ref:key-value>
                        <xsl:attribute name="value" select="if($linkElement/link/@dpsi) then concat('[[DPSI:' , $linkElement/link/@dpsi, ']]' , $linkElement/link/@filename) else $linkElement/link/@filename"/>
                    </ref:key-value>
                </ref:locator-key>
                <ref:locator-params>     
                    <proc:param name="attachment-type" value="IMG"/>
                    <proc:param name="external-or-local" value="external"/>		        
                    <proc:param name="attachment-server" value="BlobStore"/>
                    <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                    <proc:param name="componentseq" value="1"/>		              
                </ref:locator-params>	      
            </ref:locator>
        </ref:lnlink>
    </xsl:template>

</xsl:stylesheet>
