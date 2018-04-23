<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:source_case="http://www.lexis-nexis.com/glp/case"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	version="2.0" exclude-result-prefixes="cttr dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-Replacing">
		<title>cttr:body/cttr:content/cttr:annotations - Replacing
			<lnpid>id-AU20-22250</lnpid></title>

		<body>

			<section>
				<p>If <sourcexml>cttr:annotations/heading/title</sourcexml> or
						<sourcexml>cttr:annotations/heading/note/h</sourcexml> contains the text
					"Replacing" create
						<targetxml>primlawhist:primlawhist/primlawhist:histgrp[xml:id="refsection-replacing"][@grptype="replacing"]</targetxml>.</p>
				<note>EXCEPTION: if the source <sourcexml>heading/note</sourcexml> contains no
						<sourcexml>p</sourcexml> elements with descendant text nodes containing
					non-whitespace text, do not create any output for this source content at
					all.</note>
				<p>NOTE: If an immediately preceding <targetxml>primlawhist:primlawhist</targetxml>
					element has already been inserted into the target document by another mapping
					instruction for the content immediately preceding this
						<sourcexml>cttr:annotations</sourcexml> element containing "Replacing",
					insert this <targetxml>primlawhist:histgrp[@grptype="replacing"]</targetxml>
					element as the last child inside the already-existing
						<targetxml>primlawhist:primlawhist</targetxml> element. Otherwise, create a
					new <targetxml>primlawhist:primlawhist</targetxml> element.</p>
				<p>Create <targetxml>ref:anchor[@id="ref-replacing"]</targetxml> inside this
						<targetxml>primlawhist:histgrp</targetxml>.</p>
				<p>Map <sourcexml>heading/title</sourcexml> and
						<sourcexml>heading/note/h</sourcexml> within
						<sourcexml>cttr:annotations</sourcexml> to be
						<targetxml>heading/title</targetxml> within the new
						<targetxml>primlawhist:histgrp</targetxml> element.</p>
				<p>Each <sourcexml>heading/note/p</sourcexml> becomes a separate
						<targetxml>primlawhist:histitem</targetxml>, and its child
						<sourcexml>text</sourcexml> elements become <targetxml>textitem</targetxml>
					elements.</p>
				<p/>
				<p>ALTERNATE Source Data delivery:</p>
				<p>If <sourcexml>cttr:annot/heading/title/text()="Replacing" AND
						leg:info/leg:officialname and leg:info/note</sourcexml> then
						<sourcexml>leg:officialname</sourcexml> becomes
						<targetxml>primlawhist:histgrp/primlawhist:histitem/textitem</targetxml>
				</p>
				<note>EXCEPTION: if the source <sourcexml>leg:info/note</sourcexml> contains no
					descendant text nodes containing non-whitespace text, do not create any output
					for this source content at all.</note>
				<p>Multiple <sourcexml>leg:info</sourcexml> elements within the same
						<sourcexml>cttr:annot</sourcexml> should result in multiple
						<targetxml>primlawhist:histitem/textitem</targetxml>.</p>
				<p>The contents of <sourcexml>note</sourcexml> should also be placed into the
						<targetxml>textitem</targetxml> following the
						<targetxml>primlawhist:histitem</targetxml> element.</p>
				<p>Multiple occurences of the same id in <sourcexml>heading/note/h</sourcexml>
					should be handled by adding an alpha character such as
						<targetxml>xml:id="OI4"...xml:id="OI4a"...xml:id="0I4b"...</targetxml>
				</p>
			</section>

			<example>
				<title>Example 1: Source Replacing - Instrument/Act Document</title>
				<codeblock>
          &lt;cttr:annotations&gt;
            &lt;heading&gt;
               &lt;title&gt;Replacing&lt;/title&gt;
               &lt;!-- OI4 Replacing --&gt;
               &lt;note&gt;
                  &lt;h id="OI4"&gt;Evidence Amendment Act 1997&lt;/h&gt;        
        </codeblock>
				<codeblock>
 &lt;cttr:annotations id="OI4"&gt;
    &lt;heading&gt;
      &lt;title id="OI141"&gt;Replacing&lt;/title&gt;
      &lt;note&gt;
         &lt;p&gt;
            &lt;text&gt;&lt;lnlink service="DOC-ID" status="valid"&gt;
                 &lt;marker&gt;(CTH) EVIDENCE ACT 1927&lt;/marker&gt;
                  &lt;api-params&gt; 
                     &lt;param name="dpsi" value="005X" /&gt;
                     &lt;param name="service" value="DOC-ID" /&gt;
                     &lt;param name="remotekey1" value="DOC-ID" /&gt;
                     &lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO" /&gt; 
                  &lt;/api-params&gt;
               &lt;/lnlink&gt;
             &lt;/text&gt;
         &lt;/p&gt;
      &lt;/note&gt;
    &lt;/heading&gt;
