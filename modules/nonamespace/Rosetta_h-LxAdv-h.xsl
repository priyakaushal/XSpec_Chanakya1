<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0"
	exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_h-to-LexisAdvance_h">
		<title><sourcexml>h</sourcexml> to <targetxml>h</targetxml>
			<lnpid>id-CCCC-10348</lnpid></title>
		<body>
			<section>
				<p><sourcexml>h</sourcexml> becomes <targetxml>h</targetxml>. The attributes of <sourcexml>h</sourcexml> are
					handled as follows: <ul>
						<li><sourcexml>h/@l</sourcexml> becomes <targetxml>h/@level</targetxml>.</li>
						<li><sourcexml>h/@align</sourcexml> becomes <targetxml>h/@align</targetxml>. The valid values for
								<targetxml>h/@align</targetxml> are:<ul>
								<li>"left"</li>
								<li>"right"</li>
								<li>"center"</li>
							</ul></li>
					</ul>
				</p>
			</section>
			<!-- MDS - 2017-05-12 - Addded due to need to match DT output. -->
			<section>If the Stream is UK08CA and the parent element is <sourcexml>entry</sourcexml>, pass through the element
				and process the children.</section>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;h l="3" align="center"&gt; &lt;emph typestyle="it"&gt;Background&lt;/emph&gt; &lt;/h&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;h level="3" align="center"&gt; &lt;emph typestyle="it"&gt;Background&lt;/emph&gt; &lt;/h&gt;
				</codeblock>
			</example>
			<section>
				<title>Changes</title>
			</section>
			<!-- SEP 2015-8-12 copied from Rosetta-to-LA\modules\base\base.xsl -->

			<!-- MDS 2017-04-05 - Added from UK08CA stream inlineobject handling  -->
			<section>
				<p>Within UK08CA stream, when source is having emph followed by inlineobject inside base:h element
						<sourcexml>h/emph/inlineobject</sourcexml>than in Target it should Map with and becomes
						<targetxml>emph/ref:inlineobject</targetxml>.</p>
			</section>

			<!-- MDS 2017-05-15 - Added from /nonamespace/Rosetta_h-Chof-form_bodytext-LxAdv-form.h.xsl -->
			<section>
				<p><sourcexml>form/bodytext/h</sourcexml> becomes <targetxml>form:h</targetxml>.</p>
			</section>

			<example>
				<codeblock> &lt;h&gt; &lt;emph typestyle="bf"&gt;Table 2 Estimation of regression coefficients using the SUR
					model &lt;inlineobject type="image" mimetype="image/gif" filename="JFRC_2005_Vol13_Issue2_May_167_1.gif" /&gt;
					&lt;/emph&gt; &lt;/h&gt; <b>Becomes</b> &lt;emph typestyle="bf"&gt;Table 2 Estimation of regression
					coefficients using the SUR model &lt;ref:inlineobject&gt; &lt;ref:locator&gt; &lt;ref:locator-key&gt;
					&lt;ref:key-name name="object-key"/&gt; &lt;ref:key-value value="X-Y-JFRC_2005_Vol13_Issue2_May_167_1"/&gt;
					&lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt; &lt;/ref:locator-key&gt;
					&lt;ref:locator-params&gt; &lt;proc:param name="componentseq" value="1"/&gt; &lt;proc:param name="object-type"
					value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt; &lt;proc:param
					name="object-smi" value=""/&gt; &lt;!-- This @value assignment is done by conversion program --&gt;
					&lt;/ref:locator-params&gt; &lt;/ref:locator&gt; &lt;/ref:inlineobject&gt; &lt;/emph&gt; </codeblock>
			</example>
		</body>
	</dita:topic>

	<xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
	<xsl:template match="h">
		<xsl:choose>
			<!-- MDS 2017-05-12 - Added to match DT Output -->
			<xsl:when test="$streamID = 'UK08CA' and parent::entry">
				<xsl:apply-templates/>
			</xsl:when>
			<xsl:when test="$streamID='UK06'">
				<h>
					<xsl:apply-templates select="@*|node()"/>
				</h>
			</xsl:when>
			<!-- 2017-10-19 MDS: Added handling for parent:clause[parent::frm:div] -->
			<xsl:when test="(parent::bodytext|parent::blockquote|parent::frm:*|parent::clause)[parent::form|parent::frm:*|parent::clause[ancestor::frm:divs]]">
				<form:h>
					<xsl:if test="@l">
						<xsl:attribute name="level">
							<xsl:value-of select="@l"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:copy-of select="@* except (@typesize|@l)"/>
					<xsl:apply-templates select="node()"/>
				</form:h>
			</xsl:when>
			<!-- 20170601:  MCJ:  Excluding AU06 from this condition because the regulation schema does not support base:entry/base:toc. -->
			<!-- JL added AU05 -->
		  <!-- 2017-11-15: JD: Excluding UK01. 
        Rather than add all to this exclude list maybe we should specifically INCLUDE what we want(?)
        -->
			<!-- 2017-11-16 - CSN: Added UK03.  webstar 7050317.   
			Totally agree with JD above.   This logic is backwards. -->
		  
			<xsl:when test="parent::entry and not($streamID = ('AU05','AU06','AU15','NZ09','UK01','UK03','UK09','NZ12','UK07'))">
				<xsl:element name="toc" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:element name="toc-entry">
						<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:if test="@l">
								<xsl:attribute name="level">
									<xsl:value-of select="@l"/>
								</xsl:attribute>
							</xsl:if>
							<!-- SEP 2015-08-06 looks like there was a missing @ here, added it -->
							<xsl:if test="@align">
								<xsl:attribute name="align">
									<xsl:value-of select="@align"/>
								</xsl:attribute>
							</xsl:if>
							<title>
								<xsl:apply-templates/>
							</title>
						</heading>
					</xsl:element>
				</xsl:element>
			</xsl:when>
			<xsl:when test="child::inlineobject">
				<figure xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- SEP 2015-08-06 looks like there was a missing @ here, added it -->
					<xsl:if test="@align">
						<xsl:attribute name="align">
							<xsl:value-of select="@align"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:apply-templates/>
				</figure>
			</xsl:when>
			<!-- MDS - 2017-05-05 - As specified in '/comm/UK08_QUASI_ReguMate_COMMTOADMINDOC-Body.xsl' -->
			<xsl:when test="$streamID = 'UK08CA' and emph/inlineobject">
				<xsl:apply-templates select="node()"/>
			</xsl:when>
			<!-- 2017-12-18 - CSN - Webstar 7074749 - Remove typeofcase.  Handled in that module. -->
			<xsl:when test="(parent::case:decisionsummary) and $streamID='UK03'">
				<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@*|node()"/>
				</h>
				</bodytext>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="contains(lower-case($docinfoidtext),'overview') and //source_cttr:annotations[@id='OP15']/heading/note/h[@id='OP15A']">
						<xsl:apply-templates/>
					</xsl:when>
					<xsl:when test="contains(lower-case($docinfoidtext),'analytics') and parent::comm:citations and $streamID='AU20'">
						<xsl:apply-templates/>
					</xsl:when>
					<xsl:otherwise>
						<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:if test="@l">
								<xsl:attribute name="level">
									<xsl:value-of select="@l"/>
								</xsl:attribute>
							</xsl:if>
							<!-- SEP 2015-08-06 looks like there was a missing @ here, added it -->
							<xsl:if test="@align">
								<xsl:attribute name="align">
									<xsl:value-of select="@align"/>
								</xsl:attribute>
							</xsl:if>
							<xsl:apply-templates select="child::emph/refpt[$streamID='AU04']"/>
							<xsl:apply-templates select="child::node()"/>
						</h>
					</xsl:otherwise>
				</xsl:choose>
				
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>
	
	<xsl:template match="h/@l">
		<xsl:choose>
			<xsl:when test="$streamID='UK06'"/>
			<xsl:otherwise>
				<xsl:attribute name="level">
					<xsl:value-of select="."/>
				</xsl:attribute>		
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<xsl:template match="h/@align">
		<xsl:attribute name="align">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>
