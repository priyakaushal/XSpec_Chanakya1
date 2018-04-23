<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.typeofcase-LxAdv_casesum.overview">
    <title>case:typeofcase <lnpid>id-CCCC-12021</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:typeofcase</sourcexml> becomes
                    <targetxml>courtcase:body/casesum:summaries/casesum:editorialsummary/casesum:overview</targetxml>.</p>
            <p>With the exception of <sourcexml>heading</sourcexml>, all children of
                    <sourcexml>case:typeofcase</sourcexml> should be mapped to children of
                    <targetxml>casesum:overview/bodytext</targetxml>.</p>
            <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
                elements. When 2 or more consecutive sibling source elements map to
                    <targetxml>casesum:summaries</targetxml>, target data should be merged to a
                single <targetxml>casesum:summaries</targetxml> element unless this would hamper
                content ordering.</note></section>
        <example>
            <title>Example: AU content</title>
            <codeblock>
&lt;case:typeofcase&gt;
    &lt;heading&gt;
        &lt;title&gt;Application&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;This was an application by notice of motion to amend an application to the tribunal for the restoration of credit charges to certain contracts.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:typeofcase&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:overview&gt;
    &lt;heading&gt;
        &lt;title&gt;Application&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;This was an application by notice of motion to amend an application to the tribunal for the restoration of credit charges to certain contracts.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/casesum:overview&gt;
       </codeblock>
        </example>
        <example>
            <title>Example: NZ content</title>
            <codeblock>
&lt;case:typeofcase&gt;
    &lt;heading&gt;
        &lt;title&gt;ACTION&lt;/title&gt;
    &lt;/heading&gt;
    &lt;p&gt;
        &lt;text&gt;claiming writs of certiorari and prohibition and a declaration.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;Early in the month of September 1959, Mrs Kettle (the second defendant) became the licensee under a wholesale licence in respect of certain premises situated at Waite Street, Greymouth. Shortly afterwards she filed applications (1) for a temporary transfer of the licence pursuant to s. 120 of the Licensing Act 1908 to a limited company called Kettle Bros. Ltd. (the third defendant) and (2) for a permanent transfer of the licence pursuant to ss. 118 and 119 of the Act to the same company. The temporary transfer was granted on 29 September 1959 with the effect set out in s. 120 (3) of the Act &amp;#x2014; namely, to authorise Kettle Bros. Ltd. to carry on the business specified in the licence at the Waite Street premises until the next quarterly licensing meeting to be held by the Westland District Licensing Committee (the first defendant, hereinafter called &amp;quot;the Licensing Committee&amp;#x0022;).&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:typeofcase&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:overview&gt;
    &lt;heading&gt;
        &lt;title&gt;ACTION&lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;claiming writs of certiorari and prohibition and a declaration.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Early in the month of September 1959, Mrs Kettle (the second defendant) became the licensee under a wholesale licence in respect of certain premises situated at Waite Street, Greymouth. Shortly afterwards she filed applications (1) for a temporary transfer of the licence pursuant to s. 120 of the Licensing Act 1908 to a limited company called Kettle Bros. Ltd. (the third defendant) and (2) for a permanent transfer of the licence pursuant to ss. 118 and 119 of the Act to the same company. The temporary transfer was granted on 29 September 1959 with the effect set out in s. 120 (3) of the Act &amp;#x2014; namely, to authorise Kettle Bros. Ltd. to carry on the business specified in the licence at the Waite Street premises until the next quarterly licensing meeting to be held by the Westland District Licensing Committee (the first defendant, hereinafter called &amp;quot;the Licensing Committee&amp;#x0022;).&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/casesum:overview&gt;
       </codeblock>
        </example>
        <example>
            <title>Example: AU content</title>
            <codeblock>
