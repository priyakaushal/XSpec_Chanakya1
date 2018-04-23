<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_embedded-video-LexAdv-embeddedvideo.dita">
		<title><sourcexml>embeddedvideo</sourcexml> to <targetxml>note[@notetype="xref"]/bodytext/embeddedvideo</targetxml> <lnpid>id-CCCC-10564</lnpid></title>
		<body>
			<section>
				<p><sourcexml>embeddedvideo</sourcexml> becomes 
					<targetxml>note[@notetype="xref"]/bodytext/embeddedvideo</targetxml> and 
					children are processed as follows:
					<ul>
						<li>Create <sourcexml>ref:anchor[@anchortype="global"]</sourcexml> as the first 
							child of <targetxml>embeddedvideo</targetxml> with attribute 
							<targetxml>@id</targetxml> containing an ID text value determined as follows:
							<ul>
								<li>Determine the id value for the nearest ancestor <sourcexml>level</sourcexml> 
									element (<sourcexml>level/heading/title/refpt/@id</sourcexml> within the nearest 
									ancestor <sourcexml>level</sourcexml> element).</li>
								<li>Count all <sourcexml>embeddedvideo</sourcexml> elements in the current document  
									and determine what number this 
									<sourcexml>embeddedvideo</sourcexml> element is in document order.</li>
								<li>Concatenate "_" with the id value from the first bullet above and with the string "_video_" and with 
									the number determined in the previous bullet (e.g. "CITEID_440848_video_0004"). The 
									resulting string is the value for the <targetxml>@id</targetxml> attribute.</li>
							</ul>
						</li>
						<li><sourcexml>title</sourcexml> becomes <targetxml>heading/title</targetxml>.</li>
						<li><sourcexml>video/ext-obj</sourcexml> becomes <targetxml>ref:inlineobject/ref:locator</targetxml>, 
							with the following descendants:
							<ul>
								<li>Create child <targetxml>ref:locator-key</targetxml>, containing 
									<targetxml>ref:key-name[@name="object-key"]</targetxml>, and 
									<targetxml>ref:key-value</targetxml> with <targetxml>@value</targetxml> attribute 
									equal to the value of <sourcexml>video/ext-obj/@embedded-url</sourcexml>.</li>
								<li>Create child <targetxml>ref:locator-params</targetxml>, containing 
									<targetxml>proc:param[@name="object-type"][@value="video"]</targetxml>, and 
									<targetxml>proc:param[@name="object-server"][@value="external-host"]</targetxml>, and 
									<targetxml>proc:param[@name="componentseq"][@value="1"]</targetxml>.</li>
							</ul>
						</li>
						<li><sourcexml>transcript</sourcexml> becomes <targetxml>transcript</targetxml>, 
							and descendants are processed as follows:
							<ul>
								<li><sourcexml>title</sourcexml> becomes <targetxml>h</targetxml></li>
								<li><sourcexml>transcript-item</sourcexml> becomes <targetxml>transcriptitem[@itemtype="dialog"]</targetxml></li>
								<li><sourcexml>transcript-item/speaker</sourcexml> becomes <targetxml>transcriptitem/transcriptspeaker</targetxml></li>
								<li><sourcexml>transcript-item/dialog</sourcexml> is dropped, but its content  is mapped to the content of 
									<targetxml>transcriptitem</targetxml>, following any target elements created by the above 
									mapping rules. E.g. each <sourcexml>transcript-item/dialog/p</sourcexml> will become 
									<targetxml>transcriptitem/p</targetxml> following the rules for mapping <sourcexml>p</sourcexml> 
									elsewhere in this document.</li>
							</ul>
						</li>
					</ul>
				</p>
			</section>
			<example>
				<title>Example 1: embedded-video Source XML</title>
				<codeblock>
					<![CDATA[
<embedded-video>
	<title>Video 5:5 Subject Matter Jurisdiction&#x2014;Definition</title>
	<video>
		<ext-obj embedded-url="https://play.vidyard.com/oBUwTYZwDKwZ1Va5UowcVe" externalhost="1" filename="SMJ 02.mp4" type="video" width="640"/>
	</video>
	<transcript>
		<title>Subject Matter Jurisdiction&#x2014;Definition</title>
		<transcript-item>
			<speaker>James M. Wagstaffe:</speaker>
			<dialog>
				<p>
					<text>...</text>
				</p>
				<p>
					<text>...</text>
				</p>
				<p>
					<text>...</text>
				</p>
			</dialog>
		</transcript-item>
	</transcript>
</embedded-video>
]]>
				</codeblock>
				
				<title>Example 1: embeddedvideo Target XML</title>
				<codeblock>
					<![CDATA[
<note notetype="xref">
	<bodytext>
		<embeddedvideo>
			<ref:anchor anchortype="global" id="CITEID_469230_video_0001"/>
			<heading>
				<title>Video 5:5 Subject Matter Jurisdiction&#x2014;Definition</title>
			</heading>
			<ref:inlineobject>
				<ref:locator>
					<ref:locator-key>
						<ref:key-name name="object-key"/>
						<ref:key-value value="https://play.vidyard.com/oBUwTYZwDKwZ1Va5UowcVe"/>
					</ref:locator-key>
					<ref:locator-params>
						<proc:param name="object-type" value="video"/>
						<proc:param name="object-server" value="external-host"/>
						<proc:param name="componentseq" value="1"/>
					</ref:locator-params>
				</ref:locator>
			</ref:inlineobject>
			<transcript>
				<h>Subject Matter Jurisdiction&#x2014;Definition</h>
				<transcriptitem itemtype="dialog">
					<transcriptspeaker>James M. Wagstaffe:</transcriptspeaker>
					<p>
						<text>...</text>
					</p>
					<p>
						<text>...</text>
					</p>
					<p>
						<text>...</text>
					</p>
				</transcriptitem>
			</transcript>
		</embeddedvideo>
	</bodytext>
</note>
]]>
				</codeblock>
			</example>
			
			
			<section>
				<title>Changes</title>
				<p>2017-10-10: <ph id="change_20171010_snb">LPA 2017 changes to support embedded 
					Wagstaffe videos: Added mapping for 
					><sourcexml>embedded-video</sourcexml> to <targetxml>embeddedvideo</targetxml> for LPA 
					Practice Notes and Articles.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_embedded-video-LexAdv-embeddedvideo.dita  -->

	<xsl:key name="embeddedvideos" match="embedded-video" use="local-name()"></xsl:key>
	<xsl:template match="embedded-video">
		<note>
			<xsl:attribute name="notetype">
				<xsl:value-of select="'xref'"/>
			</xsl:attribute>
			<bodytext>
					<!--Determine the id value for the nearest ancestor level element (level/heading/title/refpt/@id within the nearest ancestor level element-->
					<xsl:variable name="ancLevelID">
						<xsl:value-of select="ancestor::level[1]/heading/title/refpt/@id"/>
					</xsl:variable>
					<!--Count all embeddedvideo elements in the current document and determine what number this embeddedvideo element is in document order.-->
					<xsl:variable name="vidSequenceNumber">
						<xsl:value-of select="count(key('embeddedvideos', 'embedded-video')[. &lt;&lt; current() or . is current()])"/>						
					</xsl:variable>
					<!--Concatenate  "_" with the id value from the first bullet above and with the string "_video_" and with the number determined in the previous bullet (e.g.
					"CITEID_440848_video_0004"). The resulting string is the value for the @id attribute.-->
					<xsl:variable name="videoID">
						<xsl:value-of select="concat('_',$ancLevelID,'_video_',$vidSequenceNumber)"/>
					</xsl:variable>
					<xsl:element name="embeddedvideo">
						<ref:anchor>
							<xsl:attribute name="anchortype">
								<xsl:value-of select="'global'"/>
							</xsl:attribute>
							<xsl:attribute name="id">
								<xsl:value-of select="$videoID"/>
							</xsl:attribute>
						</ref:anchor>
						<xsl:if
							test="child::desig or child::title or child::subtitle or child::alttitle">
							<heading>
								<xsl:apply-templates
									select="desig | title | subtitle | alttitle"
								/>
							</heading>
						</xsl:if>
						<xsl:apply-templates
							select="*[not(self::desig or self::title or self::subtitle or self::alttitle)]"/>
					</xsl:element>
			</bodytext>
		</note>
	</xsl:template>
	
	<!-- video is discarded, and its children are converted as described elsewhere. -->
	<xsl:template match="video">
		<xsl:apply-templates select="*"/>
	</xsl:template>
		
	<!-- ext-obj mapping is based upon neptune to LA treatise mappings, but with various 
			required mods; note that ext-obj is a new Rosetta element. -->
	<xsl:template match="ext-obj">
		<xsl:variable name="vFileFormat" select="normalize-space(@fileformat)"/>
		
		<xsl:variable name="URL" select="@embedded-url"/>

		<xsl:variable name="vType" select="@type"/>
		<xsl:variable name="vBaseFilename" select="@filename"/>
		<xsl:variable name="vImageType">
			<xsl:choose>
				<xsl:when test="$vType = 'unnamed'">
					<xsl:value-of select="'default'"/>
				</xsl:when>
				<xsl:when test="$vType = 'sound'">
					<xsl:value-of select="'audio'"/>
				</xsl:when>
				<xsl:when test="$vType = 'spreadsheet'">
					<xsl:value-of select="'spreadsheet'"/>
				</xsl:when>
				<xsl:when test="$vType = 'simple-graphic'">
					<xsl:value-of select="'image'"/>
				</xsl:when>
				<xsl:when test="$vType = 'video'">
					<xsl:value-of select="'video'"/>
				</xsl:when>
				<xsl:when test="$vType = 'wordproc-doc'">
					<xsl:value-of select="'wordprocess'"/>
				</xsl:when>
				<!--				<xsl:when test="$vType = '198'">
					<xsl:value-of select="'folio'"/>
				</xsl:when>
				<xsl:when test="$vType = '200'">
					<xsl:value-of select="'html'"/>
				</xsl:when>
				<xsl:when test="$vType = '215'">
					<xsl:value-of select="'pdf'"/>
				</xsl:when>
				<xsl:when test="$vType = '226'">
					<xsl:value-of select="'hotdoc'"/>-->
				<!--</xsl:when>-->
				<xsl:otherwise>
					<xsl:value-of select="$vType"/>					
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		
		<!-- Create <caption> before the image link. -->
		<xsl:if test="following-sibling::caption">
			<caption>
				<xsl:apply-templates select="following-sibling::caption/node()"/>
			</caption>
		</xsl:if>
		
		<xsl:choose>
			<xsl:when test="parent::video">
				<ref:inlineobject>
					<ref:locator>
						<ref:locator-key>
							<ref:key-name name="object-key"/>
							<ref:key-value value="{$URL}"/>
						</ref:locator-key>
						<ref:locator-params>
							<proc:param name="object-type" value="video"/>
							<proc:param name="object-server" value="external-host"/>
							<proc:param name="componentseq" value="1"/>
						</ref:locator-params>
					</ref:locator>
				</ref:inlineobject>
			</xsl:when>
			<!--Note: The rosetta markup doesnt have anything I know of to map to an object-smi or attachment-smi,
				so commenting them out, but this is probably not going to work correctly for non-video and will
				need a change/update-->
			<!--<xsl:variable name="vSourceId"
				select="normalize-space(substring-before(substring-after($vGraphics, 'sourceid=&quot;'), '&quot;'))"/>-->
<!--			<xsl:when
				test="$vFileFormat = 'jpg' or $vFileFormat = 'jpeg' or $vFileFormat = 'gif' or $vFileFormat = 'png'">
				<ref:inlineobject>
					<ref:locator>
						<ref:locator-key>
							<ref:key-name name="object-key"/>
							<ref:key-value value="{$vBaseFilename}"/>
						</ref:locator-key>
						<ref:locator-params>
							<proc:param name="object-type" value="{$vImageType}"/>
							<!-\-<proc:param name="object-smi" value="{$vSourceId}"/>-\->
							<proc:param name="componentseq" value="1"/>
						</ref:locator-params>
					</ref:locator>
				</ref:inlineobject>
			</xsl:when>
			<xsl:otherwise>
				<ref:lnlink service="ATTACHMENT">
					<ref:locator>
						<ref:locator-key>
							<ref:key-name name="attachment-key"/>
							<ref:key-value value="{$vBaseFilename}"/>
						</ref:locator-key>
						<ref:locator-params>
							<proc:param name="attachment-type" value="{$vImageType}"/>
							<!-\-<proc:param name="attachment-smi" value="{$vSourceId}"/>-\->
							<proc:param name="componentseq" value="1"/>
						</ref:locator-params>
					</ref:locator>
				</ref:lnlink>
			</xsl:otherwise>-->
			<xsl:otherwise>
				<!--dont have smi/sourceid, so cant process these; throw an error and dont output any link-->
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select="'ERROR: ext-obj type: only supported type is currently as a child of video'"/>
					<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
					<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
					<xsl:with-param name="context" as="xs:string"><xsl:call-template name="generateXPath"/></xsl:with-param>
				</xsl:call-template>									
			</xsl:otherwise>
		</xsl:choose>
				
	</xsl:template>
	<!-- End of ext-obj template -->
	
	<!-- transcript becomes transcript -->
	<xsl:template match="transcript">
		<transcript>
			<xsl:apply-templates select="*"/>
		</transcript>
	</xsl:template>
	
	<!-- transcript-item becomes transcriptitem, only support dialog types in rosetta -->
	<xsl:template match="transcript-item">
		<transcriptitem>
			<xsl:attribute name="itemtype" >
				<xsl:value-of select="'dialog'"/>
			</xsl:attribute>
			<xsl:apply-templates select="*"/>
		</transcriptitem>
	</xsl:template>
		
	<!--MED CHANGE 161103 VIDEO new elements change-->
	<!--  transcript-items may have an optional speaker which becomes transcriptspeaker -->
	<!--  Created template as a child due to existing speaker template (not in LPA, but in DTDs) -->
	<xsl:template match="transcript-item/speaker">
		<transcriptspeaker>
			<xsl:apply-templates/>
		</transcriptspeaker>
	</xsl:template>
		
	<!-- dialog is discarded, and its children are converted as described below. -->
	<xsl:template match="dialog">
		<xsl:for-each select="p/text">
			<p>
				<text>
					<xsl:apply-templates select="* | text()"/>
				</text>
			</p>			
		</xsl:for-each>
	</xsl:template>
	
	<!--  transcript-item/dialog/para or transcript-tem/stage-dir/para -->
	<!--  The content within transcriptitem is contained in p/text which is propagated 
		  from dialog/para.-->
<!--	<xsl:template match="transcript-item/dialog/p">
		<p>
			<text>
				<xsl:apply-templates select="* | text()"/>
			</text>
		</p>
	</xsl:template>-->


</xsl:stylesheet>
