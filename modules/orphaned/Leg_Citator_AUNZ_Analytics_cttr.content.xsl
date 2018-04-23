<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita comm cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.content">
  <title>cttr:body/cttr:content <lnpid>id-AU20-22267</lnpid></title>

  <body>

    <section>
      <p>
        <sourcexml>cttr:body/cttr:content</sourcexml> maps to 
        <targetxml>cttr:citator/cttr:body/cttr:refs[@reftype="analytical"]</targetxml>.</p>
      <p>Create <targetxml>ref:anchor[@id="ref-analytical"]</targetxml> within 
        <targetxml>cttr:refs[@reftype="analytical"]</targetxml>.</p>
      <p>
        <sourcexml>cttr:annotations</sourcexml> maps to 
        <targetxml>cttr:refsection[@reftype="citing-publications"]</targetxml>.</p>
      <p>The following mappings are general and apply to all <sourcexml>cttr:annotations</sourcexml> elements 
        in the analytics tab. Perform these mapping instructions, and then perform any mapping instructions in the 
        following sections that are specific to the value of <sourcexml>cttr:annotations/@annotgroup</sourcexml> and/or 
        <sourcexml>cttr:annotations/heading/title</sourcexml>.</p>
      <p>For <sourcexml>cttr:annotations</sourcexml> which contains
        <sourcexml>cttr:annotations/cttr:annot[@signal="citation"]</sourcexml> then map as follows:        <ul>
          <li>Map <sourcexml>cttr:annotations/heading</sourcexml> to
            <targetxml>cttr:refsection/heading</targetxml>
          </li>
          <li>Map <sourcexml>cttr:annotations/heading/title</sourcexml> to  
            <targetxml>cttr:refsection/heading/title</targetxml>, with optional <sourcexml>heading/subtitle</sourcexml> 
            content added by appending a space at the end of <targetxml>title/text()</targetxml>, and appending 
            the content of <sourcexml>heading/subtitle</sourcexml> surrounded by parentheses. NOTE: If 
            <sourcexml>heading/subtitle</sourcexml> already has parentheses around its text content, then do not 
            add additional parentheses.</li>
          <li>Optional <sourcexml>lnlink</sourcexml> may appear within <sourcexml>cttr:annotations/heading/title</sourcexml>,
            and maps to <targetxml>cttr:refsection/heading/title/ref:crossreference</targetxml>.</li>
          <li>Optional <sourcexml>link</sourcexml> may appear within <sourcexml>cttr:annotations/heading/title</sourcexml>,
            and maps to <targetxml>cttr:refsection/heading/title/lnlink</targetxml> following the rules in the general 
            markup section of this document.</li>
        </ul>
      </p>
      <p>Each <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> is mapped to a separate 
        <targetxml>cttr:refitem</targetxml> element within <targetxml>cttr:refsection</targetxml>. EXCEPTION: 
        if <sourcexml>cttr:annot</sourcexml> does not contain <sourcexml>@signal="citation"</sourcexml>, or 
        if <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> does not contain any descendant 
        non-whitespace-text content, do not create a <targetxml>cttr:refitem</targetxml> child of 
        <targetxml>cttr:refsection</targetxml>.</p>
      <p>Create <targetxml>cttr:citingpub[@treatment="citation"]e</targetxml> within each 
        <targetxml>cttr:refitem</targetxml> element.</p>
      <p>For each <targetxml>cttr:refitem</targetxml> that was created from a 
        <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> element:
        <ul>
          <li>
            <targetxml>cttr:refitem/cttr:citingpub/title</targetxml> is created from the <sourcexml>title</sourcexml> within 
            either the <sourcexml>comm:info</sourcexml> element or <sourcexml>heading</sourcexml> element 
            that is a sibling of the <sourcexml>cttr:annot/comm:citations</sourcexml> 
            being processed (<sourcexml>cttr:annot/comm:info/title</sourcexml> or 
            <sourcexml>cttr:annot/heading/title</sourcexml>). If both title elements exist, 
            use <sourcexml>cttr:annot/comm:info/title</sourcexml>. If neither element exists, create an empty 
            <targetxml>cttr:refitem/cttr:citingpub/title</targetxml> element.
            Note that this same <sourcexml>title</sourcexml> element may be used for creating titles within multiple 
            <targetxml>cttr:refitem/cttr:citingpub/title</targetxml> elements.</li>
          <li>Optional <sourcexml>lnlink</sourcexml> may appear within <sourcexml>cttr:annot/heading/title</sourcexml> 
            or <sourcexml>cttr:annot/comm:info/title</sourcexml>, 
            and maps to <targetxml>cttr:refsection/cttr:refitem/cttr:citingpub/title/ref:crossreference</targetxml>.</li>
          <li>Optional <sourcexml>link</sourcexml> may appear within <sourcexml>cttr:annot/heading/title</sourcexml> 
            or <sourcexml>cttr:annot/comm:info/title</sourcexml>,
            and maps to <targetxml>cttr:refsection/cttr:refitem/cttr:citingpub/title/lnlink</targetxml> following the rules in the general 
            markup section of this document.</li>
          <li>
            <sourcexml>/cttr:annot/comm:citations/h/ci:cite</sourcexml> is mapped to
            <targetxml>/cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite</targetxml>
          </li>
          <li>
            <sourcexml>/cttr:annot/comm:citations/h/link</sourcexml> is mapped to
            <targetxml>/cttr:refitem/cttr:citingpub/cttr:citations/ref:crossreference</targetxml>. Note that this mapping 
            may include non-standard mappings of descendants of <sourcexml>link</sourcexml>, and the source and target markup 
            examples for the specific type of analytical content should be checked accordingly.</li>
          <li>
            <sourcexml>/cttr:annot/comm:citations/h/lnlink</sourcexml> is mapped to
            <targetxml>/cttr:refitem/cttr:citingpub/cttr:citations/ref:crossreference</targetxml>. Note that this mapping 
            may include non-standard mappings of descendants of <sourcexml>lnlink</sourcexml>, and the source and target 
            markup examples for the specific type of analytical content should be checked accordingly.</li>
          <li>
            <sourcexml>/cttr:annot/comm:citations/comm:citetext</sourcexml> is mapped to
            <targetxml>/cttr:refitem/cttr:citingpub/bodytext/p/text</targetxml>
          </li>
        </ul>
      </p>
    </section>

    <example>
      <title>Source Analytical Content and Annotated Legislation</title>
      <codeblock>
         &lt;cttr:content&gt;
      	   &lt;cttr:annotations&gt;
             &lt;heading&gt;
                &lt;title&gt;Annotated Legislation&lt;/title&gt;
                &lt;subtitle&gt;(1)&lt;/subtitle&gt;
             &lt;/heading&gt;
             &lt;cttr:annot signal="citation"&gt;
                &lt;comm:info&gt;
                   &lt;title&gt;Cross on Evidence &lt;/title&gt;
                &lt;/comm:info&gt;
        </codeblock>
      <title>Target Analytical Content and  Annotated Legislation</title>
      <codeblock>
