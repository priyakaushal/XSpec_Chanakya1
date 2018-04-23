<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    version="2.0" exclude-result-prefixes="dita dig">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.damages">
        <title>dig:damages <lnpid>id-CA02DC-12631</lnpid></title>
        <body>
            <section>
                <ul>
                    <li>
                        <sourcexml>dig:damages</sourcexml> becomes
                            <targetxml>casedigest:damages</targetxml>. <p>Children are populated as
                            given below:</p>
                        <ul>
                            <li>
                                <sourcexml>dig:damages/dig:damages-amount</sourcexml> becomes
                                    <targetxml>casedigest:damages/casedigest:awardamount</targetxml>.
                                    <sourcexml>dig:damages/dig:damages-description</sourcexml>
                                becomes
                                    <targetxml>casedigest:damages/casedigest:awarddescription</targetxml>. <ul>
                                    <li><sourcexml>dig:damages/dig:damages-amount/dig:award-of-time</sourcexml>
                                        becomes
                                            <targetxml>casedigest:damages/casedigest:award/textitem</targetxml>
                                        <pre>

&lt;dig:damages&gt;
    &lt;dig:damages-amount&gt;
        &lt;dig:award-of-time&gt;
            &lt;duration&gt;12 months notice&lt;/duration&gt;
        &lt;/dig:award-of-time&gt;
    &lt;/dig:damages-amount&gt;
&lt;/dig:damages&gt;                         
                         
                         <b>Becomes</b>                         

&lt;casedigest:damages&gt;
        &lt;casedigest:award&gt;
            &lt;textitem&gt;
                &lt;duration&gt;12 months notice&lt;/duration&gt;
            &lt;/textitem&gt;
        &lt;/casedigest:award&gt;
&lt;/casedigest:damages&gt;

                     </pre>
                                    </li>
                                    <li>
                                        <sourcexml>dig:damages/dig:damages-amount/money</sourcexml>
                                        becomes
                                            <targetxml>casedigest:damages/casedigest:awardamount/textitem/money</targetxml>
                                        <pre>

&lt;dig:damages&gt;
    &lt;dig:damages-amount&gt;
        &lt;money&gt;Non-pecuniary damages: $30,000.&lt;/money&gt;
    &lt;/dig:damages-amount&gt;
&lt;/dig:damages&gt;                         
                         
                         <b>Becomes</b>                         

&lt;casedigest:damages&gt;
    &lt;casedigest:awardamount&gt;
        &lt;textitem&gt;
            &lt;money&gt;Non-pecuniary damages: $30,000.&lt;/money&gt;
        &lt;/textitem&gt;
    &lt;/casedigest:awardamount&gt;
&lt;/casedigest:damages&gt;

                             </pre>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <p>Children of
                                        <sourcexml>dig:damages/dig:damages-description</sourcexml>
                                    are populated as below:</p>
                                <ul>
                                    <li>
                                        <sourcexml>dig:damages/dig:damages-description/classification</sourcexml>
                                        becomes
                                            <targetxml>casedigest:damages/casedigest:award/classify:classification</targetxml>
                                        <note>For handling <sourcexml>classification</sourcexml> and
                                            all its attributes please refer to <xref
                                                href="classification.dita">classification</xref>
                                            section in the CI. <p>There are some Rosetta samples
                                                which contain <sourcexml>remotelink</sourcexml>
                                                element within <sourcexml>classcode</sourcexml> with
                                                no attributes which seems like data error, so
                                                conversion need to omit
                                                  <sourcexml>remotelink</sourcexml> tag and retain
                                                its PCData within parent element.</p>
                                        </note>
                                        <pre>

&lt;dig:damages&gt;
    &lt;dig:damages-description&gt;
        &lt;classification classscheme="lnc.card.damages-issues-topic-numbers" rendition="breadcrumb"&gt;
            &lt;classitem&gt;
                &lt;classitem-identifier&gt;
                    &lt;classcode&gt;
                        &lt;remotelink&gt;C2N.60&lt;/remotelink&gt;
                    &lt;/classcode&gt;
                    &lt;classname&gt;No liability - Damages calculated but not awarded&lt;/classname&gt;
                &lt;/classitem-identifier&gt;
            &lt;/classitem&gt;
        &lt;/classification&gt;
        &lt;classification classscheme="lnc.card.damage-range" rendition="breadcrumb"&gt;
            &lt;classitem&gt;
                &lt;classitem-identifier&gt;
                    &lt;classcode&gt;
                        &lt;remotelink&gt;C3.080&lt;/remotelink&gt;
                    &lt;/classcode&gt;
                    &lt;classname&gt;$80,000 - $89,999&lt;/classname&gt;
                &lt;/classitem-identifier&gt;
            &lt;/classitem&gt;
        &lt;/classification&gt;
    &lt;/dig:damages-description&gt;
&lt;/dig:damages&gt;
                         
                         <b>Becomes</b>                         

