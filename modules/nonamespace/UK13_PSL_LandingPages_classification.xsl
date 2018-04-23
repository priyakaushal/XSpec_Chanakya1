<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
	xmlns:guid="urn:x-lexisnexis:content:guid:global:1"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="psl_landingpgs-classification">
		<title>
			<sourcexml>classification</sourcexml>
			<lnpid>id-UK13-30029</lnpid>
		</title>
		<body>
			<p>The element <sourcexml>classification</sourcexml> becomes
					<targetxml>classify:classification</targetxml>. <ul>
					<li>The attribute <sourcexml>classification/@classscheme</sourcexml> becomes
							<targetxml>classify:classification/@classscheme</targetxml>.</li>
					<li>The attribute <sourcexml>classification/@ln.user-displayed</sourcexml> is
						dropped.</li>
					<li>The element <sourcexml>classification/classitem</sourcexml> becomes
							<targetxml>classify:classification/classify:classitem</targetxml>.<ul>
							<li>The attribute <sourcexml>classitem/@classscheme</sourcexml> becomes
									<targetxml>classify:classitem/@classscheme</targetxml>.</li>
							<li>The attribute <sourcexml>classitem/@ln.user-displayed</sourcexml> is
								dropped.</li>
							<li>The element <sourcexml>classitem/meta</sourcexml> becomes
									<targetxml>classify:classitem/meta</targetxml>.<ul>
									<li>The element <sourcexml>meta/metaitem</sourcexml> becomes
											<targetxml>meta/metaitem</targetxml>.<ul>
											<li>The attribute <sourcexml>metaitem/@name</sourcexml>
												becomes <targetxml>metaitem/@name</targetxml>.</li>
											<li>The attribute <sourcexml>metaitem/@value</sourcexml>
												becomes <targetxml>metaitem/@value</targetxml>.</li>
										</ul></li>
								</ul></li>
							<li>The element <sourcexml>classitem/classitem-identifier</sourcexml>
								becomes
									<targetxml>classify:classitem/classify:classitem-identifier</targetxml>.<ul>
									<li>The element
											<sourcexml>classitem-identifier/classcode</sourcexml>
										becomes
											<targetxml>classify:classitem-identifier/classify:classcode</targetxml>.
										If <sourcexml>classcode</sourcexml> is empty, an empty
											<targetxml>classify:classcode</targetxml> element is
										created.</li>
									<li>The element
											<sourcexml>classitem-identifier/classname</sourcexml>
										becomes
											<targetxml>classify:classitem-identifier/classify:classname</targetxml>.
										If <sourcexml>classname</sourcexml> is empty, an empty
											<targetxml>classify:classname</targetxml> element is
										created.</li></ul></li></ul></li></ul></p>

			<note>For important additional instructions dealing with the converison of the XPath
					<sourcexml>level/levelinfo/classification/classitem[@classscheme="topic:topicReference"]</sourcexml>
				please see the topic <xref
					href="../../common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita"
				/>.</note>
			<note>For important additional instructions regarding outputting the total number of
					<targetxml>seclaw:digest</targetxml> elements please see the topic <xref
					href="digest_count.dita"/>.</note>
			<section>
				<title>Source XML </title>
				<codeblock> &lt;level leveltype="sub-topic"&gt; &lt;levelinfo&gt; &lt;classification
					ln.user-displayed="false"&gt; &lt;classitem ln.user-displayed="false"&gt;
					&lt;classitem-identifier&gt; &lt;classname&gt;94096&lt;/classname&gt;
					&lt;classcode&gt;#LL0009Q3H#; #LL0009Q3T#; #LL000D5D0#; #LL000D5D3#;
					#LL000D88N#; #LL000D5D2#; #LL000D5D4#&lt;/classcode&gt;
					&lt;/classitem-identifier&gt; &lt;/classitem&gt; &lt;/classification&gt;
					&lt;/levelinfo&gt; &lt;heading&gt; &lt;title&gt;Types of lending&lt;/title&gt;
					&lt;/heading&gt; </codeblock>
			</section>
			<section>
				<title>Target XML </title>
				<codeblock> &lt;seclaw:level leveltype="subtopic"&gt; &lt;heading&gt;
					&lt;title&gt;Types of lending&lt;/title&gt; &lt;/heading&gt;
					&lt;seclaw:levelinfo&gt; &lt;classify:classification&gt;
					&lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;94096&lt;/classify:classname&gt;
					&lt;classify:classcode&gt;#LL0009Q3H#; #LL0009Q3T#; #LL000D5D0#; #LL000D5D3#;
					#LL000D88N#; #LL000D5D2#; #LL000D5D4#&lt;/classify:classcode&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;/classify:classification&gt; &lt;/seclaw:levelinfo&gt; </codeblock>
			</section>


			<section>
				<title>Source XML showing empty <sourcexml>classcode</sourcexml></title>
				<codeblock> &lt;classification ln.user-displayed="false"&gt; &lt;classitem
					ln.user-displayed="false"&gt; &lt;classitem-identifier&gt;
					&lt;classname&gt;93139&lt;/classname&gt; &lt;classcode/&gt;
					&lt;/classitem-identifier&gt; &lt;/classitem&gt; &lt;/classification&gt;
				</codeblock>
			</section>
			<section>
				<title>Target XML </title>
				<codeblock> &lt;classify:classification&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt;
					&lt;classify:classname&gt;93139&lt;/classify:classname&gt;
					&lt;classify:classcode/&gt; &lt;/classify:classitem-identifier&gt;
					&lt;/classify:classitem&gt; &lt;/classify:classification&gt; </codeblock>
			</section>

			<section>
				<title>Source XML showing empty <sourcexml>classname</sourcexml></title>
				<codeblock> &lt;classification ln.user-displayed="false"&gt; &lt;classitem
					ln.user-displayed="false"&gt; &lt;classitem-identifier&gt; &lt;classname/&gt;
					&lt;classcode&gt;#PA#BKGM#&lt;/classcode&gt; &lt;/classitem-identifier&gt;
					&lt;/classitem&gt; &lt;/classification&gt; </codeblock>
			</section>
			<section>
				<title>Target XML </title>
				<codeblock> &lt;classify:classification&gt; &lt;classify:classitem&gt;
					&lt;classify:classitem-identifier&gt; &lt;classify:classname/&gt;
					&lt;classify:classcode&gt;#PA#BKGM#&lt;/classify:classcode&gt;
					&lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
					&lt;/classify:classification&gt; </codeblock>
			</section>
			<section>
				<title>Source XML showing <sourcexml>classitem</sourcexml> with attribute
						<sourcexml>@classscheme="topic:topicReference"</sourcexml></title>
				<p>As noted in the instructions above, please see the topic <xref
						href="../../common_newest/Rosetta_classification_classitem_topic.topicreference-Chof-docinfo-LxAdv-doc.docinfo_classify.classification.dita"
					/> for details about this conversion.</p>
				<codeblock> &lt;level leveltype="topic"&gt; &lt;levelinfo&gt; &lt;classification
					classscheme="ln.legal"&gt; &lt;classitem classscheme="topic:topicReference"&gt;
					&lt;meta&gt; &lt;metaitem name="appliedby" value="human"/&gt; &lt;/meta&gt;
					&lt;classitem-identifier&gt; &lt;classcode
					normval="urn:topic:8f470646dcfe45df9f954cfd5b5ab02e"/&gt;
					&lt;/classitem-identifier&gt; &lt;/classitem&gt; &lt;/classification&gt;
					&lt;/levelinfo&gt; &lt;heading&gt; &lt;title&gt;Starting
					employment&lt;/title&gt; &lt;/heading&gt; &lt;!-- ... --&gt; &lt;/level&gt;
				</codeblock>
			</section>
			<section>
				<title>Target XML </title>
				<codeblock> &lt;seclaw:level leveltype="topic"&gt; &lt;heading&gt;
					&lt;title&gt;Starting employment&lt;/title&gt; &lt;/heading&gt;
					&lt;seclaw:levelinfo&gt; &lt;classify:classification classscheme="ln.legal"&gt;
					&lt;classify:classitem classscheme="topic:topicReference"&gt; &lt;meta&gt;
					&lt;metaitem name="appliedby" value="human"/&gt; &lt;/meta&gt;
					&lt;topic:topicReference
					guid:guid="urn:topic:8f470646dcfe45df9f954cfd5b5ab02e"/&gt;
					&lt;/classify:classitem&gt; &lt;/classify:classification&gt; &lt;!-- ... --&gt;
					&lt;/seclaw:levelinfo&gt; &lt;!-- ... --&gt; &lt;/seclaw:level&gt; </codeblock>
			</section>
			<section>
				<title>Changes</title>
				<p>2016-03-31: <ph id="change_20160331_JCG">Moved instructions and change log
						information here from topic <xref href="topic_trees_classification.dita"
						/>.</ph></p>
				<p>2015-11-02: <ph id="change_20151102_JCG">Added general instructions for
						converting the attribute <sourcexml>@classscheme</sourcexml> and the
						elements <sourcexml>meta</sourcexml> and <sourcexml>metaitem</sourcexml>.
						Also added an example to show the special conversion needed for the XPath
							<sourcexml>level/levelinfo/classification/classitem[@classscheme="topic:topicReference"]</sourcexml>.</ph></p>
				<p>2015-03-07: <ph id="change_20150307_JCG">Added a note regarding the handling of
						XPath
							<sourcexml>level/levelinfo/classification/classitem[@classscheme="topic:topicReference"]</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\classification.dita  -->
	<!--<xsl:message>UK13_PSL_LandingPages_classification.xsl requires manual development!</xsl:message> -->

	<xsl:template match="classification">
		<!--  Original Target XPath:  classify:classification   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

	<xsl:template match="classification/@classscheme">
		<!--  Original Target XPath:  classify:classification/@classscheme   -->
		<xsl:attribute name="classscheme">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<!--<xsl:template match="classification/@ln.user-displayed">

		<!-\-  Original Target XPath:  classify:classification/classify:classitem   -\->
		<classify:classification>
			<classify:classitem>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classitem>
		</classify:classification>

	</xsl:template>-->

	<xsl:template match="classification/classitem">
		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>
		<classify:classitem>
			<xsl:attribute name="classscheme">lpa:applicationInfo</xsl:attribute>
			<meta>
				<metaitem>
					<xsl:attribute name="name">lpa:digest-total-count</xsl:attribute>
					<xsl:attribute name="value">
						<!--<xsl:value-of select="count(/COMMENTARYDOC/comm:body/level/level/level)"/>-->
						<xsl:value-of select="parent::classification/parent::docinfo/following-sibling::comm:body/level/level/level[last()]/levelinfo/services/service/api-params/param/@value"/>
					</xsl:attribute>
				</metaitem>
			</meta>
			<classify:classitem-identifier>
				<classify:classname>application_info</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>
	</xsl:template>

	<xsl:template match="classitem/@classscheme">
		<!--  Original Target XPath:  classify:classitem/@classscheme   -->
		<xsl:attribute name="classscheme">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<!--<xsl:template match="classitem/@ln.user-displayed">

		<!-\-  Original Target XPath:  classify:classitem/meta   -\->
		<classify:classitem>
			<meta>
				<xsl:apply-templates select="@* | node()"/>
			</meta>
		</classify:classitem>

	</xsl:template>-->

	<xsl:template match="classitem/meta">
		<!--  Original Target XPath:  classify:classitem/meta   -->
		<meta>
			<xsl:apply-templates select="@* | node()"/>
		</meta>
	</xsl:template>
