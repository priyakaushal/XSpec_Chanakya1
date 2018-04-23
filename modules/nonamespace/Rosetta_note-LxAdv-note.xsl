<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_note-LxAdv-note">
    <title><sourcexml>note</sourcexml> to <targetxml>note</targetxml> <lnpid>id-CCCC-10405</lnpid></title>
    <body>
        <section>
            <p><sourcexml>note</sourcexml> becomes <targetxml>note</targetxml> and the attribute
                    <sourcexml>@notetype</sourcexml> becomes <targetxml>@notetype</targetxml>. The
                children of <sourcexml>note</sourcexml> are handled as follows: <ul>
                    <li><sourcexml>note/heading</sourcexml> becomes
                            <targetxml>note/heading</targetxml>.</li>
                    <li><sourcexml>note/refpt</sourcexml> becomes
                            <targetxml>note/ref:anchor</targetxml>.</li>
                    <li><p>Other children of <sourcexml>note</sourcexml> should map to children of
                                <targetxml>note/bodytext</targetxml>.</p>
                        <p>Ex.</p>
                        <ul>
                            <li><sourcexml>note/p</sourcexml> becomes
                                    <targetxml>note/bodytext/p</targetxml>.</li>
                            <li><sourcexml>note/pgrp</sourcexml> becomes
                                    <targetxml>note/bodytext/pgrp</targetxml>.</li>
                            <li><sourcexml>note/table</sourcexml> becomes
                                    <targetxml>note/bodytext/table</targetxml>.</li>
                            <li><sourcexml>note/h</sourcexml> becomes
                                    <targetxml>note/bodytext/h</targetxml>.</li>
                            <li><sourcexml>note/blockquote</sourcexml> becomes
                                    <targetxml>note/bodytext/blockquote</targetxml>.</li>
                            <li><sourcexml>note/l</sourcexml> becomes
                                    <targetxml>note/bodytext/list</targetxml>.</li>
                            <li><sourcexml>note/note</sourcexml> becomes
                                    <targetxml>note/bodytext/note</targetxml>.</li>
                            <li><sourcexml>note/footnotegrp</sourcexml> becomes
                                    <targetxml>note/bodytext/p/text/footnotegrp</targetxml>.</li>
                            <li><sourcexml>note/legfragment</sourcexml> becomes
                                    <targetxml>note/bodytext/primlaw:excerpt</targetxml>.</li>
                        </ul>
                    </li>
                </ul>
                <note><b>Specific for HK02</b>: When input having x-path <sourcexml>entry/note/table</sourcexml> then it should be mapped with in target <targetxml>entry/p/text/marginnote/bodytext/table/tgroup</targetxml>.</note>
            </p>
            
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;note notetype="commentary"&gt;
    &lt;h&gt;
        &lt;emph typestyle="bf"&gt;Notes&lt;/emph&gt;
    &lt;/h&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;In this case the interesting question whether these records of
                starting prices were the proper subject of copyright, which had been
                decided in the negative by Eve J in the court below, has been left
                undecided and is only incidentally and quite inconclusively touched upon
                in the judgment of Lord Wright MR. In the Court of Appeal the only
                question decided is whether the court could properly be asked to
                exercise its discretion and make a declaratory judgment. As is
                well-known, the court is slow to exercise its discretion in regard to
                future or reversionary rights, and here there was the added difficulty
                that the documents, the copyright of which was in question, were not yet
                in existence. In these circumstances, the court felt quite unable to
                make any declaration, and in the judgment of Lord Wright MR, will be
                found a statement of the conditions under which such a declaration can
                be made. The judgment was fully concurred in by the other members of the
                Court.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/note&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;note notetype="commentary"&gt;
    &lt;bodytext&gt;
        &lt;h&gt;
            &lt;emph typestyle="bf"&gt;Notes&lt;/emph&gt;
        &lt;/h&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;In this case the interesting question whether these records of
                    starting prices were the proper subject of copyright, which had been
                    decided in the negative by Eve J in the court below, has been left
                    undecided and is only incidentally and quite inconclusively touched upon
                    in the judgment of Lord Wright MR. In the Court of Appeal the only
                    question decided is whether the court could properly be asked to
                    exercise its discretion and make a declaratory judgment. As is
                    well-known, the court is slow to exercise its discretion in regard to
                    future or reversionary rights, and here there was the added difficulty
                    that the documents, the copyright of which was in question, were not yet
                    in existence. In these circumstances, the court felt quite unable to
                    make any declaration, and in the judgment of Lord Wright MR, will be
                    found a statement of the conditions under which such a declaration can
                    be made. The judgment was fully concurred in by the other members of the
                    Court.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;

    </codeblock>
        </example>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;level leveltype="division"&gt;
 &lt;note notetype="advice"&gt;
  &lt;p&gt;&lt;text&gt;The Financial Services Authority invites comments on this Consultation Paper. Comments should reach us by 1 February 2013.&lt;/text&gt;&lt;/p&gt;
  &lt;!-- ETC. --&gt;
 &lt;/note&gt;
 &lt;!-- ETC. --&gt;
 &lt;heading&gt;
  &lt;title&gt;&lt;emph typestyle="caps"&gt;&lt;emph typestyle="bf"&gt;CP12/32 Financial Services Authority Implementation of the Alternative Investment Fund Managers Directive Part 1&lt;/emph&gt;&lt;/emph&gt;&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/level&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;admindoc:level leveltype="division"&gt;
 &lt;heading&gt;
  &lt;title&gt;CP12/32 Financial Services Authority Implementation of the Alternative Investment Fund Managers Directive Part 1&lt;/title&gt;
 &lt;/heading&gt;
 &lt;note notetype="advice"&gt;
  &lt;bodytext&gt;
   &lt;p&gt;&lt;text&gt;The Financial Services Authority invites comments on this Consultation Paper. Comments should reach us by 1 February 2013.&lt;/text&gt;&lt;/p&gt;
   &lt;!-- ETC. --&gt;
  &lt;/bodytext&gt;
 &lt;/note&gt;
 &lt;!-- ETC. --&gt;
 &lt;heading&gt;
  &lt;title&gt;CP12/32 Financial Services Authority Implementation of the Alternative Investment Fund Managers Directive Part 1&lt;/title&gt;
 &lt;/heading&gt;
 &lt;!-- ETC. --&gt;