&lt;casedigest:damages&gt;
    &lt;casedigest:award&gt;
        &lt;classify:classification classscheme="lnc.card.damages-issues-topic-numbers"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode&gt;C2N.60&lt;/classify:classcode&gt;
                    &lt;classify:classname&gt;No liability - Damages calculated but not awarded&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
        &lt;classify:classification classscheme="lnc.card.damage-range"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode&gt;C3.080&lt;/classify:classcode&gt;
                    &lt;classify:classname&gt;$80,000 - $89,999&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/casedigest:award&gt;
&lt;/casedigest:damages&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="classscheme:lnc.card.damages-issues-topic-numbers" value="breadcrumb"/&gt;
        &lt;metaitem name="classscheme:lnc.card.damage-range" value="breadcrumb"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

                            </pre>
                                    </li>
                                    <li>
                                        <sourcexml>dig:damages/dig:damages-amount/money</sourcexml>
                                        becomes
                                            <targetxml>casedigest:damages/casedigest:awardamount/textitem/money</targetxml>
                                        <sourcexml>dig:damages/dig:damages-description/p/text</sourcexml>
                                        becomes
                                            <targetxml>casedigest:damages/casedigest:awarddescription/textitem</targetxml>
                                        <pre>

&lt;dig:damages&gt;
	&lt;dig:damages-amount&gt;
		&lt;money&gt;Non-pecuniary damages: $125,000 (Appeal Court upheld 2011 BC Supreme Court judge's decision on non-pecuniary damages).&lt;/money&gt;
	&lt;/dig:damages-amount&gt;
&lt;/dig:damages&gt;

...

&lt;dig:damages&gt;
	&lt;dig:damages-description&gt;
		&lt;p&gt;&lt;text&gt;Appeal Court upheld 2011 BC Supreme Court judge's decision on non-pecuniary damages.&lt;/text&gt;&lt;/p&gt;
	&lt;/dig:damages-description&gt;
&lt;/dig:damages&gt;
                         
                         <b>Becomes</b>                         

&lt;casedigest:damages&gt;
	&lt;casedigest:awardamount&gt;
		&lt;textitem&gt;Non-pecuniary damages: &lt;money&gt;$125,000&lt;/money&gt; (Appeal Court upheld 2011 BC Supreme Court judge's decision on non-pecuniary damages).&lt;/textitem&gt;
	&lt;/casedigest:awardamount&gt;
&lt;/casedigest:damages&gt;

...

&lt;casedigest:damages&gt;
	&lt;casedigest:awarddescription&gt; 
		&lt;textitem&gt;Appeal Court upheld 2011 BC Supreme Court judge's decision on non-pecuniary damages.&lt;/textitem&gt;
	&lt;/casedigest:awarddescription&gt;
&lt;/casedigest:damages&gt;

                                    </pre>
                                    </li>
                                    <li>
                                        <sourcexml>dig:damages/dig:damages-description/p/text</sourcexml>
                                        becomes
                                            <targetxml>casedigest:damages/casedigest:awarddescription/textitem</targetxml>
                                        <pre>

&lt;dig:damages&gt;
    &lt;dig:damages-description&gt;
        &lt;p&gt;
            &lt;text&gt;No liability - damages calculated but not awarded.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/dig:damages-description&gt;
&lt;/dig:damages&gt;
                         
                         <b>Becomes</b>                         

&lt;casedigest:damages&gt;
    &lt;casedigest:awarddescription&gt;
        &lt;textitem&gt;No liability - damages calculated but not awarded.&lt;/textitem&gt;
    &lt;/casedigest:awarddescription&gt;
&lt;/casedigest:damages&gt;
                        

                                    </pre>
                                    </li>
                                </ul> </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <section>
                <title>Changes Specific to CA02</title>
                <p>2014-04-09: <ph id="change_20140409_SEP">Enhance this instruction to
                        differentiate <targetxml>casedigest:awardamount</targetxml> and
                            <targetxml>casedigest:awarddescription</targetxml>
                        <b>R4.5 Issue #1193</b></ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\dig.damages.dita  -->

    <!-- Vikas Rohilla : Updated the template initial-->
    <xsl:template match="dig:damages">
        <casedigest:damages>            
            <xsl:apply-templates select="@* | node()"/>
        </casedigest:damages>
    </xsl:template>
    
    <xsl:template match="dig:damages/dig:damages-amount">
        <xsl:choose>
            <xsl:when test="child::dig:award-of-time">
                <xsl:apply-templates select="@* | node()"/>
            </xsl:when>
            <xsl:otherwise>
                <casedigest:awardamount>
                    <xsl:apply-templates select="node()|@*"/>
                </casedigest:awardamount>        
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="dig:damages-description">
        <xsl:choose>
            <xsl:when test="child::classification">
                <casedigest:award>
                    <xsl:apply-templates select="@* | node()"/>
                </casedigest:award>
            </xsl:when>
            <xsl:otherwise>
                <casedigest:awarddescription>
                    <xsl:apply-templates select="@*|node()"/>
                </casedigest:awarddescription>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>

    <xsl:template match="dig:damages/dig:damages-amount/dig:award-of-time">
        <casedigest:award>
            <textitem>
                <xsl:apply-templates select="@* | node()"/>
            </textitem>
        </casedigest:award>
    </xsl:template>

</xsl:stylesheet>