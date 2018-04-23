<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"  
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	version="2.0" exclude-result-prefixes="cttr dita primlaw primlawinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-ExpiryInformation">
		<title>cttr:body/cttr:content/cttr:annotations[@id="OI17"] - Expiry Information
				<lnpid>id-AU20-22242</lnpid></title>

		<body>

			<section>
				<p>If <sourcexml>cttr:annotations[id="OI17"]</sourcexml> create
						<targetxml>primlawinfo:primlawinfo[@xml:id="refsection-OI17"]/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="expiryinformation"]</targetxml>.
					EXCEPTION: if <sourcexml>cttr:annotations[id="OI17"]</sourcexml> has no
					descendant non-whitespace-text content, then do not create any target
					markup.</p>
				<p>
					<sourcexml>heading/title</sourcexml> uses standard mapping to
						<targetxml>heading/title</targetxml>.</p>
				<p>Each <sourcexml>heading/note</sourcexml> element becomes a
						<targetxml>legisinfo:status</targetxml> element, and the content of each
					child <sourcexml>p/text</sourcexml> element becomes the content of a single
						<targetxml>legisinfo:statustext</targetxml> element inside
						<targetxml>legisinfo:status</targetxml>, separated by 2
						<targetxml>proc:nl</targetxml> elements. If a date occurs within the text
					content of <sourcexml>p/text</sourcexml>, map it to <targetxml>date</targetxml>
					and add <targetxml>date/@normdate</targetxml> if possible.</p>
			</section>

			<example>
				<title>Source cttr:annotations[@id="OI17"]</title>
				<p>and <sourcexml>title[@id="OI17.1"]</sourcexml>
				</p>
				<codeblock>
&lt;heading&gt;
	&lt;title id="OI17.1"&gt;Expiry Information&lt;/title&gt;
	&lt;note&gt;
		&lt;p&gt;
			&lt;text&gt;Scheduled Expiry Date: 19/10/2015&lt;/text&gt;
		&lt;/p&gt;
		&lt;p&gt;
			&lt;text&gt;
				&lt;lnlink service="DOC-ID" status="unval"&gt;
					&lt;marker&gt;See detail&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="009X"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="CTH_BIL_2014-228"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/text&gt;
		&lt;/p&gt;
	&lt;/note&gt;
	&lt;note&gt;
		&lt;p&gt;
			&lt;text&gt;Revised Expiry Date: 22/10/2015&lt;/text&gt;
		&lt;/p&gt;
		&lt;p&gt;
			&lt;text&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker&gt;(CTH) EVIDENCE AND PROCEDURE AMENDMENT ACT 2002&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="005X"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/text&gt;
		&lt;/p&gt;
	&lt;/note&gt;
&lt;/heading&gt;
      </codeblock>

				<title>Target cttr:annotations id="OI17"</title>
				<codeblock>
&lt;primlawinfo:primlawinfo xml:id="refsection-OI17"&gt;
	&lt;legisinfo:legisinfo&gt;
		&lt;legisinfo:statusgroup statusgroupcode="expiryinformation"&gt;
			&lt;heading&gt;
				&lt;title&gt;Expiry Information&lt;/title&gt;
			&lt;/heading&gt;
			&lt;legisinfo:status&gt;
				&lt;legisinfo:statustext&gt;Scheduled Expiry Date: 
					&lt;date normdate="2015-10-19"&gt;19/10/2015&lt;/date&gt;
					&lt;proc:nl/&gt;
					&lt;proc:nl/&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker&gt;See detail&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="009X-CTH_BIL_2014-228"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/legisinfo:statustext&gt;
			&lt;/legisinfo:status&gt;
			&lt;legisinfo:status&gt;
				&lt;legisinfo:statustext&gt;Revised Expiry Date: 
					&lt;date normdate="2015-10-22"&gt;22/10/2015&lt;/date&gt;
					&lt;proc:nl/&gt;
					&lt;proc:nl/&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker&gt;(CTH) EVIDENCE AND PROCEDURE AMENDMENT ACT 2002&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/legisinfo:statustext&gt;
			&lt;/legisinfo:status&gt;
		&lt;/legisinfo:statusgroup&gt;
	&lt;/legisinfo:legisinfo&gt;
&lt;/primlawinfo:primlawinfo&gt;
</codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2016-03-22: <ph id="change_20160322b_snb">Added clarification that no target
						markup should be created if
							<sourcexml>cttr:annotations[id="OI17"]</sourcexml> has no descendant
						non-whitespace-text content.</ph>
				</p>
				<p>2016-01-22: <ph id="change_20160122_snb">Removed erroneous text at top of this
						section
						(primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/@statusgroupcode).</ph>
				</p>
				<p>2015-12-11: <ph id="change_20151211h_snb">Changed
							<sourcexml>cttr:annotations/heading/note/[id="OI17"]</sourcexml> to be
							<sourcexml>cttr:annotations[id="OI17"]</sourcexml>. Changed target
						element from
							<targetxml>legisinfo:statusgroup[@statusgroupcode="expiryinformation"][@xml:id="refsection-OI17"]</targetxml>
						to be
							<targetxml>primlawinfo:primlawinfo[@xml:id="refsection-OI17"]/legisinfo:legisinfo/legisinfo:statusgroup[@statusgroupcode="expiryinformation"]</targetxml>.
						Clarified the mapping of <sourcexml>heading/note</sourcexml> and it's
						children. Added mapping of dates within text content. Replaced
						examples.</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-ExpiryInformation.dita  -->
	

	<xsl:template match="source_cttr:annotations[@id='OI17']">
		<xsl:if test="normalize-space(.)!=''">
		<primlawinfo:primlawinfo>
			<xsl:attribute name="xml:id">
				<xsl:text>refsection-OI17</xsl:text>
			</xsl:attribute>
			<legisinfo:legisinfo>
				<legisinfo:statusgroup>
					<xsl:attribute name="statusgroupcode">
						<xsl:text>expiryinformation</xsl:text>
					</xsl:attribute>
					<xsl:apply-templates select="heading"/>
					<xsl:for-each select="heading/note">
						<xsl:for-each select="p/text">
						<legisinfo:status>
								<legisinfo:statustext>
								<xsl:apply-templates select="@* | node()except heading"/>
								</legisinfo:statustext>							
						</legisinfo:status>
						</xsl:for-each>
					</xsl:for-each>
					
				</legisinfo:statusgroup>
			</legisinfo:legisinfo>
		</primlawinfo:primlawinfo>
		</xsl:if>
	</xsl:template>

	
<!--
	<xsl:template match="source_cttr:annotations[@id='OI17']/heading/note">		
		<legisinfo:status>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:status>

	</xsl:template>

	<xsl:template match="source_cttr:annotations[@id='OI17']/heading/note/p/text">
		
		<legisinfo:statustext>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:statustext>

	</xsl:template>-->

	

</xsl:stylesheet>
