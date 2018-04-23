<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
    
    version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_Rosetta_blockquote-to-LexisAdvance_blockquote">
    <title><sourcexml>blockquote</sourcexml> to <targetxml>blockquote</targetxml> <lnpid>id-CCCC-10247</lnpid></title>
    <body>
        <section>
            <title>Instructions</title>
            <note>This topic is used in numerous conversion instructions for several LBUs. It is a
                shared topic rather than duplicated to ensure consistency and accuracy. The xml
                snippets contained in this topic reflect markup needed for the Apollo image handling
                application. The UK is the first LBU to move from Apollo to the Blobstore
                application for image handling. Therefore, if this is a UK conversion instruction
                document, please refer to the following topics for correct image handling markup.<ul>
                    <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                        images (id-CCCC-10542)</li>
                    <li><sourcexml>inlineobject</sourcexml> to
                        <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
                        (id-CCCC-10540)</li>
                    <li><sourcexml>link[@filename]</sourcexml> to
                        <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
                        images (id-CCCC-10541)</li>
                </ul></note>
            <p><b>Please note that the conversion of <sourcexml>blockquote</sourcexml> must follow specific rules based on its location in the source document.</b>
                These context sensitive aspects are not all discussed in detail in the general instructions given here. 
                Please see the specific document type instructions for more information regarding the context sensitive conversion details of this element. 
                If there is any contradiction between these general instructions and the document type specific instructions, the specific instructions should be given precedence.
            </p>
            <p>In general, <sourcexml>blockquote</sourcexml> becomes <targetxml>blockquote</targetxml>.</p>
            
            <p>If <sourcexml>figure</sourcexml> or <sourcexml>legfragment</sourcexml> occur within
                <sourcexml>blockquote</sourcexml> then drop <sourcexml>blockquote</sourcexml>
                element.</p>
            
            <p><b>If <sourcexml>insert-line</sourcexml> occurs as the only child within <sourcexml>blockquote</sourcexml> 
                then drop outer <sourcexml>blockquote</sourcexml> in NewLexis conversion.</b></p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;blockquote&gt;
  &lt;p&gt;
	&lt;text&gt;
	  &lt;emph typestyle="it"&gt;Ordinary Resolution&lt;/emph&gt;
	&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
	&lt;text&gt;
	  &lt;emph typestyle="it"&gt;Approval of new issue of Securities&lt;/emph&gt;
	&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
	&lt;text&gt;To consider, and if thought fit, pass with or without amendment, the following resolution as an ordinary resolution:&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
	&lt;blockquote&gt;
	  &lt;p&gt;
		&lt;text&gt;&amp;#x201c;That for the purposes of ASX Listing Rule 7.1 and for all other purposes, the Company approves and agrees to the issue of 35,000,000 ordinary fully paid shares in the capital of the Company to Greater Pacific Gold Limited as consideration for the variation of the Joint Venture Agreement entered into between the Company and Greater Pacific Gold Limited on the terms and conditions set out in the Explanatory Statement accompanying this Notice of Meeting.&amp;#x201d;
		&lt;/text&gt;
	  &lt;/p&gt;
	&lt;/blockquote&gt;
  &lt;/p&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;blockquote&gt;
  &lt;p&gt;
	&lt;text&gt;
	  &lt;emph typestyle="it"&gt;Ordinary Resolution&lt;/emph&gt;
	&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
	&lt;text&gt;
	  &lt;emph typestyle="it"&gt;Approval of new issue of Securities&lt;/emph&gt;
	&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
	&lt;text&gt;To consider, and if thought fit, pass with or without amendment, the following resolution as an ordinary resolution:&lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
	&lt;blockquote&gt;
	  &lt;p&gt;
		&lt;text&gt;&amp;#x201c;That for the purposes of ASX Listing Rule 7.1 and for all other purposes, the Company approves and agrees to the issue of 35,000,000 ordinary fully paid shares in the capital of the Company to Greater Pacific Gold Limited as consideration for the variation of the Joint Venture Agreement entered into between the Company and Greater Pacific Gold Limited on the terms and conditions set out in the Explanatory Statement accompanying this Notice of Meeting.&amp;#x201d;
		&lt;/text&gt;
	  &lt;/p&gt;
	&lt;/blockquote&gt;
  &lt;/p&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>
        
        <p>If source document having "2" or more <sourcexml>blockquote</sourcexml> elements in sibling,
            then convert all <sourcexml>blockquote</sourcexml> into only one
            <targetxml>blockquote</targetxml> element in NL conversion.</p>
        
        <example>
            <title>Source XML</title>
            <codeblock>
            
            &lt;blockquote&gt;
            &lt;p&gt;&lt;text&gt;[24] Showing the jury what the appellant looked like when wearing the balaclava and overalls that were in evidence (with or without the addition of sunglasses that had not been received in evidence) could not &amp;ldquo;rationally affect (directly or indirectly) the assessment of the probability of the existence of a fact in issue in the proceeding&amp;rdquo;. &lt;fnr fnrtoken="ABCE.ACE.1002.ANT15-R" fntoken="ABCE.ACE.1002.ANT15"&gt;15&lt;/fnr&gt; The central issue at the appellant&amp;rsquo;s trial was whether he was the robber. There was no dispute that there had been a robbery. There was no dispute that the robber had been wearing a balaclava, overalls and sunglasses.&lt;/text&gt;&lt;/p&gt;
            &lt;/blockquote&gt;
            &lt;blockquote&gt;
            &lt;p&gt;&lt;text&gt;[25] No one asserted, however, that the person wearing the disguise of balaclava, overalls and sunglasses could be identified by looking at that person during the robbery or could be identified by looking at the security photographs. None of the witnesses, not even the witness who had seen the robber without the balaclava pulled down over his face, said that they could recognise the man who was thus attired. None of the witnesses, and neither trial counsel, asserted that the person depicted in the security photographs could be identified.&lt;/text&gt;&lt;/p&gt;
            &lt;/blockquote&gt;
            &lt;blockquote&gt;
            &lt;p&gt;&lt;text&gt;[26] Looking at the appellant wearing the balaclava and overalls (with or without sunglasses) enabled a comparison between no more than the items he put on and what was depicted in the security photographs. But that comparison could be drawn without the appellant being asked to put them on. Dressing the appellant in the items provided no information to the jury that could rationally affect, directly or indirectly, the determination of any fact in issue because it revealed nothing about the wearer and nothing about the appellant that was not already apparent to the jury observing him in the dock.&lt;/text&gt;&lt;/p&gt;
            &lt;/blockquote&gt;
        </codeblock>
        </example>
        
        <example>
            <title>Source XML</title>
            <codeblock>
            
            &lt;blockquote&gt;
            &lt;p&gt;&lt;text&gt;&amp;#x005B;24&amp;#x005D; Showing the jury what the appellant looked like when wearing the balaclava and overalls that were in evidence &amp;#x0028;with or without the addition of sunglasses that had not been received in evidence&amp;#x0029; could not &amp;#x201C;rationally affect &amp;#x0028;directly or indirectly&amp;#x0029; the assessment of the probability of the existence of a fact in issue in the proceeding&amp;#x201D;. &lt;footnote/&gt; The central issue at the appellant&amp;#x2019;s trial was whether he was the robber. There was no dispute that there had been a robbery. There was no dispute that the robber had been wearing a balaclava, overalls and sunglasses.&lt;/text&gt;&lt;/p&gt;
            &lt;p&gt;&lt;text&gt;&amp;#x005B;25&amp;#x005D; No one asserted, however, that the person wearing the disguise of balaclava, overalls and sunglasses could be identified by looking at that person during the robbery or could be identified by looking at the security photographs. None of the witnesses, not even the witness who had seen the robber without the balaclava pulled down over his face, said that they could recognise the man who was thus attired. None of the witnesses, and neither trial counsel, asserted that the person depicted in the security photographs could be identified.&lt;/text&gt;&lt;/p&gt;
            &lt;p&gt;&lt;text&gt;&amp;#x005B;26&amp;#x005D; Looking at the appellant wearing the balaclava and overalls &amp;#x0028;with or without sunglasses&amp;#x0029; enabled a comparison between no more than the items he put on and what was depicted in the security photographs. But that comparison could be drawn without the appellant being asked to put them on. Dressing the appellant in the items provided no information to the jury that could rationally affect, directly or indirectly, the determination of any fact in issue because it revealed nothing about the wearer and nothing about the appellant that was not already apparent to the jury observing him in the dock.&lt;/text&gt;&lt;/p&gt;
            &lt;/blockquote&gt;
        </codeblock>
        </example>
        
        <example>
            <title>Source XML where blockquote contains a figure</title>
            <codeblock>

