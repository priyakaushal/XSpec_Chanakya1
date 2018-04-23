<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-Chof-verbatim-LxAdv-figure_ref.inlineobject">
    <title><sourcexml>verbatim/inlineobject</sourcexml> to <targetxml>figure/ref:inlineobject</targetxml> <lnpid>id-CCCC-10505</lnpid></title>
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
            <p>If input document is having <sourcexml>verbatim/nl</sourcexml> followed by
                    <sourcexml>inlineobject</sourcexml> then it becomes
                    <targetxml>figure/ref:inlineobject</targetxml>. Suppress
                    <sourcexml>varbatim</sourcexml> and <sourcexml>nl</sourcexml> markup from target
                conversion.</p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;verbatim verbatimclass="verbatim"&gt;&lt;nl/&gt;
            &lt;inlineobject filename="10065-0001.jpg" type="image" attachment="ln-server"/&gt;
        &lt;/verbatim&gt;
    &lt;/text&gt;
&lt;/p&gt;

    </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y-10065-0001"/&gt; &lt;!-- X and Y are LNI and SMI values
obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values:
“image”; (from .jpg, .gif, .png, .bmp)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt; &lt;!-- This @value assignment is
done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/figure&gt;
    &lt;/text&gt;
&lt;/p&gt;

    </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
            <p>2014-09-22: <ph id="change_20140922_SS">Created instruction for handling
                        <sourcexml>inlineobject</sourcexml> within <sourcexml>verbatim</sourcexml>
                    in source documents.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-Chof-verbatim-LxAdv-figure_ref.inlineobject.dita  -->
	<xsl:message>Rosetta_inlineobject-Chof-verbatim-LxAdv-figure_ref.inlineobject.xsl requires manual development!</xsl:message> 

	<xsl:template match="verbatim/inlineobject">

		<!--  Original Target XPath:  figure/ref:inlineobject   -->
		<figure>
			<ref:inlineobject>
				<xsl:apply-templates select="@* | node()"/>
			</ref:inlineobject>
		</figure>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;ATTACHMENT&#34;]">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  ref:inlineobject   -->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="link[@filename]">

		<!--  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="verbatim/nl">

		<!--  Original Target XPath:  figure/ref:inlineobject   -->
		<figure>
			<ref:inlineobject>
				<xsl:apply-templates select="@* | node()"/>
			</ref:inlineobject>
		</figure>

	</xsl:template>

	<xsl:template match="varbatim">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="nl">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="verbatim">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>