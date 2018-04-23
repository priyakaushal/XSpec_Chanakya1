<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_deflist_defitem_p_text-to-LexisAdvance_deflist_defitem">
    <title><sourcexml>deflist/defitem/p/text</sourcexml> to  <targetxml>deflist/defitem</targetxml> <lnpid>id-CCCC-10476</lnpid></title>
    <body>
        <section>
            <p>
                When the source has <sourcexml>deflist/defitem/p/text</sourcexml> then omit <sourcexml>p/text</sourcexml> and retain <sourcexml>defitem</sourcexml>.
            </p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;deflist&gt;
    &lt;defitem&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;defterm&gt;
                    &lt;refpt id="ACT_REG_1932-MAG_FINEDEFAULTER" type="ext"/&gt;
                    &lt;emph typestyle="bf"&gt;fine defaulter&lt;/emph&gt;
                &lt;/defterm&gt;&amp;mdash;see the &lt;emph typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;,
                section&amp;#160;146.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/defitem&gt;
    &lt;defitem&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;defterm&gt;
                    &lt;refpt id="ACT_REG_1932-MAG_OUTSTANDINGFINE" type="ext"/&gt;
                    &lt;emph typestyle="bf"&gt;outstanding fine&lt;/emph&gt;
                &lt;/defterm&gt;&amp;mdash; see the &lt;emph typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;,
                section&amp;#160;146.
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/defitem&gt;
&lt;/deflist&gt;


            </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;deflist&gt;
    &lt;defitem&gt;
        &lt;defterm&gt;
            &lt;ref:anchor id="ACT_REG_1932-MAG_FINEDEFAULTER" anchortype="global"/&gt;
            &lt;emph typestyle="bf"&gt;fine defaulter&lt;/emph&gt;
        &lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt; &amp;#x2014; see the &lt;emph typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;, section&amp;#x00A0;146.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/defdesc&gt;     
    &lt;/defitem&gt;
    &lt;defitem&gt;
        &lt;defterm&gt;
            &lt;ref:anchor id="ACT_REG_1932-MAG_OUTSTANDINGFINE" anchortype="global"/&gt; 
            &lt;emph typestyle="bf"&gt;outstanding fine&lt;/emph&gt;
        &lt;/defterm&gt;
        &lt;defdesc&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;&amp;#x2014; see the &lt;emph typestyle="it"&gt;Magistrates Court Act 1930&lt;/emph&gt;, section&amp;#x00A0;146.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/defdesc&gt;
    &lt;/defitem&gt;
&lt;/deflist&gt;

            </codeblock>
        </example>

        <section>
            <title>Changes</title>
        </section>
        
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_text-Chof-deflist_defitem_p-LxAdv-deflist_defitem.dita  -->

    <!-- Paul:  this functionality is in the deflist-to-deflist common module Rosetta_deflist_LxAdv_deflist_common_handling_test.xsl 
        
        <xsl:template match="deflist/defitem/p" priority="25">
		<!-\-  Original Target XPath:  deflist/defitem   -\->
	    <deflist xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<defitem>
				<xsl:apply-templates select="node()"/>
			</defitem>
		</deflist>
	</xsl:template>

    <xsl:template match="deflist/defitem/p/text" priority="25"> 
         <xsl:apply-templates select="node()"/>
    </xsl:template>
-->    
</xsl:stylesheet>