&lt;cttr:refs reftype="analytical"&gt;
	&lt;ref:anchor id="ref-analytical"/&gt;
	&lt;cttr:refsection reftype="citing-publications" xml:id="refsection-annotated-legislation"&gt;
              &lt;ref:anchor xml:id="refsection-annotated-legislation"/&gt;
             	&lt;heading&gt;
             	    &lt;title&gt;Annotated Legislation (1)&lt;/title&gt;
             	&lt;/heading&gt;
             	&lt;cttr:refitem&gt;
            	   &lt;cttr:citingpub treatment="citation"&gt;
                       &lt;title&gt;Cross on Evidence&lt;/title&gt;
                       ...
               
        </codeblock>
    </example>

    <section>
      <title>Changes</title>
      <p>2016-03-22: <ph id="change_20160322a_snb">Added <sourcexml>/cttr:annot/comm:citations/h/lnlink</sourcexml> mapping 
        (was previously just <sourcexml>/cttr:annot/comm:citations/h/link</sourcexml>, and added note that the mappings 
        to <targetxml>ref:crossreference</targetxml> may have some non-standard mappings specified in the source/target 
        examples for each specific type of analytical materials. Also added clarification that <targetxml>cttr:refitem</targetxml> 
        should not be created when <sourcexml>cttr:annot</sourcexml> does not contain <sourcexml>@signal="citation"</sourcexml>, or 
        if <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> does not contain any descendant 
        non-whitespace-text content.</ph>
      </p>
      <p>2016-01-13: <ph id="change_20160113a_snb">Added creation of 
        <targetxml>ref:anchor[@id="ref-analytical"]</targetxml>; previously it was expected that the HPCC 
        stitching process was creating an anchor, but it is now know that HPCC will not. 
        Updated target markup example accordingly, and clarified markup example titles.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211a_snb"> Added instruction to create 
        <targetxml>cttr:citator/cttr:body/cttr:refs[@reftype="analytical"]</targetxml>. Added instruction to create 
        <targetxml>cttr:refsection[@reftype="citing-publications"]</targetxml>, and a paragraph indicating that the 
        general mappins that follow inside this "cttr:body/cttr:content" are to be performed, followed by more 
        specific mappings associated with the value of <sourcexml>cttr:annotations/@annotgroup</sourcexml> and/or 
        <sourcexml>cttr:annotations/heading/title</sourcexml>. Removed mapping <sourcexml>@id</sourcexml> and creation of 
        <targetxml>@id</targetxml>; these attributes are created in the unique sections for each type of annot group, to 
        match the prototype stitched document structure. Modified mapping of <sourcexml>cttr:annotations/heading/title</sourcexml> 
        to include appending <sourcexml>heading/subtitle</sourcexml> content. Corrected <targetxml>@id</targetxml> in the 
        example target markup to be <targetxml>@xml:id</targetxml> and changed its value. Added subtitle mapping to 
        example. Moved mapping 
        instructions for <sourcexml>lnlink</sourcexml> and <sourcexml>link</sourcexml> inside 
        <sourcexml>cttr:annotations/heading/title</sourcexml> or <sourcexml>cttr:annot/heading/title</sourcexml> 
        from the "cttr:annotations@annotgroup="COM"" section to this general mappings section (because they apply 
        to all analytical tab content), and added <sourcexml>cttr:annot/comm:info/title</sourcexml> as a source for 
        this mapping. Added <targetxml>xml:id="refsection-annotated-legislation"</targetxml> to example target markup.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211b_snb">Moved mapping instructions for <sourcexml>cttr:annotations</sourcexml> 
        from to general mappings in "cttr:content/cttr:annotations[@annotgroup="HLA"]" section to this general mapping 
        section because they apply to all types of <sourcexml>cttr:annotations/@annotgroup</sourcexml>
        for the analytics tab, regardless of value of <sourcexml>cttr:annotations</sourcexml>. Changes made to those 
        mapping instructions were as follows:Restructured creation of each <targetxml>cttr:refitem</targetxml> to create a separate 
        <targetxml>cttr:refitem</targetxml> for each source <sourcexml>cttr:annot[@signal="citation"]/comm:citations</sourcexml> 
        element to make it possible to match the output mockups. Modified creation of 
        <targetxml>cttr:refitem/cttr:citingpub/title</targetxml> to use content of the title in either the sibling 
        <sourcexml>cttr:annot/comm:info/title</sourcexml> or <sourcexml>cttr:annot/heading/title</sourcexml> of 
        the <sourcexml>cttr:annot/comm:citations</sourcexml> being processed (whichever 
        exists).</ph>
      </p>
    </section>





  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.content.dita  -->
	<!--<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.content.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="cttr:body/cttr:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citator/cttr:body/cttr:refs[@reftype="analytical"]   -->
		<cttr:citator>
			<cttr:body>
				<cttr:refs>
					<xsl:apply-templates select="@* | node()"/>
				</cttr:refs>
			</cttr:body>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="citing-publications"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/@annotgroup"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/heading   -->
		<cttr:refsection>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/heading   -->
		<cttr:refsection>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annot[@signal=&#34;citation&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/heading   -->
		<cttr:refsection>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/heading   -->
		<cttr:refsection>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="heading/subtitle"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  title/text()   -->
		<title>
			<!--  Could not determine target element or attribute name:  <text()>  -->				<xsl:apply-templates select="@* | node()"/>
			<!--  Could not determine target element or attribute name:  </text()>  -->
		</title>

	</xsl:template>

	<xsl:template match="lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/heading/title/ref:crossreference   -->
		<cttr:refsection>
			<heading>
				<title>
					<ref:crossreference>
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				</title>
			</heading>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="link"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/heading/title/lnlink   -->
		<cttr:refsection>
			<heading>
				<title>
					<lnlink>
						<xsl:apply-templates select="@* | node()"/>
					</lnlink>
				</title>
			</heading>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot[@signal=&#34;citation&#34;]/comm:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="@signal=&#34;citation&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="comm:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="heading"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/comm:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/comm:info/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/heading/title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/comm:citations/h/ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite   -->
		<cttr:refitem>
			<cttr:citingpub>
				<cttr:citations>
					<lnci:cite xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/">
						<xsl:apply-templates select="@* | node()"/>
					</lnci:cite>
				</cttr:citations>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/comm:citations/h/link"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:refitem/cttr:citingpub/cttr:citations/ref:crossreference   -->
		<cttr:refitem>
			<cttr:citingpub>
				<cttr:citations>
					<ref:crossreference>
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				</cttr:citations>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/comm:citations/h/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:refitem/cttr:citingpub/cttr:citations/ref:crossreference   -->
		<cttr:refitem>
			<cttr:citingpub>
				<cttr:citations>
					<ref:crossreference>
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				</cttr:citations>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/comm:citations/comm:citetext"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:refitem/cttr:citingpub/bodytext/p/text   -->
		<cttr:refitem>
			<cttr:citingpub>
				<bodytext>
					<p>
						<text>
							<xsl:apply-templates select="@* | node()"/>
						</text>
					</p>
				</bodytext>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @id   -->
		<xsl:attribute name="id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>