<!-- WPK 2017-10-19.  Changed to process classcode individually as it creates an attribute,
	and if you apply "node()" you may have elements created before the classcode creates an attribute (error)
	-->
	<!-- BRT 2017-12-13 changed code to 'apply-templates select="* except classcode' to avoid extraneous spaces  -->
	<xsl:template match="classitem/classitem-identifier">
		<topic:topicReference>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="classcode"/>
			<xsl:apply-templates select="* except classcode"/>
		</topic:topicReference>
	</xsl:template>

	<xsl:template match="classitem-identifier/classcode">
		<xsl:attribute name="guid:guid">
			<xsl:value-of select="@normval"/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="meta/metaitem">
		<!--  Original Target XPath:  meta/metaitem   -->
		<metaitem>
			<xsl:apply-templates select="@* | node()"/>
		</metaitem>
	</xsl:template>

	<xsl:template match="metaitem/@name">
		<!--  Original Target XPath:  metaitem/@name   -->
		<xsl:attribute name="name">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="metaitem/@value">
		<!--  Original Target XPath:  metaitem/@value   -->

		<xsl:attribute name="value">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<!--<xsl:template match="classitem/classitem-identifier/classcode">
		<!-\-  Original Target XPath:  classify:classitem/classify:classitem-identifier   -\->
		<topic:topicReference>
			<xsl:apply-templates select="@* | node()"/>
		</topic:topicReference>
	</xsl:template>-->

	<xsl:template match="classcode/@normval">
		<xsl:attribute name="guid:guid">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<!--<xsl:template match="classitem-identifier/classcode">
		<!-\-  Original Target XPath:  classify:classitem-identifier/classify:classcode   -\->
		<classify:classitem-identifier>
			<classify:classcode>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classcode>
		</classify:classitem-identifier>

	</xsl:template>-->

	<!--<xsl:template match="classcode">

		<!-\-  Original Target XPath:  classify:classcode   -\->
		<classify:classcode>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classcode>

	</xsl:template>-->

	<xsl:template match="classitem-identifier/classname">

		<!--  Original Target XPath:  classify:classitem-identifier/classify:classname   -->
		<classify:classitem-identifier>
			<classify:classname>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classname>
		</classify:classitem-identifier>

	</xsl:template>

	<xsl:template match="classname">

		<!--  Original Target XPath:  classify:classname   -->
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>

	</xsl:template>

	<!--<xsl:template
		match="level/levelinfo/classification/classitem[@classscheme='topic:topicReference']">

		<!-\-  Original Target XPath:  seclaw:digest   -\->
		<seclaw:digest>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:digest>

	</xsl:template>-->

	<xsl:template match="classitem">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<!--<xsl:template match="@classscheme=&#34;topic:topicReference&#34;">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

	<!--<xsl:template match="@classscheme">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

	<xsl:template match="meta">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="metaitem">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->
		<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>
