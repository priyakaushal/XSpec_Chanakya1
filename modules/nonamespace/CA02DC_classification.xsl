<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="classification">
        <title>classification <lnpid>id-CA02DC-12620</lnpid></title>
        <body>
            <section>
                <ul id="ul_tpy_vs3_jq">
                    <li>
                        <sourcexml>classification</sourcexml> becomes
                            <targetxml>classify:classification</targetxml>
                        <note>if attribute <sourcexml>@display-name</sourcexml> contain any of the
                            below given values, then conversion needs to create attribute
                            classification/@classscheme and value will be captured within it as
                            given below: <ul id="ul_ywy_vs3_jq">
                                <li><sourcexml>classification[@display-name="Classification
                                        Number"]</sourcexml> becomes
                                        <targetxml>classification[@classscheme="classificationNumber"]</targetxml></li>
                                <li><sourcexml>classification[@display-name="Num�ro de la
                                        classification"]</sourcexml> becomes
                                        <targetxml>classification[@classscheme="classificationNumber"]</targetxml></li>
                            </ul> Use <targetxml>"classificationNumber"</targetxml> for the
                                <targetxml>@classscheme</targetxml>. Both English and French convert
                            to the same value, which will be used in the presentation spec to
                            generate the heading "Classification Number". The PSpec will determine
                            the document language using <targetxml>xml:lang</targetxml> to present
                            either "Classification Number" or the French version of that
                            phrase.</note>
                        <p>Children are populated as below:</p>
                        <ul id="ul_yzy_vs3_jq">
                            <li><sourcexml>classitem</sourcexml> becomes
                                    <targetxml>classify:classitem</targetxml>.</li>
                            <li><sourcexml>classitem-identifier</sourcexml> becomes
                                    <targetxml>classify:classitem-identifier</targetxml>.</li>
                            <li><sourcexml>classcode</sourcexml> becomes
                                    <targetxml>classify:classcode</targetxml>.</li>
                        </ul>
                        <p>Example 1:</p>
                        <pre>

&lt;classification display-name="Numéro de la classification"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;AEI254&lt;/classcode&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<b>Becomes</b>


&lt;classify:classification classscheme="classificationNumber"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="AEI254"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

            
            </pre>
                        <p>Example 2:</p>
                        <pre>

&lt;classification display-name="Classification Number"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;WIL935&lt;/classcode&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<b>Becomes</b>


&lt;classify:classification classscheme="classificationNumber"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="WIL935"/&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </pre>
                        <note>When attributes <sourcexml>@rendition</sourcexml> and
                                <sourcexml>@classscheme</sourcexml> occur with element
                                <sourcexml>classification</sourcexml>, then the value of
                                <sourcexml>@rendition</sourcexml> will move under
                                <targetxml>/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@value</targetxml>
                            and the value of attribute <sourcexml>@classscheme</sourcexml> will move
                            under
                                <targetxml>/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem/@name</targetxml>
                            followed by "classscheme:"</note>
                        <note><sourcexml>classcode/remotelink</sourcexml> becomes
                                <targetxml>classify:classcode/@normval</targetxml>. PCdata should be
                            captured under the @normval in target conversion.</note>
                        <note>When
                                <targetxml>classify:classification[@classscheme="lnc.card.cause-of-injury"
                                | "lnc.card.injury-topic-numbers" |
                                "lnc.card.damages-issues-topic-numbers" |
                                "lnc.card.damage-range"]</targetxml> in any of the attribute value
                            in the target then add <targetxml>classify:classification-grp
                                classscheme="carlson-index"</targetxml> around the
                                <targetxml>classify:classification</targetxml> element that contain
                            the Carlson class code. </note>
                        <note>If there are multiple <targetxml>classify:classifcation-grp
                                classscheme=”carlson-index”</targetxml> all get grouped into one
                            group.</note><p>Please see below example for more clarifiction.</p>
                        <pre>

&lt;classification classscheme="lnc.card.damage-range" rendition="breadcrumb"&gt;
    &lt;classitem&gt;
        &lt;classitem-identifier&gt;
            &lt;classcode&gt;
                &lt;remotelink&gt;C3.070&lt;/remotelink&gt;
            &lt;/classcode&gt;
            &lt;classname&gt;$70,000 - $79,999&lt;/classname&gt;
        &lt;/classitem-identifier&gt;
    &lt;/classitem&gt;
&lt;/classification&gt;


<b>Becomes</b>
    

&lt;classify:classification-grp classscheme="carlson-index"&gt;
&lt;classify:classification classscheme="lnc.card.damage-range"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classcode normval="C3.070"/&gt;
            &lt;classify:classname&gt;$70,000 - $79,999&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
&lt;/classify:classification-grp&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="classscheme:lnc.card.damage-range" value="breadcrumb"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
    
</pre>
                        <b>Example for Multiple
                            <sourcexml>classification/@classscheme</sourcexml></b>
                        <pre><b>SOURCE XML</b> 
                    

&lt;dig:cause-of-action&gt;
            &lt;dig:action-facts&gt;
                &lt;dig:injury searchtype="INJURY-TYPE"&gt;
                    &lt;classification classscheme="lnc.card.cause-of-injury" rendition="breadcrumb"
                        searchtype="INJURY-CAUSE"&gt;
                        &lt;classitem&gt;
                            &lt;classitem-identifier&gt;
                                &lt;classcode&gt;
                                    &lt;remotelink&gt;C4S.20&lt;/remotelink&gt;
                                &lt;/classcode&gt;
                                &lt;classname&gt;Sexual Assault (all types)&lt;/classname&gt;
                            &lt;/classitem-identifier&gt;
                        &lt;/classitem&gt;
                    &lt;/classification&gt;
                    &lt;classification classscheme="lnc.card.injury-topic-numbers"
                        rendition="breadcrumb" searchtype="INJURY-TYPE"&gt;
                        &lt;classitem&gt;
                            &lt;classitem-identifier&gt;
                                &lt;classcode&gt;
                                    &lt;remotelink&gt;C1E.50&lt;/remotelink&gt;
                                &lt;/classcode&gt;
                                &lt;classname&gt;Emotional/Psychological symptoms &lt;/classname&gt;
                            &lt;/classitem-identifier&gt;
                        &lt;/classitem&gt;
                        &lt;classitem&gt;
                            &lt;classitem-identifier&gt;
                                &lt;classcode&gt;
                                    &lt;remotelink&gt;C1H.80&lt;/remotelink&gt;
                                &lt;/classcode&gt;
                                &lt;classname&gt;Humiliation&lt;/classname&gt;
                            &lt;/classitem-identifier&gt;
                        &lt;/classitem&gt;
                    &lt;/classification&gt;
                &lt;/dig:injury&gt;
            &lt;/dig:action-facts&gt;
        &lt;/dig:cause-of-action&gt;


<b>TARGET XML</b>
                        

&lt;casedigest:facts&gt;
            &lt;casedigest:causeofaction&gt;
                &lt;casedigest:injury&gt;
                    &lt;classify:classification-grp classscheme="carlson-index"&gt;
                        &lt;classify:classification classscheme="lnc.card.cause-of-injury"&gt;
                            &lt;classify:classitem&gt;
                                &lt;classify:classitem-identifier&gt;
                                    &lt;classify:classcode normval="C4S.20"/&gt;
                                    &lt;classify:classname&gt;Sexual Assault (all types)&lt;/classify:classname&gt;
                                &lt;/classify:classitem-identifier&gt;
                            &lt;/classify:classitem&gt;
                        &lt;/classify:classification&gt;
                        &lt;classify:classification classscheme="lnc.card.injury-topic-numbers"&gt;
                            &lt;classify:classitem&gt;
                                &lt;classify:classitem-identifier&gt;
                                    &lt;classify:classcode normval="C1E.50"/&gt;
                                    &lt;classify:classname&gt;Emotional/Psychological symptoms &lt;/classify:classname&gt;
                                &lt;/classify:classitem-identifier&gt;
                            &lt;/classify:classitem&gt;
                            &lt;classify:classitem&gt;
                                &lt;classify:classitem-identifier&gt;
                                    &lt;classify:classcode normval="C1H.80"/&gt;
                                    &lt;classify:classname&gt;Humiliation&lt;/classify:classname&gt;
                                &lt;/classify:classitem-identifier&gt;
                            &lt;/classify:classitem&gt;
                        &lt;/classify:classification&gt;
                    &lt;/classify:classification-grp&gt;
                &lt;/casedigest:injury&gt;
            &lt;/casedigest:causeofaction&gt;
        &lt;/casedigest:facts&gt;

            </pre>
                        <note> If
                                <sourcexml>/DIGESTDOC/dig:body/dig:info/case:info/classification@classscheme="WDNS"</sourcexml>
                            with <sourcexml>classname</sourcexml> and
                                <sourcexml>classcode</sourcexml> with attribute
                                <sourcexml>@normval</sourcexml> then mapping to New Lexis will be
                                <targetxml>/casedigest:casedigest/casedigest:body/casedigest:caseinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode@normval</targetxml>.
                            Please refer the below example for more clarification.</note>
                        <pre>
    <b>SOURCE XML</b> 

        &lt;dig:body&gt;
        &lt;dig:info&gt;
            &lt;case:info&gt;
                &lt;classification classscheme="WDNS"&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS1"/&gt;
                            &lt;classname normval="Wrongful Dismissal Notice Searcher"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS5"/&gt;
                            &lt;classname normval="Job Category"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS65"/&gt;
                            &lt;classname normval="Labourers"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS75"/&gt;
                            &lt;classname normval="Years Employed"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS100"/&gt;
                            &lt;classname normval="11 to 20 years"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS135"/&gt;
                            &lt;classname normval="Age of Employee"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                    &lt;classitem&gt;
                        &lt;classitem-identifier&gt;
                            &lt;classcode normval="WDNS150"/&gt;
                            &lt;classname normval="31 to 45"/&gt;
                        &lt;/classitem-identifier&gt;
                    &lt;/classitem&gt;
                &lt;/classification&gt;
            &lt;/case:info&gt;
        &lt;/dig:info&gt;
    &lt;/dig:body&gt;
 

     <b>TARGET XML</b>

     &lt;casedigest:body&gt;
        &lt;casedigest:caseinfo&gt;
            &lt;classify:classification classscheme="WDNS"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS1"/&gt;
                        &lt;classify:classname normval="Wrongful Dismissal Notice Searcher"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS5"/&gt;
                        &lt;classify:classname normval="Job Category"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS65"/&gt;
                        &lt;classify:classname normval="Job Category"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS75"/&gt;
                        &lt;classify:classname normval="Years Employed"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS100"/&gt;
                        &lt;classify:classname normval="11 to 20 years"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS135"/&gt;
                        &lt;classify:classname normval="Age of Employee"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classcode normval="WDNS150"/&gt;
                        &lt;classify:classname normval="31 to 45"/&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/casedigest:caseinfo&gt;
    &lt;/casedigest:body&gt;

</pre>
                    </li>
                </ul>
            </section>
            <section>
                <title>Changes</title>
                <p>2015-03-02: <ph id="change_20150302_AS">Updated instruction to group
                            <targetxml>classify:classification-grp classscheme="carlson-index"
                        </targetxml> in one. <b>Db P4 #408</b></ph></p>
                <p>2015-01-15: <ph id="change_20150115_AK">We have added
                            <targetxml>classify:classification-grp classscheme="carlson-index"
                        </targetxml>element around <targetxml>classify:classification</targetxml>
                        when it is having attribute value any of these
                            <targetxml>[@classscheme="lnc.card.cause-of-injury" |
                            "lnc.card.injury-topic-numbers" |
                            "lnc.card.damages-issues-topic-numbers" | "lnc.card.damage-range"]
                        </targetxml> in the target.</ph></p>
                <p>2014-12-11: <ph id="change_20141211_AS">Added instructions to accomodate WDNS
                            classifications.<b> Db issue R4.5 #2071</b></ph></p>
                <p>2014-09-04 <ph id="change_20140904_AS">clarification for remote link and
                            classcode.<sourcexml>classcode/remotelink</sourcexml> becomes
                            <targetxml>classify:classcode/@normval</targetxml>
                        <b>DB item # 336</b></ph></p>
                <p>2014-03-26 <ph id="change_20140326_SEP">Both English and French should convert to
                            "classificationNumber".<b>DB item # 1176</b></ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\classification.dita  -->
    

    <!--Vikas Rohilla : Updated the template Initial -->
    <xsl:template match="classification">
        <classify:classification>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classification>        
    </xsl:template>
        
    <xsl:template match="classification[not(preceding-sibling::*[1][self::classification])][@classscheme='lnc.card.cause-of-injury' or @classscheme='card.injury-topic-numbers' or @classscheme='lnc.card.damages-issues-topic-numbers' or @classscheme='lnc.card.damage-range']">
        <classify:classification-grp classscheme="carlson-index">
            <classify:classification>
            <xsl:apply-templates select="node()|@*"/>
            </classify:classification>
            <xsl:if test="following-sibling::*[1][self::classification]">
                    <xsl:call-template name="wrapps">
                        <xsl:with-param name="node" select="following-sibling::*[1][self::classification]"/>
                    </xsl:call-template>
                </xsl:if>       
        </classify:classification-grp>
    </xsl:template>    
    
    <xsl:template name="wrapps">
        <xsl:param name="node"/>
        <xsl:apply-templates select="$node" mode="classification"/>
        <xsl:if test="$node/following-sibling::*[1][self::classification]">
            <xsl:call-template name="wrapps">
                <xsl:with-param name="node" select="$node/following-sibling::*[1][self::classification]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="classification" mode="classification">
        <classify:classification>
            <xsl:apply-templates select="@* | node()"/>
        </classify:classification>        
    </xsl:template>
    
    <xsl:template match="classification[preceding-sibling::classification[@classscheme='lnc.card.cause-of-injury' or @classscheme='card.injury-topic-numbers' or @classscheme='lnc.card.damages-issues-topic-numbers' or @classscheme='lnc.card.damage-range']]"/>
    
    <xsl:template match="classification/@classscheme">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="classification/@searchtype"/>
    <xsl:template match="classification/@rendition"/>
    
    
<!-- Template Classification for create the meta/metaitem   -->
    
    <xsl:template match="classification[@rendition and @classscheme]" mode="meta-item">
        <xsl:element name="metaitem">
            <xsl:attribute name="name">
                <xsl:value-of select="@classscheme"/>
            </xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of select="@rendition"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    
    
    
    
    
</xsl:stylesheet>