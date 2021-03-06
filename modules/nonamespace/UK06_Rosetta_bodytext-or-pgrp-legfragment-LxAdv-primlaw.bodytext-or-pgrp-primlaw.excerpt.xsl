<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_bodytext-legfragment-to-LexisAdvance_seclaw.bodytext-primlaw.excerpt">
        <title>legfragment <lnpid>id-UK06-28051</lnpid></title>
        <body>
            <section>
                <sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:level/primlaw:bodytext/primlaw:excerpt</targetxml> when legfragment is the child of bodytext<p>
                    <codeblock> &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt; &lt;text&gt;Pursuant to section 56 of the 2004 Act, a community interest company may convert itself into a [permitted society] and
                        section 53 of the 1965 Act and section 62 of the 1969 Northern Ireland Act apply to community interest companies, modified so that they read as follows—&lt;/text&gt; &lt;/p&gt; .....
                        &lt;legfragment&gt; &lt;leg:level&gt; &lt;leg:level-vrnt leveltype="article"&gt; &lt;leg:heading&gt; &lt;desig value="53"&gt; &lt;designum&gt;“53&lt;/designum&gt; &lt;/desig&gt;
                        &lt;title&gt;Conversion of company into registered society&lt;/title&gt; &lt;/leg:heading&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; &lt;/legfragment&gt; &lt;/leg:bodytext&gt;
                        &lt;/leg:levelbody&gt; <b>Becomes</b> &lt;primlaw:bodytext&gt; &lt;primlaw:level&gt; &lt;p&gt; &lt;text&gt;Pursuant to section 56 of the 2004 Act, a community interest company may convert itself
                        into a [permitted society] and section 53 of the 1965 Act and section 62 of the 1969 Northern Ireland Act apply to community interest companies, modified so that they read as follows—&lt;/text&gt;
                        &lt;/p&gt; ... &lt;primlaw:excerpt&gt; &lt;primlaw:level&gt; &lt;heading&gt; &lt;desig inline="true"&gt; 53 &lt;/desig&gt; &lt;title&gt;Conversion of company into registered society&lt;/title&gt;
                        &lt;/heading&gt; &lt;/primlaw:level&gt; &lt;/primlaw:excerpt&gt; &lt;/primlaw:level&gt; &lt;/primlaw:bodytext&gt; &lt;/primlaw:bodytext&gt; </codeblock>
                </p>
                <note>If <sourcexml>legfragment</sourcexml> has nested <sourcexml>legfragment</sourcexml> then create <targetxml>primlaw:excerpt</targetxml> inside <targetxml>primlaw:bodytext</targetxml>. For more
                    clarification please refer the below example.</note>
                <pre><b>SOURCE XML</b>

&lt;legfragment&gt;
    &lt;p&gt;
        &lt;pnum inline="true"&gt;“(6)&lt;/pnum&gt;
        &lt;text&gt;In regulation 32, for paragraph (1) substitute—&lt;/text&gt;
    &lt;/p&gt;
    &lt;legfragment&gt;
        &lt;p&gt;
            &lt;pnum inline="true"&gt;“(1)&lt;/pnum&gt;
            &lt;text&gt;After the date on which C dies or regulation 28 of the Adoptions with a Foreign Element Regulations 2005 or regulation 31 of the Adoptions with a Foreign Element (Scotland) Regulations 2009 applies, only one notice may be given under regulation 31.”.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/legfragment&gt;
&lt;/legfragment&gt;
        

 
<b>TARGET XML</b>

&lt;primlaw:excerpt&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;desig inline="true"&gt;&amp;#x201C;&amp;#x0028;6&amp;#x0029;&lt;/desig&gt;
            &lt;text&gt;In regulation 32, for paragraph &amp;#x0028;1&amp;#x0029; substitute&amp;#x2014;&lt;/text&gt;
        &lt;/p&gt;
        &lt;primlaw:excerpt&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;desig inline="true"&gt;&amp;#x201C;&amp;#x0028;1&amp;#x0029;&lt;/desig&gt;
                    &lt;text&gt;After the date on which C dies or regulation 28 of the Adoptions with a Foreign Element Regulations 2005 or regulation 31 of the Adoptions with a Foreign Element &amp;#x0028;Scotland&amp;#x0029; Regulations 2009 applies, only one notice may be given under regulation 31.&amp;#x201D;.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:excerpt&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:excerpt&gt;

   </pre>
            </section>
            <section>
                <title>Changes</title>
                <p>2016-12-16: <ph id="change_20161216_AS">Created</ph></p>
            </section>
        </body>
    </dita:topic>


    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita  -->

    <!-- Sudhanshu Srivastava 
         Edited :- 19 June 2017.
         Comments :- This is content specific module handling legfragment inside leg:bodytext.
    -->
    <xsl:template match="legfragment">
        <xsl:if test="node()">
        <primlaw:excerpt>
            <xsl:for-each select="*">
                <xsl:choose>
                    <xsl:when test="name(.)='leg:level'">
                        <xsl:apply-templates select="."/>
                    </xsl:when>
                    <xsl:when test="name(.)='leg:info'">
                        <primlaw:level leveltype="unclassified">
                            <primlaw:levelinfo>
                                <xsl:apply-templates select="."/>
                            </primlaw:levelinfo>
                        </primlaw:level>
                    </xsl:when>
                    <xsl:otherwise>
                        <primlaw:bodytext>
                            <xsl:apply-templates select="."/>
                        </primlaw:bodytext>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </primlaw:excerpt>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>