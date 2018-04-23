<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_desig_desiglabel-to-LexisAdvance_desig">
    <title><sourcexml>desig/desiglabel</sourcexml> to <targetxml>desig</targetxml> <lnpid>id-CCCC-10279</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>desig/desiglabel</sourcexml> becomes <targetxml>desig</targetxml>.</p>
            <p>When combining <sourcexml>desiglabel</sourcexml> and <sourcexml>designum</sourcexml>
                the whitespace between should be retained. E.g "Part " and
                "1&amp;nbsp;&amp;nbsp;&amp;nbsp;" <b>becomes</b> "Part
                1&amp;nbsp;&amp;nbsp;&amp;nbsp;".</p></section>
        <section><p><b><u>For UK Streams:</u></b> If source does not have whitespace between, then
                insert single space. If contents of source elements are wrapped in
                    <sourcexml>emph</sourcexml> then space is required at end of label content or
                start of number content; if neither space present, insert single space at end of
                label content.</p></section>
        <note>The element <sourcexml>refpt</sourcexml>should be suppressed </note>

        <example>
            <title>Source XML 1: retain space</title>
            <codeblock>
 
&lt;desig searchtype="PART-NUM"&gt;
    &lt;desiglabel&gt;&lt;refpt type="ext" id="A2008L1_PART_1"/&gt;Part &lt;/desiglabel&gt;
    &lt;designum&gt;1&amp;#160;&amp;#160;&amp;#160;&lt;/designum&gt;
&lt;/desig&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1: retain space</title>
            <codeblock>

&lt;desig&gt;Part 1&amp;#160;&amp;#160;&amp;#160;&lt;/desig&gt;

	</codeblock>
        </example>
        <example>
            <title>Source XML 2: insert space</title>
            <codeblock>
 
&lt;desig&gt;
    &lt;desiglabel&gt;Division&lt;/desiglabel&gt;
    &lt;designum&gt;12&lt;/designum&gt;
&lt;/desig&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 2: insert space</title>
            <codeblock>

&lt;desig&gt;Division 12&lt;/desig&gt;

	</codeblock>
        </example>
        <example>
            <title>Source XML 3: insert space within emph</title>
            <codeblock>
 
&lt;desig&gt;
    &lt;desiglabel&gt;&lt;emph typestyle="bf"&gt;Section&lt;/emph&gt;&lt;/desiglabel&gt;
    &lt;designum&gt;&lt;emph typestyle="bf"&gt;15&lt;emph typestyle="it"&gt;(a)&lt;/emph&gt;&lt;/emph&gt;&lt;/designum&gt;
&lt;/desig&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 3: insert space within emph</title><p>(space inserted at end of emph
                holding label content)</p>
            <codeblock>

&lt;desig&gt;&lt;emph typestyle="bf"&gt;Section &lt;/emph&gt;&lt;emph typestyle="bf"&gt;15&lt;emph typestyle="it"&gt;(a)&lt;/emph&gt;&lt;/emph&gt;&lt;/desig&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-09-19: <ph id="change_20130919_jhm">Added rules to insert space between label
                    and number when none present in source. Rule required for UK content.
                    Immediately known to occur in UK06, UK07, and UK12. R4.5 Post Iterative Testing
                    Issue 431. WebTeam # 236033.</ph></p>
            <p>2013-08-23: <ph id="change_20130823_PY">Removed <targetxml>@value</targetxml> from
                    target example element <targetxml>desig</targetxml>, as it was decided, that if
                    source element doesn't contain <sourcexml>@value</sourcexml> then target element
                        <targetxml>desig</targetxml> will not contain
                    <targetxml>@value</targetxml>.</ph></p>
          <p>2012-08-10: Added a note on the supression of element <sourcexml>refpt</sourcexml> within
                    <sourcexml>desiglabel</sourcexml></p></section>
    </body>
	</dita:topic>


	<xsl:template match="desiglabel">
	
	<xsl:choose>
	    <xsl:when test="parent::desigrange and $streamID='UK06'">
	            <desig>
	                <xsl:apply-templates select="node() except(refpt)"/>
	                <!-- MDS created in HK04 but not applicable until UK06, 07, 12.  Retest with live data. -->
	                <xsl:choose>
	                    <xsl:when test="following-sibling::designum and (not(ends-with(., ' ')) or not(starts-with(following-sibling::designum, ' ')))">
	                        <xsl:text> </xsl:text>
	                    </xsl:when>
	                    <xsl:when test="emph and following-sibling::designum/emph">
	                        <xsl:choose>
	                            <xsl:when test="(not(ends-with(emph, ' ')) or not(starts-with(following-sibling::designum/emph, ' ')))">
	                                <xsl:text> </xsl:text>
	                            </xsl:when>
	                            <xsl:otherwise/>
	                        </xsl:choose>
	                    </xsl:when>
	                    <xsl:otherwise/>
	                </xsl:choose>
	                
	                <!--<xsl:apply-templates select="@* | node()"/>-->
	                <xsl:apply-templates select="following-sibling::designum"/>
	            </desig>
	    </xsl:when>
	    <xsl:otherwise>
	        <xsl:apply-templates select="node() except(refpt)"/>
	        <!-- MDS created in HK04 but not applicable until UK06, 07, 12.  Retest with live data. -->
	        <xsl:choose>
	            <xsl:when test="following-sibling::designum and (not(ends-with(., ' ')) or not(starts-with(following-sibling::designum, ' ')))">
	                <xsl:text> </xsl:text>
	            </xsl:when>
	            <xsl:when test="emph and following-sibling::designum/emph">
	                <xsl:choose>
	                    <xsl:when test="(not(ends-with(emph, ' ')) or not(starts-with(following-sibling::designum/emph, ' ')))">
	                        <xsl:text> </xsl:text>
	                    </xsl:when>
	                    <xsl:otherwise/>
	                </xsl:choose>
	            </xsl:when>
	            <xsl:otherwise/>
	        </xsl:choose>
	        
	    </xsl:otherwise>
	</xsl:choose>
	    
	
	</xsl:template>

</xsl:stylesheet>