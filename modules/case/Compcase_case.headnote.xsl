<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
    xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote">
    <title>case:headnote <lnpid>id-ST05-28427</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>case:headnote</sourcexml> becomes 
                <targetxml>/compcase:compositecourtcase/compcase:head</targetxml>.
            </p>
        </section>
        
        <example>
            <title>Source Example - based on UK content</title>
            <codeblock>

&lt;case:headnote&gt;
    &lt;note notetype="commentary"&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;
                    As to Inquiries under the Housing Acts, see Halsbury, Supp, Public Health, paras 1034&amp;#x2013;1042, and for Cases, see Digest Supp, Public Health, cases 502l&amp;#x2013;506d.
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/note&gt;
&lt;/case:headnote&gt;

           </codeblock>
        </example>
        
        <example>
            <title>Target Example</title>
            <codeblock>

&lt;compcase:head&gt;
    &lt;note notetype="commentary"&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        As to Inquiries under the Housing Acts, see Halsbury, Supp, Public Health, paras 1034&amp;#x2013;1042, and for Cases, see Digest Supp, Public Health, cases 502l&amp;#x2013;506d.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/compcase:head&gt;

           </codeblock>
        </example>
        
        <section>
            <title>AU13 Specific - case:headnote/footnotegrp and case:headnote/page</title>
            <p>If <sourcexml>footnotegrp</sourcexml> occurs as a direct child of
                <sourcexml>case:headnote</sourcexml> then the conversion should append this
                element as children of nearest element containing bodytext.</p>
            
            <p>If <sourcexml>page</sourcexml> occurs as a direct child of
                <sourcexml>case:headnote</sourcexml> then the conversion should append this
                element as children of nearest element.</p>
            
            <p>The resulting conversion should maintain a physical order with the existing document content.</p>
        </section>
        <example>
            <title>Source: <sourcexml>case:headnote/footnotegrp and
                case:headnote/page</sourcexml></title>
            
            <codeblock>
                
                &lt;case:body&gt;
                &lt;case:headnote&gt;
                ...
                &lt;case:factsummary&gt;
                &lt;l&gt;
                &lt;li&gt;
                &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;&amp;amp;hellip;&lt;/emph&gt;&lt;/lilabel&gt;
                &lt;p&gt;
                &lt;text&gt;&lt;/text&gt;
                &lt;/p&gt;
                &lt;/li&gt;
                &lt;li&gt;
                &lt;lilabel&gt;&lt;emph typestyle="ro"&gt;(d)&lt;/emph&gt;&lt;/lilabel&gt;
                &lt;p&gt;
                &lt;text&gt;in the opinion of the Commission, the death of the veteran was due to an accident that would not 
                have occurred, or to a disease that would not have been contracted, but for his or her having rendered 
                eligible war service or but for changes in the veteran's environment consequent upon his or her having
                rendered eligible war service &amp;amp;hellip;&amp;amp;rdquo;&lt;/text&gt;
                &lt;/p&gt;
                &lt;/li&gt;
                &lt;/l&gt;
                &lt;p&gt;&lt;text&gt;Counsel for W relied upon dictionary definitions of &amp;amp;ldquo;consequent upon&amp;amp;rdquo; to mean 
                &amp;amp;ldquo;following as a result&amp;amp;rdquo; and &amp;amp;ldquo;following logically&amp;amp;rdquo;.&lt;/text&gt;&lt;/p&gt;
                &lt;/case:factsummary&gt;
                &lt;footnotegrp&gt;
                &lt;footnote fntoken="2011-80-NSWLR-486.fn_a" fnrtokens="2011-80-NSWLR-486.fnr_a"&gt;
                &lt;fnlabel&gt;*&lt;/fnlabel&gt;
                &lt;fnbody&gt;
                &lt;p&gt;
                &lt;text&gt;[EDITORIAL NOTE: An application for special leave to appeal to the High Court was
                refused.]&lt;/text&gt;
                &lt;/p&gt;
                &lt;/fnbody&gt;
                &lt;/footnote&gt;
                &lt;/footnotegrp&gt;
                &lt;page count="487" reporter="NSWLR" text="(2011) 80 NSWLR 486 at " subdoc="true"/&gt;
                &lt;case:decisionsummary&gt;
                &lt;p&gt;
                &lt;text&gt;...             
                
            </codeblock>
        </example>
        
        
        <example>
            <title>Target: <sourcexml>compcase:head/casesum:summaries</sourcexml> with
                <targetxml>footnotegroup</targetxml> and <targetxml>ref:page</targetxml></title>
            
            <codeblock>
                
                &lt;compcase:head&gt;
                ...
                &lt;casesum:summaries&gt;
                &lt;casesum:editorialsummary&gt;
                &lt;p&gt;
                &lt;list&gt;
                &lt;listitem&gt;
                &lt;label&gt;&lt;emph typestyle="ro"&gt;&amp;amp;#x2026;&lt;/emph&gt;&lt;/label&gt;
                &lt;p&gt;
                &lt;text&gt;&lt;/text&gt;
                &lt;/p&gt;
                &lt;/listitem&gt;
                &lt;listitem&gt;
                &lt;label&gt;&lt;emph typestyle="ro"&gt;(d)&lt;/emph&gt;&lt;/label&gt;
                &lt;p&gt;
                &lt;text&gt;in the opinion of the Commission, the death of the veteran was due to an accident that would
                not have occurred, or to a disease that would not have been contracted, but for his or her having
                rendered eligible war service or but for changes in the veteran's environment consequent upon his 
                or her having rendered eligible war service &amp;amp;#x2026;&amp;amp;#x201D;&lt;/text&gt;
                &lt;/p&gt;
                &lt;/listitem&gt;
                &lt;/list&gt;
                &lt;/p&gt;
                
                &lt;p&gt;
                &lt;text&gt;Counsel for W relied upon dictionary definitions of &amp;amp;#x201C;consequent upon&amp;amp;#x201D; to 
                mean &amp;amp;#x201C;following as a result&amp;amp;#x201D; and &amp;amp;#x201C;following logically&amp;amp;#x201D;.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                &lt;text&gt;
                &lt;footnotegroup&gt;
                &lt;footnote&gt;
                &lt;ref:anchor id="_2011-80-NSWLR-486.fn_a" /&gt; 
                &lt;ref:returnreference&gt;
                &lt;ref:locator anchoridref="_2011-80-NSWLR-486.fnr_a" anchortype="local" /&gt; 
                &lt;/ref:returnreference&gt;
                &lt;label&gt;*&lt;/label&gt; 
                &lt;bodytext&gt;
                &lt;p&gt;
                &lt;text&gt;[EDITORIAL NOTE: An application for special leave to appeal to the High Court was refused.]&lt;/text&gt; 
                &lt;/p&gt;
                &lt;/bodytext&gt;
                &lt;/footnote&gt;
                &lt;/footnotegroup&gt;
                &lt;/text&gt;
                &lt;/p&gt;
                &lt;ref:page includeintoc="true" num="487" page-scheme="500067" page-scheme-type="reporter-series-code" /&gt; 
                &lt;/casesum:editorialsummary&gt;
                &lt;casesum:decisionsummary&gt;
                &lt;bodytext&gt;
                &lt;p&gt;...
                
            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\case.headnote.dita  -->
	

	<xsl:template match="case:headnote">

		<!--  Original Target XPath:  /compcase:compositecourtcase/compcase:head   -->
			<compcase:head>
				<xsl:apply-templates select="@*"/>
			    <xsl:for-each-group select="* except(case:length)" group-adjacent="if (self::case:factsummary or self::case:decisionsummary or self::case:disposition) then 1 else 0">
			        <xsl:choose>
			            <xsl:when test="current-grouping-key()=0">
			                <xsl:for-each select="current-group()">
			                    <xsl:apply-templates select="."/>
			                </xsl:for-each>
			            </xsl:when>
			            <xsl:otherwise>
			                <casesum:summaries>
			                    <xsl:for-each select="current-group()">
			                        <xsl:apply-templates select="."/>
			                    </xsl:for-each>
			                </casesum:summaries>
			            </xsl:otherwise>
			        </xsl:choose>
			    </xsl:for-each-group>

			</compcase:head>
		

	</xsl:template>

</xsl:stylesheet>