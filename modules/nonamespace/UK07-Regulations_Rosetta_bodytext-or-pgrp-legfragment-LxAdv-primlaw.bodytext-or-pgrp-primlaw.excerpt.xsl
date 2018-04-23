<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_bodytext-legfragment-to-LexisAdvance_seclaw.bodytext-primlaw.excerpt">
        <title>legfragment <lnpid>id-UK07-28237</lnpid></title>
        <body>
            <section>
                <sourcexml>legfragment</sourcexml> becomes
                    <targetxml>regulation:body/primlaw:level/primlaw:bodytext/primlaw:excerpt</targetxml>
                when legfragment is the child of bodytext<p>
                    <codeblock> &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                        &lt;text&gt;Pursuant to section 56 of the 2004 Act, a community interest
                        company may convert itself into a [permitted society] and section 53 of the
                        1965 Act and section 62 of the 1969 Northern Ireland Act apply to community
                        interest companies, modified so that they read as follows—&lt;/text&gt;
                        &lt;/p&gt; ..... &lt;legfragment&gt; &lt;leg:level&gt; &lt;leg:level-vrnt
                        leveltype="article"&gt; &lt;leg:heading&gt; &lt;desig value="53"&gt;
                        &lt;designum&gt;“53&lt;/designum&gt; &lt;/desig&gt; &lt;title&gt;Conversion
                        of company into registered society&lt;/title&gt; &lt;/leg:heading&gt;
                        &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; &lt;/legfragment&gt;
                        &lt;/leg:bodytext&gt; &lt;/leg:levelbody&gt; <b>Becomes</b>
                        &lt;primlaw:bodytext&gt; &lt;primlaw:level&gt; &lt;p&gt;
                        &lt;text&gt;Pursuant to section 56 of the 2004 Act, a community interest
                        company may convert itself into a [permitted society] and section 53 of the
                        1965 Act and section 62 of the 1969 Northern Ireland Act apply to community
                        interest companies, modified so that they read as follows—&lt;/text&gt;
                        &lt;/p&gt; ... &lt;primlaw:excerpt&gt; &lt;primlaw:level&gt; &lt;heading&gt;
                        &lt;desig inline="true"&gt; 53 &lt;/desig&gt; &lt;title&gt;Conversion of
                        company into registered society&lt;/title&gt; &lt;/heading&gt;
                        &lt;/primlaw:level&gt; &lt;/primlaw:excerpt&gt; &lt;/primlaw:level&gt;
                        &lt;/primlaw:bodytext&gt; &lt;/primlaw:bodytext&gt; </codeblock>
                </p>
                <note>If <sourcexml>legfragment</sourcexml> has nested
                        <sourcexml>legfragment</sourcexml> then create
                        <targetxml>primlaw:excerpt</targetxml> inside
                        <targetxml>primlaw:bodytext</targetxml>. For more clarification please refer
                    the below example.</note>
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
                <p>2016-10-21: <ph id="change_20161021_AS">Added instructions for nested
                            <sourcexml>legfragment</sourcexml>.</ph></p>
                <p>2016-09-30: <ph id="change_20160930_AS">Created</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\Rosetta_bodytext-or-pgrp-legfragment-LxAdv-primlaw.bodytext-or-pgrp-primlaw.excerpt.dita  -->

    <xsl:template match="legfragment">

        <!--  Original Target XPath:  regulation:body/primlaw:level/primlaw:bodytext/primlaw:excerpt   -->

        <primlaw:excerpt>
            <primlaw:bodytext>
                <xsl:apply-templates select="@* | node() except (leg:info)"/>
            </primlaw:bodytext>
        </primlaw:excerpt>

    </xsl:template>

</xsl:stylesheet>
