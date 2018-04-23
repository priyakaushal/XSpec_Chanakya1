<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_emph">
    <title><sourcexml>emph</sourcexml> to <targetxml>emph</targetxml> <lnpid>id-CCCC-10316</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>emph</sourcexml> becomes <targetxml>emph</targetxml>.
                    <targetxml>@typestyle</targetxml> values are tokenized. These are given below: <ul>
                    <li><targetxml>@typestyle="bf"</targetxml> bold.</li>
                    <li><targetxml>@typestyle="biu"</targetxml> bold, italic and underline.</li>
                    <li><targetxml>@typestyle="bu"</targetxml> bold underline.</li>
                    <li><targetxml>@typestyle="caps"</targetxml> capital characters.</li>
                    <li><targetxml>@typestyle="dbl-un"</targetxml> double underline.</li>
                    <li><targetxml>@typestyle="grayscal"</targetxml> grayscale.</li>
                    <li><targetxml>@typestyle="hi"</targetxml> highlighted.</li>
                    <li><targetxml>@typestyle="ib"</targetxml> italic and bold.</li>
                    <li><targetxml>@typestyle="it"</targetxml> italic.</li>
                    <li><targetxml>@typestyle="iu"</targetxml> italic underline.</li>
                    <li><targetxml>@typestyle="ro"</targetxml> roman.</li>
                    <li><targetxml>@typestyle="smcaps"</targetxml> small caps.</li>
                    <li><targetxml>@typestyle="un"</targetxml> underline.</li>
                    <li><targetxml>@typestyle="inherit"</targetxml> inherit.</li>
                </ul>
            </p>
            <p>Children of <sourcexml>emph</sourcexml> should be processed.</p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;

	</codeblock>
        </example>

        <note>If <targetxml>emph/emph</targetxml> has the same
            <targetxml>@typestyle</targetxml> value then remove one
            <targetxml>emph</targetxml> element.</note>

        <note>
            <p>
                <sourcexml>heading/title/emph</sourcexml> becomes <targetxml>heading/title</targetxml>. That
                is, the <sourcexml>emph</sourcexml> start-tag and end-tag (but not the content) are dropped, and the content 
                becomes part of the target parent <targetxml>title</targetxml> element.</p>
            
            <p><sourcexml>emph/inlineobject</sourcexml> becomes
                <targetxml>figure/ref:inlineobject</targetxml>.</p>
            
            <p><sourcexml>h/emph/inlineobject</sourcexml> becomes
                <targetxml>emph/ref:inlineobject</targetxml>.</p>
            
            <p><sourcexml>sup/emph/emph/inlineobject</sourcexml> becomes
                <targetxml>sup/emph/ref:inlineobject</targetxml>.</p>
        </note>

                
        <example>
            <title>Source XML</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Judgment&lt;/emph&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;
                Judgment
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>
        <example>
            <title>Source XML: For multiple <sourcexml>emph</sourcexml> elements</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="bf"&gt;
                &lt;emph typestyle="bf"&gt;
                Doc. 5.27 - Section 10(&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;b&lt;/emph&gt;&lt;/emph&gt;) &amp;#x2014; Affidavit
                &lt;/emph&gt;
                &lt;/emph&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;Doc. 5.27 - Section 10(b) &amp;#x2014; Affidavit&lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>
        <example>
            <title>Source XML: Showing an <sourcexml>emph</sourcexml> that contains a child element</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="bf"&gt;Non-residential building—(&lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
                &lt;ci:sesslaw&gt;
                &lt;ci:sesslawinfo&gt;
                &lt;ci:sesslawnum num="1994_23a"/&gt;
                &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="schedule" num="8"/&gt;&lt;/ci:hierpinpoint&gt;
                &lt;/ci:sesslawinfo&gt;
                &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
                &lt;/ci:sesslaw&gt;
                &lt;ci:content&gt;VATA 1994, Schedule 8, group 5&lt;/ci:content&gt;&lt;/ci:cite&gt;, note 7A)&lt;/emph&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;Non-residential building—(&lt;lnci:cite searchtype="LEG-REF" status="invalid"&gt;
                &lt;lnci:sesslaw&gt;
                &lt;lnci:sesslawinfo&gt;
                &lt;lnci:sesslawnum num="1994_23a"/&gt;
                &lt;lnci:hierpinpoint&gt;&lt;lnci:hierlev label="schedule" num="8"/&gt;&lt;/lnci:hierpinpoint&gt;
                &lt;/lnci:sesslawinfo&gt;
                &lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;
                &lt;/lnci:sesslaw&gt;
                &lt;lnci:content&gt;VATA 1994, Schedule 8, group 5&lt;/lnci:content&gt;&lt;/lnci:cite&gt;, note 7A)&lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>
        
        <example>
            <title>Source XML: When source is having <sourcexml>emph</sourcexml> and <sourcexml>PCDATA</sourcexml> under <sourcexml>heading/title</sourcexml> than in that case the <sourcexml>emph</sourcexml> element get dropped from target and its content along with the PCDATA will be put directly under <targetxml>title</targetxml> element.</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;
                &lt;emph typestyle="it"&gt;R&lt;/emph&gt;(on the application of Green) v Police Complaints Authority
                &lt;fnr fnrtoken="d30e128" fntoken="d30e1108"&gt;13&lt;/fnr&gt;
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example>     
        
        <example>
            <title>Target XML</title>
            <codeblock>
                
                &lt;heading&gt;
                &lt;title&gt;R (on the application of Green) v Police Complaints Authority
                &lt;footnote-ref anchoridref="d30e128"&gt;
                &lt;ref:anchor id="d30e1108"/&gt;
                &lt;label&gt;13&lt;/label&gt;
                &lt;/footnote-ref&gt;   
                &lt;/title&gt;
                &lt;/heading&gt;
                
            </codeblock>
        </example> 
        <section>
        <p><sourcexml>emph/sub/inlineobject</sourcexml> becomes
            <targetxml>figure/ref:inlineobject</targetxml>.</p>
            </section>
        
        <section>
            <title>Changes</title>
            <p>2015-03-18: <ph id="change_20150318_AK">When <sourcexml>heading\title</sourcexml> contains <sourcexml>emph</sourcexml> and <sourcexml>PCDATA</sourcexml> under it then from target the emph tags will dropped and it's content along with PCDATA content will be put directly under <targetxml>title</targetxml> element . Applicable to UK09 only.</ph></p>
            <p>2014-10-22: <ph id="change_20141022_JCG">Added an example to explicitly show child elements of <sourcexml>emph</sourcexml> being retained. (R4.5 Content Issue List #1998)</ph></p>
            <p>2014-06-04: <ph id="change_20140604_JCG">Clarified instructions and added an example to show multiple <sourcexml>emph</sourcexml> elements being handled.</ph></p>
            <p>2013-02-26: <ph id="change_20130226_SP">Created.</ph></p>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-04-01: <ph id="change_20160401_emph_MCJ_1">Added statement to clarify that children of emph should be processed.</ph></p>
            <p>2013-01-08: <ph id="change_20130108_xxx">Added note for handling
                <targetxml>emph/emph</targetxml> has the same
                <targetxml>@typestyle</targetxml> value.</ph></p>
            <p>2012-02-28: <ph id="change_20120228_xxx">Added instructions for handling of
                <sourcexml>case:judges/emph/@typestyle="smcaps"</sourcexml>.</ph></p>
            <p>2011-12-15: <ph id="change_20111215_xxx">Created.</ph></p>
        </section>
        
    </body>
	</dita:topic>



                <xsl:template match="emph" name="emph-generic">
                    <xsl:choose>
                        <!-- pass through when parent is title with heading parent or parent is emph with parent title with parent title-->
                        <xsl:when test="(child::copyright and parent::disclaimer and $streamID='UK11DA')">
                            <xsl:element name="emph">
                                <xsl:copy-of select="@typestyle"/>
                                <xsl:apply-templates select="@*|node() except copyright"/>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="parent::title/parent::heading[$streamID='UK07']">
                            <xsl:element name="emph" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:copy-of select="@typestyle"/>
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:when>
                        <!-- 2016-10-24 - MDS: Pass through when child outputting as URL in UK11DA -->
                        <xsl:when test="parent::remotelink[$streamID='UK11DA']">
                            <xsl:apply-templates select="node()"/>
                        </xsl:when>
                    	
                    		<!-- JD: excluding the dropping of <emph> within title for streams to match DT output.  
                    			There is no instruction to remove <emph> from <title> in 
                    		 emph to emph (id-CCCC-10316)
                    		 title to title (id-CCCC-10479)
                    		-->
                        <xsl:when test="$streamID=('AU11','NZ06','NZ08','NZ18','NZ11','NZ13','AU14') and (parent::title/parent::heading
                    		|parent::emph/parent::title/parent::heading
                    		| parent::title/parent::leg:heading
                    		|parent::emph/parent::title/parent::leg:heading) and (not(preceding-sibling::text()) or not(following-sibling::text()))
                    		">
                    		<!-- not in CI, but match DT output: when parent emph is same, merge -->
                    		<xsl:choose>
                    			<!-- pass through when there is a parent emph with the same @typestyle -->
                    			<xsl:when test="@typestyle=parent::emph/@typestyle">
                    				<xsl:apply-templates/>
                    			</xsl:when>
                    			<xsl:otherwise>
                    				<xsl:element name="emph" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    					<xsl:copy-of select="@typestyle"/>
                    					<xsl:apply-templates/>
                    				</xsl:element>
                    			</xsl:otherwise>
                    		</xsl:choose>
                    	</xsl:when>
                    	
                        <xsl:when test="(parent::title/parent::heading
                            |parent::emph/parent::title/parent::heading
                            | parent::title/parent::leg:heading
                            |parent::emph/parent::title/parent::leg:heading) and (not(preceding-sibling::text()) or not(following-sibling::text()))
                            ">
                            <xsl:apply-templates/>
                        </xsl:when>
                        <!--skip over emphasis if only refpt at child -->
                        <xsl:when test="refpt and not(normalize-space(string-join(text(), '')))[$streamID!='CA10']">
                            <!-- suppress -->
                        </xsl:when>
                        <xsl:when test="refpt and parent::h[$streamID='CA10']">
                            <xsl:element name="emph">
                                <xsl:copy-of select="@typestyle"/>
                            <xsl:for-each select="node()">
                                <!-- there's no target for refpt here, strip it out but leave the txt content 
                                JL 20180212 Webstar 7113097 -->
                                <xsl:choose>
                                    <xsl:when test="self::refpt">
                                        <xsl:apply-templates select="text()"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="."/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="@typestyle=parent::emph/@typestyle">
                            <!-- pass through when there is a parent emph with the same @typestyle -->
                            <xsl:apply-templates/>
                        </xsl:when>
                        <xsl:when test="child::inlineobject and not(parent::h) and $streamID='AU08'">
                                <xsl:apply-templates/>
                        </xsl:when>
                        <!-- The handling for AU06 could be shareable but keeping as stream-specific until we have more testing. -->
                    		<!-- JD: 2017-07-19: tested with UK01 too (added); this appears to be working properly.  
                    			Note that the following 'when' drops text() that should be emphasized -->
                    		
                        <xsl:when test="child::inlineobject and not(parent::h) and ($streamID=('AU06','AU04','UK01','HK02'))">
                            <!-- this attempts to allow the emphasis markup to be retained around some output but not around others. --> 
                            <!-- keep current emph node to get to later. -->
                            <xsl:variable name="me" select="." />
                            <xsl:for-each-group select="node()" group-adjacent="if (self::inlineobject) then 0 else 1">
                                <xsl:choose>
                                    <!-- anything here is not kept within emphasis. -->
                                    <xsl:when test="current-grouping-key()=0">
                                        <xsl:apply-templates select="current-group()"/>
                                    </xsl:when>
                                    <!-- the otherwise condition allows the retention of the emphasis markup. -->
                                    <xsl:otherwise>
                                        <emph xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                            <!-- build @typestyle using the input node's @typestyle. -->
                                            <xsl:copy-of select="$me/@typestyle" />
                                            <xsl:apply-templates select="current-group()"/>
                                        </emph>		        
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each-group>
                        </xsl:when>
                    		<!-- JD: Note that this template will drop any text() appearing in emph, as in "Declared takings (F)"  
                    		<emph typestyle="bf">Declared takings (F) 
                    		   <inlineobject type="image" mimetype="image/gif" filename="VATC_19761_1.gif"/>
                    	  </emph>
                    		-->
                        <xsl:when test="child::inlineobject and not(parent::h) and not ($streamID='UK09')"> <!-- AS: for emph/inlineobject in DT GDS it's emph/ref:inlineobject but in CI it's figure/ref:inlineobeject -->
                            <xsl:element name="figure" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates/>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="child::sub/child::inlineobject">
                            <xsl:apply-templates/>
                        </xsl:when>
                        <xsl:when test="ancestor::ci:content[$streamID='CA02DS']">
                        <xsl:apply-templates/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="emph" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:copy-of select="@typestyle"/>
                                <xsl:apply-templates select="child::node() except child::refpt[ancestor::h][$streamID='AU04']"/>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:template>
            
            <!--suppress to get rid of errors as @typestyle already handled. JL -->
            <xsl:template match="emph/@typestyle"/>
</xsl:stylesheet>