<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0" 
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
						xmlns:dc="http://purl.org/dc/elements/1.1/"
						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
						xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
						xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"

						exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.doc-id-to-LexisAdvance_dcidentifier_lnmetaidentifier-scheme">
		<title><sourcexml>docinfo:doc-id</sourcexml> to
				<targetxml>dc:identifier[@lnmeta:identifier-scheme]</targetxml> <lnpid>id-CCCC-10293</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p>Identifies the normalization scheme (e.g. URI, LNI, ISSN, et al.) used for the
					identifier. <sourcexml>docinfo:doc-id</sourcexml> becomes
						<targetxml>dc:metadata/dc:identifier[@lnmeta:identifier-scheme]</targetxml>.
					Also capture  <sourcexml>docinfo:dpsi[@id-string]</sourcexml>  and prepend the
					value, followed by hyphen, to create globally unique identifier. </p>
				<note><p>If <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is not present, the dpsi value
					must be captured from one of the following sources:</p><ul>
						<li>The value in
								<sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml></li>
						<li>The value in
							<sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml></li>
						<li>The LBU manifest file</li>
						
					</ul></note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock>

&lt;docinfo:dpsi id-string="008P"/&gt;
&lt;docinfo:doc-id&gt;VIC_ACT_1998-25_PT1&lt;/docinfo:doc-id&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;008P-VIC_ACT_1998-25_PT1&lt;/dc:identifier&gt;

		</codeblock>
			</example>

			<example>
				<title>Source XML</title>
				<codeblock>

&lt;docinfo:dpsi id-string="0062"/&gt;
&lt;docinfo:doc-id&gt;CA00000005222733&lt;/docinfo:doc-id&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;0062-CA00000005222733&lt;/dc:identifier&gt;

		</codeblock>
			</example>

			<example>
				<title>Source XML - Example for UK content</title>
				<codeblock>

&lt;docinfo:doc-id&gt;5B323030395D2D312D41432E3131&lt;/docinfo:doc-id&gt;

		</codeblock>
			</example>

			<example>
				<title>Target XML - Example for UK content</title>
				<codeblock>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;0GNE-5B323030395D2D312D41432E3131&lt;/dc:identifier&gt;

		</codeblock>
			</example>

			<note>In the above example <b>0GNE</b> is the dpsi value, which will be captured from LBU
				manifest file.</note>

			<example>
				<title>Source XML - Example for CA content with the dpsi value in
						<sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml></title>
				<codeblock>

&lt;docinfo&gt;
    ...
    &lt;docinfo:doc-id&gt;CA00000000450962&lt;/docinfo:doc-id&gt;
    ...
    &lt;docinfo:lbu-meta&gt;
        &lt;docinfo:metaitem name="SRCNAME" value="ACFH"/&gt;
        &lt;docinfo:metaitem name="SRCDOCNO" value="00018000"/&gt;
        &lt;docinfo:metaitem name="DPSI" value="03MN"/&gt;
    &lt;/docinfo:lbu-meta&gt;
    ...
&lt;/docinfo&gt;

		</codeblock>
			</example>
			<example>
				<title>Target XML - Example for CA content</title>
				<codeblock>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;03MN-CA00000000450962&lt;/dc:identifier&gt;

		</codeblock>
			</example>
			<example>
				<title>Source XML - Example for CA content with the dpsi value in
						<sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml></title>
				<codeblock>

&lt;docinfo&gt;
    ...
    &lt;docinfo:doc-id&gt;474&lt;/docinfo:doc-id&gt;
    ...
    &lt;docinfo:custom-metafields&gt;
         &lt;docinfo:custom-metafield name="dpsi"&gt;03EX&lt;/docinfo:custom-metafield&gt;
    &lt;/docinfo:custom-metafields&gt;
    ...
&lt;/docinfo&gt;

		</codeblock>
			</example>
			<example>
				<title>Target XML - Example for CA content</title>
				<codeblock>

&lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;03EX-474&lt;/dc:identifier&gt;

		</codeblock>
			</example>
        
			<section>
				<title>Changes</title>
				<p>2014-06-23: <ph id="change_20140623_SSX">Note and Example removed - For CA05 Acts and
						Bills- Mapping in dc:identifier for act-no and chunk-no. Db issue #1464</ph></p>
				<p>2014-05-21:<ph id="change_20140521_AS">For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </ph></p>
				<p>2013-03-20: <ph id="change_20130320_ss">Updated the information on handling the
						situation when <sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with
						instructions to get the dpsi from
							<sourcexml>docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name="dpsi"]</sourcexml>.</ph></p>
				<p>2012-10-05: Example added for UK content.</p>
				<p>2012-12-04: Added a note and updated target example for UK content.</p>
				<p>2012-12-20: Updated the information on handling the situation when
						<sourcexml>docinfo:dpsi[@id-string]</sourcexml> is absent with instructions to
					get the dpsi from
						<sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml>
					if possible. Added an example of CA content with the dpsi in
						<sourcexml>docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="DPSI"]/@value</sourcexml>.</p>
			</section>
		</body>
	</dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita  -->

	<xsl:template match="docinfo:doc-id">

		<!--  Original Target XPath:  dc:identifier[@lnmeta:identifier-scheme]   -->

		<dc:identifier lnmeta:identifier-scheme="DOC-ID">
			<xsl:choose>
				<xsl:when test="../docinfo:dpsi/@id-string">
					<xsl:value-of select="../docinfo:dpsi/@id-string"/>
				</xsl:when>
				<xsl:when test="../docinfo:dpsi">
					<xsl:value-of select="../docinfo:dpsi"/>
				</xsl:when>
				<xsl:when test="..//docinfo:custom-metafield[ lower-case(@name) = 'dpsi' ]">
					<xsl:value-of select="..//docinfo:custom-metafield[ lower-case(@name) = 'dpsi' ]"/>
				</xsl:when>
				<!-- Vikas Rohilla : updated for the docinfo:metaitem dpsi				-->
				<xsl:when test="..//docinfo:metaitem[ lower-case(@name) = 'dpsi' ]">
					<xsl:value-of select="..//docinfo:metaitem[ lower-case(@name) = 'dpsi' ]/@value"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$dpsi"/>
				</xsl:otherwise>
			</xsl:choose>

			<xsl:text>-</xsl:text>
			<xsl:apply-templates/>
			
		</dc:identifier>     

		<xsl:if test="$streamID=('AU16', 'AU17', 'AU19CA', 'NZ02', 'NZ07-DN', 'NZ14')">
			<xsl:choose>
				<xsl:when test="ends-with(., 'CTHLEG_') or ends-with(., '_CTH') or starts-with(., 'CTHLEG_')">
					<dc:coverage>
						<location:country codescheme='ISO-3166-1' countrycode='AU'>AU</location:country>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'NSWLEG_') or ends-with(., '_NSW') or starts-with(., 'NSWLEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-NS'>NSW</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'QLDLEG_') or ends-with(., '_QLD') or starts-with(., 'QLDLEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-QL'>QLD</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'SALEG_') or ends-with(., '_SA') or starts-with(., 'SALEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-SA'>SA</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'TASLEG_') or ends-with(., '_TAS') or starts-with(., 'TASLEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-TS'>TAS</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'VICLEG_') or ends-with(., '_VIC') or starts-with(., 'VICLEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-VI'>VIC</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'WALEG_') or ends-with(., '_WA') or starts-with(., 'WALEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-WA'>WA</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'NTLEG_') or ends-with(., '_NT') or starts-with(., 'NTLEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-NT'>NT</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:when test="ends-with(., 'ACTLEG_') or ends-with(., '_ACT') or starts-with(., 'ACTLEG_')">
					<dc:coverage>
						<location:state codescheme='ISO-3166-2' statecode='AU-CT'>ACT</location:state>
					</dc:coverage>
				</xsl:when>
				<xsl:otherwise/>
			</xsl:choose>
		</xsl:if>	
	</xsl:template>

	

</xsl:stylesheet>