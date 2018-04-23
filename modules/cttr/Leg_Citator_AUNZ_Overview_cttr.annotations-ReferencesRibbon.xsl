<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon">
		<title>cttr:body/cttr:content/cttr:annotations - References Ribbon
				<lnpid>id-AU20-22249</lnpid></title>

		<body>

			<section>
				<p>If <sourcexml>cttr:annotations/cttr:annotsummary</sourcexml> contains contains
						<sourcexml>@id="OI19" OR @id="OP23"</sourcexml> create
						<targetxml>navaid:navigationaid[@type="links"]</targetxml> and add
						<targetxml>@xml:id</targetxml> with value "refsection-OI19" OR
					"refsection-OP23", as appropriate.</p>
				<p>Create <targetxml>ref:anchor[@id="ref-overview-links"]</targetxml> within
						<targetxml>navaid:navigationaid</targetxml>.</p>
				<p>If <sourcexml>heading/title</sourcexml> contains non-whitespace text, use
					standard mapping to <targetxml>title</targetxml> as a child of
						<targetxml>navaid:navigationaid[@type="links"]</targetxml>. Otherwise map
						<sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> to
						<targetxml>title</targetxml>.</p>
				<p>Also, create a child element
						<targetxml>navaid:list[@xml:id="OI19-links"][@style="default"]</targetxml>
					or <targetxml>navaid:list[@xml:id="OP23-links"][@style="default"]</targetxml>,
					as appropriate, for the content of <sourcexml>cttr:annotsummary</sourcexml>.</p>
				<p>
					<sourcexml>cttr:annotsummary/table/tgroup/colspec</sourcexml> is suppressed.</p>
				<p>Each <sourcexml>cttr:annotsummary/table/tgroup/tbody/row</sourcexml> element maps
					to a separate <targetxml>index:entry</targetxml> within
						<targetxml>navaid:list</targetxml>. If a
						<sourcexml>row/entry[@colname="source"]/text()</sourcexml> = "Practical
					Guidance", Add attribute
						<targetxml>index:entry/@entrytype="practicalguidance"</targetxml> for the
					resulting <targetxml>index:entry</targetxml>.</p>
				<p>Map <sourcexml>row/entry[@colname="source-count"]</sourcexml> to
						<targetxml>index:entry/meta/metaitem[@name="source-count"][@value="{row/entry[@colname="source-count"]/text()}"]</targetxml>.</p>
				<p>Map <sourcexml>entry[colname="source"]</sourcexml> to
						<targetxml>index:entry/indexlocator/ref:lnlink/ref:marker</targetxml> and
					create
						<targetxml>index:entry/indexlocator/ref:lnlink/ref:locator[@anchoridref]</targetxml>
					as follows: <ul>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Annotated
							Legislation", @anchoridref="ref-annotated-legislation"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Halsbury's
							Laws of Australia", @anchoridref="ref-halsburys"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> =
							"Commentary", @anchoridref="ref-commentary"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Practical
							Guidance", @anchoridref="ref-guidance"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Legal Topic
							Summaries", @anchoridref="ref-legal-topic-summaries"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Journals,
							Newsletters &amp; Bulletins",
							@anchoridref="ref-journals-newsletters-bulletins"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Textbooks",
							@anchoridref="ref-textbooks"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> =
							"Dictionaries", @anchoridref="ref-dictionaries"</li>
						<li>If <sourcexml>entry[@colname="source"]/text()</sourcexml> = "Laws of New
							Zealand", @anchoridref="ref-laws-of-nz"</li>
					</ul>
				</p>
			</section>

			<example>
				<title>Source References Ribbon</title>
				<codeblock>
              &lt;!-- OI19 References Ribbon --&gt;
       &lt;cttr:annotations id="overview"&gt;
          &lt;heading&gt;
           &lt;title&gt;&lt;/title&gt;&lt;/heading&gt;
           &lt;cttr:annotsummary id="OI19" display-name="References to this item"&gt;
             &lt;table&gt;
               &lt;tgroup cols="2"&gt;
                &lt;colspec colname="source" /&gt;
                &lt;colspec colname="source-count" /&gt;
                &lt;tbody&gt;
                   &lt;row&gt;
                     &lt;entry colname="source"&gt;Annotated Legislation&lt;/entry&gt;
                     &lt;entry colname="source-count"&gt;1&lt;/entry&gt;&lt;/row&gt;
                   &lt;row&gt;
                      &lt;entry colname="source"&gt;Halsbury's Laws of Australia&lt;/entry&gt;
                      &lt;entry colname="source-count"&gt;635&lt;/entry&gt;&lt;/row&gt;
                   &lt;row&gt;
                    	&lt;entry colname="source"&gt;Commentary&lt;/entry&gt;
                    	&lt;entry colname="source-count"&gt;0&lt;/entry&gt;
                   &lt;/row&gt;
                   &lt;row&gt;
                    	&lt;entry colname="source"&gt;Practical Guidance&lt;/entry&gt;
                    	&lt;entry colname="source-count"&gt;0&lt;/entry&gt;
                   &lt;/row&gt;
                   ...
