<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="NZ-Regs-Services-leg_level">
		<title>leg:level to primlaw:level <lnpid>id-NZ10-24415</lnpid></title>
		<body>
			<section>
				<ul>
					<li>
						<p><sourcexml>leg:level</sourcexml>
							<b>Becomes</b>
							<targetxml>primlaw:level</targetxml> comes with below attribute: <ul>
								<li><sourcexml>@id</sourcexml>
									<b>Becomes</b>
									<targetxml>@xml:id</targetxml></li>
								<li><sourcexml>@subdoc</sourcexml>
									<b>Becomes</b>
									<targetxml>@includeintoc</targetxml></li>
								<li><sourcexml>@toc-caption</sourcexml>
									<b>Becomes</b>
									<targetxml>@alternatetoccaption</targetxml></li>
							</ul> and <sourcexml>@leveltype</sourcexml>
							<b>Becomes</b>
							<targetxml>@leveltype</targetxml>, the values are tokenized: <ul>
								<li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="agreement"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
							</ul></p>
						<p>As per LBU recommend the rules are listed below for some unique
								[<targetxml>@leveltype</targetxml>] values in NewLexis conversion:
								<ul class="- topic/ul ">
								<li class="- topic/li ">If input
										<sourcexml>[[@leveltype="agreement"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="agreement"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="attachment"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="attachment"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="attachments"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="attachment"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="comm.intro"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="annotation-group"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="convention"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="treaty"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="group"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="chapter"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="leg-inst"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="miscins"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="proc-guide"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="reg-code"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[[@leveltype="reg"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="regulation"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[[@leveltype="subreg"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="subregulation"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="release"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="scale"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="scalep"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="scales"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="scalesp"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="schedulegrp"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="subgroup"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="subchapter"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="summary"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="introduction"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="sect"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="section"]</targetxml>
								</li>
								<li class="- topic/li ">If input
										<sourcexml>[@leveltype="subsect"]</sourcexml> becomes
										<targetxml>primlaw:level[@leveltype="subsection"]</targetxml>
								</li>
							</ul>
							<note class="- topic/note ">If the input files are having
									<sourcexml>@leveltype</sourcexml> values other than the
								tokenized list shown above the value will be set as
									<targetxml>@leveltype="unclassified"</targetxml>.</note>
							Examples are populated as below:</p>
						<pre>
	<b><i>NZ Regs Example: Source XML 1</i></b>
	
	
&lt;leg:level id="1998R451S2-1"&gt;
	&lt;leg:level-vrnt leveltype="subreg" searchtype="LEGISLATION SUBREG"&gt;



</pre>
						<pre>

              <b><i>NZ Regs Example: Target XML 1</i></b>


&lt;primlaw:level xml:id="1998R451S2-1" leveltype="subregulation"&gt;

</pre>

						<note>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from
							conversion except for the citation element.</note>
						<pre>
                
              <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="1987R200.BODY"&gt;
&lt;leg:level-vrnt leveltype="regulation" searchtype="LEGISLATION REGULATION"&gt;


</pre>
						<pre>

              <b><i>Example: Target XML 2</i></b>


&lt;primlaw:level xml:id="1987R200.BODY" leveltype="regulation"&gt;

            </pre>
						<pre>
              <b><i>Example: Source XML 3</i></b>

&lt;leg:level id="1987R200S2"&gt;
&lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 2 Interpretation"&gt;

              
</pre>
						<pre>
              <b><i>Example: Target XML 3</i></b>
              

&lt;primlaw:level xml:id="1987R200S2" leveltype="regulation" includeintoc="true" alternatetoccaption="reg 2 Interpretation"&gt;

              
            </pre>
						<note>In NL Schema <targetxml>primlaw:level</targetxml> element is used
							instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
								<sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute
								<sourcexml>@leveltype</sourcexml> with value from
								<sourcexml>leg:level-vrnt</sourcexml> element and
								<sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
							conversion.</note>
					</li>
					<li>
						<p>When target conversion are having
								<targetxml>primlaw:level@leveltype</targetxml> element with
							attribute values <targetxml>"clause, section and regulation"</targetxml>
							then within that <targetxml>primlaw:level</targetxml>, attribute
								<targetxml>@inline</targetxml> (value of <b>true</b> or
							<b>false</b>) is removed at the following locations (below listed
							elements). Removal of <targetxml>@inline</targetxml> attribute will not
							propagate to child <targetxml>primlaw:level</targetxml>. Please refer
							the below snippet for your reference: </p>
						<ul>
							<li>
								<targetxml>heading</targetxml>
							</li>
							<li>
								<targetxml>heading/desig</targetxml>
							</li>
							<li>
								<targetxml>heading/altdesig</targetxml>
							</li>
							<li>
								<targetxml>heading/title</targetxml>
							</li>
							<li>
								<targetxml>heading/alttitle</targetxml>
							</li>
							<li>
								<targetxml>alt-heading</targetxml>
							</li>
							<li>
								<targetxml>alt-heading/desig</targetxml>
							</li>
							<li>
								<targetxml>alt-heading/title</targetxml>
							</li>
							<li>
								<targetxml>alt-heading/alttitle</targetxml>
							</li>
						</ul>
						<note>There are some cases where the source value of
								<sourcexml>@leveltype</sourcexml> does not exactly match the target
							value of <targetxml>@leveltype</targetxml> then refer the below shown
							table: <table id="table_mew_znv_km">
								<tgroup cols="2">
									<colspec colnum="1" colname="col1"/>
									<colspec colnum="2" colname="col2"/>
									<thead>
										<row>
											<entry>leg:level/@leveltype </entry>
											<entry>primlaw:level/@leveltype </entry>
										</row>
									</thead>
									<tbody>
										<row>
											<entry>sect</entry>
											<entry>section</entry>
										</row>
										<row>
											<entry>conv.sect</entry>
											<entry>section</entry>
										</row>
										<row>
											<entry>reg</entry>
											<entry>regulation</entry>
										</row>
									</tbody>
								</tgroup>
							</table>
						</note>
						<pre>
                  <b><i>Example: Source XML 1</i></b>

&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="clause"&gt;
        &lt;leg:heading inline="true"&gt;&lt;title&gt;Consumers have rights and providers have duties&lt;/title&gt;&lt;desig&gt;&lt;designum&gt;1.&lt;/designum&gt;&lt;/desig&gt;&lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level&gt;
                &lt;leg:level-vrnt leveltype="subclause"&gt;
                    &lt;leg:heading inline="true"&gt;&lt;desig&gt;&lt;designum&gt;(1)&lt;/designum&gt;&lt;/desig&gt;&lt;/leg:heading&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;&lt;text&gt;Every consumer has the rights in this Code.&lt;/text&gt;&lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


               </pre>
						<pre>
                  <b><i>Example: Target XML 1</i></b>
                  
&lt;primlaw:level leveltype="clause"&gt;
	&lt;heading&gt;
		&lt;title&gt;Consumers have rights and providers have duties&lt;/title&gt;
		&lt;desig&gt;1.&lt;/desig&gt;
	&lt;/heading&gt;
	&lt;primlaw:level leveltype="subclause"&gt;
		&lt;heading&gt;
		 	&lt;desig&gt;(1)&lt;/designum&gt;
		&lt;/heading&gt;
	    &lt;primlaw:bodytext&gt;
        	&lt;p&gt;&lt;text&gt;Every consumer has the rights in this Code.&lt;/text&gt;&lt;/p&gt;
    	&lt;/primlaw:bodytext&gt;
	&lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

               </pre>

					</li>
				</ul>
			</section>
			<section>
				<title>Changes</title>
				<p>2014-02-20: <ph id="change_20140220_SS">Updated the instruction and example for
						handling <sourcexml>@inline</sourcexml> attribute when target conversion
						having <targetxml>primlaw:level@leveltype</targetxml> element with attribute
						values <b>"clause, section and regulation"</b>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ10_Regulation_From_Services\NZ-Regs-Services-leg_level.dita  -->
	<!--<xsl:message>NZ-Regs-Services-leg_level.xsl requires manual development!</xsl:message>-->

	<xsl:template match="leg:level">
		<!--  Original Target XPath:  primlaw:level   -->
		<xsl:apply-templates select="leg:level/@id"/> 
		<!-- wpk.  2018-04-04.  webstar 7129403 .  added support for levelinfo processing -->
		<xsl:apply-templates select="leg:level-vrnt | levelinfo"/>
	</xsl:template>

	<xsl:template match="leg:level-vrnt">
		<!--<!-\\-  Original Target XPath:  primlaw:level@leveltype   -\\->-->
		<primlaw:level>
			<!--<xsl:attribute name="leveltype">
				<xsl:value-of select="@leveltype"/>
			</xsl:attribute>-->
			<xsl:apply-templates select="@*"/>
			<!--<xsl:apply-templates select="leg:heading/desig"/>-->		
			<xsl:apply-templates select="leg:heading"/>
			<xsl:apply-templates select="leg:heading/title/refpt"/>
			<xsl:apply-templates select="leg:heading/desig/designum/refpt"/>
			<xsl:apply-templates select="leg:heading/leg:empleg"/>
			<xsl:apply-templates select="leg:levelbody"/>
			<xsl:apply-templates select="leg:levelstatus"/>
		</primlaw:level>
	</xsl:template>

	<xsl:template match="leg:level/@id">
		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="leg:level-vrnt/@subdoc">
		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template match="leg:level-vrnt/@toc-caption">
		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="leg:level-vrnt/@searchtype"/>

	<xsl:template match="leg:level-vrnt/@leveltype">
		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test=".='act' or .='addendum' or .='agreement' or .='amendment' or .='annex' or .='appendix' or .='article' or .='canon' or .='chapter' or .='clause' 
					or .='constitution' or .='dictionary' or .='division' or .='endnote' or .='exhibit' or .='form' or .='hierarchy-note' or .='instrument' or .='introduction'
					or .='order' or .='paragraph' or .='part' or .='preamble' or .='procedural-guide' or .='regulation' or .='regulatory-code' or .='rule' or .='schedule' 
					or .='section' or .='subarticle' or .='subchapter' or .='subclause' or .='subdivision' or .='subparagraph' or .='subpart' or .='subregulation' or .='subschedule' 
					or .='subrule' or .='subsection' or .='subtitle' or .='supplement' or .='table-of-contents' or .='title' or .='topic' or .='treaty' or .='agency' or .='subagency'
					or .='companion' or .='unclassified'">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:when test=". = 'agreement'">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:when test=". = 'attachment' or . = 'attachments'">
					<xsl:text>attachment</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'comm.intro'">
					<xsl:text>annotation-group</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'group'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'leg-inst' or . = 'miscins' or . = 'release'">
					<xsl:text>instrument</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'proc-guide'">
					<xsl:text>procedural-guide</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'reg-code'">
					<xsl:text>regulatory-code</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'reg'">
					<xsl:text>regulation</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'subreg'">
					<xsl:text>subregulation</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'scale' or . = 'scales' or . = 'schedulegrp'">
					<xsl:text>schedule</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'scalep' or . = 'scalesp'">
					<xsl:text>paragraph</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'subgroup'">
					<xsl:text>subchapter</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'summary'">
					<xsl:text>introduction</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'sect'">
					<xsl:text>section</xsl:text>
				</xsl:when>
				<xsl:when test=". = 'subsect'">
					<xsl:text>subsection</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>unclassified</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
	</xsl:template>
	
		
	<xsl:template match="leg:comntry/level/levelinfo[docinfo:authorattribution/contrib]
		| leg:comntry/level/levelinfo/docinfo:authorattribution
		| leg:comntry/level/levelinfo/docinfo:authorattribution/contrib" />
	
</xsl:stylesheet>
