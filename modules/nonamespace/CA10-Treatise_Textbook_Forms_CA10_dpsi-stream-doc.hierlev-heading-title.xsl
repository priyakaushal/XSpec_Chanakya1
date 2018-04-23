<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_dpsi-stream-doc.hierlev-heading-title">
    <title>docinfo:custom-metafield/@name="dpsi" <lnpid>id-CA10-14628</lnpid></title>
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
                            <entry>0U91</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0U9L</entry>
                            <entry> Commentary</entry>
                        </row>
                        <row>
                            <entry>0U9M</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UA0</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UAK</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UB1</entry>
                            <entry>Employment Insurance Commentary</entry>
                        </row>
                        <row>
                            <entry>0UCG</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UCI</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UCS</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UDE</entry>
                            <entry>Editorial Board &amp; Case Comments</entry>
                        </row>
                        <row>
                            <entry>0UDJ</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UDQ</entry>
                            <entry>Topical Index to Summaries</entry>
                        </row>
                        <row>
                            <entry>0UEB</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UFA</entry>
                            <entry>Human Rights/Equity Issues Commentary</entry>
                        </row>
                        <row>
                            <entry>0UFQ</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UHE</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UHG</entry>
                            <entry>Bulletins and Social Security Agreements</entry>
                        </row>
                        <row>
                            <entry>0UHU</entry>
                            <entry>Employment Standards Commentary</entry>
                        </row>
                        <row>
                            <entry>0UHZ</entry>
                            <entry>Labour Relations Commentary</entry>
                        </row>
                        <row>
                            <entry>0UJ0</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UJ4</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0UMX</entry>
                            <entry>Commentaires, Index et Abréviations</entry>
                        </row>
                        <row>
                            <entry>0UN3</entry>
                            <entry>Commentaires, Index et Abréviations</entry>
                        </row>
                        <row>
                            <entry>0UNN</entry>
                            <entry>Commentaires, bibliographies et index</entry>
                        </row>
                        <row>
                            <entry>0UNY</entry>
                            <entry>Commentaires, Index et Abréviations</entry>
                        </row>
                        <row>
                            <entry>0UO5</entry>
                            <entry>Commentaires, Index et Tables</entry>
                        </row>
                        <row>
                            <entry>0UOI</entry>
                            <entry>Commentaires, Index et Abréviations</entry>
                        </row>
                        <row>
                            <entry>0UOM</entry>
                            <entry>Modèles de procédures</entry>
                        </row>
                        <row>
                            <entry>0UOR</entry>
                            <entry>Commentaires, Index, Abréviations et Adresses</entry>
                        </row>
                        <row>
                            <entry>0UPT</entry>
                            <entry>Commentary</entry>
                        </row>
                        <row>
                            <entry>0US5</entry>
                            <entry>Équipe de rédaction, tables, grilles et index</entry>
                        </row>
                        <row>
                            <entry>0USQ</entry>
                            <entry>Jurisprudence - Annotations de Dubois et Schneider</entry>
                        </row>
                        <row>
                            <entry>0UTA</entry>
                            <entry>Commentaires et Indexes</entry>
                        </row>
                        <row>
                            <entry>0V21</entry>
                            <entry>MFDA Staff Notices</entry>
                        </row>
                        <row>
                            <entry>0V2H</entry>
                            <entry> Montreal Stock Exchange Charter &amp; List of Fees</entry>
                        </row>
                        <row>
                            <entry>0V5X</entry>
                            <entry>Quantum of Damages Table</entry>
                        </row>
                        <row>
                            <entry>0V5Y</entry>
                            <entry>Code Citator</entry>
                        </row>
                        <row>
                            <entry>0VNX</entry>
                            <entry>Securities Commissions</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <pre>