&lt;case:typeofcase&gt;
    &lt;pgrp&gt;
        &lt;heading&gt;
            &lt;title&gt;Appeal&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;This was an appeal by the one of the defendants against a decision of Mandie&amp;#160;J in the Trial Division awarding the plaintiffs damages in a claim brought against the defendant investment advisers pursuant to s&amp;#160;819 of the Corporations Law. The facts are stated in the judgment.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:typeofcase&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:overview&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;heading&gt;
                &lt;title&gt;Appeal&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;This was an appeal by the one of the defendants against a decision of Mandie J in the Trial Division awarding the plaintiffs damages in a claim brought against the defendant investment advisers pursuant to s 819 of the Corporations Law. The facts are stated in the judgment.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/casesum:overview&gt;
       </codeblock>
        </example>
        <example>
            <title>Example: NZ content</title>
            <codeblock>
&lt;case:typeofcase&gt;
    &lt;p&gt;
        &lt;text&gt;MOTION for argument of questions of law on the pleadings in the action.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;The statement of claim alleged&amp;mdash;&lt;/text&gt;
    &lt;/p&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&amp;#160;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;1. That the plaintiff was a member of the Church of England and a parishioner of the Parish of Avonside, and the defendant was the incumbent of the said parish.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
    &lt;l&gt;
        &lt;li&gt;
            &lt;lilabel&gt;&amp;#160;&lt;/lilabel&gt;
            &lt;p&gt;
                &lt;text&gt;2. That on Sunday, the 23rd of September, 1889, the defendant as such incumbent held the service of the Holy Communion, and that the plaintiff attended the service and duly presented herself to receive the Sacrament of the Holy Communion.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/li&gt;
    &lt;/l&gt;
&lt;/case:typeofcase&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:overview&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;MOTION for argument of questions of law on the pleadings in the action.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;The statement of claim alleged&amp;#x2014;&lt;/text&gt;
        &lt;/p&gt;
        &lt;list&gt;
            &lt;listitem&gt;
                &lt;label&gt; &lt;/label&gt;
                &lt;p&gt;
                    &lt;text&gt;1. That the plaintiff was a member of the Church of England and a parishioner of the Parish of Avonside, and the defendant was the incumbent of the said parish.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/listitem&gt;
        &lt;/list&gt;
        &lt;list&gt;
            &lt;listitem&gt;
                &lt;label&gt; &lt;/label&gt;
                &lt;p&gt;
                    &lt;text&gt;2. That on Sunday, the 23rd of September, 1889, the defendant as such incumbent held the service of the Holy Communion, and that the plaintiff attended the service and duly presented herself to receive the Sacrament of the Holy Communion.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/listitem&gt;
        &lt;/list&gt;
    &lt;/bodytext&gt;
&lt;/casesum:overview&gt;
       </codeblock>
        </example>

        <!--<section>
            <title>Changes</title>
        </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.typeofcase-LxAdv_casesum.overview.dita  -->
	<!--<xsl:message>Rosetta_case.typeofcase-LxAdv_casesum.overview.xsl requires manual development!</xsl:message>--> 
    <!--WSS: Done case:typeofcase-->
    <!--Satbir: Correct ordering of case:typeofcase-->
	<xsl:template match="case:typeofcase">
	    <casesum:summaries>
	    <casesum:editorialsummary>
	        <casesum:overview>
	            <xsl:apply-templates select="heading"/>	            
	            <bodytext>
	                <xsl:apply-templates select="@* | node() except heading"/>
	            </bodytext>
	        </casesum:overview>
	    </casesum:editorialsummary>
	    </casesum:summaries>
	  <!--  <xsl:choose>
	        <xsl:when test="./parent::case:content">
	           
	                <casesum:editorialsummary>
	                    <casesum:overview>
	                        <xsl:apply-templates select="heading"/>
	                        <bodytext>
	                           <xsl:apply-templates select="@* | node() except heading"/>
	                        </bodytext>
	                    </casesum:overview>
	                </casesum:editorialsummary>
	            
	        </xsl:when>
	        <xsl:otherwise>
	            <casesum:overview>
	                <xsl:apply-templates select="heading"/>
	                <bodytext>
	                    <xsl:apply-templates select="@* | node() except heading"/>
	                </bodytext>
	            </casesum:overview>
	        </xsl:otherwise>
	    </xsl:choose>-->
	</xsl:template>
</xsl:stylesheet>