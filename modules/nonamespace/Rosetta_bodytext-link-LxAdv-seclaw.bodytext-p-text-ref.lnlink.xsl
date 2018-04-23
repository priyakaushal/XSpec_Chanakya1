<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" 
    xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_bodytext-link-to-LexisAdvance_seclaw.bodytext-p-text-ref.lnlink">
    <title><sourcexml>bodytext/link</sourcexml> to <targetxml>seclaw:bodytext/p/text/ref:lnlink</targetxml> <lnpid>id-CCCC-10248</lnpid></title>
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
            <p>
                If <sourcexml>link</sourcexml> element occurs as direct child of <sourcexml>bodytext</sourcexml> then conversion need to move
                <targetxml>ref:lnlink</targetxml> as child of <targetxml>p/text</targetxml>, i.e, <sourcexml>bodytext/link</sourcexml> becomes
                <targetxml>seclaw:bodytext/p/text/ref:lnlink</targetxml>.
                
                <note><b>Please note that, in Commentary-Form-Precedents element <sourcexml>bodytext</sourcexml> maps to <targetxml>seclaw:bodytext</targetxml>,
                    <targetxml>form:bodytext</targetxml> and <targetxml>pubfm:narrative</targetxml> in different content models.</b></note>
                
            </p>
        </section>
        
        <example>
            <title>Source XML : if element link is direct child of bodytext</title>
            <codeblock>

&lt;bodytext searchtype="FORM"&gt;
    &lt;!-- ETC. --&gt;
    &lt;link type="pdf" filename="adm120-1.pdf"&gt;Download in PDF&lt;/link&gt;
    &lt;!-- ETC. --&gt;
&lt;/bodytext&gt;

			</codeblock>
        </example>
        
        <example>
            <title>Target XML : if element link is direct child of bodytext</title>
            <codeblock>

&lt;form:bodytext&gt;
    &lt;!-- ETC. --&gt;
    &lt;form:p&gt;
        &lt;form:text&gt;
            &lt;ref:lnlink service="ATTACHMENT"&gt;
                &lt;ref:marker role="label"&gt;Download in PDF&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="attachment-key"/&gt;
                        &lt;ref:key-value value="X-Y-adm120-1"/&gt; 
                        &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="attachment-type" value="PDF"/&gt;
                        &lt;proc:param name="attachment-smi" value=""/&gt;
                        &lt;!-- @value populated with SMI obtained from CSSM --&gt;
                        &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/form:text&gt;
    &lt;/form:p&gt;
    &lt;!-- ETC. --&gt;
&lt;/form:bodytext&gt;

			</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-01: <ph id="change_20160801_jm">Added Note about xml snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to move to Blobstore.</ph></p>
            <p>2013-05-01: <ph id="change_20130501_SP">Updated instructions and target example per latest Apollo markup.</ph></p>
            <p>2013-02-26: <ph id="change_20130226_SP">Updated target example per project requirement.</ph></p>
            <p>2012-10-26: Updated ref:locator markup in Target sample. </p>
        </section>
        
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_bodytext-link-LxAdv-seclaw.bodytext-p-text-ref.lnlink.dita  -->
	 <!-- JL don't need to worry about the target parent element name because it's already been transformed by other modules
	 copied link processing from link template although I'd rather call it. -->

	<xsl:template match="bodytext/link | leg:bodytext/link" priority="30">
	    <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<text>
				    <xsl:call-template name="generic-link"/>
				</text>
			</p>
	</xsl:template>
	
	<!-- JD: 2017-08-08: added and set @priority to 31 for NZ06 to match DT output, where <ref:lnlink> occurs directly under <primlaw:bodytext> -->
	<xsl:template match="bodytext/link[$streamID='NZ06'] | leg:bodytext/link[$streamID='NZ06']" priority="31">
			<xsl:call-template name="generic-link"/>
	</xsl:template>
	

    <xsl:template match="bodytext[parent::level[@leveltype=('prec.grp' , 'precgrp' , 'precgrp1' , 'precgrp2' , 'prec', 'form')] or 
        parent::level[@leveltype='comm.chap'][level[@leveltype=('prec.grp' , 'precgrp1' , 'precgrp' , 'precgrp2' , 'prec', 'form')]][not(level[@leveltype='para0'])]]/link" priority="31">
        <form:p>
            <form:text>
                <xsl:call-template name="generic-link"/>
            </form:text>
        </form:p>
    </xsl:template>

</xsl:stylesheet>