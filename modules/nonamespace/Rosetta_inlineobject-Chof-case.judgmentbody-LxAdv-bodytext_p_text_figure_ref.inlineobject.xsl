<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-Chof-case.judgmentbody-LxAdv-bodytext_p_text_figure_ref.inlineobject">
    <title><sourcexml>case:judgmentbody/inlineobject</sourcexml> to
            <targetxml>courtcase:opinion/bodytext/p/text/figure/ref:inlineobject</targetxml> <lnpid>id-CCCC-10356</lnpid></title>
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
            <p><sourcexml>case:judgmentbody/inlineobject</sourcexml> becomes
                    <targetxml>courtcase:opinion/bodytext/p/text/figure/ref:inlineobject</targetxml>.</p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:judgmentbody&gt;
    &lt;p&gt;
        &lt;text&gt;August 4.—&lt;/text&gt;
    &lt;/p&gt;
    ...
    &lt;p&gt;
        &lt;text&gt;to direct registration of it as a trade-mark, for Kiwi boot-polish, with a shield in
            the place where the bird stands in its Australian trade-mark, on which the words "The
            Product of the Kiwi Polish Company Proprietary Limited, Melbourne, Australia," or an
            abbreviation of these words, appears.&lt;/text&gt;
    &lt;/p&gt;
    &lt;inlineobject type="image" attachment="ln-server" filename="1925_50.gif"/&gt;
    &lt;p&gt;
        &lt;text&gt;The plaintiff is, I think, entitled to the general costs of this contest, subject to
            certain deductions: on this I am willing to hear counsel.&lt;/text&gt;
    &lt;/p&gt;
