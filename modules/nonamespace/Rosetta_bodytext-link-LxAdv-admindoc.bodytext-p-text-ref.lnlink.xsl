<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_bodytext-link-LxAdv-admindoc.bodytext-p-text-ref.lnlink">
    <title><sourcexml>bodytext/link</sourcexml> to <targetxml>admindoc:bodytext/p/text/ref:lnlink</targetxml> <lnpid>id-CCCC-10535</lnpid></title>
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
            <p>If <sourcexml>link</sourcexml> element occurs as direct child of 
                <sourcexml>bodytext</sourcexml> then conversion need to move <targetxml>ref:lnlink</targetxml> 
                as child of <targetxml>p/text</targetxml>, i.e, <sourcexml>bodytext/link</sourcexml> becomes 
                <targetxml>admindoc:bodytext/p/text/ref:lnlink</targetxml>.
            </p>
        </section>
        
        <example>
            <title>Source XML : if element link is direct child of bodytext</title>
            <codeblock>

&lt;bodytext&gt;
 &lt;!-- ETC. --&gt;
 &lt;link type="image" filename="11_W003_Attach_1.gif" alttext="11_W003_Attach_1.gif"&gt;Click here to view image&lt;/link&gt;
 &lt;!-- ETC. --&gt;
&lt;/bodytext&gt;

			</codeblock>
        </example>
        
        <example>
            <title>Target XML : if element link is direct child of bodytext</title>
            <codeblock>

&lt;admindoc:bodytext&gt;
 &lt;!-- ETC. --&gt;
 &lt;p&gt;
  &lt;text&gt;
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
 &lt;/p&gt;
 &lt;!-- ETC. --&gt;
&lt;/admindoc:bodytext&gt;

			</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate
                image handling. Note summarizes move from Apollo to Blobstore application. UK is
                first LBU to move to Blobstore.</ph></p>
            <p>2016-02-04: <ph id="change_20160204_AB">Created. [RFA #2745]</ph></p>
        </section>
    </body>
	</dita:topic>


    <!-- Functionality available in /nonamespace/Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl -->
	<xsl:template match="bodytext/link"/>

<!--		<!-\-  Original Target XPath:  admindoc:bodytext/p/text/ref:lnlink   -\->
			<p>
				<text>
					<ref:lnlink>
						<xsl:apply-templates select="@* | node()"/>
					</ref:lnlink>
				</text>
			</p>
		

	</xsl:template>-->


</xsl:stylesheet>