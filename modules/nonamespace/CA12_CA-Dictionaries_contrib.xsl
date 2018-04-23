<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0"
    exclude-result-prefixes="dita comm">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="CA12_CA-Dictionaries_contrib">
        <title>contrib <lnpid>id-CA12-15011</lnpid></title>

        <body>
            <section>
                <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">contrib</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml "
                        >byline/person:contributor</targetxml></p>

                <p><sourcexml class="+ topic/keyword xml-d/sourcexml ">@contribtype</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml "
                        >@contributor-type</targetxml></p>

                <p>Create <targetxml>person:person/person:name.text</targetxml> as a child of
                        <targetxml>person:contributor</targetxml>.</p>

                <p>If <sourcexml class="+ topic/keyword xml-d/sourcexml ">@contribtype</sourcexml>
                    is not present in the source data then conversion need to create <targetxml
                        class="+ topic/keyword xml-d/targetxml "
                        >@contributor-type="undetermined"</targetxml> in <targetxml
                        class="+ topic/keyword xml-d/targetxml ">person:contributor</targetxml></p>

                <note>
                    <p><targetxml>person:contributor</targetxml> is not an mandatory element and
                        conversion should create <targetxml>person:contributor</targetxml> if
                            <sourcexml>comm:info/contrib</sourcexml> is in the source document.</p>
                </note>

                <note>
                    <p>If attribute <targetxml>ln.user-displayed="true"</targetxml> is having value
                            <b>"true"</b> then conversion need to drop the attribute in the
                        target.</p>
                </note>

                <pre xml:space="preserve" class="- topic/pre ">
&lt;comm:info&gt;
    &lt;contrib ln.user-displayed="true"&gt;Harvey J. Kirsh, Paul A. Ivanoff (Contributors)&lt;/contrib&gt;
    &lt;publication&gt;Canadian Construction Law Dictionary&lt;/publication&gt;
&lt;/comm:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;dict:body&gt;
    &lt;pubfm:pubfm pubfmtype="contributor"&gt;
        &lt;byline&gt;
            &lt;person:contributor contributor-type="undetermined"&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;Harvey J. Kirsh, Paul A. Ivanoff
                        (Contributors)&lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:contributor&gt;
            &lt;person:person&gt;
                &lt;person:bio&gt;
                    &lt;person:bio.detail&gt;
                        &lt;person:bio.publications&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;Canadian Construction Law Dictionary&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/person:bio.publications&gt;
                    &lt;/person:bio.detail&gt;
                &lt;/person:bio&gt;
            &lt;/person:person&gt;
        &lt;/byline&gt;
    &lt;/pubfm:pubfm&gt;
&lt;/dict:body&gt;
</pre>

                <note class="- topic/note ">If in source <sourcexml
                        class="+ topic/keyword xml-d/sourcexml ">contrib</sourcexml> element is
                    having only <b>&amp;nbsp;</b> entity in the <targetxml>contrib</targetxml>
                    element then conversion need to suppressed the element.</note>

                <pre xml:space="preserve" class="- topic/pre ">
&lt;comm:info&gt;
    &lt;contrib ln.user-displayed="true"&gt;&amp;nbsp;&lt;/contrib&gt;
    ...
&lt;/comm:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

Suppressed contrib element
    </pre>

                <note>
                    <p>Conversion should not create consecutive <targetxml>person:person</targetxml>
                        elements. When 2 or more consecutive sibling source elements map to
                            <targetxml>person:person</targetxml>, data should be merged to a single
                            <targetxml>person:person</targetxml> element unless this would hamper
                        content ordering.</p>
                </note>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-07-31: <ph id="change_20140731_PS">Added note that
                            <targetxml>person:contributor</targetxml> is not an mandatory element
                        and conversion should create <targetxml>person:contributor</targetxml> if
                            <sourcexml>comm:info/contrib</sourcexml> is in the source document. R4.5
                        Issue #1754, this immediately applies to CA12.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_contrib.dita  -->
    <!--<xsl:message>CA12_CA-Dictionaries_contrib.xsl requires manual development!</xsl:message> -->

    <xsl:template match="comm:info/contrib">
        <!--  Original Target XPath:  byline/person:contributor-->
        <xsl:if test="text() != '&#160;' and text() != ''">
            <person:contributor>
                <xsl:attribute name="contributor-type">
                    <xsl:choose>
                        <xsl:when test="contrib/@conibtype">
                            <xsl:value-of select="."/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>undetermined</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <person:person>
                    <person:name.text>
                        <xsl:apply-templates/>
                    </person:name.text>
                    <xsl:apply-templates select="comm:info/publication"/>
                </person:person>
            </person:contributor>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="contrib/@ln.user-displayed"/>
        
    
    <xsl:template match="contrib/@conibtype"/>
        
    





</xsl:stylesheet>