&lt;blockquote&gt;
    &lt;figure&gt;
        &lt;glp:note&gt;
            &lt;h&gt;(MAB PROGRAMME STRUCTURE)&lt;/h&gt;
        &lt;/glp:note&gt;
        &lt;inlineobject type="image" attachment="ln-server" filename="pbep-g00121.gif"/&gt;
    &lt;/figure&gt;
&lt;/blockquote&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML where blockquote contains a figure</title>
            <codeblock>

&lt;figure&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;h&gt;(MAB PROGRAMME STRUCTURE)&lt;/h&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;ref:inlineobject&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="object-key"/&gt;
                &lt;ref:key-value value="X-Y-pbep-g00121"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
                &lt;proc:param name="componentseq" value="1"/&gt;
                &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
&lt;/figure&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-07-29: <ph id="change_20160729_csn">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore. VSTS 76146</ph></p>
            <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
                <b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
                <b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
                similar conversion markup.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
            <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
            <p>2013-02-18: Updated target example where <b>blockquote contains a figure</b>. </p>
            <p>2013-02-18: Removed CR number LBAM2011121607211100. </p>
            <p>2012-10-26: Updated ref:locator markup in Target sample. </p>
            <p>2011-09-12: Created.</p>
            
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_blockquote-LxAdv-blockquote.dita  -->
	