</codeblock>

				<title>Example 1: Target Replacing - Instrument/Act Document</title>
				<codeblock>
 &lt;primlawhist:histgrp xml:id="refsection-replacing" grptype="replacing"&gt;
     &lt;ref:anchor id="ref-replacing"/&gt;
     &lt;heading&gt;
        &lt;title xml:id="OI141"&gt;Replacing&lt;/title&gt;
     &lt;/heading&gt;
     &lt;primlawhist:histitem&gt;
        &lt;textitem&gt;
           &lt;ref:lnlink service="DOCUMENT"&gt;
              &lt;ref:marker&gt;(CTH) EVIDENCE ACT 1927&lt;/ref:marker&gt;
              &lt;ref:locator&gt;
                  &lt;ref:locator-key&gt;
                     &lt;ref:key-name name="DOC-ID"/&gt;
                     &lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
                  &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt;
           &lt;/ref:lnlink&gt;
       &lt;/textitem&gt;
    &lt;/primlawhist:histitem&gt;
     ...   
        </codeblock>
			</example>
			<example>
				<title>Example 2: Source: cttr:annot/heading/title/text()="Replacing" AND
					leg:info/leg:officialname and leg:info/note exist.</title>
				<codeblock>
          &lt;cttr:annot&gt;
            &lt;heading&gt;
              &lt;title&gt;Replacing&lt;/title&gt; 
            &lt;/heading&gt;
           &lt;leg:info&gt;
             &lt;leg:officialname&gt;Evidence Amendment Act 1997&lt;/leg:officialname&gt; 
             &lt;note&gt;
             &lt;!-- OI5 See Full Comparative Table  --&gt; 
               &lt;p&gt;
                &lt;text&gt;see...&lt;/text&gt; 
               &lt;/p&gt;
             &lt;/note&gt;
           &lt;/leg:info&gt;
</codeblock>

				<title>Example 2: Target: cttr:annot/heading/title/text()="Replacing" AND
					leg:info/leg:officialname and leg:info/note exist.</title>
				<codeblock>
       &lt;primlawhist:histgrp xml:id="refsection-replacing"&gt;
          &lt;heading&gt; 
            &lt;title&gt;Replacing&lt;/title&gt;
          &lt;/heading&gt;
        
            &lt;primlawhist:histitem&gt;   
               &lt;textitem&gt;Evidence Amendment Act 1997&lt;/h&gt;
                  
               &lt;textitem&gt;see...&lt;/textitem&gt;
             ...  
          
 </codeblock>
			</example>
			<example>
				<title>Example 3: Source Replacing - Provision Document</title>
				<codeblock>
&lt;cttr:annotations id="OP14"&gt;
	&lt;heading&gt;
     ...   
    &lt;note&gt;
    	&lt;h&gt;Replacing&lt;/h&gt;
    	&lt;p&gt;
    		&lt;text&gt;
    			&lt;lnlink service="DOC-ID" status="valid"&gt;
    				&lt;marker&gt;(CTH) EVIDENCE ACT 1927&lt;/marker&gt;
    				&lt;api-params&gt;
    					&lt;param name="remotekey1" value="DOC-ID"/&gt;
    					&lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO"/&gt;
    					&lt;param name="dpsi" value="005X"/&gt;
    				&lt;/api-params&gt;
    			&lt;/lnlink&gt;
    		&lt;/text&gt;
    	&lt;/p&gt;
    	&lt;!--
    OP19.2 Instrument info - See Full Comparative Table
    --&gt;
    	&lt;p&gt;
    		&lt;text&gt;see &lt;lnlink service="DOC-ID" status="valid"&gt;
    				&lt;marker&gt;Full Comparative Table&lt;/marker&gt;
    				&lt;api-params&gt;
    					&lt;param name="remotekey1" value="DOC-ID"/&gt;
    					&lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO"/&gt;
    					&lt;param name="dpsi" value="005X"/&gt;
    				&lt;/api-params&gt;
    			&lt;/lnlink&gt;
    		&lt;/text&gt;
    	&lt;/p&gt;
    &lt;/note&gt;
     ...   
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
</codeblock>

				<title>Example 3: Target Replacing - Provision Document</title>
				<codeblock>
