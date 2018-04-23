<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:source_nitf="urn:nitf:iptc.org.20010418.NITF" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita jrnl source_nitf">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journal-Newsletter-Bulletins_jrnl_prelim">
        <title>jrnl:prelim <lnpid>id-NZ08-24016</lnpid></title>

        <body>
            <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:prelim</sourcexml> conversion need to omit this element.</p>

            <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:prelim/heading/title</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:hedline/nitf:hl1</targetxml></p>

            <note>Drop <sourcexml>@searchtype</sourcexml> attribute from <sourcexml>heading</sourcexml> element.</note>

            <pre xml:space="preserve" class="- topic/pre ">
&lt;jrnl:body&gt;
    &lt;jrnl:prelim&gt;
        &lt;heading searchtype="JOURNAL-HEADING"&gt;
            &lt;title&gt;Unit Titles, Bodies Corporate and Rules&lt;/title&gt;
        &lt;/heading&gt;
        &lt;contrib&gt;The Unit Titles Act 1972 is in the process of review, but that appears to still be in its early stages. 
            &lt;person&gt;&lt;name.text&gt;Don McMorland&lt;/name.text&gt;&lt;/person&gt; 
            discusses these decisions.&lt;/contrib&gt;
    &lt;/jrnl:prelim&gt;
&lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl1&gt;Unit Titles, Bodies Corporate and Rules&lt;/nitf:hl1&gt;
        &lt;/nitf:hedline&gt;
        &lt;nitf:byline&gt;
            &lt;person:contributor&gt;The Unit Titles Act 1972 is in the process of review, but that appears to still be in its early stages.
            &lt;person:person&gt;&lt;person:name.text&gt;Don McMorland&lt;/person:name.text&gt;&lt;/person:person&gt; 
            discusses these decisions.&lt;/person:contributor&gt;
        &lt;/nitf:byline&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
</pre>

            <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">jrnl:prelim/heading/subtitle</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">nitf:hedline/nitf:hl2</targetxml></p>
            <pre>&lt;jrnl:body&gt;
    &lt;jrnl:prelim&gt;
        &lt;heading&gt;
            &lt;title&gt;Transactions Section&lt;/title&gt;
            &lt;subtitle&gt;COMPROMISES AND DISCHARGES: THIRD PARTY EFFECTS&lt;/subtitle&gt;
        &lt;/heading&gt;
    &lt;/jrnl:prelim&gt;
&lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl1&gt;Transactions Section&lt;/nitf:hl1&gt;
            &lt;nitf:hl2&gt;COMPROMISES AND DISCHARGES: THIRD PARTY EFFECTS&lt;/nitf:hl2&gt;
        &lt;/nitf:hedline&gt;
    &lt;/nitf:body.head&gt;
    &lt;/nitf:body&gt;</pre>

            <p>If source document is having multiple <sourcexml>heading/title</sourcexml> markup's within a single <targetxml>jrnl:prelim</targetxml>. In this case, primary heading "<sourcexml>heading/title</sourcexml>"
                should be mapped with <targetxml>nitf:hedline/nitf:hl1</targetxml> and following headings to <sourcexml>nitf:hedline/nitf:hl2</sourcexml>. Please refer the below markups for more clarification:</p>
            <pre>&lt;jrnl:body&gt;
    &lt;jrnl:prelim&gt;
        &lt;heading&gt;
            &lt;title&gt;Transactions Section&lt;/title&gt;
        &lt;/heading&gt;
        &lt;contrib&gt;with &lt;person&gt;&lt;name.text&gt;Brian Keene&lt;/name.text&gt;&lt;/person&gt;&lt;/contrib&gt;
        &lt;heading&gt;
            &lt;title&gt;COMPROMISES AND DISCHARGES: THIRD PARTY EFFECTS&lt;/title&gt;
        &lt;/heading&gt;
     &lt;/jrnl:prelim&gt;
        ...
     &lt;jrnl:prelim&gt;
        &lt;heading searchtype="JOURNAL-HEADING"&gt;
            &lt;title&gt;Cape &amp;amp; Dalgleish v Fitzgerald; and &lt;emph typestyle="it"&gt;Heaton v Axa Equity &amp;amp; Law Assurance&lt;/emph&gt;&lt;/title&gt;
        &lt;/heading&gt;
     &lt;/jrnl:prelim&gt;
&lt;/jrnl:body&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl1&gt;Transactions Section&lt;/nitf:hl1&gt;
        &lt;/nitf:hedline&gt;
        &lt;nitf:byline&gt;
            &lt;person:contributor&gt;with &lt;person:person&gt;&lt;person:name.text&gt;Brian Keene&lt;/person:name.text&gt;&lt;/person:person&gt;&lt;/person:contributor&gt;
        &lt;/nitf:byline&gt;
        &lt;nitf:hedline&gt;
            &lt;nitf:hl2&gt;COMPROMISES AND DISCHARGES: THIRD PARTY EFFECTS&lt;/nitf:hl2&gt;
        &lt;/nitf:hedline&gt;
            ...
        &lt;nitf:hedline&gt;
            &lt;nitf:hl2&gt;Cape &amp;#x0026; Dalgleish v Fitzgerald; and &lt;emph typestyle="it"&gt;Heaton v Axa Equity &amp;#x0026; Law Assurance&lt;/emph&gt;&lt;/nitf:hl2&gt;
        &lt;/nitf:hedline&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;</pre>
        </body>

    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ08_NewsLetter_and_Journals\Journal-Newsletter-Bulletins_jrnl_prelim.dita  -->
    <!-- <xsl:message>NZ08_NewsLetter_and_Journals_Journal-Newsletter-Bulletins_jrnl_prelim.xsl requires manual development!</xsl:message> -->

    <xsl:template match="jrnl:prelim">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="jrnl:prelim/heading" priority="25">
        <nitf:hedline>
            <xsl:apply-templates select="@* | node()"/>
        </nitf:hedline>
    </xsl:template>
    
    <xsl:template match="jrnl:prelim/heading/title" priority="25">
        <xsl:choose>
            <xsl:when test="count(parent::heading/preceding-sibling::heading/title) > 0">  <!-- test with PS2017051001293264344LNINZJRNLSANDNWSLTRS_input_201700NZLJ00300077_000120.xml -->
                <nitf:hl2>
                    <xsl:apply-templates select="@* | node()"/>
                </nitf:hl2>
            </xsl:when>
            <xsl:otherwise>
                <nitf:hl1>
                    <xsl:apply-templates select="@* | node()"/>
                </nitf:hl1>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="jrnl:prelim/heading/subtitle" priority="25">
        <nitf:hl2>
            <xsl:apply-templates select="@* | node()"/>
        </nitf:hl2>
    </xsl:template>
    
</xsl:stylesheet>