&lt;/admindoc:level&gt;              

            </codeblock>
        </example>
        <example>
            <title>Source XML: LPA Practice Tip <sourcexml>note[@notetype="practice-tip"]</sourcexml>)</title>
            <codeblock>
                
&lt;note notetype="practice-tip"&gt;
	&lt;heading&gt;
		&lt;title&gt;Practice Tip&lt;/title&gt;
	&lt;/heading&gt;
	&lt;p&gt;
		&lt;text&gt;Counsel should pay particular attention to the statutory provisions on voting to ensure that, if a change therefrom is desired, the appropriate protocols are established in the operating agreement. The operating agreement may provide that a higher number or percentage of votes for the taking of any particular action is required, or may provide different consent levels for different actions, or may even provide that certain interests or classes get no vote. The operating agreement may also set forth the procedures for voting, such as provisions relating to notice of the time, place or purpose of any meeting at which any matter is to be voted on by any members or managers, waiver of notice, action by consent without a meeting, the establishment of a record date, quorum requirements, voting in person or by proxy or any other matter related to the exercise of the right to vote. There are many important issues to consider in establishing voting rights. In determining the appropriate level of consent for specific actions/amendments of the operating agreement, consider how best to strike an appropriate balance between (1) avoiding unfairness or excessive bias against a minority member by requiring a large enough approval; and (2) ensuring that the agreement is sufficiently flexible to be practical. To accord the varying degree of protection needed, or concert achieved, it may be desirable to require a higher percentage or even a unanimous vote for certain types of voting issues or certain amendments, e.g., sale of all/substantially all assets; merger; dissolution; bankruptcy; incurrence of significant debt; reorganization/recapitalization. Also consider deadlock issues--to avoid dissolution as a defaulting remedy, the operating agreement should include exit provisions including the economic ramifications thereof. Any exit provision should require the departing member's interest to be completely separated from the LLC (mandatory purchase provisions; covenant not to compete; admission of new members).&lt;/text&gt;
	&lt;/p&gt;
&lt;/note&gt;

            </codeblock>
            <title>Target XML: LPA Practice Tip <targetxml>note[@notetype="practice-tip"]</targetxml>)</title>
            <codeblock>

&lt;note notetype="practice-tip"&gt;
	&lt;heading&gt;
		&lt;title&gt;Practice Tip&lt;/title&gt;
	&lt;/heading&gt;
	&lt;bodytext&gt;
		&lt;p&gt;
			&lt;text&gt;Individual states may permit variations of the liability protection afforded to members and managers. For example, Pennsylvania permits the certificate of organization to expand the liability of the members, by providing that some or all of the members shall be liable for some or all of the debts, obligations and liabilities of the company to the extent described in the certificate.&lt;/text&gt;
		&lt;/p&gt;
	&lt;/bodytext&gt;