&lt;/case:judgmentbody&gt;

    </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;August 4.&amp;#x2014;&lt;/text&gt;
            &lt;/p&gt;
            ...
            &lt;p&gt;
                &lt;text&gt;to direct registration of it as a trade-mark, for Kiwi boot-polish, with a shield in
                    the place where the bird stands in its Australian trade-mark, on which the words "The
                    Product of the Kiwi Polish Company Proprietary Limited, Melbourne, Australia," or an
                    abbreviation of these words, appears.&lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;figure&gt;
                        &lt;ref:inlineobject&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="object-key"/&gt;
                                    &lt;ref:key-value value="X-Y-1925_50"/&gt;  &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;ref:locator-params&gt;
                                    &lt;proc:param name="componentseq" value="1"/&gt;
                                    &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                                    &lt;proc:param name="object-smi" value=""/&gt;        &lt;!-- This @value assignment is done by conversion program --&gt;                                
                                &lt;/ref:locator-params&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:inlineobject&gt;
                    &lt;/figure&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;The plaintiff is, I think, entitled to the general costs of this contest, subject to
                    certain deductions: on this I am willing to hear counsel.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;

    </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
            <p>2013-10-11: Created.</p>
        </section>
	<!-- SEP 2015-9-23 added -->
    <xsltinclusion>
      <xsl:stylesheet version="2.0">
   <!-- SEP 2015-9-23 method A versus method B? (depends on how case:judgmentbody is implemented externally)  -->
    <xsl:template match="case:judgmentbody[inlineobject]">
        <xsl:element name="courtcase:opinion">
            <xsl:element name="bodytext">
			   <xsl:apply-templates select="*[following-sibling::inlineobject]"/>
                <xsl:element name="p">
                    <xsl:element name="text">
                        <!-- SEP 2015-9-23 here we assume ref:inlineobject is implemented externally, as per as is copied below  -->
                        <xsl:apply-templates select="inlineobject"/>
                    </xsl:element>
                </xsl:element>
				<xsl:apply-templates select="*[preceding-sibling::inlineobject]"/>
            </xsl:element>      
        </xsl:element>
    </xsl:template>

	<!-- SEP 2015-9-23 copied from  Rosetta-to-LA\modules\ref\ref.xsl -->
    <xsl:template match="inlineobject">
        <xsl:variable name="filename">
            <xsl:value-of select="@filename"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="parent::leg:relatedleg"/>
            <xsl:when test="parent::leg:status"/>
            
            <xsl:when test="$filename='1.gif'                  or $filename='2.gif'                 or $filename='3.gif'                 or $filename='4.gif'                 or $filename='5.gif'                 or $filename='IconSignalPositive.gif'                 or $filename='IconSignalNegative.gif'                 or $filename='IconSignalNeutral.gif'                 or $filename='IconSignalPossibleNegative.gif'                 or $filename='IconSignalCiteInfoOnly.gif'                 or $filename='cbcc.gif'                 or $filename='leg1.gif'                 or $filename='mb.gif'                 or $filename='au_repealed.gif'                 or $filename='au_exclaim.gif'"/>
           
            <xsl:when test="parent::bodytext or parent::case:judgmentbody or parent::leg:bodytext">
                        <xsl:element name="figure">
                            <xsl:element name="ref:inlineobject">
                                <xsl:apply-templates select="@*"/>
                                <xsl:element name="ref:locator">
                                    <xsl:element name="ref:locator-key">
                                        <xsl:element name="ref:key-name">
                                            <xsl:attribute name="name">object-key</xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="ref:key-value">
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="@smi">
                                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:text>X-Y-</xsl:text>
                                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                    <xsl:element name="ref:locator-params">
                                        <xsl:element name="proc:param">
                                            <xsl:attribute name="name">componentseq</xsl:attribute>
                                            <xsl:attribute name="value">1</xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="proc:param">
                                            <xsl:attribute name="name">object-type</xsl:attribute>
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="contains('gif|jpg|png|tiff|bmp', substring-after(@filename, '.'))">image</xsl:when>
                                                    <xsl:otherwise>@filename not an image</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="proc:param">
                                            <xsl:attribute name="name">object-smi</xsl:attribute>
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="@smi">
                                                        <xsl:value-of select="@smi"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>***obtain smi for CSSM</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="ref:inlineobject">
                <xsl:apply-templates select="@*"/>
                <xsl:element name="ref:locator">
                    <xsl:element name="ref:locator-key">
                        <xsl:element name="ref:key-name">
                            <xsl:attribute name="name">object-key</xsl:attribute>
                        </xsl:element>
                        <xsl:element name="ref:key-value">
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="@smi">
                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>X-Y-</xsl:text>
                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                    <xsl:element name="ref:locator-params">
                        <xsl:element name="proc:param">
                            <xsl:attribute name="name">componentseq</xsl:attribute>
                            <xsl:attribute name="value">1</xsl:attribute>
                        </xsl:element>
                        <xsl:element name="proc:param">
                            <xsl:attribute name="name">object-type</xsl:attribute>
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="contains('gif|jpg|png|tiff|bmp',substring-after(@filename, '.'))">image</xsl:when>
                                </xsl:choose>
                            </xsl:attribute>
                        </xsl:element>
                        <xsl:element name="proc:param">
                            <xsl:attribute name="name">object-smi</xsl:attribute>
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="@smi">
                                        <xsl:value-of select="@smi"/>
                                    </xsl:when>
                                    <xsl:otherwise>***obtain smi for CSSM</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="inlineobject/@*">
        <xsl:choose>
            <xsl:when test="name()='height'">
                <xsl:attribute name="height">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="name()='width'">
                <xsl:attribute name="width">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="name()='attachment' or  name()='type' or name()='filename'">
                <!-- suppress -->
            </xsl:when>
            <xsl:otherwise>
                <xsl:message>No match for inlineobject/@<xsl:value-of select="name()"/></xsl:message>
            </xsl:otherwise>
        </xsl:choose>
	</xsl:template>

      </xsl:stylesheet>
    </xsltinclusion>	
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-Chof-case.judgmentbody-LxAdv-bodytext_p_text_figure_ref.inlineobject.dita  -->
	<xsl:message>Rosetta_inlineobject-Chof-case.judgmentbody-LxAdv-bodytext_p_text_figure_ref.inlineobject.xsl requires manual development!</xsl:message> 

   <!-- SEP 2015-9-23 method A versus method B? (depends on how case:judgmentbody is implemented externally)  -->
    <xsl:template xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="case:judgmentbody[inlineobject]">
        <xsl:element name="courtcase:opinion">
            <xsl:element name="bodytext">
			   <xsl:apply-templates select="*[following-sibling::inlineobject]"/>
                <xsl:element name="p">
                    <xsl:element name="text">
                        <!-- SEP 2015-9-23 here we assume ref:inlineobject is implemented externally, as per as is copied below  -->
                        <xsl:apply-templates select="inlineobject"/>
                    </xsl:element>
                </xsl:element>
				<xsl:apply-templates select="*[preceding-sibling::inlineobject]"/>
            </xsl:element>      
        </xsl:element>
    </xsl:template>

	<!-- SEP 2015-9-23 copied from  Rosetta-to-LA\modules\ref\ref.xsl -->
    <xsl:template xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="inlineobject">
        <xsl:variable name="filename">
            <xsl:value-of select="@filename"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="parent::leg:relatedleg"/>
            <xsl:when test="parent::leg:status"/>
            
            <xsl:when test="$filename='1.gif'                  or $filename='2.gif'                 or $filename='3.gif'                 or $filename='4.gif'                 or $filename='5.gif'                 or $filename='IconSignalPositive.gif'                 or $filename='IconSignalNegative.gif'                 or $filename='IconSignalNeutral.gif'                 or $filename='IconSignalPossibleNegative.gif'                 or $filename='IconSignalCiteInfoOnly.gif'                 or $filename='cbcc.gif'                 or $filename='leg1.gif'                 or $filename='mb.gif'                 or $filename='au_repealed.gif'                 or $filename='au_exclaim.gif'"/>
           
            <xsl:when test="parent::bodytext or parent::case:judgmentbody or parent::leg:bodytext">
                        <xsl:element name="figure">
                            <xsl:element name="ref:inlineobject">
                                <xsl:apply-templates select="@*"/>
                                <xsl:element name="ref:locator">
                                    <xsl:element name="ref:locator-key">
                                        <xsl:element name="ref:key-name">
                                            <xsl:attribute name="name">object-key</xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="ref:key-value">
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="@smi">
                                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:text>X-Y-</xsl:text>
                                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                    <xsl:element name="ref:locator-params">
                                        <xsl:element name="proc:param">
                                            <xsl:attribute name="name">componentseq</xsl:attribute>
                                            <xsl:attribute name="value">1</xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="proc:param">
                                            <xsl:attribute name="name">object-type</xsl:attribute>
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="contains('gif|jpg|png|tiff|bmp', substring-after(@filename, '.'))">image</xsl:when>
                                                    <xsl:otherwise>@filename not an image</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="proc:param">
                                            <xsl:attribute name="name">object-smi</xsl:attribute>
                                            <xsl:attribute name="value">
                                                <xsl:choose>
                                                    <xsl:when test="@smi">
                                                        <xsl:value-of select="@smi"/>
                                                    </xsl:when>
                                                    <xsl:otherwise>***obtain smi for CSSM</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="ref:inlineobject">
                <xsl:apply-templates select="@*"/>
                <xsl:element name="ref:locator">
                    <xsl:element name="ref:locator-key">
                        <xsl:element name="ref:key-name">
                            <xsl:attribute name="name">object-key</xsl:attribute>
                        </xsl:element>
                        <xsl:element name="ref:key-value">
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="@smi">
                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>X-Y-</xsl:text>
                                        <xsl:value-of select="substring-before(@filename, '.')"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                    <xsl:element name="ref:locator-params">
                        <xsl:element name="proc:param">
                            <xsl:attribute name="name">componentseq</xsl:attribute>
                            <xsl:attribute name="value">1</xsl:attribute>
                        </xsl:element>
                        <xsl:element name="proc:param">
                            <xsl:attribute name="name">object-type</xsl:attribute>
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="contains('gif|jpg|png|tiff|bmp',substring-after(@filename, '.'))">image</xsl:when>
                                </xsl:choose>
                            </xsl:attribute>
                        </xsl:element>
                        <xsl:element name="proc:param">
                            <xsl:attribute name="name">object-smi</xsl:attribute>
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="@smi">
                                        <xsl:value-of select="@smi"/>
                                    </xsl:when>
                                    <xsl:otherwise>***obtain smi for CSSM</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="inlineobject/@*">
        <xsl:choose>
            <xsl:when test="name()='height'">
                <xsl:attribute name="height">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="name()='width'">
                <xsl:attribute name="width">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="name()='attachment' or  name()='type' or name()='filename'">
                <!-- suppress -->
            </xsl:when>
            <xsl:otherwise>
                <xsl:message>No match for inlineobject/@<xsl:value-of select="name()"/></xsl:message>
            </xsl:otherwise>
        </xsl:choose>
	</xsl:template>

      
</xsl:stylesheet>