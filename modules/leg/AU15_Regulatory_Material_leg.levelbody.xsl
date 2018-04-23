<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
	<title>leg:levelbody and leg:bodytext <lnpid>id-AU15-20815</lnpid></title>
	<body>
		<section>
			<ul>
				<li class="- topic/li ">
					<sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml>
					comes in following scenarios: <ul class="- topic/ul ">
						<li class="- topic/li ">If the elements <sourcexml>leg:bodytext</sourcexml>
							is the immediate child of <sourcexml>leg:levelbody</sourcexml> then
								<b>becomes</b>
							<targetxml>admindoc:bodytext</targetxml> and populated as: <pre xml:space="preserve" class="- topic/pre ">
              <b><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>


&lt;leg:levelbody&gt;
	&lt;leg:bodytext&gt;
		&lt;p&gt;&lt;text&gt;You should notify a person of a reviewable decision that:&lt;/text&gt;&lt;/p&gt;
		...
	&lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                
</pre>
							<pre xml:space="preserve" class="- topic/pre ">

              <b><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>


&lt;admindoc:bodytext&gt;
	&lt;p&gt;&lt;text&gt;You should notify a person of a reviewable decision that:&lt;/text&gt;&lt;/p&gt;
&lt;/admindoc:bodytext&gt;

                </pre>
						</li>

						<li class="- topic/li ">If the element <sourcexml>leg:levelbody</sourcexml>
							has child <sourcexml>leg:level</sourcexml> then it <b>becomes</b>
							<targetxml>admindoc:level</targetxml> and populated as: <pre xml:space="preserve" class="- topic/pre ">
              <b><i class="+ topic/ph hi-d/i ">Example: Source XML 1</i></b>

&lt;leg:levelbody&gt;
	&lt;leg:level id="AL.AATL.CPNRDRR.CL2.1"&gt;
		&lt;leg:level-vrnt searchtype="LEGISLATION SUBCLAUSE" leveltype="subclause"&gt;
			&lt;leg:levelinfo&gt;
				&lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
			&lt;/leg:levelinfo&gt;
			&lt;leg:heading inline="true"&gt;
				&lt;desig&gt;&lt;designum&gt;&lt;refpt type="ext" id="AL.AATL.CPNRDRR.CL2.1"&gt;&lt;/refpt&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

</pre>
							<pre xml:space="preserve" class="- topic/pre ">

              <b><i class="+ topic/ph hi-d/i ">Example: Target XML 1</i></b>


&lt;admindoc:bodytext&gt;
	&lt;admindoc:level leveltype="subclause"&gt;
		&lt;ref:anchor id="AL.AATL.CPNRDRR.CL2.1" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;desig&gt;(1)&lt;/desig&gt;
		&lt;/heading&gt;
		....
	&lt;/admindoc:level&gt;
&lt;/admindoc:bodytext&gt;

                </pre>
							<note class="- topic/note ">Refer "common_rosetta_refpt" for handling of
									<sourcexml>refpt</sourcexml>.</note>
						</li>

						<li class="- topic/li ">If the input documents are having scenario
								<sourcexml>leg:bodytext/leg:heading/subtile</sourcexml> then it will
								<b>becomes</b>
							<targetxml>admindoc:bodytext/h</targetxml>
							<pre xml:space="preserve" class="- topic/pre ">

&lt;leg:levelbody&gt;
	&lt;leg:bodytext&gt;
		&lt;leg:heading&gt;
			&lt;subtitle&gt;Extracts&lt;/subtitle&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;
                      
                     
                 <b>Becomes</b>
                     

&lt;admindoc:bodytext&gt;
	&lt;h&gt;Extracts&lt;/h&gt;
	....
&lt;/admindoc:bodytext&gt;
    
                </pre>
						</li>

						<li class="- topic/li "> The first occurence of
								<sourcexml>leg:bodytext</sourcexml>
							<b>becomes</b>
							<targetxml>admindoc:bodytext</targetxml> and after if
								<sourcexml>leg:bodytext</sourcexml> has other
								<sourcexml>leg:bodytext</sourcexml> or
								<sourcexml>leg:level</sourcexml> as siblings then wrap each of them
								<targetxml>admindoc:level</targetxml> with
								<targetxml>@leveltype="unclassified"</targetxml>
							<pre xml:space="preserve" class="- topic/pre ">
                       <b>Source XML 1</b>
			
&lt;leg:level id="ASC_ARCHIVE.SGM_REL.FRONT_6"&gt;
	&lt;leg:level-vrnt toc-caption="Media Release 05/110 ASIC welcomes financial services refinements proposals paper" 
	subdoc="true" searchtype="LEGISLATION RELEASE" leveltype="release"&gt;
		&lt;leg:heading searchtype="RELEASE-TITLE"&gt;
			&lt;desig&gt;&lt;designum&gt;&lt;refpt type="ext" id="ASCR.MR.MR05-110"&gt;&lt;/refpt&gt;Media Release 05/110&lt;/designum&gt;&lt;/desig&gt;
			&lt;title&gt;ASIC welcomes financial services refinements proposals paper&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;leg:levelbody&gt;
			&lt;leg:bodytext&gt;
				&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Issued: 29&amp;nbsp;April 2005&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;

			&lt;leg:bodytext&gt;
				&lt;p&gt;&lt;text&gt;&amp;ldquo;ASIC has worked closely with the...&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:bodytext&gt;
		&lt;/leg:levelbody&gt;
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
                
          </pre>
							<b>Becomes</b>
							<pre xml:space="preserve" class="- topic/pre ">
                   <b>Target XML 1</b>
                   
               