&lt;/note&gt;

            </codeblock>
        </example>
        
        
        <section>
            <title>Changes</title>
            <p>2017-11-23: <ph id="change_20171123_SS">Only for HK02: Added handling of Xpath <sourcexml>entry/note/table</sourcexml> becomes <targetxml>entry/p/text/marginnote/bodytext/table</targetxml> [Webstar #7054920].</ph></p>
            <p>2017-02-07: <ph id="change_20170207_snb">LPA 2016 enhancements: Added this mapping instruction to 
                LPA conversion instruction document, and added an example of a practice tip note 
                (<sourcexml>note[@notetype="practice-tip"]</sourcexml>).</ph></p>
            <p>2016-10-12: <ph id="change_20161012_HP">Added instruction for handling input scenario <sourcexml>note/legfragment</sourcexml>.
                </ph></p>
            <p>2013-06-12: <ph id="change_20130612_ab">Remove note for CR "DACH2013041605253700" to
                allow element <targetxml>note</targetxml> before element
                <targetxml>heading</targetxml> within
                <targetxml>admindoc:level</targetxml></ph></p>
            <p>2013-03-25: <ph id="change_20130325_ab">Created.</ph></p>
            
        </section>
    </body>
	</dita:topic>

	<xsl:template match="note">
	    <xsl:choose>
	        <xsl:when test="$streamID='HK02' and parent::entry and child::table">
	            <p>
	                <text>
	                <marginnote>
	                    <xsl:choose>
	                        <xsl:when test="child::refpt">
	                            <xsl:apply-templates select="refpt"/>   
	                        </xsl:when>
	                    <xsl:otherwise>
	                        <xsl:element name="ref:anchor">
	                            <xsl:attribute name="id">
	                                <xsl:value-of select="generate-id()"/>
	                            </xsl:attribute>
	                        </xsl:element>   
	                    </xsl:otherwise>
	                    </xsl:choose>
	                    <xsl:apply-templates select="@* | heading"/>
	                        <xsl:if test="node() except (heading, refpt)">
	                            <bodytext>
	                                <xsl:apply-templates select="node() except (heading, refpt)"/>
	                            </bodytext>
	                        </xsl:if>
	                </marginnote>
	                </text>
	            </p>
	        </xsl:when>
			<!-- Awantika Singh-2017-11-28: Added condition for HK02 where parent is text and child is table.Webstar# 7054920 -->
	        <xsl:when test="$streamID='HK02' and parent::text and child::table">
	            
	                    <marginnote>
	                        <xsl:choose>
	                            <xsl:when test="child::refpt">
	                                <xsl:apply-templates select="refpt"/>   
	                            </xsl:when>
	                            <xsl:otherwise>
	                                <xsl:element name="ref:anchor">
	                                    <xsl:attribute name="id">
	                                        <xsl:value-of select="generate-id()"/>
	                                    </xsl:attribute>
	                                </xsl:element>   
	                            </xsl:otherwise>
	                        </xsl:choose>
	                        <xsl:apply-templates select="@* | heading"/>
	                        <xsl:if test="node() except (heading, refpt)">
	                            <bodytext>
	                                <xsl:apply-templates select="node() except (heading, refpt)"/>
	                            </bodytext>
	                        </xsl:if>
	                    </marginnote>
	        </xsl:when>
	       <xsl:otherwise>
	    <note>
			<xsl:apply-templates select="@* | heading|refpt"/>
			<xsl:if test="node() except (heading, refpt)">
				<bodytext>
					<xsl:apply-templates select="node() except (heading, refpt)"/>
				</bodytext>
			</xsl:if>
		</note>
	       </xsl:otherwise>
	    </xsl:choose>
	</xsl:template>
    

	<xsl:template match="note/@notetype">
		<xsl:attribute name="notetype">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
    
    <!-- JL: copied below in from HK01 monolithic changes
    gave it a priority because otherwise it would be ignored in the module -->
    <!--Vikas Rohilla : 05-10-2017 monolithic change created the p for the note 
    -->
    <xsl:template match="p[child::note][parent::leg:bodytext][$streamID=('HK01', 'HK04', 'HK02')]" priority="2">
        <xsl:apply-templates select="@*|node()"/>
    </xsl:template>
    
    <!-- 
         Date: March 22, 2018 - Modified by Ravikant Singh for W*: 7144391.
         Created new template for element <p> to resolve issue - not applying the child element <note> of parent element <p>. 
         Because target schema is not allowed the element <note> as a child of parent element <p>.
         So, we generated the element <note> after <p> element in the output file.
         Allowed elements: base:blockquote, primlaw:changedtext, base:text, base:table, base:figure, base:list, ref:page, base:deflist, base:changedblock, base:changedtext
    -->
    <xsl:template match="p[child::note][parent::li][$streamID=('HK01')]" priority="2">
        <p>
            <xsl:apply-templates select="@*|node() except child::note"/> 
        </p>
        <xsl:apply-templates select="note"/>
    </xsl:template>
    
    <!-- the GDS contained content with leg:comntry/note however on-line those notes were no longer there
        This rule places the note in an invalid location however retained nontheless.
        
    <xsl:template match="note[parent::leg:comntry][$streamID=('UK06','UK07')]">
        <annot:annotation>
        <note>
            <xsl:apply-templates select="@* | heading|refpt"/>
            <xsl:if test="node() except (heading, refpt)">
                <bodytext>
                    <xsl:apply-templates select="node() except (heading, refpt)"/>
                </bodytext>
            </xsl:if>
        </note>
        </annot:annotation>
    </xsl:template>
     -->
</xsl:stylesheet>