</codeblock>

				<title>Target References Ribbon</title>
				<codeblock>
                &lt;navaid:navigationaid xml:id="ref-OP19" type="links"&gt;
                    &lt;ref:anchor id="ref-overview-links"/&gt;
                    &lt;title&gt;References to this Item&lt;/title&gt;
                    	
                    &lt;navaid:list xml:id="OP19-links"&gt;
                    	&lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="1"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		    	&lt;ref:lnlink&gt;&lt;ref:marker&gt;Annotated Legislation&lt;/ref:marker&gt;
                    		    		&lt;ref:locator anchoridref="ref-annotated-legislation"/&gt;
                    		    	&lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="635"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Halsbury's Laws of Australia&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-halsburys"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;
                    		&lt;/index:entry&gt;
                        &lt;index:entry&gt;
                        	&lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                        	&lt;index:locator&gt;
                        		&lt;ref:lnlink&gt;
                        			&lt;ref:marker&gt;Commentary&lt;/ref:marker&gt;
                        			&lt;ref:locator anchoridref="ref-commentary"/&gt;
                        		&lt;/ref:lnlink&gt;
                        	&lt;/index:locator&gt;
                        &lt;/index:entry&gt;
                        &lt;index:entry entrytype="practicalguidance"&gt;
                        	&lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                        	&lt;index:locator&gt;
                        		&lt;ref:lnlink&gt;
                        			&lt;ref:marker&gt;Practical Guidance&lt;/ref:marker&gt;
                        			&lt;ref:locator anchoridref="ref-guidance"/&gt;
                        		&lt;/ref:lnlink&gt;
                        	&lt;/index:locator&gt;
                        &lt;/index:entry&gt;
                        ...
        </codeblock>
			</example>
			<example>
				<title>Source cttr:annotsummary/[@id="OP23"]</title>
				<codeblock>
        &lt;cttr:annotsummary display-name="References to this item" id="OP23"&gt;
 &lt;!-- OP23 References Ribbon  --&gt; 