&lt;admindoc:level xml:id="ASC_ARCHIVE.SGM_REL.FRONT_6" leveltype="instrument" includeintoc="true" alternatetoccaption="Media Release 05/110 
	ASIC welcomes financial services refinements proposals paper"&gt;
	&lt;ref:anchor id="ASCR.MR.MR05-110" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;desig&gt;Media Release 05/110&lt;/desig&gt;
		&lt;title&gt;ASIC welcomes financial services refinements proposals paper&lt;/title&gt;
	&lt;/heading&gt;
	&lt;admindoc:bodytext&gt;
		&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;Issued: 29&amp;#x00A0;April 2005&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
	&lt;/admindoc:bodytext&gt;
	&lt;admindoc:level leveltype="unclassified"&gt;
		&lt;admindoc:bodytext&gt;
			&lt;p&gt;&lt;text&gt;&amp;#x201C;ASIC has worked closely with the...&lt;/text&gt;&lt;/p&gt;
		&lt;/admindoc:bodytext&gt;
	&lt;/admindoc:level&gt;
&lt;/admindoc:level&gt;
 
      </pre>
						</li>
					</ul>
				</li>
			</ul>
		</section>
	</body>
	</dita:topic>

	<!-- [leg:bodytext] -->
	<xsl:template match="leg:levelbody | leg:levelbody[ancestor::legfragment]">
	<!--	<!-\-  Original Target XPath:  admindoc:bodytext   -\->
				<admindoc:bodytext1>
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates select="leg:bodytext[1]/heading/subtitle"/>
					<xsl:apply-templates select="leg:bodytext[1]"/>
				</admindoc:bodytext1>
		<!-\- test this mess on 'samplesInput/PS2017030112593216718LNIAUREGLTRYMATRLSFROMSRVCS_input_cpr10321000.xml' -\->
			<xsl:for-each-group select="*[preceding-sibling::leg:bodytext]" group-adjacent=".">
				<admindoc:level leveltype='unclassified'>
					<xsl:apply-templates select="node()"/>
				</admindoc:level>
			</xsl:for-each-group>-->
		<xsl:apply-templates select="@* | node()"/>
		
		
	</xsl:template>
	
	<xsl:template match="subtitle[parent::heading[parent::leg:bodytext]]">
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>
	</xsl:template>
	
	<xsl:template match="leg:bodytext[parent::leg:levelbody and not(ancestor::legfragment)]" priority="45">
		<admindoc:level leveltype="unclassified">
			<admindoc:bodytext>
				<xsl:for-each-group select="*" group-adjacent="if (self::link | self::leg:comntry) then 0 else 1">
					<xsl:choose>
						<xsl:when test="current-grouping-key()=1">
							<xsl:for-each select="current-group()">
								<xsl:apply-templates select="."/>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<p>
								<xsl:for-each select="current-group() except(self::leg:comntry)">
									<text>
										<xsl:apply-templates select="."/>
									</text>								
								</xsl:for-each>
							</p>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each-group>
			</admindoc:bodytext>
			<xsl:apply-templates select="leg:comntry"/>
		</admindoc:level>
	</xsl:template>
	
	<!-- Added due to Issue 342979 #4  file - caf10081000.xml -->
<!--	<xsl:template match="leg:bodytext[parent::leg:levelbody][not(following-sibling::*) and not(preceding-sibling::*)][ not(ancestor::legfragment)]" priority="45">
		<admindoc:bodytext>
			<xsl:apply-templates select="node()"/>
		</admindoc:bodytext>
	</xsl:template>-->

	<!--<xsl:template match="leg:levelbody[leg:level and not(leg:bodytext|ancestor::legfragment)]">

		<!-\-  Original Target XPath:  admindoc:bodytext   -\->
		<admindoc:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:bodytext>

	</xsl:template>-->
	
	<xsl:template match="leg:bodytext[parent::leg:levelbody and ancestor::legfragment]" priority="55">
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>
	</xsl:template>
	
	<xsl:template match="leg:levelinfo[leg:levelstatus[@isrepealed='true']]">
		<admindoc:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:levelinfo>
	</xsl:template>
	
	<xsl:template match="bodytext[parent::leg:comntry]">
		<annot:annotation>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</annot:annotation>
	</xsl:template>
	
	<!-- Placed these templates in here to keep within a stream specific module to avoid ambiguity for other streams. -->
	<!-- These are ambigious (without the priority) to the modules in Rosetta_figure module -->
	<xsl:template match="figure/p" priority="25">
		<note>
			<bodytext>
				<p>
					<xsl:apply-templates select="@* | node()"/>
				</p>
			</bodytext>
		</note>
	</xsl:template>
	
	<xsl:template match="figure/p/text" priority="25">
		<text>
			<xsl:apply-templates select="@* | node()"/>
		</text>
	</xsl:template>
	
</xsl:stylesheet>