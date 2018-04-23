<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:guid="urn:x-lexisnexis:content:guid:global:1" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
   <title>case:juris <lnpid>id-CA02CC-12426</lnpid></title>
    <body>
        <section><sourcexml>case:juris</sourcexml> can hold a code representing a Province or
            Country. <sectiondiv> We will convert the following codes from old to new ISO: <ul id="ul_and_cnl_kq">
                    <li>For Canada: if input document contains <sourcexml>CD</sourcexml> or
                            <sourcexml>Canada</sourcexml> within <sourcexml>leg:juris</sourcexml>,
                        then convert it to <targetxml>CA</targetxml>.</li>
                <li>For UK: if input document contains <sourcexml>UK</sourcexml> within
                    <sourcexml>case:juris</sourcexml>, then convert it to
                    <targetxml>CA</targetxml>.</li>
                    <li>For Newfoundland and Labrador: if input document contains
                            <sourcexml>NF</sourcexml> within <sourcexml>leg:juris</sourcexml>, then
                        convert it to <targetxml>NL</targetxml>.</li>
                    <li>For Quebec: if input document contains <sourcexml>PQ</sourcexml> within
                            <sourcexml>leg:juris</sourcexml>, then convert it to
                            <targetxml>QC</targetxml>.</li>
                </ul>
                <b>The translations should be</b>: <ul id="ul_lsd_cnl_kq">
                    <li><targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system@normshortname/globalentity:entity/globalentity:entityReference@role="urn:contentType:geography",
                            @guid:guid</targetxml> and with
                            <targetxml>globalentity:content</targetxml> element. <note>Place the
                            content of <sourcexml>case:juris</sourcexml> in
                                <targetxml>jurisinfo:system@normshortname</targetxml> .
                                </note><note><targetxml>@guid:guid</targetxml> attribute value will
                            be taken from below mentioned table from <b>PGUID</b> column. Country or
                            Province code can also be taken from <b>COUNTRY &amp; PROVINCE CODES</b>
                            column.</note></li>
                </ul>
            </sectiondiv><p>
                <ul id="ul_cn3_s3l_kq">
                    <li>
                        <table id="table_nv3_s3l_kq">
                            <title>The <b>province</b> codes with PGUID codes for Country:</title>
                            <tgroup cols="5">
                                <tbody>
                                    <row>
                                        <entry><b>OFFICIAL NAME</b></entry>
                                        <entry><b>COUNTRY &amp; PROVINCE CODES</b></entry>
                                        <entry><b>COUNTRY/PROVINCE</b></entry>
                                        <entry><b>PGUID</b></entry>
                                        <entry><b>CODES</b></entry>
                                    </row>
                                    <row>
                                        <entry>Canada</entry>
                                        <entry>(CA)</entry>
                                        <entry>COUNTRY</entry>
                                        <entry>urn:entity:geob-101733280</entry>
                                        <entry>ISO-3166-1</entry>
                                    </row>
                                    <row>
                                        <entry>Alberta</entry>
                                        <entry>(AB)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101865413</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>British Columbia</entry>
                                        <entry>(BC)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-100301383</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Prince Edward Island</entry>
                                        <entry>(PE)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101864367</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Manitoba</entry>
                                        <entry>(MB)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101864769</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Province of Newfoundland &amp; Labrador</entry>
                                        <entry>(NL)</entry>
                                        <entry>PROVINCE </entry>
                                        <entry>urn:entity:geob-102223081</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Northwest Territories</entry>
                                        <entry>(NT)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101865328</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>New Brunswick</entry>
                                        <entry>(NB)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101378115</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Nova Scotia</entry>
                                        <entry>(NS)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101507047</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Nunavut</entry>
                                        <entry>(NU)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101770571</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Ontario</entry>
                                        <entry>(ON)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-101149718</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Quebec</entry>
                                        <entry>(QC)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-100432051</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Saskatchewan</entry>
                                        <entry>(SK)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-102094956</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
                                    <row>
                                        <entry>Yukon Territory</entry>
                                        <entry>(YT)</entry>
                                        <entry>PROVINCE</entry>
                                        <entry>urn:entity:geob-102091695</entry>
                                        <entry>ISO-3166-2</entry>
                                    </row>
									<!--<row>
                                        <entry>United Kingdom</entry>
                                        <entry>(UK)</entry>
                                        <entry>COUNTRY</entry>
                                        <entry>urn:entity:geob-102315884</entry>
                                        <entry>ISO-3166-1</entry>
                                    </row>-->
                                </tbody>
                            </tgroup>
                        </table>
                    </li>
                </ul>
            </p>
        </section>
        <note>If <sourcexml>case:juris</sourcexml> has or don't have attribute
                <sourcexml>@ln.user-displayed="false"</sourcexml> , then map it as usual.</note>
        <example>
            <title>Mapping of <sourcexml>case:juris</sourcexml> with province code</title>
            <codeblock>
&lt;case:courtinfo&gt;
  &lt;case:juris ln.user-displayed="false"&gt;PQ&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;    
        &lt;jurisinfo:system normshortname="QC"&gt;
                &lt;globalentity:entity&gt;
                    &lt;globalentity:content&gt;QC&lt;/globalentity:content&gt;
                    &lt;globalentity:entityReference role="urn:contentType:geography" guid:guid="urn:entity:geob-100301383"/&gt;                    
                &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>case:juris</sourcexml> with country code "CD"</title>
            <codeblock>