&lt;docinfo:metaitem name="DPSI" value="0U9M"&gt;&lt;/docinfo:metaitem&gt;
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
            &lt;title&gt;Commentary&lt;/title&gt;
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
            <p>2017-04-12: <ph id="change_20170412_RS">Only change the language of existing rule for
                handling the DPSI values (i.e. <b>0UNN</b> &amp; <b>0US5</b>) inside the column of <b>'TOC top
                    line'</b>. [Webstar<b> #6701889</b>]</ph></p>
            <p>2017-03-07: <ph id="change_20170307_SS">Only change the language of existing rule for
                handling the DPSI values (i.e. <b>0UHG</b>) inside the column of <b>'TOC top
                    line'</b>. [Webstar<b> #6816375</b>]</ph></p>
            <p>2017-03-03: <ph id="change_20170303_SS">Only change the language of existing rule for
                handling the DPSI values (i.e. <b>0UNN</b> &amp; <b>0US5</b>) inside the column
                of <b>'TOC top line'</b>. [Webstar<b> #6701889</b> &amp;
                #<b>6811980</b>]</ph></p>
            <p>2016-07-27: <ph id="change_20160727_SS">Only change the language of existing rule for
                    handling the DPSI values inside the column of <b>'TOC top line'</b>.</ph></p>
            <p>2016-07-20: <ph id="change_20160720_SS">Deleted and updated some DPSI values inside
                    the column <b>TOC top line</b>.</ph></p>
            <p>2016-04-22: <ph id="change_20160422_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_dpsi-stream-doc.hierlev-heading-title.dita  -->
	<!--<xsl:message>CA10-Treatise_Textbook_Forms_CA10_dpsi-stream-doc.hierlev-heading-title.xsl requires manual development!</xsl:message>--> 

    <xsl:variable name="vDpsiCodes">
        <codes>
            <code key="0U91" value="Commentary"/>
            <code key="0U9L" value="Commentary"/>
            <code key="0U9M" value="Commentary"/>
            <code key="0UA0" value="Commentary"/>
            <code key="0UAK" value="Commentary"/>
            <code key="0UB1" value="Employment Insurance Commentary"/>
            <code key="0UCG" value="Commentary"/>
            <code key="0UCI" value="Commentary"/>
            <code key="0UCS" value="Commentary"/>
            <code key="0UDE" value="Editorial Board &amp; Case Comments"/>
            <code key="0UDJ" value="Commentary"/>
            <code key="0UDQ" value="Topical Index to Summaries"/>
            <code key="0UEB" value="Commentary"/>
            <code key="0UFA" value="Human Rights/Equity Issues Commentary"/>
            <code key="0UFQ" value="Commentary"/>
            <code key="0UHE" value="Commentary"/>
            <code key="0UHG" value="Bulletins and Social Security Agreements"/>
            <code key="0UHU" value="Employment Standards Commentary"/>
            <code key="0UHZ" value="Labour Relations Commentary"/>
            <code key="0UJ0" value="Commentary"/>
            <code key="0UJ4" value="Commentary"/>
            <code key="0UMX" value="Commentaires, Index et Abréviations"/>
            <code key="0UN3" value="Commentaires, Index et Abréviations"/>
            <code key="0UNN" value="Commentaires, bibliographies et index"/>
            <code key="0UNY" value="Commentaires, Index et Abréviations"/>
            <code key="0UO5" value="Commentaires, Index et Tables"/>
            <code key="0UOI" value="Commentaires, Index et Abréviations"/>
            <code key="0UOM" value="Modèles de procédures"/>
            <code key="0UOR" value="Commentaires, Index, Abréviations et Adresses"/>
            <code key="0UPT" value="Commentary"/>
            <code key="0US5" value="Équipe de rédaction, tables, grilles et index"/>
            <code key="0USQ" value="Jurisprudence - Annotations de Dubois et Schneider"/>
            <code key="0UTA" value="Commentaires et Indexes"/>
            <code key="0V21" value="MFDA Staff Notices"/>
            <code key="0V2H" value="Montreal Stock Exchange Charter &amp; List of Fees"/>
            <code key="0V5X" value="Quantum of Damages Table"/>
            <code key="0V5Y" value="Code Citator"/>
            <code key="0VNX" value="Securities Commissions"/>
        </codes>
    </xsl:variable>
    
    <!--Key kCodeByName for match the code -->
    <xsl:key name="kCodeByName" match="code" use="string(@key)"/> 
    
    

    <!-- call below template inside docinfo:hier to generate value based on dpsi -->
    <xsl:template name='dpsitemplate'>
        <xsl:if test="/COMMENTARYDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name='DPSI']">
            <heading>
                <title>
                    <xsl:value-of select="key('kCodeByName', ./@value, $vDpsiCodes)/@value"/>
                </title>
            </heading>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>