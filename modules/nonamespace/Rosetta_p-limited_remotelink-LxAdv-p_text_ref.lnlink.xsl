<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p-limited_remotelink-to-LexisAdvance_p_text_ref.lnlink">
		<title><sourcexml>p-limited/remotelink</sourcexml> to <targetxml>p/text/lnlink</targetxml> <lnpid>id-CCCC-10423</lnpid></title>
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
				<p>When <sourcexml>remotelink</sourcexml> occurs as a direct child of <sourcexml>p-limited</sourcexml> then <sourcexml>p-limited/remotelink</sourcexml> becomes <targetxml>p/text/lnlink</targetxml>.
				</p>
			</section>
        
			<example>
				<title>Source XML</title>
				<codeblock>

&lt;entry colname="col3" colsep="0" rowsep="0" align="right" valign="top"&gt;
    &lt;!-- ETC. --&gt;
    &lt;p-limited&gt;
        &lt;remotelink href="www.kpmg.com.au/default.aspx?tabid=145" hrefclass="http" newwindow="YES"&gt;
            &lt;inlineobject type="image" attachment="ln-server" filename="kpmglogo.gif" /&gt;
        &lt;/remotelink&gt;
    &lt;/p-limited&gt;
&lt;/entry&gt;

			</codeblock>
			</example>
        
			<example>
				<title>Target XML</title>
				<codeblock>

&lt;entry colname="col3" colsep="0" rowsep="0" align="right" valign="top"&gt;
    &lt;!-- ETC. --&gt;
    &lt;p&gt;&lt;text&gt;
        &lt;ref:lnlink service="URL"&gt;
            &lt;ref:marker&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="X-Y-kpmglogo"/&gt;  &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                            &lt;proc:param name="componentseq" value="1"/&gt;
                            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                            &lt;proc:param name="object-smi" value=""/&gt;  &lt;!-- This @value assignment is done by conversion program --&gt;
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
            &lt;/ref:marker&gt;
            &lt;ref:locator&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="URL"/&gt;
                    &lt;ref:key-value value="http://www.kpmg.com.au/default.aspx?
                            tabid=145"/&gt;
                &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
    &lt;/text&gt;&lt;/p&gt;
&lt;/entry&gt;

			</codeblock>
			</example>
        
			<section>
				<title>Changes</title>
				<p>2012-10-26: Updated ref:locator markup in Target sample. </p>
				<p>2013-02-18: Target example updated per inlineobject instructions. </p>
				<p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
				<p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo markup.</ph></p>
				<p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section
					<b>"Pre-Release 4.0"</b> because according to latest Apollo markup, section
					<b>"Release 4.0 and after"</b> and section <b>"Pre-Release 4.0"</b> now have
					similar conversion markup.</ph></p>
				<p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image handling.</ph></p>
				<p>2015-07-24: <ph id="change_20150724_BT">Corrected typo in title (was 
					"<sourcexml>p-limited/emph</sourcexml> to <targetxml>p/text/emph</targetxml>", corrected to be 
					"<sourcexml>p-limited/remotelink</sourcexml> to <targetxml>p/text/lnlink</targetxml>".</ph></p>
				<p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate
					image handling. Note summarizes move from Apollo to Blobstore application. UK is
					first LBU to move to Blobstore.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-limited_remotelink-LxAdv-p_text_ref.lnlink.dita  -->
	<!--    The XSLT for this module is covered in Rosetta_remotelink-LxAdv-ref.crossreference.xsl  -->

</xsl:stylesheet>