&lt;cttr:legisinfo&gt;
	...
	&lt;primlawhist:primlawhist&gt;
		...
		&lt;primlawhist:histgrp grptype="replacing" xml:id="refsection-replacing"&gt;
			&lt;ref:anchor id="ref-replacing"/&gt;
			&lt;heading&gt;
				&lt;title&gt;Replacing&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histitem&gt;
				&lt;textitem&gt;
					&lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker&gt;(CTH) EVIDENCE ACT 1927&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/textitem&gt;
			&lt;/primlawhist:histitem&gt;
			&lt;primlawhist:histitem&gt;
				&lt;textitem&gt;see &lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker&gt;Full Comparative Table&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/textitem&gt;
			&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
		...
	&lt;/primlawhist:primlawhist&gt;
	...
&lt;/cttr:legisinfo&gt;
</codeblock>
			</example>


			<section>
				<title> Changes: </title>
				<p>2016-06-03: <ph id="change_20160603a_snb">Fixed typo in target markup example to
						contain @service="DOCUMENT" (was "URL").</ph></p>
				<p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress
						output when only whitespace exists within descendant text nodes.</ph></p>
				<p>2015-12-11: <ph id="change_20151211b_snb">Added markup structure for provisions.
						Removed instrument XPATH
							<sourcexml>cttr:annotations/heading/note/h/[@id="OI4"]</sourcexml> since
						provisions do not have this @id, and changed to test for existence of the
						title text "Replacing". Added note to indicate
							<targetxml>primlawhist:histgrp[@grptype="replacing"]</targetxml> should
						be inserted as the last child inside any already-existing, immediately
						preceding <targetxml>primlawhist:primlawhist</targetxml>. Clarified mapping
						of <sourcexml>heading/note/p</sourcexml> to specify the grouping of target
						elements. Added <targetxml>grptype="replacing"</targetxml> to Example 1.
						Changed <targetxml>ref:anchor/@id="ref-OI4"</targetxml> to
							<targetxml>ref:anchor/@id="ref-replacing"</targetxml> in Example 1.
						Added element end tags in Example 1 target markup. Added Example 3 for
						Provision markup.</ph>
				</p>
				<p>2015-12-04: <ph id="change_20151204h_snb">Added creation of
							<targetxml>ref:anchor[@id="ref-replacing"]</targetxml>, and added
							<targetxml>primlawhist:histgrp/@grptype="replacing"</targetxml>.</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-Replacing.dita  -->



	<!--<xsl:template match="cttr:annotations/heading/note/h">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[xml:id="refsection-replacing"][@grptype="replacing"]   -\->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="heading/note">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist   -\->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="p">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist   -\->
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp[@grptype="replacing"]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="heading/title">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="heading/note/h">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="heading/note/p">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem   -\->
		<primlawhist:histitem>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="text">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  textitem   -\->
		<textitem>
			<xsl:apply-templates select="@* | node()"/>
		</textitem>

	</xsl:template>
<!-\-
	<xsl:template
		match="cttr:annot/heading/title/text()='Replacing' and leg:info/leg:officialname and leg:info/note">
		<!-\\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\\->

		<!-\\-  Original Target XPath:  primlawhist:histgrp/primlawhist:histitem/textitem   -\\->
		<primlawhist:histgrp>
			<primlawhist:histitem>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitem>
		</primlawhist:histgrp>

	</xsl:template>-\->

	<xsl:template match="leg:officialname">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp/primlawhist:histitem/textitem   -\->
		<primlawhist:histgrp>
			<primlawhist:histitem>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlawhist:histitem>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="leg:info/note">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/textitem   -\->
		<primlawhist:histitem>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="leg:info">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/textitem   -\->
		<primlawhist:histitem>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="cttr:annot">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/textitem   -\->
		<primlawhist:histitem>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="note">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  textitem   -\->
		<textitem>
			<xsl:apply-templates select="@* | node()"/>
		</textitem>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/note/h[@id='OI4']">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp[@grptype="replacing"]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>-->

</xsl:stylesheet>
