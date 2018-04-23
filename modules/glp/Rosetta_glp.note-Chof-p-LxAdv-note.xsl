<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"     
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" 
    version="2.0" exclude-result-prefixes="xs dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note_ChildOf_p-to-LexisAdvance_note">
    <title><sourcexml>p/glp:note</sourcexml> to <targetxml>note</targetxml> <lnpid>id-CCCC-10337</lnpid></title>
    <body>
        <section>
            <p>The conversion of <sourcexml>p/glp:note</sourcexml> varies depending on whether <sourcexml>glp:note</sourcexml> has any siblings: <ul>
                    <li>If <sourcexml>glp:note</sourcexml> doesn't have any siblings (i.e. <sourcexml>glp:note</sourcexml> is the only child of
                            <sourcexml>p</sourcexml>), then <sourcexml>p/glp:note</sourcexml> becomes <targetxml>note</targetxml>
                            (<sourcexml>p</sourcexml> is suppressed).</li>
                    <li>If <sourcexml>glp:note</sourcexml> has siblings (i.e. <sourcexml>glp:note</sourcexml> is not the only child of
                            <sourcexml>p</sourcexml>), then <sourcexml>p</sourcexml> becomes <targetxml>p</targetxml> or <targetxml>form:p</targetxml>
                        (depending on context), <sourcexml>glp:note</sourcexml> becomes <targetxml>note</targetxml>, and <targetxml>note</targetxml> is
                        a sibling of <targetxml>p</targetxml> or <targetxml>form:p</targetxml> (depending on context).</li>
                </ul></p>
        </section>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;p&gt;
 &lt;glp:note&gt;
  &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;Note 1&lt;/emph&gt; If a form is approved under s&amp;#160;15 for this provision, the form
must be used.&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
 &lt;/glp:note&gt;
&lt;/p&gt;
            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;note&gt;
 &lt;bodytext&gt;
  &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;&lt;emph typestyle="it"&gt;Note 1&lt;/emph&gt; If a form is approved under s&amp;#160;15 for this provision, the form must be used.&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
 &lt;/bodytext&gt;
&lt;/note&gt;
            </codeblock>
        </example>
        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-p-LxAdv-note.dita  -->
  
  <!-- JD: 2017-08-01: added "or self::leg:histnote", as this template has a high @priority -->  
	<xsl:template match="p[glp:note]" priority="26">
	    <xsl:variable name="pWithAtts">
	        <p>
	           <xsl:copy-of select="@*"/>
	        </p>
	    </xsl:variable>
	    <xsl:for-each-group select="*" group-adjacent="if(self::glp:note or self::leg:histnote) then 0 else 1">
	        <xsl:choose>
	            <xsl:when test="current-grouping-key()=0">
	                <xsl:apply-templates select="current-group()"/>
	            </xsl:when>
	            <xsl:otherwise>
	                <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	                    <xsl:apply-templates select="$pWithAtts/p/@*"/>
	                    <xsl:apply-templates select="current-group()"/>
	                </p>
	            </xsl:otherwise>
	        </xsl:choose>
	    </xsl:for-each-group>
	</xsl:template>
    
    <xsl:template match="form:p[glp:note]" priority="26">
        <xsl:variable name="pWithAtts">
            <p>
                <xsl:copy-of select="@*"/>
            </p>
        </xsl:variable>
        <xsl:for-each-group select="*" group-adjacent="if(self::glp:note) then 0 else 1">
            <xsl:choose>
                <xsl:when test="current-grouping-key()=0">
                    <xsl:apply-templates select="current-group()"/>
                </xsl:when>
                <xsl:otherwise>
                    <form:p>
                        <xsl:apply-templates select="$pWithAtts/p/@*"/>
                        <xsl:apply-templates select="current-group()"/>
                    </form:p>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each-group>
    </xsl:template>
    

	
</xsl:stylesheet>