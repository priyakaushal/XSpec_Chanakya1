<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
    xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    version="2.0" exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
        <title>leg:info <lnpid>id-UK07-28218</lnpid></title>
        <body>
            <section>
                <p><sourcexml>leg:info</sourcexml> becomes
                        <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
                    and create attribute
                        <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.The mappings
                    for the children of <targetxml>leg:info</targetxml> are discussed as separate
                    topics.</p>
                <note>The attribute <sourcexml>leg:info/@subseqdoc</sourcexml> will be suppressed
                    from conversion.</note>
                <note>
                    <ul>
                        <li>Conversion should not create adjacent
                                <targetxml>primlaw:levelinfo</targetxml>. Data should be merged to
                            single <targetxml>primlaw:levelinfo</targetxml>.</li>
                        <li>Conversion should not create adjacent
                                <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be
                            merged to single <targetxml>primlawinfo:primlawinfo</targetxml>.</li>
                        <li>Conversion should not create adjacent
                                <targetxml>legisinfo:legisinfo</targetxml>. Data should be merged to
                            single <targetxml>legisinfo:legisinfo</targetxml>.</li>
                    </ul>
                </note>
                <note><sourcexml>note</sourcexml> becomes
                        <targetxml>regulation:body/primlaw:prelim/note</targetxml>, see <xref
                        href="../../common_newest/Rosetta_note-LxAdv-note.dita"/> in <b>General
                        Markup</b> section.</note>
                <pre>

&lt;leg:body&gt;
    &lt;leg:info subseqdoc="false"&gt;
        .......
    &lt;/leg:info&gt;
    .......
&lt;/leg:body&gt;

<b>Becomes</b>
        

&lt;regulation:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    .......
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
    .......
&lt;/regulation:body&gt;

      </pre>
                <b>Example for note</b>
                <pre><b>Source XML</b>
&lt;leg:info&gt;
    &lt;note notetype="summary"&gt;
        &lt;p&gt;
            &lt;text&gt;An Act of the Scottish Parliament ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/note&gt;
    &lt;!-- ETC. --&gt;
&lt;/leg:info&gt;

<b>Target XML</b>        
&lt;regulation:body&gt;
    &lt;primlaw:prelim&gt;
        &lt;note notetype="summary"&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;An Act of the Scottish Parliament ...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/primlaw:prelim&gt;
    &lt;!-- ETC. --&gt;
&lt;/regulation:body&gt;</pre>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-08-21: <ph id="change_20140821_AS">Added a scnario for
                            <sourcexml>leg:info/note</sourcexml> in above note describing scenarios
                        where <targetxml>legis:body/primlaw:prelim</targetxml> should be
                            created.<b>R4.5 Content issue List #1810</b></ph></p>
            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.info.dita  -->

    <xsl:template match="leg:info">
        <xsl:apply-templates select="leg:juris"/>
        <primlawinfo:primlawinfo>
            <xsl:apply-templates select="@* | node() except (leg:status | leg:history | popname | leg:longtitle | leg:juris | leg:govoffice | leg:sectionlist)"/>
            <xsl:apply-templates select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='provision-status']"/>
        </primlawinfo:primlawinfo>
    </xsl:template>
    
    <xsl:template match="leg:info/note" priority="2"/>

    <xsl:template match="docinfo:custom-metafield[@name='is-first-document-in-enactment']" mode="isfirstdocumentinenactment">
        <classify:classitem>
            <classify:classitem-identifier>
                <classify:classcode normval="{.}"/>
                <classify:classname>firstLegisItem</classify:classname>
            </classify:classitem-identifier>
        </classify:classitem>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafield[@name='is-last-document-in-enactment']" mode="islastdocumentinenactment">
        <classify:classitem>
            <classify:classitem-identifier>
                <classify:classcode normval="{.}"/>
                <classify:classname>lastLegisItem</classify:classname>
            </classify:classitem-identifier>
        </classify:classitem>
    </xsl:template>
    
</xsl:stylesheet>
