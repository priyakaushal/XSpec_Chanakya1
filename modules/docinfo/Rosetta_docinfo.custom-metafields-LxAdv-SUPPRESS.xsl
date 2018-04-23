<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS">
    <title><sourcexml>docinfo:custom-metafields</sourcexml> is SUPPRESSED <lnpid>id-CCCC-10290</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p>The only uses of <sourcexml>docinfo:custom-metafield</sourcexml> in Australian and
                New Zealand data all have <sourcexml>@name="COURT-CLASSIFY"</sourcexml>. Since
                metafields with this name should be suppressed, all occurrances of
                    <sourcexml>docinfo:custom-metafield</sourcexml> should be suppressed. Further,
                because <sourcexml>docinfo:custom-metafield</sourcexml> is the only child of
                    <sourcexml>docinfo:custom-metafields</sourcexml>, the entire
                    <sourcexml>docinfo:custom-metafields</sourcexml> can be suppressed. </p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="date"&gt;20070919&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="country"&gt;1&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="juris"&gt;30&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="court"&gt;145&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="dpsi"&gt;03EX&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield searchtype="COURT-CLASSIFY"&gt;BCLabRelBd&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield searchtype="JURIS-CLASSIFY"&gt;BC&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield searchtype="CITED-COUNT"&gt;0&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
            <p>The all above elements should be dropped except for
                    <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml> and
                    <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml> .</p>
        </example>

        <example>
            <title>Source XML showing @name="COURT-CLASSIFY"</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="COURT-CLASSIFY"&gt;FCA&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
            <p>The above elements should be dropped.</p>
        </example>
        <example>
            <title>Source XML showing @searchtype="CITED-COUNT"</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield searchtype="CITED-COUNT"&gt;0&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
            <p>The above elements should be retained.</p>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="CITED-COUNT" value="0"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </codeblock>

        </example>
        <example>
            <title>Source XML showing @name="dpsi"</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="dpsi"&gt;03EX&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
            <p>The above elements should be retained.</p>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="dpsi" value="03EX"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </codeblock>
            
            <p>For CA Dictionary only: <sourcexml>docinfo:custom-metafield
                    name="JURIS-SORT"</sourcexml>, <sourcexml>docinfo:custom-metafield
                    name="COURT-SORT</sourcexml>, and <sourcexml>docinfo:custom-metafield
                    name="TERM-SORT</sourcexml>, should be retained in the target.</p>
            
        </example>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="JURIS-SORT"&gt;180&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="COURT-SORT"&gt;200&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="TERM-SORT"&gt;102840&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
        </example>
        
            <example>
                <title>Target XML</title>
                <codeblock>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="JURIS-SORT" value="180"/&gt;
        &lt;metaitem name="COURT-SORT" value="200"/&gt;
        &lt;metaitem name="TERM-SORT" value="102840"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </codeblock>
            </example>
        <section>
            <title>Changes</title>
        <p>2013-04-16: <ph id="change_20130416_ps">Updated the instruction of handling
            <sourcexml>docinfo:custom-metafield[@name="JURIS-SORT"]</sourcexml>, <sourcexml>docinfo:custom-metafield[@name="COURT-SORT"]</sourcexml>, and <sourcexml>docinfo:custom-metafield[@name="TERM-SORT"]</sourcexml> markup in CA Dictionary content stream.</ph></p>       
            <p>2013-03-20: <ph id="change_20130320_ss">Updated the instruction of handling
                <sourcexml>docinfo:custom-metafield[@name="dpsi"]</sourcexml>
                markup in CA content stream.</ph></p>
            <p>2013-01-07: <ph id="change_20130107_xxx">Updated the instruction of handling
                <sourcexml>docinfo:custom-metafield[@searchtype="CITED-COUNT"]</sourcexml>
                markup in CA content stream.</ph></p>
            <p>2012-09-06: <ph id="change_20120906_xxx">Created.</ph></p>
</section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.custom-metafields-LxAdv-SUPPRESS.dita  -->


	<xsl:template match="docinfo:custom-metafields">
	    <xsl:apply-templates select="docinfo:custom-metafield[@name='dpsi' or @searchtype='CITED-COUNT']"/>
	    <xsl:if test="$streamID='CA12'">
	        <xsl:apply-templates select="docinfo:custom-metafield[@name=('JURIS-SORT', 'COURT-SORT', 'TERM-SORT')]"/>
	    </xsl:if>
	</xsl:template>

	<xsl:template match="docinfo:custom-metafield">
	    <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:apply-templates select="@name"/>
	        <xsl:apply-templates select="@searchtype"/>
	        <xsl:attribute name="value"><xsl:apply-templates/></xsl:attribute>
	    </metaitem>
	</xsl:template>
    
    <xsl:template match="docinfo:custom-metafield/@name">
        <xsl:copy-of select="."/>
    </xsl:template>
    <xsl:template match="docinfo:custom-metafield/@searchtype">
        <xsl:if test=".='CITED-COUNT'">
            <xsl:attribute name="name" select="."/>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>