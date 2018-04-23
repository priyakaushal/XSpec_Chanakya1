<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA09_dpsi-stream-doc.hierlev-heading-title">
    <title>docinfo:custom-metafield/@name="dpsi" <lnpid>id-CA09-14415</lnpid></title>
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
                            <entry>0U9C</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0U9R</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0UAR</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0UCU</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0UCZ</entry>
                            <entry>Forms &amp; Precedents</entry>
                        </row>
                        <row>
                            <entry>0UDS</entry>
                            <entry>Employment Standards Forms</entry>
                        </row>
                        <row>
                            <entry>0UDW</entry>
                            <entry>Government and Agency Documents</entry>
                        </row>
                        <row>
                            <entry>0UEH</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0UHF</entry>
                            <entry>Government and Agency Documents</entry>
                        </row>
                        <row>
                            <entry>0UI0</entry>
                            <entry>Labour Relations Forms</entry>
                        </row>
                        <row>
                            <entry>0UJC</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0UOA</entry>
                            <entry>Formulaires</entry>
                        </row>
                        <row>
                            <entry>0UQ0</entry>
                            <entry>Forms</entry>
                        </row>
                        <row>
                            <entry>0USW</entry>
                            <entry>Formulaires</entry>
                        </row>
                        <row>
                            <entry>0V20</entry>
                            <entry>IIROC &amp; Market Integrity Notices, Guides, and Updates</entry>
                        </row>
                        <row>
                            <entry>0V23</entry>
                            <entry>MFDA Forms</entry>
                        </row>
                        <row>
                            <entry>0V25</entry>
                            <entry>ICE Futures Canada Inc. Annexes  </entry>
                        </row>
                        <row>
                            <entry>0V29</entry>
                            <entry>CNSX Forms</entry>
                        </row>
                        <row>
                            <entry>0V2D</entry>
                            <entry>TSX Venture Exchange Corporate Finance Manual Appendices and Forms</entry>
                        </row>
                        <row>
                            <entry>0V2G</entry>
                            <entry>NEX Forms and Appendices  </entry>
                        </row>
                        <row>
                            <entry>0V2J</entry>
                            <entry>Montreal Stock Exchange Forms</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:metaitem name="DPSI" value="0U9C"&gt;0U9C&lt;/docinfo:custom-metafield&gt;
    ...
&lt;docinfo:hier&gt;
    &lt;docinfo:hierlev role="ancestor"&gt;
        &lt;heading&gt;
            &lt;title&gt;British Columbia &amp;#x2014; Forms&lt;/title&gt;
        &lt;/heading&gt;
        &lt;docinfo:hierlev role="me"&gt;
            &lt;heading&gt;
                &lt;title&gt;FORM 43C Securities Act&lt;/title&gt;
            &lt;/heading&gt;
        &lt;/docinfo:hierlev&gt;
       &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;doc:hier&gt;
    &lt;doc:hierlev&gt;
        &lt;heading&gt;
            &lt;title&gt;Forms&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:hierlev&gt;
            &lt;heading&gt;
                &lt;title&gt;British Columbia &amp;#x2014; Forms&lt;/title&gt;
            &lt;/heading&gt;
            &lt;doc:hierlev&gt;
                &lt;heading&gt;
                    &lt;title&gt;FORM 43C Securities Act&lt;/title&gt;
                &lt;/heading&gt;
            &lt;/doc:hierlev&gt;
        &lt;/doc:hierlev&gt;
    &lt;/doc:hierlev&gt;
&lt;/doc:hier&gt;

             </codeblock>
           </example>

        <section>
            <title>Change Log</title>
            <p>2017-03-07: <ph id="change_20170307_SS">Only change the language of existing rule for
                    handling the DPSI value (i.e. 0UHF) inside the column of <b>'TOC top line'</b>. [Webstar <b>#6816381</b>]</ph></p>
            <p>2016-07-27: <ph id="change_20160727_SS">Only change the language of existing rule for
                handling the DPSI values inside the column of <b>'TOC top line'</b>.</ph></p>
            <p>2016-07-20: <ph id="change_20160720_SS">Updated some DPSI values inside the column <b>TOC top line</b>.</ph></p>
            <p>2016-04-23: <ph id="change_20160423_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA09-Precedents_Forms\CA09_dpsi-stream-doc.hierlev-heading-title.dita  -->
	<!--<xsl:message>CA09_dpsi-stream-doc.hierlev-heading-title.xsl requires manual development!</xsl:message> -->
    <xsl:variable name="vDpsiCodes">
        <codes>
            <code key="0U9C" value="Forms"/>
            <code key="0U9R" value="Forms"/>
            <code key="0UAR" value="Forms"/>
            <code key="0UCU" value="Forms"/>
            <code key="0UCZ" value="Forms & Precedents"/>
            <code key="0UDS" value="Employment Standards Forms"/>
            <code key="0UDW" value="Government and Agency Documents"/>
            <code key="0UEH" value="Forms"/>
            <code key="0UHF" value="Government and Agency Documents"/>
            <code key="0UI0" value="Labour Relations Forms"/>
            <code key="0UJC" value="Forms"/>
            <code key="0UOA" value="Formulaires"/>
            <code key="0UQ0" value="Forms"/>
            <code key="0USW" value="Formulaires"/>
            <code key="0V20" value="IIROC & Market Integrity Notices, Guides, and Updates"/>
            <code key="0V23" value="MFDA Forms"/>
            <code key="0V25" value="ICE Futures Canada Inc. Annexes"/>
            <code key="0V29" value="CNSX Forms"/>
            <code key="0V2D" value="TSX Venture Exchange Corporate Finance Manual Appendices and Forms"/>
            <code key="0V2G" value="NEX Forms and Appendices"/>
            <code key="0V2J" value="Montreal Stock Exchange Forms"/>
            
        </codes>
    </xsl:variable>
    
    <!--Key kCodeByName for match the code -->
    <xsl:key name="kCodeByName" match="code" use="string(@key)"/> 
    
    <!-- Template to match the metaitem[@name='DPSI'] coresponding dpsi in the code in the mode of DpsiCode -->
    <xsl:template match="//docinfo:metaitem[@name='DPSI'][key('kCodeByName', ./@value, $vDpsiCodes)]" mode="DpsiCode">
        <xsl:value-of select="key('kCodeByName', ./@value, $vDpsiCodes)/@value"/>
    </xsl:template>
    
</xsl:stylesheet>