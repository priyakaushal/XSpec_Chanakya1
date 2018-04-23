<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:guid="urn:x-lexisnexis:content:guid:global:1" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.juris">
  <title>leg:juris <lnpid>id-CA07-14018</lnpid></title>
  <body>
    <section>
            <p><sourcexml>leg:juris</sourcexml> can hold a code representing a province, territory
                or country.</p>
            <note>We will convert the following three codes from old to new ISO: <ul>
                    <li>For Canada: if input document contains <sourcexml>CD</sourcexml> within
                            <sourcexml>leg:juris</sourcexml>, then convert it to
                            <targetxml>CA</targetxml>.</li>
                    <li>For Newfoundland and Labrador: if input document contains
                            <sourcexml>NF</sourcexml> within <sourcexml>leg:juris</sourcexml>, then
                        convert it to <targetxml>NL</targetxml>.</li>
                    <li>For Quebec: if input document contains <sourcexml>PQ</sourcexml> within
                            <sourcexml>leg:juris</sourcexml>, then convert it to
                            <targetxml>QC</targetxml>.</li>
                </ul>
            </note>
        <ul>
            <li><sourcexml>leg:juris</sourcexml> becomes
                        <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system@normshortname/globalentity:entity/globalentity:entityReference@role="urn:contentType:geography",
                        @guid:guid</targetxml> and with <targetxml>globalentity:content</targetxml>
                    element. <note><targetxml>jurisinfo:system@normshortname</targetxml> attribute
                        value will always match <targetxml>jurisinfo:system</targetxml>
                        markup.</note><note><targetxml>@guid:guid</targetxml> attribute value should
                        be picked from the below given table's <b>PGUID</b> column.</note>
                </li>

        </ul>
        <p>
            <ul>
                <li>
                    <table>
                        <title><b>country</b> and <b>province</b> codes with PGUID code:</title>
                        <tgroup cols="5">
                            <tbody>
                                <row>
                                    <entry><b>OFFICIAL NAME</b></entry>
                                    <entry><b>OFFICIAL NAME CODES</b></entry>
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
                                    <entry>PROVINCE </entry>
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
                                    <entry>PROVINCE </entry>
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
                                    <entry>PROVINCE </entry>
                                    <entry>urn:entity:geob-102091695</entry>
                                    <entry>ISO-3166-2</entry>
                                </row>
                            </tbody>
                        </tgroup>
                    </table>
                </li>
            </ul>
        </p>
</section>
    <example>
            <title>Mapping of <sourcexml>leg:juris</sourcexml> with province code</title>
            <codeblock>

&lt;leg:info&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;BC&lt;/leg:juris&gt;
&lt;/leg:info&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system normshortname="BC"&gt;
            &lt;globalentity:entity&gt;
                &lt;globalentity:content&gt;BC&lt;/globalentity:content&gt;
                &lt;globalentity:entityReference role="urn:contentType:geography" guid:guid="urn:entity:geob-100301383"/&gt;
            &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;


           </codeblock>
        </example>
  
    <example>
            <title>Mapping of <sourcexml>leg:juris</sourcexml> with country code</title>
            <codeblock>

&lt;leg:info&gt;
    &lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