<!-- JL: refactored :
        1. if legfragment will end up being a child of bodytext if we strip away the paragraph and/or blockquote wrapper, we strip the 
        blockquote wrapper. This leads to an extensive list of potential input parents in the first condition.  PLEASE NOTE: this 
        condition works together with the generic Rosetta_p-LxAdv-p.xsl module.
        
        2. If blockquote has certain other children, such as figure, we remove the blockquote wrapper for those children.
        
        3. If blockquote doesn't meet conditions 1 and 2 above, and if it has adjacent sibling blockquotes that also don't meet the conditions 1 and 2 above, that 
        blockquote and its siblings are merged into one blockquote element.
        
    -->


    <!-- REFACTORED AGAIN!!!!!!
        ANY CONDITION OF COMPLEXITY SHOULD PREVENT MERGE.
        THESE CONDITIONS PREVENT MERGE:
        	    1. legfragment conditions - this is the case where there is no merge and the blockquote wrapper is dropped
        	    2. child bump-ups - this is the case some children become siblings of blockquote and blockquote wrappers
        	    will open and close as necessary until all children  are output properly
        	    3. blockquote is empty - nothing will be output and nothing will be merged
        	    4. blockquote will be wrapped in other elements such as bodytext.
        	    5. any other specific conditions that will make merging difficult or impossible.
        	    
        	    THESE CONDITIONS CAUSE A  MERGE to start:
        	    current blockquote does not have a prevent-merge condition
        	    first preceding sibling is not a blockquote with a merge condition
        	    
        	    THESE CONDITIONS CAUSE A MERGE TO continue on
        	     current blockquote does not have a prevent-merge condition
        	     first following sibling is a blockquote that does not have a prevent-merge condition.
        	     
        	    THESE CONDITIONS CAUSE A MERGE TO stop
        	    current blockquote does not have a prevent-merge condition
        	    first following sibling is not a blockquote with a merge condition.
        	    
        	    IF YOU ADD A NEW CONDITION TO PREVENT MERGE to this template: 
        	    make sure to add an xsl:when with the condition at the annotated place
        	    with the desired non-merged output; also add the condition as an xsl:when to 
        	    the named 'doImeetMergeConditions' template with the value 'false'.
        	    
        	    -->
    
    <xsl:template match="blockquote">
        <xsl:variable name="currentMergeConditions">
            <xsl:call-template name="doImeetMergeConditions"/>
        </xsl:variable>
        <xsl:variable name="precedingSibMergeConditions">
            <xsl:choose>
                <xsl:when test="not(preceding-sibling::*[1])">false</xsl:when>
                <xsl:otherwise>
                    <xsl:for-each select="preceding-sibling::*[1]">
                        <xsl:call-template name="doImeetMergeConditions"/>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:variable>
        <xsl:variable name="followingingSibMergeConditions">
            <xsl:choose>
                <xsl:when test="not(following-sibling::*[1])">false</xsl:when>
                <xsl:otherwise>
                    <xsl:for-each select="following-sibling::*[1]">
                        <xsl:call-template name="doImeetMergeConditions"/>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:variable>
        <xsl:choose>
            <!-- THIS IS A PREVENT-MERGE CONDITION -->
	        	<!-- JD: 2017-07-21: added trap for empty node to match DT output. (suppress <blockquote/> from output  -->
	        	<xsl:when test="not(node())"/>  
            <!-- Vikas Rohilla : 2017-08-09 added parent is case:factsummary            -->
            <xsl:when test="legfragment and not(child::*[2]) and (parent::p[parent::*:bodytext or parent::pgrp or parent::li or parent::fnbody or parent::glp:note or parent::case:judgmentbody or parent::case:appendix] or parent::*:bodytext or parent::li or parent::pgrp or parent::fnbody or parent::glp:note or parent::case:judgmentbody or parent::case:appendix or parent::case:factsummary)">
                <!-- THIS IS A PREVENT-MERGE CONDITION -->
                <xsl:apply-templates/>
            </xsl:when>
            <!--<xsl:when test="ancestor::frm:divs[$streamID='UK12']">
                <xsl:apply-templates select="node()"/>
            </xsl:when>-->
            <xsl:when test="parent::case:decisionsummary and $streamID='UK03'">
                <!-- THIS IS A PREVENT-MERGE CONDITION -->
                <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <blockquote>
                        <xsl:apply-templates select="node()"/>
                    </blockquote>
                </bodytext>
            </xsl:when>
            <xsl:when test="$streamID='AU09' and parent::case:decisionsummary and child::case:embeddedcase/child::case:content">
                <!-- THIS IS A PREVENT-MERGE CONDITION -->
                <xsl:apply-templates select="@* | node()"/>
            </xsl:when>
            <xsl:when test="figure or (insert-line and not(child::*[2]))
                or (parent::glp:note and descendant::inlineobject[@filename = 'leg1.gif' or @filename = 'leg1.png'])">
                <!-- THIS IS A PREVENT-MERGE CONDITION -->
                <!-- do not group because it introduces too much complexity. These are your normal bump-ups.
                -->
                <xsl:for-each-group select="*" group-adjacent="if (self::figure or (self::insert-line and not(parent::blockquote/child::*[2]))
                    or (parent::blockquote[parent::glp:note] and descendant-or-self::inlineobject[@filename = 'leg1.gif' or @filename = 'leg1.png'])) then
                    0
                    else
                    1">
                    <xsl:choose>
                        <xsl:when test="current-grouping-key()=0">
                            <xsl:apply-templates select="current-group()"/>
                        </xsl:when>
                        <xsl:otherwise>                            
                            <blockquote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates select="current-group()"/>
                            </blockquote>
                        </xsl:otherwise>
                    </xsl:choose>              
                </xsl:for-each-group>               
            </xsl:when>
           <!-- IF YOU HAVE ANY OTHER CONDITION REQUIRING SPECIAL HANDLING AND OPTING OUT OF THE MERGE, ADD IT HERE
           AND IN THE  NAMED 'doImeetMergeConditions' TEMPLATE BELOW.  ASSIGN IT THE VALUE 'false' IN THAT NAMED TEMPLATE.-->
           
            <!-- THE FOLLOWING CONDITION IS A CONDITION THAT ALLOWS MERGE TO START
            IT MUST EXCLUDE ALL PREVENT-MERGE CONDITIONS - this can be done by placing prevent-merge conditions first
            IT MUST SPECIFICALLY INCLUDE ALL START-MERGE CONDITIONS 
            -->
            <xsl:when test="$currentMergeConditions='true' and $precedingSibMergeConditions='false'">
                <!-- this is a simple blockquote and  can be the start of a group  as long as all the simple blockquotes are consecutive-->
                <blockquote
                    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates/>
                    <xsl:if test="$followingingSibMergeConditions='true'">
                        <xsl:apply-templates select="following-sibling::*[1][self::blockquote]" mode="next"/>
                    </xsl:if>
                </blockquote>
                
            </xsl:when>
            <xsl:when test="$precedingSibMergeConditions='true' and $currentMergeConditions='true'">
                <!-- this becomes part of the merge so we don't want to hit it twice -->       
            </xsl:when>
            <xsl:otherwise>
                <blockquote
                    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates/>
                </blockquote>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
   
    <xsl:template match="blockquote" mode="next">