&lt;case:courtinfo&gt;
  &lt;case:juris ln.user-displayed="false"&gt;CD&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;    
        &lt;jurisinfo:system normshortname="CA"&gt;
                &lt;globalentity:entity&gt;
                    &lt;globalentity:content&gt;CA&lt;/globalentity:content&gt;
                    &lt;globalentity:entityReference role="urn:contentType:geography" guid:guid="urn:entity:geob-101733280"/&gt;                    
                &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
           </codeblock></example>
        <note>Create only single <targetxml>jurisinfo:courtinfo</targetxml> in target instead of multiple. For more clarification please see the example below.</note>
       <example>
            <title>Source XML</title>
            <codeblock>
&lt;case:courtinfo&gt;
    &lt;case:juris ln.user-displayed="false"&gt;MB&lt;/case:juris&gt;
    &lt;abbrvname ln.user-displayed="false"&gt;MBQB&lt;/abbrvname&gt;
    &lt;case:courtname&gt;Manitoba Court of Queen's Bench&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

           </codeblock>
            <b>Becomes</b>
            <title>Target XML</title>
            <codeblock>
&lt;jurisinfo:courtinfo&gt;                
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="MBSC"/&gt;                
    &lt;jurisinfo:courtname normshortname="MBQB"&gt;Manitoba Court of Queen's
        Bench&lt;/jurisinfo:courtname&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system normshortname="MB"&gt;
            &lt;globalentity:entity&gt;
                &lt;globalentity:content&gt;MB&lt;/globalentity:content&gt;
                &lt;globalentity:entityReference role="urn:contentType:geography"
                    guid:guid="urn:entity:geob-101864769"/&gt;
            &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

           </codeblock>
        </example>
       
       
    <!-- <note>For handling <b>@ln.user-displayed</b>
       attribute, refer the general markup <xref
           href="../../../common_newest/Rosetta_case.juris_ln.user-displayed.dita"
         >ln.user_displayed="false"</xref> section in the CI.</note>-->
        <section>
            <title>
                Changes
            </title>
            <p>2015-03-18: <ph id="change_20150318_AS">Added instructions to create single <targetxml>jurisinfo:courtinfo</targetxml>. Webteam 292982.</ph></p>
            <p>2015-02-05: <ph id="change_20150205_SEP">Remove UK PGUID value from table (CA01, CA02 (all streams), CA03 and CA04). R45 RFA #2133.</ph></p>
            <p>2015-02-02: <ph id="change_20150202_AS">Added instructions to apply CA in guid for country code "UK". Db issue #407 </ph></p>
            <p>2015-01-30: <ph id="change_20150130_AS">Updated "The province codes with PGUID codes for Country" table when case:juris with country code "UK". Db issue #407 </ph></p>
        <p>2014-12-15: <ph id="change_20141215_AS">Updated mapping. <b>Db R4.5 issue
                #2047</b></ph></p>
            
        </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.juris.dita  -->
	
	<!-- Sudhanshu Srivastava edited on 15-May-2017.-->
    <xsl:variable name="pguid">
        <codes>
            <code key="CA" value="urn:entity:geob-101733280"/>
            <code key="CD" value="urn:entity:geob-101733280"/>
            <code key="Canada" value="urn:entity:geob-101733280"/>
            <code key="UK" value="urn:entity:geob-101733280"/>
            <code key="AB" value="urn:entity:geob-101865413"/>
            <code key="BC" value="urn:entity:geob-100301383"/>
            <code key="PE" value="urn:entity:geob-101864367"/>
            <code key="MB" value="urn:entity:geob-101864769"/>
            <code key="NL" value="urn:entity:geob-102223081"/>
            <code key="NF" value="urn:entity:geob-102223081"/>
            <code key="NT" value="urn:entity:geob-101865328"/>
            <code key="NB" value="urn:entity:geob-101378115"/>
            <code key="NS" value="urn:entity:geob-101507047"/>
            <code key="NU" value="urn:entity:geob-101770571"/>
            <code key="ON" value="urn:entity:geob-101149718"/>
            <code key="QC" value="urn:entity:geob-100432051"/>
            <code key="PQ" value="urn:entity:geob-100432051"/>
            <code key="SK" value="urn:entity:geob-102094956"/>
            <code key="YT" value="urn:entity:geob-102091695"/>
        </codes>
    </xsl:variable>
    
    <!--Key kCodeByName for match the code -->
    <xsl:key name="kCodeByName" match="code" use="string(@key)"/> 
    
    <!-- Template to match the metaitem[@name='DPSI'] coresponding dpsi in the code in the mode of DpsiCode -->
    <xsl:template match="case:juris[key('kCodeByName', ., $pguid)]" mode="pguid">
        <xsl:value-of select="key('kCodeByName', ., $pguid)/@value"/>
    </xsl:template>
    

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.juris.dita  -->
    <xsl:template match="case:juris[@ln.user-displayed='false']">
        <xsl:variable name="jurisValue">
            <xsl:choose>
                <xsl:when test=".='PQ'">
                    <xsl:text>QC</xsl:text>
                </xsl:when>
                <xsl:when test=".=('CD','Canada','UK')">
                    <xsl:text>CA</xsl:text>
                </xsl:when>
                <xsl:when test=".='NF'">
                    <xsl:text>NL</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        
        <jurisinfo:jurisdiction>
            <jurisinfo:system>
                <xsl:attribute name="normshortname" select="$jurisValue"/>
                <globalentity:entity>
                    <globalentity:content>
                        <xsl:value-of select="$jurisValue"/>
                    </globalentity:content>
                    <globalentity:entityReference>
                        <xsl:attribute name="role">
                            <xsl:text>urn:contentType:geography</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="guid:guid">
                            <xsl:apply-templates select="." mode="pguid"/>
                        </xsl:attribute>
                    </globalentity:entityReference>
                </globalentity:entity>
            </jurisinfo:system>
        </jurisinfo:jurisdiction>
    </xsl:template>
</xsl:stylesheet>