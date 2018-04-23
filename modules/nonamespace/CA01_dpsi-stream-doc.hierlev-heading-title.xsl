<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ext="http://exslt.org/common" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"  version="2.0" exclude-result-prefixes="dita">
    
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_dpsi-stream-doc.hierlev-heading-title">
        <title>docinfo:custom-metafield/@name="dpsi" <lnpid>id-CA01-12231</lnpid></title>
        <body>
            <section>
                <p>Using DPSI values from the manifest file and conversion should generate first top
                    level <targetxml>doc:hierlev</targetxml> with the colum value '<b>TOC top line</b>',
                    please refer below example for better understanding.</p>
                <table>
                    <tgroup cols="2">
                        <thead>
                            <row>
                                <entry>DPSI</entry>
                                <entry>TOC top line</entry>
                            </row>
                        </thead>
                        <tbody>
                            <row>
                                <entry>0UW2</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXQ</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXS</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXT</entry>
                                <entry>Summaries (Appeals &amp; Cases)</entry>
                            </row>
                            <row>
                                <entry>0UXU</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXV</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXW</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXX</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UXZ</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UY0</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UY1</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UY3</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0UY4</entry>
                                <entry>Jurisprudence - Texte intégraux et résumés archivés</entry>
                            </row>
                            <row>
                                <entry>0UY6</entry>
                                <entry>Jurisprudence</entry>
                            </row>
                            <row>
                                <entry>0UY7</entry>
                                <entry>Résumés de jurisprudence</entry>
                            </row>
                            <row>
                                <entry>0UY8</entry>
                                <entry>Jurisprudence sélectionnée</entry>
                            </row>
                            <row>
                                <entry>0UY9</entry>
                                <entry>Jurisprudence - Textes intégraux</entry>
                            </row>
                            <row>
                                <entry>0UYC</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0V45</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0V47</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0V48</entry>
                                <entry>Cases</entry>
                            </row>
                            <row>
                                <entry>0V49</entry>
                                <entry>Cases</entry>
                            </row>
                        </tbody>
                    </tgroup>
                </table>
                <pre>
&lt;docinfo:metaitem name="DPSI"&gt;0UW2&lt;/docinfo:metaitem&gt;
...
&lt;docinfo:hier&gt;
    &lt;docinfo:hierlev role="ancestor"&gt;
        &lt;heading&gt;
            &lt;title&gt;2010s&lt;/title&gt;
        &lt;/heading&gt;
        &lt;docinfo:hierlev role="ancestor"&gt;
            &lt;heading&gt;
                &lt;title&gt;2012&lt;/title&gt;
            &lt;/heading&gt;
            &lt;docinfo:hierlev role="me"&gt;
                &lt;heading&gt;
                    &lt;title&gt;[2012] B.C.J. No. 326 -- Wahlla v. Delta Sunshine Taxi (1972)
                        Ltd.&lt;/title&gt;
                &lt;/heading&gt;
            &lt;/docinfo:hierlev&gt;
        &lt;/docinfo:hierlev&gt;
    &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;
            </pre>
                <p><b>becomes</b></p>
                <pre>
&lt;doc:hier&gt;
    &lt;doc:hierlev&gt;
        &lt;heading&gt;
            &lt;title&gt;Cases&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:hierlev&gt;
            &lt;heading&gt;
                &lt;title&gt;2010s&lt;/title&gt;
            &lt;/heading&gt;
            &lt;doc:hierlev&gt;
                &lt;heading&gt;
                    &lt;title&gt;2012&lt;/title&gt;
                &lt;/heading&gt;
                &lt;doc:hierlev&gt;
                    &lt;heading&gt;
                        &lt;title&gt;[2012] B.C.J. No. 326 -- Wahlla v. Delta Sunshine Taxi (1972)
                            Ltd.&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/doc:hierlev&gt;
            &lt;/doc:hierlev&gt;
        &lt;/doc:hierlev&gt;
    &lt;/doc:hierlev&gt;
&lt;/doc:hier&gt;
            </pre>
            </section>
            
            <section>
                <title>Change Log</title>
                <p>2016-07-27: <ph id="change_20160727_SS">Only change the language of existing rule for
                    handling the DPSI values inside the column of <b>'TOC top line'</b>.</ph></p>
                <p>2016-04-26: <ph id="change_20160426_PS">Updated source example. Applicable on CA01.</ph></p>
                <p>2016-04-22: <ph id="change_20160422_PS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>
    
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_dpsi-stream-doc.hierlev-heading-title.dita  -->
    
    <!-- Variable vDpsoCodes for collection of the TOC top line value coreesponding the dpsi ext:code  -->
    <xsl:variable name="vDpsiCodes">
        <ext:codes>
            <ext:code key="0UW2" value="Cases"/>
            <ext:code key="0UXQ" value="Cases"/>
            <ext:code key="0UXS" value="Cases"/>
            <ext:code key="0UXT" value="Summaries (Appeals &amp; Cases)"/>
            <ext:code key="0UXU" value="Cases"/>
            <ext:code key="0UXV" value="Cases"/>
            <ext:code key="0UXW" value="Cases"/>
            <ext:code key="0UXX" value="Cases"/>
            <ext:code key="0UXZ" value="Cases"/>
            <ext:code key="0UY0" value="Cases"/>
            <ext:code key="0UY1" value="Cases"/>
            <ext:code key="0UY3" value="Cases"/>
            <ext:code key="0UY4" value="Jurisprudence - Texte intégraux et résumés archivés"/>
            <ext:code key="0UY6" value="Jurisprudence"/>
            <ext:code key="0UY7" value="Résumés de jurisprudence"/>
            <ext:code key="0UY8" value="Jurisprudence sélectionnée"/>
            <ext:code key="0UY9" value="Jurisprudence - Textes intégraux"/>
            <ext:code key="0UYC" value="Cases"/>
            <ext:code key="0V45" value="Cases"/>
            <ext:code key="0V47" value="Cases"/>
            <ext:code key="0V48" value="Cases"/>
            <ext:code key="0V49" value="Cases"/>
        </ext:codes>
    </xsl:variable>
    
    <!--Key kCodeByName for match the ext:code -->
    <xsl:key name="kCodeByName" match="ext:code" use="string(@key)"/> 
    
    <!-- Template to match the metaitem[@name='DPSI'] coresponding dpsi in the ext:code in the mode of DpsiCode -->
    <xsl:template match="docinfo:metaitem[@name='DPSI'][key('kCodeByName', ./@value, $vDpsiCodes)]" mode="DpsiCode">
        <xsl:value-of select="key('kCodeByName', ./@value, $vDpsiCodes)/@value"/>
    </xsl:template>
    
</xsl:stylesheet>