&lt;/leg:info&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;jurisinfo:legisbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system normshortname="CA"&gt;
            &lt;globalentity:entity&gt;
                &lt;globalentity:content&gt;CA&lt;/globalentity:content&gt;
                &lt;globalentity:entityReference role="urn:contentType:geography" guid:guid="urn:entity:geob-101733280"/&gt;
            &lt;/globalentity:entity&gt;
        &lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;

           </codeblock>
        </example>
    <note>If <sourcexml>leg:juris</sourcexml> has attribute <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as usual (as if the
      <sourcexml>@ln.user-displayed</sourcexml> did not exist).</note>
      <section>
          <title>Changes</title>
          <p>2014-12-15: <ph id="change_20141215_SSX">Updated the instruction and example for
              handling <sourcexml>leg:juris</sourcexml> and added the new elements
              <targetxml>globalentity:entityReference</targetxml> and
              <targetxml>globalentity:content</targetxml> under
              the<targetxml>globalentity:entity/</targetxml> target markup.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.juris.dita  -->
    <xsl:variable name="Juris">
        <codes>
            <code key="PQ" value=""/>
            <code key="ON" value="urn:entity:geob-101149718"/>
            <code key="QC" value="urn:entity:geob-100432051"/>
            <code key="NL" value="urn:entity:geob-102223081"/>
            <code key="BC" value="urn:entity:geob-100301383"/>
            <code key="AB" value="urn:entity:geob-101865413"/>
            <code key="NB" value="urn:entity:geob-101378115"/>
            <code key="NS" value="urn:entity:geob-101507047"/>
            <code key="SK" value="urn:entity:geob-102094956"/>
            <code key="NU" value="urn:entity:geob-101770571"/>
            <code key="MB" value="urn:entity:geob-101864769"/>
            <code key="PE" value="urn:entity:geob-101864367"/>
            <code key="NT" value="urn:entity:geob-101865328"/>
            <code key="YT" value="urn:entity:geob-102091695"/>
        </codes>
    </xsl:variable>
    
    <!--Key kCodeByName for match the code -->
    <xsl:key name="kCodeByName" match="*:code" use="string(@key)"/>
    <xsl:template match="//leg:juris[@ln.user-displayed][key('kCodeByName', ., $Juris)]"
        mode="Juris">
        <xsl:value-of select="key('kCodeByName', ., $Juris)/@key"/>
    </xsl:template>
    
    <xsl:template match="//leg:juris[@ln.user-displayed][key('kCodeByName', ., $Juris)]"
        mode="Juris_Value">
        <xsl:value-of select="key('kCodeByName', ., $Juris)/@value"/>
    </xsl:template>
    <xsl:template match="leg:juris">
        
        <xsl:choose>
            <xsl:when test=". = 'PQ'">
                <jurisinfo:legisbodyinfo>
                    <jurisinfo:jurisdiction>
                        <jurisinfo:system normshortname="QC">
                            <globalentity:entity>
                                <globalentity:content>QC</globalentity:content>
                                <globalentity:entityReference role="urn:contentType:geography">
                                    <xsl:attribute name="guid:guid">
                                        <xsl:text>urn:entity:geob-100432051</xsl:text>
                                    </xsl:attribute>
                                </globalentity:entityReference>
                            </globalentity:entity>                            
                        </jurisinfo:system>
                    </jurisinfo:jurisdiction>
                </jurisinfo:legisbodyinfo>
                
            </xsl:when>
            <xsl:when test="(. = 'CD') or (. = 'Canada') or (. = 'Ca') or (. = 'CANADA')">
                
                <jurisinfo:legisbodyinfo>
                    <jurisinfo:jurisdiction>
                        <jurisinfo:system normshortname="CA">
                            <globalentity:entity>
                                <globalentity:content>CA</globalentity:content>
                                <globalentity:entityReference role="urn:contentType:geography"
                                    guid:guid="urn:entity:geob-101733280"/>
                            </globalentity:entity>
                        </jurisinfo:system>
                    </jurisinfo:jurisdiction>
                </jurisinfo:legisbodyinfo>
            </xsl:when>
            <xsl:when test="(. = 'NF')">
                <jurisinfo:legisbodyinfo>
                    <jurisinfo:jurisdiction>
                        <jurisinfo:system normshortname="NL">
                            <globalentity:entity>
                                <globalentity:content>NL</globalentity:content>
                                <globalentity:entityReference role="urn:contentType:geography"
                                    guid:guid="urn:entity:geob-102223081"/>
                            </globalentity:entity>
                        </jurisinfo:system>
                    </jurisinfo:jurisdiction>
                </jurisinfo:legisbodyinfo>
            </xsl:when>
            <xsl:otherwise>
                <jurisinfo:legisbodyinfo>
                    <jurisinfo:jurisdiction>
                        <jurisinfo:system>
                            <xsl:attribute name="normshortname">
                                <xsl:apply-templates select="//leg:juris[@ln.user-displayed]"
                                    mode="Juris"/>
                            </xsl:attribute>
                            <globalentity:entity>
                                <globalentity:content>
                                    <xsl:apply-templates select="//leg:juris[@ln.user-displayed]"
                                        mode="Juris"/>
                                </globalentity:content>
                                <globalentity:entityReference>
                                    <xsl:attribute name="guid:guid">
                                        <xsl:apply-templates select="//leg:juris[@ln.user-displayed]"
                                            mode="Juris_Value"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="role">
                                        <xsl:text>urn:contentType:geography</xsl:text>
                                    </xsl:attribute>
                                </globalentity:entityReference>
                                <!-- guid="urn:entity:geob-101733280"-->
                                
                            </globalentity:entity>
                        </jurisinfo:system>
                    </jurisinfo:jurisdiction>
                </jurisinfo:legisbodyinfo>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
	<xsl:template match="@ln.user-displayed">

	

	</xsl:template>

</xsl:stylesheet>