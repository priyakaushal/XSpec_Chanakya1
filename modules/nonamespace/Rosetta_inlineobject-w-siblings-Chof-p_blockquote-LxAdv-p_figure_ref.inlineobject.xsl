<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-w-siblings-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject">
    <title><sourcexml>p/blockquote/inlineobject</sourcexml> (with siblings) to
            <targetxml>p/text/blockquote/p/text/ref:inlineobject</targetxml>
        <lnpid>id-CCCC-10530</lnpid></title>
    <body>
        <section>
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
            <p><sourcexml>p/blockquote/inlineobject</sourcexml> with sibling elements becomes
                    <targetxml>p/text/blockquote/p/text/ref:inlineobject</targetxml>.</p>
            <note> If <sourcexml>inlineobject</sourcexml> in this context does not contain sibling
                elements (other children of <sourcexml>blockquote</sourcexml>), do not complete this
                instruction. Instead, complete <xref href="Rosetta_inlineobject-Chof-p_blockquote-LxAdv-p_figure_ref.inlineobject.dita#Rosetta_inlineobject_ChildOf_p_blockquote-to-LexisAdvance_p_figure_ref.inlineojbect"/></note>
        </section>
        
        <example>
            <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>blockquote</sourcexml> with siblings.</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;Suppose that past monetary loss consists of medical
        expenses which have been incurred at a uniform rate over a
        certain period. The interest to be awarded would be
        calculated in accordance with the following
        formula&amp;#x2014;&lt;/text&gt;
    &lt;blockquote&gt;
        &lt;inlineobject type="image" attachment="ln-server"
            filename="QLD_ACT_2000-17_PIC1.gif"/&gt;
        &lt;p&gt;
            &lt;text&gt;where&amp;#x2014;&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="bf"&gt;&amp;#x201C;A&amp;#x201D;&lt;/emph&gt; is the
                amount of the award of interest.&lt;/text&gt;
        &lt;/p&gt;
        ........
    &lt;/blockquote&gt;
&lt;/p&gt;

            </codeblock>
            
            <title>Target XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>blockquote</sourcexml></title>
            <codeblock>


    &lt;p&gt;
        &lt;text&gt;Suppose that past monetary loss consists of medical
        expenses which have been incurred at a uniform rate over a
        certain period. The interest to be awarded would be
        calculated in accordance with the following
        formula&amp;#x2014;&lt;/text&gt;
         &lt;blockquote&gt;
           &lt;p&gt;
            &lt;text&gt;
              &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-QLD-ACT-2000-17-PIC1"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; 
                        &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:inlineobject&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;where&amp;#x2014;&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="bf"&gt;&amp;#x201C;A&amp;#x201D;&lt;/emph&gt; is the
                amount of the award of interest.&lt;/text&gt;
        &lt;/p&gt;
         &lt;/blockquote&gt;
    &lt;/p&gt;


            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-08-01: <ph id="change_20160801_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
            <p>2015-11-19: <ph id="change_20151119_BRT">Wrapped ref:inlineobject in p/text.</ph>
            </p>
            
            <p>2015-11-17:  <ph id="change_20151117_BRT">Created to address Webstar 6345532.</ph> </p>
        </section>
        
    </body>
	</dita:topic>

	<xsl:template match="inlineobject[parent::blockquote/parent::p and (following-sibling::* or preceding-sibling::*)]">

		<!--  Original Target XPath:  p/text/blockquote/p/text/ref:inlineobject   -->

	               <xsl:element name="p" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:element name="text">
						    <xsl:apply-templates select="." mode="refinline"/>
						</xsl:element>
					</xsl:element>

	</xsl:template>

</xsl:stylesheet>