&lt;table&gt;
 &lt;tgroup cols="2"&gt;
  &lt;colspec colname="source" /&gt; 
  &lt;colspec colname="source-count" /&gt; 
 &lt;tbody&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Annotated Legislation&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Laws of New Zealand&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Commentary&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Practical Guidance&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Legal Topic Summaries&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Journals, Newsletters &amp;amp; Bulletins&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Textbooks&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
 &lt;row&gt;
  &lt;entry colname="source"&gt;Dictionaries&lt;/entry&gt; 
  &lt;entry colname="source-count"&gt;0&lt;/entry&gt; 
  &lt;/row&gt;
  &lt;/tbody&gt;
  &lt;/tgroup&gt;
  &lt;/table&gt;
  &lt;/cttr:annotsummary&gt;
  &lt;/cttr:annotations&gt;
  
        </codeblock>

				<title>Target navaid:navigationaid[@xml:id="ref-OP23"]</title>
				<codeblock>
                &lt;navaid:navigationaid xml:id="ref-OP23" type="links"&gt;
                    &lt;ref:anchor id="ref-overview-links"/&gt;
                    &lt;title&gt;References to this Item&lt;/title&gt;
                    	
                    &lt;navaid:list xml:id="OP23-links"&gt;
                    	&lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="1"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		    	&lt;ref:lnlink&gt;&lt;ref:marker&gt;Annotated Legislation&lt;/ref:marker&gt;
                    		    		&lt;ref:locator anchoridref="ref-annotated-legislation"/&gt;
                    		    	&lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;
                    		&lt;/index:entry&gt;
                   		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Laws of New Zealand&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-laws-of-nz"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Commentary&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-commentary"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry entrytype="practicalguidance"&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Practical Guidance&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-guidance"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Legal Topic Summaries&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-legal-topic-summaries"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;  
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Journals, Newsletters &amp;amp; Bulletins&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-journals-newsletters-bulletins"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;  
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Textbooks&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-textbooks"/&gt;
                    		      &lt;/ref:lnlink&gt;
                    		    &lt;/indexlocator&gt;  
                    		&lt;/index:entry&gt;
                    		
                        &lt;index:entry&gt;
                    		    &lt;meta&gt;&lt;metaitem name="source-count" value="0"/&gt;&lt;/meta&gt;
                    		    &lt;indexlocator&gt;
                    		      &lt;ref:lnlink&gt;&lt;ref:marker&gt;Dictionaries&lt;/ref:marker&gt;
                    		      	&lt;ref:locator anchoridref="ref-dictionaries"/&gt;
                    		      &lt;/ref:lnlink&gt;	
                    		    &lt;/indexlocator&gt;  	
                    		&lt;/index:entry&gt;
                    &lt;/navaid:list&gt;    
                &lt;/navaid:navigationaid&gt;  
        </codeblock>
			</example>


			<section>
				<title> Changes: </title>
				<p>2016-06-07: <ph id="change_20160607_snb">Added attribute
							<targetxml>index:entry/@entrytype="practicalguidance"</targetxml> for
						the Practical Guidance entry.</ph></p>
				<p>2016-01-13: <ph id="change_20160113b_snb">Changed target markup for
							<sourcexml>heading/title</sourcexml> and
							<sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml>
						to be <targetxml>title</targetxml> instead of
							<targetxml>heading/title</targetxml>. Corrected typo: changed
							<targetxml>@anchoridref="ref-journals-newsletters-bulletins"</targetxml>
						to <targetxml>@anchoridref="ref-journals-newsletters-bulletins"</targetxml>
					</ph>
				</p>
				<p>2015-12-11: <ph id="change_20151211k_snb">Clarified wording of mapping
						instruction to create
							<targetxml>navaid:navigationaid[@type="links"]</targetxml>. Added
						creation of <targetxml>ref:anchor[@id="ref-overview-links"]</targetxml>.
						Added mapping of
							<sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml>
						to <targetxml>heading/title</targetxml> when
							<sourcexml>heading/title</sourcexml> is non-existent or empty. Added
							<targetxml>@style="default"</targetxml> to
							<targetxml>navaid:list</targetxml>. Added clarification that
							<sourcexml>cttr:annotsummary/table/tgroup/colspec</sourcexml> is
						suppressed. </ph>
				</p>
				<p>2015-12-04: <ph id="change_20151204f_snb">Changed
							<sourcexml>refsection-OI23</sourcexml> to be
							<sourcexml>refsection-OP23</sourcexml>. Changed
							<targetxml>navaid:list[@xml:id="OP19-links"]</targetxml> to be
							<targetxml>navaid:list[@xml:id="OI19-links"]</targetxml>. Minor mods to
						some XPATH expressions. Changed target values for
							<targetxml>index:entry/indexlocator/ref:lnlink/ref:locator[@anchoridref]</targetxml>,
						and clarified those values based upon mapping instructions to create based
						upon the value of
						<sourcexml>entry[colname="source"]/text()</sourcexml>.</ph>
				</p>
			</section>

		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon.dita  -->
	<!--<xsl:message>Leg_Citator_AUNZ_Overview_cttr.annotations-ReferencesRibbon.xsl requires manual
		development!</xsl:message>-->

	<xsl:key name="EntrySourceName" match="dita:source" use="@key"/>

	<xsl:variable name="EntrySource">
		<sources>
			<dita:source key="Annotated Legislation" value="ref-annotated-legislation"/>
			<dita:source key="Halsbury's Laws of Australia" value="ref-halsburys"/>
			<dita:source key="Commentary" value="ref-commentary"/>
			<dita:source key="Practical Guidance" value="ref-guidance"/>
			<dita:source key="Legal Topic Summaries" value="ref-legal-topic-summaries"/>
			<dita:source key="Journals, Newsletters &amp; Bulletins" value="ref-journals-newsletters-bulletins"/>
			<dita:source key="Textbooks" value="ref-textbooks"/> 
			<dita:source key="Dictionaries" value="ref-dictionaries"/> 
			<dita:source key="The Laws of New Zealand" value="ref-laws-of-nz"/> 
		</sources>
	</xsl:variable>
	
	<xsl:template match="source_cttr:annotations/source_cttr:annotsummary[@id='OI19' or @id='OP23']">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  navaid:navigationaid[@type="links"]   -->
		<navaid:navigationaid>
			<xsl:attribute name="type">
				<xsl:text>links</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="xml:id">
				<xsl:if test="@id='OI19'">
					<xsl:text>refsection-OI19</xsl:text>
				</xsl:if>
				<xsl:if test="@id='OP23'">
					<xsl:text>refsection-OP23</xsl:text>
				</xsl:if>
			</xsl:attribute>
			<xsl:element name="ref:anchor">
				<xsl:attribute name="id">
					<xsl:text>ref-overview-links</xsl:text>
				</xsl:attribute>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="child::heading/title">
					<heading>
						<title>
							<xsl:apply-templates/>
						</title>
					</heading>
				</xsl:when>
				<xsl:when test="@display-name">					
						<title>
							<xsl:value-of select="@display-name"/>
						</title>					
				</xsl:when>
			</xsl:choose>
			<navaid:list>
				<xsl:attribute name="xml:id">
					<xsl:if test="@id='OI19'">
						<xsl:text>OI19-links</xsl:text>
					</xsl:if>
					<xsl:if test="@id='OP23'">
						<xsl:text>OP23-links</xsl:text>
					</xsl:if>
				</xsl:attribute>
				<xsl:attribute name="style">					
						<xsl:text>default</xsl:text>
				</xsl:attribute>
				<xsl:for-each select="table/tgroup/tbody/row">
					<index:entry>						
						<xsl:if test="entry[@colname='source']/text()='Practical Guidance'">
							<xsl:attribute name="entrytype">
								<xsl:text>practicalguidance</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:if test="entry[@colname='source-count']">
							
								<meta>
									<metaitem>
										<xsl:attribute name="name">
											<xsl:text>source-count</xsl:text>
										</xsl:attribute>
										<xsl:attribute name="value">
											<xsl:value-of select="entry[@colname='source-count']/text()"/>
										</xsl:attribute>
									</metaitem>
								</meta>
							
						</xsl:if>
						<xsl:if test="entry[@colname='source']">
							<index:locator>
								<ref:lnlink>
									<ref:marker>
										<xsl:value-of select="entry[@colname='source']/text()"/>
									</ref:marker>
									<ref:locator>
										<!--<xsl:variable name="entry-source-val" select="."/>-->
										<xsl:attribute name="anchoridref">
											<xsl:value-of select="key('EntrySourceName',./entry[@colname='source']/text(),$EntrySource)/@value"/>
										</xsl:attribute>
									</ref:locator>
								</ref:lnlink>
							</index:locator>
						</xsl:if>
					</index:entry>
				</xsl:for-each>				
			</navaid:list>
			<!--<xsl:apply-templates select="node() except heading/title"/>-->
		</navaid:navigationaid>

	</xsl:template>
	
	<xsl:template match="cttr:annotsummary/table/tgroup/colspec"/>
	
	
	<!--<xsl:template match="@id=&#34;OI19&#34; OR @id=&#34;OP23&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  navaid:navigationaid[@type="links"]   -\->
		<navaid:navigationaid>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="heading/title">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/@display-name">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="cttr:annotsummary">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry   -\->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/colspec">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry   -\->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="cttr:annotsummary/table/tgroup/tbody/row">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry   -\->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="row/entry[@colname=&#34;source&#34;]/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry/@entrytype="practicalguidance"   -\->
		<index:entry>
			<xsl:attribute name="entrytype">
				<xsl:text>practicalguidance</xsl:text>
			</xsl:attribute>
		</index:entry>

	</xsl:template>

	<xsl:template match="row/entry[@colname=&#34;source-count&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry/meta/metaitem[@name="source-count"][@value="{row/entry[@colname="source-count"]/text()}"]   -\->
		<index:entry>
			<meta>
				<metaitem>
					<entry>
						<!-\-  Could not determine target element or attribute name:  <text()}"]>  -\->
						<xsl:apply-templates select="@* | node()"/>
						<!-\-  Could not determine target element or attribute name:  </text()}"]>  -\->
					</entry>
				</metaitem>
			</meta>
		</index:entry>

	</xsl:template>

	<xsl:template match="entry[colname=&#34;source&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry/indexlocator/ref:lnlink/ref:marker   -\->
		<index:entry>
			<indexlocator>
				<ref:lnlink>
					<ref:marker>
						<xsl:apply-templates select="@* | node()"/>
					</ref:marker>
				</ref:lnlink>
			</indexlocator>
		</index:entry>

	</xsl:template>

	<xsl:template match="entry[@colname=&#34;source&#34;]/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  index:entry/@entrytype="practicalguidance"   -\->
		<index:entry>
			<xsl:attribute name="entrytype">
				<xsl:text>practicalguidance</xsl:text>
			</xsl:attribute>
		</index:entry>

	</xsl:template>

	<xsl:template match="refsection-OI23">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  navaid:list[@xml:id="OP19-links"]   -\->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="refsection-OP23">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  navaid:list[@xml:id="OP19-links"]   -\->
		<navaid:list>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:list>

	</xsl:template>

	<xsl:template match="entry[colname=&#34;source&#34;]/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->
		<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>
-->
</xsl:stylesheet>