<!-- we do not need to test for current merge conditions because we have already tested for it in the condition where the template is called  -->        
        <xsl:variable name="followingingSibMergeConditions">
            <xsl:choose>
                <xsl:when test="not(following-sibling::*[1])">false</xsl:when>
                <xsl:otherwise>
                    <xsl:for-each select="following-sibling::*[1]">
                        <xsl:call-template name="doImeetMergeConditions"/>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:variable>
        <xsl:apply-templates/>
        <xsl:if test="$followingingSibMergeConditions='true'">
            <xsl:apply-templates select="following-sibling::*[1][self::blockquote]" mode="next"/>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template name="doImeetMergeConditions">
        <!-- NOTE IF YOU ADD A NEW CONDITION TO THE NON-MERGE CONDITIONS ABOVE YOU NEED TO ADD IT HERE TOO! -->
        <xsl:choose>
            <xsl:when test="not(self::blockquote)">false</xsl:when>
            <xsl:when test="not(node())">false</xsl:when>            
            <xsl:when test="legfragment and not(child::*[2]) and 
                (parent::p[parent::*:bodytext or parent::pgrp or parent::li or parent::fnbody or parent::glp:note or parent::case:judgmentbody 
                or parent::case:appendix] or parent::*:bodytext or parent::li or parent::pgrp or parent::fnbody or parent::glp:note or 
                parent::case:judgmentbody or parent::case:appendix)">false</xsl:when>
            <xsl:when test="parent::case:decisionsummary and $streamID='UK03'">false</xsl:when>
            <xsl:when test="$streamID='AU09' and parent::case:decisionsummary and child::case:embeddedcase/child::case:content">false</xsl:when>
            <xsl:when test="figure or (insert-line and not(child::*[2]))
                or (parent::glp:note and descendant::inlineobject[@filename = 'leg1.gif' or @filename = 'leg1.png'])">false</xsl:when>
            <xsl:otherwise>true</xsl:otherwise>            
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>