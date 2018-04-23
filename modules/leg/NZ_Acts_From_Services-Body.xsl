<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:dc="http://purl.org/dc/elements/1.1/" 
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	version="2.0" exclude-result-prefixes="dita ci glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="legis-Body">
		<title>Body <lnpid>id-NZ06-23407</lnpid></title>
		<shortdesc>All of the following are descendants of
				<targetxml>legis:body</targetxml>. Handle these in document order unless
			specifically stated otherwise. Refer to General Markup Section for
			handling of children (including mixed content).</shortdesc>
		<body>
			<section>
				<title>legis:body</title>
				<p><sourcexml>leg:body</sourcexml> becomes
						<targetxml>legis:body</targetxml> is created and children as
					described below: <ul>
						<li><sourcexml>leg:level</sourcexml> becomes
								<targetxml>primlaw:level</targetxml> comes with
								<sourcexml>@id</sourcexml> becomes
								<targetxml>@xml:id</targetxml> comes with
								<sourcexml>@toc-caption</sourcexml> becomes
								<targetxml>@alternatetoccaption</targetxml> comes with
								<sourcexml>@subdoc</sourcexml> becomes
								<targetxml>@includeintoc</targetxml> and
								<sourcexml>@leveltype</sourcexml> becomes
								<targetxml>@leveltype</targetxml> the values are tokenized, <ul>
								<li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="attachment"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="convention"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="glossary"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="specification"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subagency"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
								<li><targetxml>
										primlaw:level[@leveltype="subschedule"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
								<li><targetxml>primlaw:level[@leveltype="volume"</targetxml></li>
							</ul> and populated as: <pre>
                             <!-- NZ Services -->
                                    
                        
                        &lt;leg:level id="NZSTATUTES_ACTS-H1.SGM_2001A31-FRONT-CONTENTS" leveltype="comm.chap"&gt;
                            &lt;heading searchtype="COMMENTARY"&gt;
                                &lt;title&gt;&lt;refpt id="2001A31-FRONT-CONTENTS" type="ext"/&gt;Habeas Corpus Act&amp;#xA0;2001&lt;/title&gt;
                            &lt;/heading&gt;
                            &lt;!-- ... --&gt;
                        &lt;/leg:level&gt;
                        
                                    
                                      <b>Becomes</b>
                                      
                        
                        &lt;primlaw:level leveltype="chapter"&gt;
                            &lt;ref:anchor id="nz_2001A31-FRONT-CONTENTS" anchortype="global"/&gt;
                                &lt;heading&gt;
                                    &lt;title&gt;Habeas Corpus Act&amp;#xA0;2001&lt;/title&gt;
                                &lt;/heading&gt;                
                                &lt;!-- .... --&gt;
                        &lt;/primlaw:level&gt;
                                      
                        </pre>
							<p>There are some cases where the source value of
									<sourcexml>@leveltype</sourcexml> does not exactly match the
								target value of <targetxml>@leveltype</targetxml> shown above,
								but the source value is an abbreviation or close approximation
								of one of the listed target values above. In that case, assign
								the source value to the closely approximate target value. For
								example, <sourcexml>@leveltype="subsect"</sourcexml> becomes
									<targetxml>@leveltype="subsection"</targetxml> in the target.
								However, if the source value is the plural of an existing target
								value, this rule does not apply, and unless there is a specific
								assignment for the term, assign it to "unclassified". For
								example, <sourcexml>@leveltype="forms"</sourcexml> becomes
									<targetxml>@leveltype="unclassified"</targetxml> in the
								target. Below are some anomolous source values of
									<sourcexml>@leveltype</sourcexml>and their assigned target
								values: <table id="table_mew_znv_km2">
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
												<entry>subsect</entry>
												<entry>subsection</entry>
											</row>
											<row>
												<entry>schedulegrp </entry>
												<entry>unclassified</entry>
											</row>
											<row>
												<entry>forms  </entry>
												<entry>unclassified</entry>
											</row>
											<row>
												<entry>rul </entry>
												<entry>rule </entry>
											</row>
											<row>
												<entry>subrul </entry>
												<entry>subrule </entry>
											</row>
											<row>
												<entry>chap </entry>
												<entry>chapter </entry>
											</row>
											<row>
												<entry>conv.sect  </entry>
												<entry>section </entry>
											</row>
											<row>
												<entry>subart </entry>
												<entry>subarticle</entry>
											</row>
										</tbody>
									</tgroup>
								</table>
							</p>
							<note>If the input files have <sourcexml>@leveltype</sourcexml>
								values other than the tokenized list or the anomalous list shown
								above, the value will be set as
									<targetxml>@leveltype="unclassified"</targetxml></note>
						</li>
						<li>
							<pre>
    
                        <!-- NZ Services -->
                            
                    
                    &lt;leg:level&gt;
                        &lt;leg:level-vrnt leveltype="notestable" searchtype="LEGISLATION" subdoc="false" toc-caption="Table A"&gt;
                            &lt;leg:heading&gt;
                                &lt;title align="left" searchtype="TABLE-TITLE"&gt;
                                    &lt;refpt id="CTH_ACT_1970-121_NOTESTBLA" type="ext"/&gt;Table A&lt;/title&gt;
                            &lt;/leg:heading&gt;
                        &lt;/leg:level-vrnt&gt;
                        &lt;!-- ... --&gt;
                    &lt;/leg:level&gt;
                    
                                  
                                  <b>becomes</b>
                           
                    
                    &lt;primlaw:level leveltype="unclassified" subdoc="true" toc-caption="Table A"]&gt;
                        &lt;ref:anchor id="CTH_ACT_1970-121_NOTESTBLA" anchortype="global"/&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Table A&lt;/title&gt;
                        &lt;/heading&gt;                
                        &lt;!-- .... --&gt;
                    &lt;/primlaw:level&gt;
                                  
                        </pre>
							<note>
								<p>In New Lexis <targetxml>primlaw:level</targetxml> element is
									used instead of Rosetta elements <sourcexml>leg:level
									</sourcexml>and <sourcexml>leg:levelvrnt</sourcexml>. Pick the
									@leveltype value from <sourcexml>leg:level-vrnt
									</sourcexml>and the element
										<sourcexml>leg:level-vrnt</sourcexml> will be suppressed
									from conversion.</p>
							</note>
						</li>
						<li>
							<p>When target conversion are having
									<targetxml>primlaw:level@leveltype</targetxml> element with
								attribute values <targetxml>"clause, section and
									regulation"</targetxml> then within that
									<targetxml>primlaw:level</targetxml>, attribute
									<targetxml>@inline</targetxml> (value of <b>true</b> or
									<b>false</b>) is removed at the following locations (below
								listed elements). Removal of <targetxml>@inline</targetxml>
								attribute will not propagate to child
									<targetxml>primlaw:level</targetxml>. Please refer the below
								snippet for your reference: </p>
							<ul>
								<li><targetxml>heading</targetxml></li>
								<li><targetxml>heading/desig</targetxml></li>
								<li><targetxml>heading/altdesig</targetxml></li>
								<li><targetxml>heading/title</targetxml></li>
								<li><targetxml>heading/alttitle</targetxml></li>
								<li><targetxml>alt-heading</targetxml></li>
								<li><targetxml>alt-heading/desig</targetxml></li>
								<li><targetxml>alt-heading/title</targetxml></li>
								<li><targetxml>alt-heading/alttitle</targetxml></li>
							</ul>
							<note>There are some cases where the source value of
									<sourcexml>@leveltype</sourcexml> does not exactly match the
								target value of <targetxml>@leveltype</targetxml> then refer the
								below shown table: <table id="table_mew_znv_km">
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

&lt;leg:level id="1988A4-SCHD2-1"&gt;
    &lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true" toc-caption="cl 1."&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;desig searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;&lt;refpt id="1988A4-SCHD2-1" type="ext"/&gt;1.&lt;/designum&gt;&lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;p&gt;&lt;text&gt;For the purposes of ...&lt;/text&gt;&lt;/p&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

               </pre>
							<pre>
                  <b><i>Example: Target XML 1</i></b>
                  
&lt;primlaw:level alternatetoccaption="cl 1." includeintoc="true" leveltype="clause"&gt;
    &lt;ref:anchor anchortype="global" id="1988A4-SCHD2-1"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;1.&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;&lt;text&gt;For the purposes of ...&lt;/text&gt;&lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;


               </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:heading</sourcexml> becomes
								<targetxml>heading</targetxml> with attribute
								<sourcexml>@inline</sourcexml> becomes
								<targetxml>@inline</targetxml> which has tokenized values and
							populated as: <ul>
								<li>
									<targetxml>heading[@inline="true"]</targetxml>
								</li>
								<li>
									<targetxml>heading[@inline="false"]</targetxml>
								</li>
								<li>
									<targetxml>heading[@align="left"]</targetxml>
								</li>
								<li>
									<targetxml>heading[@align="right"]</targetxml>
								</li>
								<li>
									<targetxml>heading[@align="center"]</targetxml>
								</li>
							</ul>
							<note>NZ does not use heading @align </note>
							<pre>
                                      
                            &lt;leg:heading inline="true"&gt;
                                &lt;desig&gt;&lt;designum&gt;4&lt;/designum&gt;&lt;/desig&gt;
                                &lt;title&gt;Proof of voluminous or complex documents&lt;/title&gt;
                            &lt;/leg:heading&gt; 
                            
                            
                            <b>becomes</b>
                                         
                                         
                             &lt;heading inline="true"&gt;  
                                &lt;desig&gt;4&lt;/desig&gt;
                                &lt;title&gt;Proof of voluminous or complex documents&lt;/title&gt;
                            &lt;/heading&gt;
                            
                            

            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>blockquote/legfragment</sourcexml> becomes
								<targetxml>primlaw:excerpt</targetxml>
							<note>Refer common_rosetta_legfragment.dita and
								common_rosetta_blockquote.dita for handling of
								blockquote.</note>
							<sourcexml>leg:heading</sourcexml> becomes
								<targetxml>heading</targetxml> with attribute
								<sourcexml>@inline</sourcexml> becomes
								<targetxml>@inline</targetxml> which has tokenized values and
							populated as: <ul>
								<li><targetxml>heading[@inline="true"]</targetxml></li>
								<li><targetxml>heading[@inline="false"]</targetxml></li>
								<li><targetxml>heading[@align="left"]</targetxml></li>
								<li><targetxml>heading[@align="right"]</targetxml></li>
								<li><targetxml>heading[@align="center"]</targetxml></li>
							</ul>
							<note>examples on how the align and inline attributes are used is
								outlined in the general instructions for
									<sourcexml>heading</sourcexml></note>
							<pre>
          
                                
                                &lt;leg:heading inline="true"&gt;
                                    &lt;desig&gt;&lt;designum&gt;4&lt;/designum&gt;&lt;/desig&gt;
                                    &lt;title&gt;Proof of voluminous or complex documents&lt;/title&gt;
                                &lt;/leg:heading&gt;
                                
                                
                                              <b>becomes</b>
                                
                                
                                &lt;heading inline="true"&gt;  
                                    &lt;desig&gt;4&lt;/desig&gt;
                                    &lt;title&gt;Proof of voluminous or complex documents&lt;/title&gt;
                                &lt;/heading&gt;
                                
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>
							with attributes <sourcexml>@inline</sourcexml> becomes
								<targetxml>@inline</targetxml> with tokenized values of "true"
							and "false" <sourcexml>@align</sourcexml> becomes
								<targetxml>@align</targetxml> with tokenized values and
							populated as: <ul>
								<li>title[@align="left"]</li>
								<li>title[@align="right"]</li>
								<li>title[@align="center"]</li>
							</ul>
							<p>If the input document has title/defterm scenario then defterm
								within a title can be dropped, but the content of the tag is
								retained and no text is dropped. </p>
							<pre>
                            
                            &lt;leg:level&gt;
                                &lt;leg:level-vrnt leveltype="clause"&gt;
                                    &lt;leg:heading inline="true"&gt;
                                        &lt;desig&gt;&lt;designum&gt;4&lt;/designum&gt;&lt;/desig&gt;
                                        &lt;title&gt;Proof of voluminous or complex documents&lt;/title&gt;
                                    &lt;/leg:heading&gt;
                                    &lt;!-- ... --&gt;
                                &lt;/leg:level-vrnt&gt;
                            &lt;/leg:level&gt;
                              
                                        <b>becomes</b>
                                      
                            
                            &lt;primlaw:level leveltype="clause"&gt;
                                &lt;heading&gt;
                                    &lt;desig&gt;4&lt;/desig&gt;            
                                    &lt;title&gt;Proof of voluminous or complex documents&lt;/title&gt;
                                &lt;/heading&gt;      
                            &lt;/primlaw:level&gt;
                            
                          </pre>
						</li>
					</ul>
					<ul>
						<li>
							<p>If the input documents have the scenario
									<sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml> then
								convert to <targetxml> primlaw:bodytext/h</targetxml></p>
							<pre>
                            
                         &lt;leg:bodytext&gt; 
                         &lt;leg:heading&gt;
                              &lt;subtitle&gt;Excerpts only: Part 2A and Schedule 1A&lt;/subtitle&gt; 
                          &lt;/leg:heading&gt;
                         ......
                        &lt;/leg:bodytext&gt;

                              
                                        <b>becomes</b>
                                      
                            
                            &lt;primlaw:level leveltype="clause"&gt;
                               &lt;primlaw:bodytext&gt;
                                &lt;h&gt;Excerpts only: Part 2A and Schedule 1A&lt;/h&gt;
                                ....
                                &lt;/primlaw:bodytext&gt;
                            &lt;/primlaw:level&gt; 
                  </pre>
						</li>
					</ul>
					<ul>
						<li>
							<p><sourcexml>leg:levelbody</sourcexml> and
									<sourcexml>leg:bodytext</sourcexml> comes in following
								scenarios: </p>
							<p>If the elements <sourcexml>leg:levelbody</sourcexml> and
									<sourcexml>leg:bodytext</sourcexml> occurs simultaneously
								then</p>
							<pre>
                                    
                                    &lt;leg:levelbody&gt;
                                        &lt;leg:bodytext&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;Where by any Act or by virtue of his office the Governor-General or the
                                                Governor-General in Council is authorised to make, confirm, or approve the
                                                appointment of a person to any office or employment, whether in the service of the
                                                Crown or otherwise, or as a member of any Board or local or public authority, it
                                                shall not be necessary, notwithstanding the provisions of any Act to the contrary,
                                                for the Governor-General in so doing to execute any warrant or other instrument of
                                                such appointment, confirmation, or approval.&lt;/text&gt;
                                            &lt;/p&gt;
                                        &lt;/leg:bodytext&gt;
                                    &lt;/leg:levelbody&gt;
                                    
                                                  <b>becomes</b>
                                                          
                                    
                                    &lt;primlaw:bodytext&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;Where by any Act or by virtue of his office the Governor-General or the
                                            Governor-General in Council is authorised to make, confirm, or approve the
                                            appointment of a person to any office or employment, whether in the service of the
                                            Crown or otherwise, or as a member of any Board or local or public authority, it
                                            shall not be necessary, notwithstanding the provisions of any Act to the contrary,
                                            for the Governor-General in so doing to execute any warrant or other instrument of
                                            such appointment, confirmation, or approval.&lt;/text&gt;
                                        &lt;/p&gt;
                                    &lt;/primlaw:bodytext&gt;
                                    
                </pre>
						</li>
					</ul>
					<ul>
						<li>If the element <sourcexml>leg:levelbody</sourcexml> comes within
								<sourcexml>leg:level-vrnt</sourcexml> then
								<targetxml>primlaw:bodytext</targetxml> and populated as:
							<pre>
                                
                                
                                
                                  &lt;leg:level id="1919A18S2-1"&gt;
                                    &lt;leg:level-vrnt searchtype="LEGISLATION SUBSECT" leveltype="subsect"&gt;
                                        &lt;leg:heading inline="true"&gt;
                                            &lt;desig&gt;
                                                &lt;designum&gt;&lt;refpt id="1919A18S2-1" type="ext"/&gt;(1)&lt;/designum&gt;
                                            &lt;/desig&gt;
                                        &lt;/leg:heading&gt;
                                        &lt;leg:levelbody&gt;
                                            &lt;leg:bodytext&gt;
                                                &lt;p&gt;
                                                    &lt;text&gt;Where by any Act or by virtue of his office the Governor-General or the
                                                    Governor-General in Council is authorised to make, confirm, or approve the
                                                    appointment of a person to any office or employment, whether in the service of the
                                                    Crown or otherwise, or as a member of any Board or local or public authority, it
                                                    shall not be necessary, notwithstanding the provisions of any Act to the contrary,
                                                    for the Governor-General in so doing to execute any warrant or other instrument of
                                                    such appointment, confirmation, or approval.&lt;/text&gt;
                                                &lt;/p&gt;
                                            &lt;/leg:bodytext&gt;
                                        &lt;/leg:levelbody&gt;
                                    &lt;/leg:level-vrnt&gt;
                                &lt;/leg:level&gt;
                                
                                         
                                              <b>becomes</b>
                                                
                                              
                                &lt;primlaw:level xml:id="nz_1919A18S2-1" leveltype="unclassified"&gt;
                                    &lt;ref:anchor id="nz_1919A18S2-1" anchortype="global"/&gt;
                                    &lt;heading&gt;    
                                        &lt;desig&gt;(1)&lt;/desig&gt;
                                    &lt;/heading&gt;
                                    &lt;primlaw:bodytext&gt;
                                        &lt;p&gt;
                                            &lt;text&gt;Where by any Act or by virtue of his office the Governor-General or the
                                            Governor-General in Council is authorised to make, confirm, or approve the
                                            appointment of a person to any office or employment, whether in the service of the
                                            Crown or otherwise, or as a member of any Board or local or public authority, it
                                            shall not be necessary, notwithstanding the provisions of any Act to the contrary,
                                            for the Governor-General in so doing to execute any warrant or other instrument of
                                            such appointment, confirmation, or approval.&lt;/text&gt;
                                        &lt;/p&gt;     
                                    &lt;/primlaw:bodytext&gt;
                                &lt;/primlaw:level&gt;
                                
                               </pre>
						</li>
					</ul>
					<ul>
						<li>
							<p>If element leg:info has information about the act such as act
								name, act number, assent date or enactment date then
									<sourcexml>/LEGDOC/leg:body/leg:info</sourcexml> becomes
									<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
								with children elements as described below: </p>
							<note>
								<p> Conversion should not create adjacent
										<targetxml>primlaw:levelinfo</targetxml>. Data should be
									merged to single <targetxml>primlaw:levelinfo</targetxml>.</p>
							</note>
							<note>
								<p> Conversion should not create adjacent
										<targetxml>primlawinfo:primlawinfo</targetxml>. Data should
									be merged to single
										<targetxml>primlawinfo:primlawinfo</targetxml>.</p>
							</note>
							<p>
								<sourcexml>/LEGDOC/leg:body/leg:info/leg:officialname</sourcexml>
								becomes
									<targetxml>legis:legis/legis:body/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
								and populated as below:</p>
							<pre>            
                                  <!-- NZ Services -->
                      
                                     
                                          &lt;leg:info&gt;
                                              &lt;leg:officialname searchtype="LEGISLATION"&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/leg:officialname&gt;
                                        &lt;/leg:info&gt;
                                    
                                                              
                                          <b>becomes</b>
                                                            
                                          
                                          &lt;primlaw:level leveltype="unclassified"&gt;
                                           &lt;primlaw:levelinfo&gt;
                                             &lt;primlawinfo:primlawinfo&gt;
                                                &lt;legisinfo:legisinfo&gt;
                                                    &lt;legisinfo:names&gt;
                                                        &lt;legisinfo:officialtitle&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/legisinfo:officialtitle&gt;
                                                    &lt;/legisinfo:names&gt;
                                                &lt;/legisinfo:legisinfo&gt;
                                                &lt;!-- ... --&gt;
                                            &lt;/primlawinfo:primlawinfo&gt;      
                                           &lt;/primlawinfo:levelinfo&gt;
                                           &lt;/primlaw:level&gt;
                                           
                                           
                
                                          </pre>
						</li>
					</ul>
					<note>
						<p>leg:juris@searchtype will be suppressed.</p>
					</note>
					<note>
						<p>If the input document has scenario
								<sourcexml>leg:officialname/refpt</sourcexml> then suppress
							refpt from conversion since the id value matches with
							docinfo:doc-id.</p>
					</note>
					<ul>
						<li>
							<p>
								<sourcexml>/LEGDOC/leg:body/leg:info/leg:history</sourcexml>
								becomes
									<targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/primlawhist:primlawhist</targetxml>
								and populated as below: </p>
							<p>leg:history/leg:heading becomes
								primlawhist:primlawhist/heading</p>
							<p>leg:history/p/text becomes
								primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</p>
							<pre>
              
                                    
                                       &lt;leg:officialname&gt;
                                         &lt;refpt type="ext" id="1833I000:1843I006"/&gt;
                                           Judicial Committee Act 1843 (Imp.)
                                          &lt;/leg:officialname&gt;
                                            &lt;leg:history&gt;
                                                &lt;leg:tableofamend/&gt;
                                            &lt;/leg:history&gt;
                                            
                                            <b>becomes</b>
                                                  
                                            
                                                  
                                             &lt;primlawinfo:primlawinfo&gt;
                                                &lt;legisinfo:legisinfo&gt;
                                                    &lt;legisinfo:names&gt;
                                                        &lt;legisinfo:officialtitle&gt;Judicial Committee Act 1843 (Imp.)&lt;/legisinfo:officialtitle&gt;
                                                    &lt;/legisinfo:names&gt;
                                                    &lt;primlawhist:primlawhist&gt;
                                                                &lt;primlawhist:histgrp/&gt;
                                                   &lt;/primlawhist:primlawhist&gt;
                                                &lt;/legisinfo:legisinfo&gt;
                                            &lt;/primlawinfo:primlawinfo&gt;  
                                        
                                
                                 </pre>
							<note>For more information on how to convert primlawhist please
								refer to the primlawhist section in body.</note>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>LEGDOC/leg:body/leg:info/leg:dates/leg:assentdate</sourcexml>
							becomes
								<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate</targetxml>
							with attributes <targetxml>@year</targetxml>
							<targetxml>@month</targetxml>
							<targetxml>@day</targetxml>
							<pre>   
                                   
                      
                                   &lt;leg:info&gt;
                                         ...
                                       &lt;leg:dates&gt;
                                       &lt;leg:assentdate ln.user-displayed="false"&gt;
                                           &lt;date year="1837" month="07" day="03"&gt;Date of assent 3 July 1837&lt;/date&gt;
                                       &lt;/leg:assentdate&gt;
                                       &lt;/leg:dates&gt;
                                   &lt;/leg:info&gt;
                                    
                                  
                                  <b>becomes</b>
                                    
                                    
                                   &lt;primlaw:level xml:id="nz_1919A18S2-1" leveltype="unclassified"&gt;
                                   &lt;primlaw:levelinfo&gt;
                                   &lt;primlawinfo:primlawinfo&gt;
                                      &lt;primlawinfo:dates&gt;
                                          &lt;primlawinfo:assentdate&gt;
                                              &lt;date-text&gt;
                                                  &lt;date month="07" year="1837" day="03"&gt;Date of assent 3 July 1837 &lt;/date&gt;
                                              &lt;/date-text&gt;
                                        &lt;/primlawinfo:assentdate&gt;
                                    &lt;/primlawinfo:dates&gt;
                                   &lt;/primlawinfo:primlawinfo&gt;
                                   &lt;/primlaw:levelinfo&gt;
                                   &lt;/primlaw:level&gt;

                                    
                                     
                                </pre>
							<note>For handling <b>@ln.user-displayed</b> attribute, refer the
								general markup <xref
									href="../../common_newest/Rosetta_case.decisiondate_ln.user-displayed-LxAdv-decision.dates.dita"
									>ln.user_displayed="false"</xref> section in the CI.</note>
						</li>
					</ul>
					<ul>
						<li><sourcexml>LEGDOC/leg:body/leg:info/leg:year</sourcexml> becomes
								<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate</targetxml>
							with attribute <targetxml>@year</targetxml>
							<pre>       
                               <!-- NZ services -->
                               
                                   
                                   &lt;leg:year searchtype="LEGISLATION"&gt;1999&lt;/leg:year&gt;
                                   
                               <b>Becomes</b>
                                 
                                  &lt;primlaw:level xml:id="nz_1919A18S2-1" leveltype="unclassified"&gt;
                                   &lt;primlaw:levelinfo&gt;
                                   &lt;primlawinfo:primlawinfo&gt;
                                     &lt;primlawinfo:dates&gt;
                                         &lt;primlawinfo:assentdate year="1999"&gt;1999&lt;/primlawinfo:assentdate&gt;
                                     &lt;/primlawinfo:dates&gt;
                                 &lt;/primlawinfo:primlawinfo&gt;
                                 &lt;/primlaw:levelinfo&gt;
                                 &lt;/primlaw:level&gt;
                               
                                    
                                 
                            </pre>
						</li>
					</ul>
					<ul>
						<li><sourcexml>LEGDOC/leg:body/leg:info/leg:officialnum</sourcexml>
							becomes
								<targetxml>primlawinfo:primlawinfo/primlawinfo:identifier</targetxml>
							with required attribute <targetxml>@idtype</targetxml>
							<pre>
                   
                            
                                  <!-- NZ services -->
                                    
                                        
                                        &lt;leg:info&gt;
                                            &lt;leg:officialnum searchtype="LEGISLATION"&gt;Act No. 25, 1999&lt;/leg:officialnum&gt;
                                        &lt;/leg:info&gt;
                                        
                                  
                                  <b>becomes</b>
                                  
                                    
                                    &lt;primlawinfo:primlawinfo&gt;
                                        &lt;primlawinfo:identifier idtype="officialnum"&gt;Act No. 25, 1999&lt;/primlawinfo:identifier&gt;
                                        &lt;!-- ... --&gt;
                                    &lt;primlawinfo:primlawinfo&gt;
                                    
                                                    </pre>
						</li>
					</ul>
					<ul>
						<li><sourcexml>LEGDOC/leg:body/leg:info/leg:officialnum/ci:cite</sourcexml>
							becomes
								<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier/lnci:cite</targetxml>
							<pre>
                           
                                     &lt;leg:officialnum ln.user-displayed="false"&gt;
                                     Public Act
                                        &lt;ci:cite searchtype="LEG-REF"&gt;
                                            &lt;ci:content&gt;
                                                &lt;remotelink refpt="2005A25" dpsi="02IN" remotekey1="REFPTID" 
                                                service="DOC-ID"&gt;2005 No 25&lt;/remotelink&gt;
                                            &lt;/ci:content&gt;
                                        &lt;/ci:cite&gt;
                                     &lt;/leg:officialnum&gt;
                           
                           
                           
                                          <b>becomes</b>
                         
                                     
                                      &lt;primlaw:level xml:id="nz_1919A18S2-1" leveltype="unclassified"&gt;
                                       &lt;primlaw:levelinfo&gt;
                                         &lt;primlawinfo:primlawinfo&gt;
                                           &lt;primlawinfo:identifier idtype="officialnum"&gt;Public Act
                                                &lt;lnci:cite type="legislation" citeref="2005A25"&gt;
                                                     &lt;lnci:content&gt;2005 No 25&lt;/lnci:content&gt;
                                                &lt;/lnci:cite&gt;
                                           &lt;/primlawinfo:identifier&gt;
                                     &lt;primlawinfo:primlawinfo&gt;
                                    &lt;primlaw:levelinfo&gt;
                                   &lt;/primlaw:level&gt;
                                     
                                      
                  
                        </pre>
							<note>For handling <b>@ln.user-displayed</b> attribute, refer the
								general markup <xref
									href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita"
									> ln.user_displayed="false"</xref> section in the CI.</note>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:preamble</sourcexml> becomes
								<targetxml>primlaw:level[@leveltype="preamble"]</targetxml> with
							and populated as:
							<pre>
                             
                               &lt;leg:preamble&gt;
                                  &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                                           &lt;p&gt;
                                             &lt;text align="center"&gt;Public Act 2003 No 102&lt;/text&gt;
                                           &lt;/p&gt;
                                           &lt;p&gt;
                                             &lt;text align="center"&gt;Date of assent 21 October 2003&lt;/text&gt;
                                           &lt;/p&gt;
                                           &lt;p&gt;
                                             &lt;text align="center"&gt;Commencement see section 2&lt;/text&gt;
                                           &lt;/p&gt;
                                           &lt;p&gt;
                                             &lt;text align="center"&gt;Copyright &amp;copy; 2004 LexisNexis NZ Limited&lt;/text&gt;
                                           &lt;/p&gt;
                                           &lt;p&gt;
                                             &lt;text align="center"&gt;______________________________________&lt;/text&gt;
                                           &lt;/p&gt;
                                        &lt;leg:history id="A2003A102:ANALYSIS"&gt;
                                          &lt;leg:heading&gt;
                                            &lt;title&gt;&lt;refpt id="A2003A102:ANALYSIS" type="ext"/&gt;Contents - War Funds Act Repeal Act
                                              2003&lt;/title&gt;
                                          &lt;/leg:heading&gt;
                                              &lt;p&gt;
                                                &lt;text align="center"&gt;
                                                  &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                                &lt;/text&gt;
                                              &lt;/p&gt;
                                          &lt;leg:tableofamend/&gt;
                                        &lt;/leg:history&gt;
                                      ...
                                  &lt;/leg:bodytext&gt;
                          &lt;/leg:preamble&gt;
                                
                                
                   <b>becomes</b>
                
                               
                               &lt;legis:body&gt;
                                   &lt;primlaw:level leveltype="preamble"&gt;
                                      &lt;primlaw:bodytext&gt;
                                            &lt;p&gt;&lt;text&gt;Public Act 2003 No 102&lt;/text&gt;&lt;/p&gt;
                                            &lt;p&gt;&lt;text&gt;Date of assent 21 October 2003&lt;/text&gt;&lt;/p&gt;
                                            &lt;p&gt;&lt;text&gt;Commencement see section 2&lt;/text&gt;&lt;/p&gt;
                                            &lt;p&gt;&lt;text&gt;Copyright 2004 LexisNexis NZ Limited&lt;/text&gt; &lt;/p&gt;
                                            &lt;p&gt;&lt;text&gt;&lt;proc:formchars formchar="rule" formcharuse="other"/&gt;&lt;/text&gt;&lt;/p&gt;
                                        &lt;/primlaw:bodytext&gt;
                                           &lt;primlawhist:primlawhist&gt;
                                             &lt;primlawhist:histgrp&gt;
                                               &lt;ref:anchor id="A2003A102" anchortype="global"/&gt;
                                                 &lt;heading&gt;
                                                     &lt;title&gt;Contents - War Funds Act Repeal Act 2003&lt;/title&gt;
                                                  &lt;/heading&gt;
                                                    &lt;primlawhist:histitem&gt;
                                                        &lt;bodytext&gt;
                                                          &lt;p&gt;
                                                          &lt;text&gt;
                                                            &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                                          &lt;/text&gt;
                                                          &lt;/p&gt;
                                                           &lt;table/&gt;
                                                        &lt;/bodytext&gt;
                                                       &lt;/primlawhist:histitem&gt;
                                                   &lt;/primlawhist:histgrp&gt;
                                                 &lt;/primlawhist:primlawhist&gt;
                                             &lt;/primlaw:level&gt;
                                        &lt;/legis:body&gt;
                                      
                                 </pre>
						</li>
					</ul>
					<ul>
						<li><sourcexml>leg:history</sourcexml> becomes
								<targetxml>primlawhist:primlawhist</targetxml>
							<pre>
                                  
                                  &lt;leg:history id="A2003A102:ANALYSIS"&gt;
                                               &lt;leg:heading&gt;
                                                 &lt;title&gt;&lt;refpt id="A2003A102:ANALYSIS" type="ext"/&gt;Contents - 
                                                War Funds Act Repeal Act 2003&lt;/title&gt;
                                               &lt;/leg:heading&gt;
                                               &lt;p&gt;
                                                 &lt;text align="center"&gt;
                                                   &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                                 &lt;/text&gt;
                                               &lt;/p&gt;
                                               &lt;leg:tableofamend/&gt;
                                             &lt;/leg:history&gt;
                                  
                                  
                                  <b>becomes</b>
                                  
                                  
                                 &lt;primlawhist:primlawhist&gt;
                                    &lt;primlawhist:histgrp&gt;
                                        &lt;ref:anchor id="A2003A102" anchortype="global"/&gt;
                                        &lt;heading&gt;
                                            &lt;title&gt;Contents - War Funds Act Repeal Act 2003&lt;/title&gt;
                                        &lt;/heading&gt;
                                        &lt;primlawhist:histitem&gt;
                                            &lt;bodytext&gt;
                                                &lt;p&gt;
                                              &lt;text&gt;
                                                  &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                              &lt;/text&gt;
                                                &lt;/p&gt;
                                                &lt;table/&gt;
                                            &lt;/bodytext&gt;
                                        &lt;/primlawhist:histitem&gt;
                                    &lt;/primlawhist:histgrp&gt;
                                  &lt;/primlawhist:primlawhist&gt;    
              </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:histnote
							</sourcexml>Becomes
								<targetxml>primlaw:level[@leveltype="unclassified"]/note[notetype="historical"]</targetxml>
							<pre>
            
                &lt;leg:level id="1999A25.BODY"&gt;
                      &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
                          &lt;leg:heading&gt;
                           &lt;title&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/title&gt;
                           &lt;subtitle&gt;Public Act&amp;#xA0;1999 No&amp;#xA0;25&lt;/subtitle&gt;
                          &lt;/leg:heading&gt;
                       &lt;leg:levelbody&gt;
                           &lt;leg:bodytext&gt;
                            &lt;leg:histnote&gt;
                             &lt;p&gt;
                              &lt;text&gt;Date of assent: 4&amp;#xA0;May 1999&lt;/text&gt;
                             &lt;/p&gt;
                            &lt;/leg:histnote&gt;
                           ...
                           &lt;/leg:bodytext&gt;
                       ...
                       &lt;/leg:level&gt;
              
            
            <b>Becomes</b>
            
            
              &lt;primlaw:level leveltype="unclassified"&gt;
                         &lt;heading&gt;
                              &lt;title align="left"&gt;EAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/title&gt;
                              &lt;subtitle&gt;Public Act&amp;#xA0;1999 No&amp;#xA0;25&lt;/subtitle&gt;
                         &lt;/heading&gt;
                &lt;primlaw:bodytext&gt;
                    &lt;note notetype="historical"&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Date of assent: 4&amp;#xA0;May 1999&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/note&gt;
                &lt;/primlaw:bodytext&gt;
             &lt;/primlaw:level&gt;
            
            
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>...leg:histnote/leg:histnote </sourcexml>Becomes
								<targetxml>.../note[notetype="historical"]/bodytext/note[notetype="historical"]</targetxml>
							<pre>
                                    
                                        &lt;leg:histnote&gt;
                                             &lt;leg:heading&gt;
                                                 &lt;title&gt;Hist.&lt;/title&gt;
                                             &lt;/leg:heading&gt;
                                             &lt;p&gt;
                                                 &lt;text&gt; ...&lt;/text&gt;
                                             &lt;/p&gt;
                                             &lt;leg:histnote&gt;
                                                 &lt;leg:heading&gt;
                                                     &lt;title&gt;Hist.&lt;/title&gt;
                                                 &lt;/leg:heading&gt;
                                                 &lt;p&gt;
                                                     &lt;text&gt; ...&lt;/text&gt;
                                                 &lt;/p&gt;
                                             &lt;/leg:histnote&gt;
                                         &lt;/leg:histnote&gt;
                                    
                                    <b>becomes</b>
                                    
                                    
                                     &lt;note notetype="historical"&gt;
                                              &lt;heading&gt;
                                                  &lt;title&gt;Hist.&lt;/title&gt;
                                              &lt;/heading&gt;
                                              &lt;bodytext&gt;
                                                  &lt;p&gt;
                                                      &lt;text&gt;...&lt;/text&gt;
                                                  &lt;/p&gt;
                                                  &lt;note notetype="historical"&gt;
                                                      &lt;heading&gt;
                                                          &lt;title&gt;Hist.&lt;/title&gt;
                                                      &lt;/heading&gt;
                                                      &lt;bodytext&gt;
                                                          &lt;p&gt;
                                                              &lt;text&gt;...&lt;/text&gt;
                                                          &lt;/p&gt;
                                                      &lt;/bodytext&gt;
                                                  &lt;/note&gt;
                                              &lt;/bodytext&gt;
                                          &lt;/note&gt;
                                    
                                    
                                    
                                </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:histnote </sourcexml>becomes
								<targetxml>.../note[notetype="historical"]</targetxml>
							<pre>
            
              &lt;leg:level id="1999A25.BODY"&gt;
                  &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
                      &lt;leg:heading&gt;
                       &lt;title&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/title&gt;
                       &lt;subtitle&gt;Public Act&amp;#xA0;1999 No&amp;#xA0;25&lt;/subtitle&gt;
                      &lt;/leg:heading&gt;
                     &lt;leg:bodytext&gt;
                           &lt;leg:histnote&gt;
                                &lt;p&gt;
                                 &lt;text&gt;Date of assent: 4&amp;#xA0;May 1999&lt;/text&gt;
                                &lt;/p&gt;
                           &lt;/leg:histnote&gt;
                       ...
                       &lt;/leg:bodytext&gt;   
            
                 <b>Becomes</b>
            
                  
                   &lt;primlaw:level leveltype="unclassified"&gt;
                     &lt;note notetype="historical"&gt;
                       &lt;heading&gt;
                         &lt;title align="left"&gt;EAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/title&gt;
                         &lt;subtitle&gt;Public Act&amp;#xA0;1999 No&amp;#xA0;25&lt;/subtitle&gt;
                       &lt;/heading&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                              &lt;text&gt;Date of assent: 4&amp;#xA0;May 1999&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                     &lt;/note&gt;
                   &lt;/primlaw:level&gt; 
                   
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<p><sourcexml>leg:tableofamend</sourcexml> is based on the
								following scenarios:
									<sourcexml>leg:tableofamend/heading</sourcexml> becomes
									<targetxml>primlawhist:primlawhist/primlawhist:histgrp[grptype="tableofamend"]/heading</targetxml>,
								this is for capturing the heading information.</p>
							<p><sourcexml>leg:tableofamend</sourcexml> becomes <targetxml>
									primlawhist:primlawhist/
									primlawhist:histgrp[grptype="tableofamend"]/primlawhist:histitem/bodytext</targetxml></p>
							<note>Add the attribute value @grptype="tableofamend" to
									<targetxml>primlaw:primlawhist</targetxml></note>
							<pre>
        
        &lt;leg:tableofamend&gt;
                 &lt;leg:heading&gt;
                     &lt;title&gt;&lt;refpt id="VIC_ACT_1998-25_LEGHIST_PRE-YEAR" type="ext"/&gt;
                         &lt;emph typestyle="bf"&gt;Pre-2000 Act&lt;/emph&gt;
                     &lt;/title&gt;
                 &lt;/leg:heading&gt;
          &lt;p&gt;
              &lt;text&gt;This Act history only includes events from 2000. Details of events affecting the Act 
              before 2000 may be found in the 
              &lt;remotelink refpt="VIC_ACT_1998-25_NOTES" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" service="DOC-ID"&gt;Notes&lt;/remotelink&gt; 
              at the end of the Act.&lt;/text&gt;
          &lt;/p&gt;
      &lt;/leg:tableofamend&gt;
      &lt;leg:tableofamend&gt;
          &lt;table frame="none" colsep="0" rowsep="0"&gt;
              &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                  &lt;colspec colwidth="23*" colname="col1" colnum="1"/&gt;
                  &lt;colspec colwidth="53*" colname="col2" colnum="2"/&gt;
                  &lt;colspec colwidth="1*" colname="col3" colnum="3"/&gt;
                  &lt;tbody&gt;
                      &lt;row&gt;&lt;entry namest="col1" nameend="col2" align="center"&gt;&lt;emph typestyle="bf"&gt;
                      &lt;emph typestyle="it"&gt;Wills Amendment Act 2005 - 2005 No 25&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry namest="col2" nameend="col3" align="left"&gt;
                      10 March 2005 Divided from Relationships (Statutory References) Bill (Bill 151-2) as Bill 151-3V&lt;/entry&gt;&lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry namest="col2" nameend="col3" align="left"&gt;
                       15 March 2005 Third reading&lt;/entry&gt;&lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry namest="col2" nameend="col3" align="left"&gt;&amp;#160;&lt;/entry&gt;&lt;/row&gt;
                  &lt;/tbody&gt;
              &lt;/tgroup&gt;
          &lt;/table&gt;
       &lt;/leg:tableofamend&gt;
    
<b>becomes</b>


   &lt;primlawhist:primlawhist&gt;
            &lt;primlawhist:histgrp grptype="tableofamend"&gt;
                &lt;heading&gt;
                    &lt;title&gt;&lt;emph typestyle="bf"&gt;Pre-2000 Act&lt;/emph&gt;&lt;/title&gt;
                &lt;/heading&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;&lt;text&gt;This Act history only includes events from
                            2000. Details of events affecting the Act
                            before 2000 may be found in the
                            &lt;ref:lnlink&gt;
                                &lt;ref:marker&gt;Notes&lt;/ref:marker&gt;
                                &lt;ref:locator anchoridref="VIC_ACT_1998-25_NOTES" &gt;
                                     &lt;ref:locator-key&gt;
                                          &lt;ref:key-name name="DOC-ID"/&gt;
                                          &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:lnlink&gt; at the end of the
                            Act.&lt;/text&gt;&lt;/p&gt;
                        &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
            &lt;primlawhist:histgrp&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;table frame="none" colsep="0" rowsep="0"&gt;
                            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                                &lt;colspec colwidth="23*" colname="col1" colnum="1"/&gt;
                                &lt;colspec colwidth="53*" colname="col2" colnum="2"/&gt;
                                &lt;colspec colwidth="1*" colname="col3" colnum="3"/&gt;
                                &lt;tbody&gt;
                                    &lt;row&gt;&lt;entry namest="col1" nameend="col2"
                                        align="center"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Wills Amendment
                                            Act 2005 - 2005 No 25&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;
                                    &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;
                                        &lt;entry namest="col2" nameend="col3" align="left"&gt;10 March 2005 Divided from
                                        Relationships (Statutory References) Bill (Bill 151-2) as Bill 151-3V&lt;/entry&gt;&lt;/row&gt;
                                    &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry
                                        namest="col2" nameend="col3" align="left"&gt;15 March 2005 Third reading&lt;/entry&gt;&lt;/row&gt;
                                    &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;
                                        &lt;entry namest="col2" nameend="col3" align="left"&gt;nbsp&lt;/entry&gt;&lt;/row&gt;
                                &lt;/tbody&gt;
                            &lt;/tgroup&gt;
                        &lt;/table&gt;
                    &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
        
            
  </pre>
						</li>
					</ul>
					<ul>
						<li><sourcexml>blockquote/legfragment</sourcexml> becomes
								<targetxml>primlaw:excerpt</targetxml>
							<note>Refer common_rosetta_legfragment.dita and
								common_rosetta_blockquote.dita for handling of
								blockquote.</note>
						</li>
					</ul>
					<ul>
						<li><sourcexml>glp:note</sourcexml> becomes
								<targetxml>note</targetxml> and children describe below as:
							(check usage versus context within NL schema).<ul>
								<li><sourcexml>glp:note/heading</sourcexml> becomes
										<targetxml>note/heading</targetxml></li>
								<li>Create <targetxml>bodytext</targetxml> for narrative text
									content.</li>
							</ul>
							<pre>
              
               
              &lt;glp:note&gt;
                 &lt;heading&gt;
                  &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Note&lt;/emph&gt;&lt;/title&gt;
                 &lt;/heading&gt;
                  &lt;p&gt;
                     &lt;text&gt;
                     &lt;emph typestyle="it"&gt;A part of the premises that is in close proximity to the licensed premises include an area used for the management
                     or operation of the business such as a kitchen or storage area.&lt;/emph&gt;
                     &lt;/text&gt;
                  &lt;/p&gt;
              &lt;/glp:note&gt;
              
              <b>becomes</b>
              
                  &lt;note&gt;
                  &lt;heading&gt;
                     &lt;title align="center"&gt;
                       &lt;emph typestyle="bf"&gt;Note&lt;/emph&gt;
                     &lt;/title&gt;
                  &lt;/heading&gt;
                  &lt;bodytext&gt;
                     &lt;p&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;A part of the premises that is in 
                        close proximity to the licensed premises include an area used for the management
                        or operation of the business such as a kitchen or storage area.&lt;/emph&gt;
                        &lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/bodytext&gt;
                  &lt;/note&gt;
              
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>glp:note/p/text/ci:cite/</sourcexml> becomes
								<targetxml>note/bodytext/p/text/lnci:cite</targetxml>
							<note>
								<sourcexml>ci:cite/@type="legref"</sourcexml> the value
									<b>legref</b> will be SUPPRESSED and not carried into the
								output</note>
							<pre>
                  
                  &lt;glp:note&gt;
                    &lt;p&gt;
                       &lt;text&gt; 
                        &lt;ci:cite searchtype="LEG-REF" type="legref"&gt;
                           &lt;ci:content&gt;Cf 1915, No 35, s 61&lt;/ci:content&gt; 
                        &lt;/ci:cite&gt;
                       &lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/glp:note&gt;
                  
                        <b>becomes</b>
                  
                  &lt;note&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;
                                    &lt;lnci:cite&gt;
                                        &lt;lnci:content&gt;Cf 1915, No 35, s 62&lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/note&gt; 
                   </pre>
						</li>
					</ul>
					<ul>
						<li><sourcexml>leg:empleg</sourcexml> becomes
								<targetxml>primlaw:authority/primlaw:authority-item/bodytext/textitem</targetxml>
							and populated as: <note>The primlaw:authority will be sibling of
								heading.</note>
							<pre>
                              
                              
                           &lt;leg:level id="2006L1_SCHEDULE"&gt;
                                &lt;leg:level-vrnt searchtype="LEGISLATION SCHEDULE" subdoc="true" leveltype="schedule"
                                 toc-caption="Schedule &amp;#x2014; Alfred Cox Park"&gt;
                              &lt;leg:heading&gt;
                                 &lt;desig searchtype="SCH-NUM"&gt;
                                  &lt;designum&gt;&lt;refpt id="2006L1_SCHEDULE" type="ext"/&gt;Schedule&lt;/designum&gt;
                                 &lt;/desig&gt;
                                 &lt;title searchtype="SCH-TITLE"&gt; &amp;#x2014; Alfred Cox Park&lt;/title&gt;
                                 &lt;leg:empleg&gt;
                                    &lt;remotelink dpsi="0069" remotekey1="REFPTID" docidref="ABCD_9876" service="DOC-ID" refpt="2006L1S3"&gt;s&amp;#xA0;3&lt;/remotelink&gt;
                                 &lt;/leg:empleg&gt;
                              &lt;/leg:heading&gt;
                              
                              
                              <b>becomes</b>
                                  
                              
                                &lt;primlaw:level subdoc="true" leveltype="schedule" toc-caption="Schedule &amp;#x2014; Alfred Cox Park"&gt;
                                  &lt;ref:anchor id="nz_2006L1_SCHEDULE" anchortype="global"/&gt;
                                  &lt;heading&gt;
                                     &lt;desig&gt;Schedule&lt;/desig&gt;
                                     &lt;title&gt;&lt;emph typestyle="bf"&gt;Alfred Cox Park&lt;/emph&gt;&lt;/title&gt;
                                  &lt;/heading&gt;
                              &lt;primlaw:authority&gt;
                              &lt;primlaw:authority-item&gt;
                              &lt;bodytext&gt;
                                &lt;textitem&gt;
                                  &lt;ref:lnlink&gt;
                                    &lt;ref:marker role="label"&gt;s&amp;#xA0;3&lt;/ref:marker&gt;
                                      &lt;ref:locator anchoridref="_2006L1S3"&gt; 
                                        &lt;ref:locator-key&gt;
                                          &lt;ref:key-name name="DOC-ID"/&gt;
                                          &lt;ref:key-value value="0069-ABCD_9876"/&gt;
                                        &lt;/ref:locator-key&gt;
                                     &lt;/ref:locator&gt;
                                 &lt;/ref:lnlink&gt;
                               &lt;/textitem&gt;
                               &lt;/bodytext&gt;
                              &lt;/primlaw:authority-item&gt;
                              &lt;/primlaw:authority&gt;
                              
                        </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:empleg/glp:note</sourcexml> becomes
								<targetxml>primlaw:authority/primlaw:authority-item/bodytext</targetxml>
							and populated as: <note> If text is found between the
									<sourcexml>leg:empleg</sourcexml> and
									<sourcexml>glp:note</sourcexml> elements then enclose the text
								in <targetxml>p</targetxml>element before opening a
									<targetxml>note</targetxml>. If text is found after a
									<sourcexml>glp:note</sourcexml> but before the close of the
									<sourcexml>leg:empleg</sourcexml> then enclose the text in
									<targetxml>p</targetxml> element.</note>
							<pre>
                      
                      
                      
                      &lt;leg:empleg&gt;
                        &lt;ci:cite searchtype="LEG-REF"&gt;
                            &lt;ci:content&gt;
                                  &lt;remotelink refpt="1966A19:1980A5S3" remotekey1="REFPTID" service="DOC-ID"&gt;Section 3&lt;/remotelink&gt; 
                              &lt;/ci:content&gt;
                          &lt;/ci:cite&gt;
                        &lt;glp:note&gt;
                            &lt;p&gt;
                                &lt;text&gt;{ Editorial Note: These amendments have been incorporated in principal Act. }&lt;/text&gt; 
                            &lt;/p&gt;
                        &lt;/glp:note&gt;
                    &lt;/leg:empleg&gt;
                      
                      <b>becomes</b>
                      
                      
                       &lt;primlaw:authority&gt;
                        &lt;primlaw:authority-item&gt;
                             &lt;bodytext&gt;
                                 &lt;textitem&gt;
                                     &lt;lnci:cite &gt;
                                         &lt;lnci:content/&gt;
                                     &lt;/lnci:cite&gt;
                                 &lt;/textitem&gt;
                                  &lt;note&gt;
                                         &lt;bodytext&gt;
                                             &lt;p&gt;
                                                 &lt;text&gt;{ Editorial Note: These amendments have been incorporated in principal Act. }&lt;/text&gt; 
                                             &lt;/p&gt;
                                         &lt;/bodytext&gt;
                                     &lt;/note&gt;
                                 &lt;/bodytext&gt;
                       &lt;/primlaw:authority-item&gt;
                    &lt;/primlaw:authority
                         
                       </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:levelbody</sourcexml> and
								<sourcexml>leg:bodytext</sourcexml> comes in following
							scenarios: If the elements <sourcexml>leg:levelbody</sourcexml>
							and <sourcexml>leg:bodytext</sourcexml> occurs simultaneously then
							becomes <targetxml>primlaw:bodytext</targetxml> and populated as:
							<pre>
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;Where by any Act or by virtue of his office the Governor-General or the
            Governor-General in Council is authorised to make, confirm, or approve the
            appointment of a person to any office or employment, whether in the service of the
            Crown or otherwise, or as a member of any Board or local or public authority, it
            shall not be necessary, notwithstanding the provisions of any Act to the contrary,
            for the Governor-General in so doing to execute any warrant or other instrument of
            such appointment, confirmation, or approval.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;


            <b>becomes</b>
                      
&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;Where by any Act or by virtue of his office the Governor-General or the
        Governor-General in Council is authorised to make, confirm, or approve the
        appointment of a person to any office or employment, whether in the service of the
        Crown or otherwise, or as a member of any Board or local or public authority, it
        shall not be necessary, notwithstanding the provisions of any Act to the contrary,
        for the Governor-General in so doing to execute any warrant or other instrument of
        such appointment, confirmation, or approval.&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;
                </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml> leg:preamble</sourcexml>becomes<targetxml>
								primlaw:level[@leveltype="preamble"]</targetxml> with and
							populated
							as:<pre>
                 
                &lt;leg:preamble&gt;
                     &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                             &lt;p&gt;
                               &lt;text align="center"&gt;Public Act 2003 No 102&lt;/text&gt;
                             &lt;/p&gt;
                             &lt;p&gt;
                               &lt;text align="center"&gt;Date of assent 21 October 2003&lt;/text&gt;
                             &lt;/p&gt;
                             &lt;p&gt;
                               &lt;text align="center"&gt;Commencement see section 2&lt;/text&gt;
                             &lt;/p&gt;
                             &lt;p&gt;
                               &lt;text align="center"&gt;Copyright &amp;amp;copy; 2004 LexisNexis NZ Limited&lt;/text&gt;
                             &lt;/p&gt;
                             &lt;p&gt;
                               &lt;text align="center"&gt;______________________________________&lt;/text&gt;
                             &lt;/p&gt;
                           &lt;leg:history id="A2003A102:ANALYSIS"&gt;
                             &lt;leg:heading&gt;
                               &lt;title&gt;&lt;refpt id="A2003A102:ANALYSIS" type="ext"/&gt;Contents - War Funds Act Repeal Act
                                 2003&lt;/title&gt;
                             &lt;/leg:heading&gt;
                             &lt;p&gt;
                               &lt;text align="center"&gt;
                                 &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                               &lt;/text&gt;
                             &lt;/p&gt;
                             &lt;leg:tableofamend/&gt;
                           &lt;/leg:history&gt;
                         ...
                     &lt;/leg:bodytext&gt;
             &lt;/leg:preamble&gt;
             
          
                   
                   <b>becomes</b>
                
                 
              
                       &lt;legis:body&gt;
                              &lt;primlaw:level leveltype="preamble"&gt;
                                  &lt;primlaw:bodytext&gt;
                                      &lt;p&gt;
                                          &lt;text&gt;Public Act 2003 No 102&lt;/text&gt;
                                      &lt;/p&gt;
                                      &lt;p&gt;
                                          &lt;text&gt;Date of assent 21 October 2003&lt;/text&gt;
                                      &lt;/p&gt;
                                      &lt;p&gt;
                                          &lt;text&gt;Commencement see section 2&lt;/text&gt;
                                      &lt;/p&gt;
                                      &lt;p&gt;
                                          &lt;text&gt;Copyright 2004 LexisNexis NZ Limited&lt;/text&gt;
                                      &lt;/p&gt;
                                      &lt;p&gt;
                                          &lt;text&gt;&lt;proc:formchars formchar="rule" formcharuse="other"/&gt;&lt;/text&gt;
                                      &lt;/p&gt;
                                  &lt;/primlaw:bodytext&gt;
                                  &lt;primlawhist:primlawhist&gt;
                                    &lt;primlawhist:histgrp&gt;
                                        &lt;ref:anchor id="A2003A102" anchortype="global"/&gt;
                                        &lt;heading&gt;
                                            &lt;title&gt;Contents - War Funds Act Repeal Act 2003&lt;/title&gt;
                                        &lt;/heading&gt;
                                        &lt;primlawhist:histitem&gt;
                                            &lt;bodytext&gt;
                                                &lt;p&gt;
                                              &lt;text&gt;
                                                  &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                              &lt;/text&gt;
                                                &lt;/p&gt;
                                                &lt;table/&gt;
                                            &lt;/bodytext&gt;
                                        &lt;/primlawhist:histitem&gt;
                                    &lt;/primlawhist:histgrp&gt;
                                  &lt;/primlawhist:primlawhist&gt;
                              &lt;/primlaw:level&gt;
                          &lt;/legis:body&gt;
                          
                                          
              </pre>
						</li>
					</ul>
					<ul>
						<li><sourcexml>leg:history</sourcexml> becomes
								<targetxml>primlawhist:primlawhist</targetxml>
							<pre>
                
                        &lt;leg:history id="A2003A102:ANALYSIS"&gt;
                                      &lt;leg:heading&gt;
                                        &lt;title&gt;&lt;refpt id="A2003A102:ANALYSIS" type="ext"/&gt;Contents - War Funds Act Repeal Act
                                          2003&lt;/title&gt;
                                      &lt;/leg:heading&gt;
                                      &lt;p&gt;
                                        &lt;text align="center"&gt;
                                          &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                        &lt;/text&gt;
                                      &lt;/p&gt;
                                      &lt;leg:tableofamend/&gt;
                                    &lt;/leg:history&gt; 
                            
                
              
                
                
                <b>becomes</b> 
                                 
                                
                                &lt;primlawhist:primlawhist&gt;
                                    &lt;primlawhist:histgrp&gt;
                                        &lt;ref:anchor id="A2003A102" anchortype="global"/&gt;
                                        &lt;heading&gt;
                                            &lt;title&gt;Contents - War Funds Act Repeal Act 2003&lt;/title&gt;
                                        &lt;/heading&gt;
                                        &lt;primlawhist:histitem&gt;
                                            &lt;bodytext&gt;
                                                &lt;p&gt;
                                              &lt;text&gt;
                                                  &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                              &lt;/text&gt;
                                                &lt;/p&gt;
                                                &lt;table/&gt;
                                            &lt;/bodytext&gt;
                                        &lt;/primlawhist:histitem&gt;
                                    &lt;/primlawhist:histgrp&gt;
                                  &lt;/primlawhist:primlawhist&gt;
                                  
                                  
                     
              </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:preamble/leg:bodytext/leg:history</sourcexml>Becomes
								<targetxml>
								primlaw:level[@leveltype="preamble"]/primlawhist:primlawhist/primlawhist:histgrp</targetxml>
							<pre>                           
                             
                 &lt;leg:preamble&gt;
                        &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                            &lt;leg:history id="1688I000:ANALYSIS"&gt;
                                 &lt;leg:heading ln.user-displayed="false"&gt;
                                     &lt;title&gt;
                                         &lt;refpt id="1688I000:ANALYSIS" type="ext"/&gt;Contents
                                     &lt;/title&gt;
                                &lt;/leg:heading&gt;
                                     &lt;p&gt;
                                       &lt;text align="center"&gt;
                                        &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                       &lt;/text&gt;
                                     &lt;/p&gt;
                                         &lt;leg:tableofamend&gt;
                                           &lt;table/&gt;
                                         &lt;/leg:tableofamend&gt;
                                      &lt;/leg:history&gt;
                                     &lt;p&gt;
                                       &lt;text align="center"&gt;_________________&lt;/text&gt;
                                     &lt;/p&gt;
                                &lt;/leg:bodytext&gt;
                               &lt;/leg:preamble&gt;
                             
                             <b>Becomes</b>
                             
                              &lt;primlaw:level leveltype="preamble"&gt; 
                                 &lt;primlawhist:primlawhist&gt;  
                                   &lt;primlawhist:histgrp&gt;
                                     &lt;ref:anchor id="nz_1688I000ANALYSIS" anchortype="global"/&gt;
                                     &lt;heading&gt;
                                       &lt;title&gt;Contents&lt;/title&gt;
                                     &lt;/heading&gt;
                                     &lt;primlawhist:histitem&gt;
                                       &lt;bodytext&gt; 
                                         &lt;p&gt;
                                         &lt;text&gt;
                                             &lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;
                                         &lt;/text&gt;
                                         &lt;/p&gt;
                                         &lt;table/&gt;
                                        &lt;p&gt;
                                           &lt;text&gt;_________________&lt;/text&gt;
                                       &lt;/p&gt;
                                 &lt;/bodytext&gt;
                              &lt;/primlawhist:histitem&gt;
                          &lt;/primlawhist:histgrp&gt;
                      &lt;/primlawhist:primlawhist&gt;
                             
                        </pre>
							<note>For handling <b>@ln.user-displayed</b> attribute, refer the
								general markup <xref
									href="../../common_newest/Rosetta_heading_ln.user-displayed.dita"
									>ln.user_displayed="false"</xref> section in the CI.</note>
							<sourcexml>&lt;preamble/bodytext/history/history...</sourcexml>becomes
								<targetxml>
								primlaw:level[@leveltype="preamble"]/primlaw:level[@leveltype="unclassifed"]/primlawhist:primlawhist/primlawhist:primlawhist</targetxml>
							<pre>
                         
                            &lt;leg:preamble&gt;
                              &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                                  &lt;p&gt;
                                      &lt;text align="center"&gt;&amp;#x00A0;&lt;/text&gt;
                                  &lt;/p&gt;
                                  &lt;p&gt;
                                     &lt;text&gt;
                                         &lt;emph typestyle="it"&gt;Repealed&lt;nl/&gt;&lt;/emph&gt;
                                  &lt;glp:note&gt;
                                  &lt;p&gt;
                                      &lt;text&gt;{&amp;#x00A0;Editorial Note: s25 &amp;amp; 26 were continued in force as if
                                      they were regulations made under 
                                      &lt;ci:cite searchtype="LEG-REF"/&gt;
                                      &lt;/text&gt;
                                  &lt;/p&gt;
                                &lt;/glp:note&gt;
                               &lt;glp:note&gt;
                                   &lt;p&gt;
                                       &lt;text&gt;{&amp;#x00A0;Editorial Note: Notices given under s26A continue under 2003 No 114&lt;/text&gt;
                                   &lt;/p&gt;
                               &lt;/glp:note&gt;
                             &lt;/text&gt;
                            &lt;leg:histnote&gt;
                              &lt;leg:heading&gt;
                                  &lt;title&gt;Hist.&lt;/title&gt;
                              &lt;/leg:heading&gt;
                           &lt;p&gt;
                               &lt;text&gt;1981 No&amp;#x00A0;125: Repealed on 1 January 2004 by Wine Act 2003 (2003
                                   No&amp;#x00A0;114), s122.&lt;/text&gt;
                           &lt;/p&gt;
                           &lt;/leg:histnote&gt;
                          &lt;/p&gt;
                          &lt;p&gt;
                            &lt;text align="center"&gt;____________________________________&lt;/text&gt;
                         &lt;/p&gt;
                     &lt;leg:history id="1981A125_LEGISLATIVE_HISTORY"&gt;
                          &lt;leg:heading ln.user-displayed="false"&gt;
                              &lt;title&gt;
                              &lt;refpt id="1981A125_LEGISLATIVE_HISTORY" type="ext"/&gt;Legislative History (Repealed) &lt;/title&gt;
                          &lt;/leg:heading&gt;
                          &lt;p&gt;
                              &lt;text align="center"&gt;
                                  &lt;emph typestyle="bf"&gt;Legislative History (Repealed)&lt;/emph&gt;
                              &lt;/text&gt;
                          &lt;/p&gt;
                     &lt;/leg:history&gt;
                     &lt;leg:history id="1981A125_INDEX"&gt;
                         &lt;leg:heading ln.user-displayed="false"&gt;
                             &lt;title&gt;
                                &lt;refpt id="1981A125_INDEX" type="ext"/&gt;Amending Legislation(Repealed)&lt;/title&gt;
                         &lt;/leg:heading&gt;
                         &lt;p&gt;
                             &lt;text align="center"&gt;
                                 &lt;emph typestyle="bf"&gt;Amending Legislation (Repealed)&lt;/emph&gt;
                             &lt;/text&gt;
                         &lt;/p&gt;
                     &lt;/leg:history&gt;
                      &lt;p&gt;
                          &lt;text align="center"&gt;____________________________________&lt;/text&gt;
                      &lt;/p&gt;
                     &lt;/leg:bodytext&gt;
                 &lt;/leg:preamble&gt;
                
                            
                <b>becomes</b>
                            
                          
                    &lt;primlaw:level leveltype="preamble"&gt;
                     &lt;heading&gt;
                         &lt;title/&gt;
                     &lt;/heading&gt;
                        &lt;primlaw:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;&amp;#x00A0;&lt;/text&gt;
                            &lt;/p&gt;
                           &lt;p&gt;
                                &lt;text&gt;
                                    &lt;emph typestyle="it"&gt;Repealed&lt;proc:nl/&gt;&lt;/emph&gt;&lt;/text&gt;
                           &lt;/p&gt;
                            &lt;notes&gt;
                            &lt;note&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;{&amp;#x00A0;Editorial Note: s25 &amp;amp; 26 were continued in force as
                                            if they were regulations made under 
                                            &lt;lnci:cite/&gt;
                                          &lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/note&gt;
            
                            &lt;note&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt; {&amp;#x00A0;Editorial Note: Notices given under s26A continue under
                                            2003 No 114, s41&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/note&gt;
                            &lt;note notetype="historical"&gt;
                                &lt;heading&gt;
                                    &lt;title&gt;Hist.&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;bodytext&gt;
                                    &lt;p&gt;
                                        &lt;text&gt;1981 No&amp;#x00A0;125: Repealed on 1 January 2004 by Wine Act 2003
                                            (2003 No&amp;#x00A0;114), s122.&lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/note&gt;
                          &lt;/notes&gt; 
                                &lt;p&gt;
                                    &lt;text&gt;____________________________________&lt;/text&gt;
                                &lt;/p&gt;
                       &lt;primlaw:level leveltype="unclassified"&gt;
                            &lt;heading&gt;
                                &lt;title&gt;Legislative History (Repealed)&lt;/title&gt;
                            &lt;/heading&gt;
                            &lt;primlawhist:primlawhist&gt;
                                &lt;heading&gt;
                                &lt;title&gt;Legislative History&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;primlawhist:histgrp&gt;
                                    &lt;primlawhist:histitem&gt;
                                        &lt;bodytext&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;
                                                    &lt;emph typestyle="bf"&gt;Legislative History (Repealed)&lt;/emph&gt;
                                                &lt;/text&gt;
                                            &lt;/p&gt;
                                        &lt;/bodytext&gt;
                                    &lt;/primlawhist:histitem&gt;
                                &lt;/primlawhist:histgrp&gt;
                            &lt;/primlawhist:primlawhist&gt;
                             &lt;primlawhist:primlawhist&gt;
                                &lt;heading&gt;&lt;title&gt;Amending Legislation&lt;/title&gt;&lt;/heading&gt;
                                &lt;primlawhist:histgrp&gt;
                                    &lt;primlawhist:histitem&gt;
                                        &lt;bodytext&gt;
                                            &lt;p&gt;
                                                &lt;text&gt;
                                                    &lt;emph typestyle="bf"&gt;Amending Legislation (Repealed)&lt;/emph&gt;
                                                &lt;/text&gt;
                                            &lt;/p&gt;
                                        &lt;/bodytext&gt;
                                    &lt;/primlawhist:histitem&gt;
                                &lt;/primlawhist:histgrp&gt;
                            &lt;/primlawhist:primlawhist&gt;
                     &lt;/primlaw:level&gt;
                                &lt;p&gt;
                                    &lt;text align="center"&gt;____________________________________&lt;/text&gt;
                                &lt;/p&gt;
                        &lt;/primlaw:bodytext&gt;
                &lt;/primlaw:level&gt;
                &lt;/legis:body&gt;
                
                        </pre>
							<note>For handling <b>@ln.user-displayed</b> attribute, refer the
								general markup <xref
									href="../../common_newest/Rosetta_heading_ln.user-displayed.dita"
									>ln.user_displayed="false"</xref> section in the CI.</note>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml> /leg:bodytext/leg:histnote </sourcexml>Becomes
								<targetxml>
								primlaw:level[@leveltype="preamble"]/primlawhist:primlawhist/primlawhist:histgrp</targetxml>
							<pre>  
                        
                            &lt;leg:bodytext searchtype="LEGISLATION"&gt;
                              &lt;leg:histnote&gt;
                           &lt;leg:heading&gt;
                              &lt;title&gt; YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/title&gt;
                              &lt;subtitle&gt; Public Act&amp;#xA0;1999 No&amp;#xA0;25 &lt;/subtitle&gt;
                             &lt;/leg:heading&gt;
                            &lt;leg:bodytext&gt;
                              &lt;leg:histnote&gt;
                                &lt;p&gt;
                                  &lt;text&gt;
                                    Date of assent: 4&amp;#xA0;May 1999
                                  &lt;/text&gt;
                                  &lt;/p&gt;
                              &lt;/leg:histnote&gt;
                            &lt;/leg:bodytext&gt;

                            
                            <b>Becomes</b>
                                                            
                             
                                     &lt;primlaw:level leveltype="unclassified"&gt;
                                        &lt;note notetype="historical"&gt;
                                            &lt;heading&gt;
                                                &lt;title align="left"&gt;YEAR 2000 INFORMATION  DISCLOSURE ACT&amp;#xA0;1999 &lt;/title&gt;
                                                &lt;subtitle&gt;Public Act&amp;#xA0;1999 No&amp;#xA0;25 &lt;/subtitle&gt;        
                                            &lt;/heading&gt;      
                                            &lt;bodytext&gt;     
                                                &lt;p&gt;  
                                                    &lt;text&gt;Date of assent: 4&amp;#xA0;May 1999&lt;/text&gt;        
                                                &lt;/p&gt;    
                                            &lt;/bodytext&gt;           
                                        &lt;/note&gt;   
                                    &lt;/primlaw:level&gt;
                                
                            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:histnote
							</sourcexml>Becomes
								<targetxml>primlaw:level[@leveltype="unclassified"]/note[notetype="historical"]</targetxml>
							<pre>
                        
                      &lt;leg:level id="1999A25.BODY"&gt;
                      &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
                          &lt;leg:heading&gt;
                           &lt;title&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;amp;#xA0;1999&lt;/title&gt;
                           &lt;subtitle&gt;Public Act&amp;amp;#xA0;1999 No&amp;amp;#xA0;25&lt;/subtitle&gt;
                          &lt;/leg:heading&gt;
                       &lt;leg:levelbody&gt;
                           &lt;leg:bodytext&gt;
                            &lt;leg:histnote&gt;
                             &lt;p&gt;
                              &lt;text&gt;Date of assent: 4&amp;amp;#xA0;May 1999&lt;/text&gt;
                             &lt;/p&gt;
                            &lt;/leg:histnote&gt;
                           ...
                           &lt;/leg:bodytext&gt;
                       ...
                       &lt;/leg:level&gt;
               
        <b>becomes</b>
         &lt;primlaw:level leveltype="unclassified"&gt;
                         &lt;heading&gt;
                              &lt;title align="left"&gt;EAR 2000 INFORMATION DISCLOSURE ACT&amp;amp;#xA0;1999&lt;/title&gt;
                              &lt;subtitle&gt;Public Act&amp;amp;#xA0;1999 No&amp;amp;#xA0;25&lt;/subtitle&gt;
                         &lt;/heading&gt;
                &lt;primlaw:bodytext&gt;
                    &lt;note notetype="historical"&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Date of assent: 4&amp;amp;#xA0;May 1999&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/note&gt;
                &lt;/primlaw:bodytext&gt;
             &lt;/primlaw:level&gt;
            
             
     
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:histnote </sourcexml>becomes
								<targetxml>primlaw:level[@leveltype="unclassified"]/note[notetype="historical"]</targetxml>
							<pre>
             
            &lt;leg:level id="1999A25.BODY"&gt;
                  &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
                      &lt;leg:heading&gt;
                       &lt;title&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;amp;#xA0;1999&lt;/title&gt;
                       &lt;subtitle&gt;Public Act&amp;amp;#xA0;1999 No&amp;amp;#xA0;25&lt;/subtitle&gt;
                      &lt;/leg:heading&gt;
                     &lt;leg:bodytext&gt;
                           &lt;leg:histnote&gt;
                                &lt;p&gt;
                                 &lt;text&gt;Date of assent: 4&amp;amp;#xA0;May 1999&lt;/text&gt;
                                &lt;/p&gt;
                           &lt;/leg:histnote&gt;
                       ...
                       &lt;/leg:bodytext&gt;   
             
            <b>becomes</b>
            
              
           
                 &lt;primlaw:level leveltype="unclassified"&gt;
                         &lt;heading&gt;
                              &lt;title align="left"&gt;EAR 2000 INFORMATION DISCLOSURE ACT&amp;amp;#xA0;1999&lt;/title&gt;
                              &lt;subtitle&gt;Public Act&amp;amp;#xA0;1999 No&amp;amp;#xA0;25&lt;/subtitle&gt;
                         &lt;/heading&gt;
                  &lt;primlaw:bodytext&gt;
                    &lt;note notetype="historical"&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;Date of assent: 4&amp;amp;#xA0;May 1999&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/note&gt;
                     &lt;/primlaw:bodytext&gt;
                 &lt;/primlaw:level&gt;
                   
                   
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:tableofamend</sourcexml> is based on the following
							scenarios: <sourcexml>leg:tableofamend/heading</sourcexml> becomes
								<targetxml>
								primlawhist:primlawhist/primlawhist:histgrp[grptype="tableofamend"]/heading</targetxml>,
							this is for capturing the heading
								information.<sourcexml>leg:tableofamend</sourcexml> becomes
								<targetxml>
								primlawhist:primlawhist/primlawhist:histgrp[grptype="tableofamend"]/primlawhist:histitem/bodytext </targetxml>
							<note>Add the attribute value @grptype="tableofamend" to
									<targetxml>primlaw:primlawhist</targetxml>
							</note>
							<pre>
      
       
      &lt;leg:tableofamend&gt;
                 &lt;leg:heading&gt;
                     &lt;title&gt;&lt;refpt id="VIC_ACT_1998-25_LEGHIST_PRE-YEAR" type="ext"/&gt;
                         &lt;emph typestyle="bf"&gt;Pre-2000 Act&lt;/emph&gt;
                     &lt;/title&gt;
                 &lt;/leg:heading&gt;
          &lt;p&gt;
              &lt;text&gt;This Act history only includes events from 2000. Details of events affecting the Act 
              before 2000 may be found in the 
              &lt;remotelink refpt="VIC_ACT_1998-25_NOTES" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" service="DOC-ID"&gt;Notes&lt;/remotelink&gt; 
              at the end of the Act.&lt;/text&gt;
          &lt;/p&gt;
      &lt;/leg:tableofamend&gt;
      &lt;leg:tableofamend&gt;
          &lt;table frame="none" colsep="0" rowsep="0"&gt;
              &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                  &lt;colspec colwidth="23*" colname="col1" colnum="1"/&gt;
                  &lt;colspec colwidth="53*" colname="col2" colnum="2"/&gt;
                  &lt;colspec colwidth="1*" colname="col3" colnum="3"/&gt;
                  &lt;tbody&gt;
                      &lt;row&gt;&lt;entry namest="col1" nameend="col2" align="center"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Wills Amendment Act 2005 - 2005 No 25&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry namest="col2" nameend="col3" align="left"&gt;10 March 2005 Divided from Relationships (Statutory References) Bill (Bill 151-2) as Bill 151-3V&lt;/entry&gt;&lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry namest="col2" nameend="col3" align="left"&gt;15 March 2005 Third reading&lt;/entry&gt;&lt;/row&gt;
                      &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry namest="col2" nameend="col3" align="left"&gt;&amp;amp;nbsp;&lt;/entry&gt;&lt;/row&gt;
                  &lt;/tbody&gt;
              &lt;/tgroup&gt;
          &lt;/table&gt;
       &lt;/leg:tableofamend&gt; 

    
<b>becomes</b>

    &lt;primlawhist:primlawhist&gt;
            &lt;primlawhist:histgrp grptype="tableofamend"&gt;
                &lt;heading&gt;
                    &lt;title&gt;&lt;emph typestyle="bf"&gt;Pre-2000 Act&lt;/emph&gt;&lt;/title&gt;
                &lt;/heading&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;&lt;text&gt;This Act history only includes events from
                            2000. Details of events affecting the Act
                            before 2000 may be found in the
                            &lt;ref:lnlink&gt;
                                &lt;ref:marker&gt;Notes&lt;/ref:marker&gt;
                                &lt;ref:locator anchoridref="VIC_ACT_1998-25_NOTES"&gt;
                                   &lt;ref:locator-key&gt;
                                      &lt;ref:key-name name="DOC-ID"/&gt;
                                      &lt;ref:key-value value="1111-ABCD_9876"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:lnlink&gt; at the end of the
                            Act.&lt;/text&gt;&lt;/p&gt;
                        &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
            &lt;primlawhist:histgrp&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;table frame="none" colsep="0" rowsep="0"&gt;
                            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                                &lt;colspec colwidth="23*" colname="col1" colnum="1"/&gt;
                                &lt;colspec colwidth="53*" colname="col2" colnum="2"/&gt;
                                &lt;colspec colwidth="1*" colname="col3" colnum="3"/&gt;
                                &lt;tbody&gt;
                                    &lt;row&gt;&lt;entry namest="col1" nameend="col2"
                                        align="center"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Wills Amendment
                                            Act 2005 - 2005 No 25&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;&lt;/row&gt;
                                    &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;
                                        &lt;entry namest="col2" nameend="col3" align="left"&gt;10 March 2005 Divided from
                                        Relationships (Statutory References) Bill (Bill 151-2) as Bill 151-3V&lt;/entry&gt;&lt;/row&gt;
                                    &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;&lt;entry
                                        namest="col2" nameend="col3" align="left"&gt;15 March 2005 Third reading&lt;/entry&gt;&lt;/row&gt;
                                    &lt;row&gt;&lt;entry colname="col1"&gt;&lt;/entry&gt;
                                        &lt;entry namest="col2" nameend="col3" align="left"&gt;nbsp&lt;/entry&gt;&lt;/row&gt;
                                &lt;/tbody&gt;
                            &lt;/tgroup&gt;
                        &lt;/table&gt;
                    &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
        


            
  </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>glp:note</sourcexml> becomes
								<targetxml>note</targetxml> and children describe below as:
							(check usage versus context within NL schema).<ul>
								<li><sourcexml>glp:note/heading</sourcexml> becomes
										<targetxml>note/heading</targetxml>
								</li>
								<li>Create <targetxml>bodytext</targetxml> for narrative text
									content.</li>
							</ul>
							<pre>
                &lt;glp:note&gt;
                 &lt;heading&gt;
                  &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Note&lt;/emph&gt;&lt;/title&gt;
                 &lt;/heading&gt;
                  &lt;p&gt;
                     &lt;text&gt;
                     &lt;emph typestyle="it"&gt;A part of the premises that is in close proximity to the licensed premises include an area used for the management
                     or operation of the business such as a kitchen or storage area.&lt;/emph&gt;
                     &lt;/text&gt;
                  &lt;/p&gt;
              &lt;/glp:note&gt;
              
               
             
             <b>becomes</b>
                  &lt;note&gt;
                  &lt;heading&gt;
                     &lt;title align="center"&gt;
                       &lt;emph typestyle="bf"&gt;Note&lt;/emph&gt;
                     &lt;/title&gt;
                  &lt;/heading&gt;
                  &lt;bodytext&gt;
                     &lt;p&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;A part of the premises that is in 
                        close proximity to the licensed premises include an area used for the management
                        or operation of the business such as a kitchen or storage area.&lt;/emph&gt;
                        &lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/bodytext&gt;
                  &lt;/note&gt;
               
              
            </pre>
						</li>
					</ul>
					<ul>
						<li>
							<sourcexml>leg:empleg</sourcexml> becomes
								<targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>
							and populated as:
							<pre>
              
                
              
              &lt;leg:level id="2006L1_SCHEDULE"&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION SCHEDULE" subdoc="true" leveltype="schedule"
                 toc-caption="Schedule &amp;amp;#x2014; Alfred Cox Park"&gt;
              &lt;leg:heading&gt;
                 &lt;desig searchtype="SCH-NUM"&gt;
                  &lt;designum&gt;&lt;refpt id="2006L1_SCHEDULE" type="ext"/&gt;Schedule&lt;/designum&gt;
                 &lt;/desig&gt;
                 &lt;title searchtype="SCH-TITLE"&gt; &amp;amp;#x2014; Alfred Cox Park&lt;/title&gt;
                 &lt;leg:empleg&gt;
                    &lt;remotelink dpsi="0069" remotekey1="REFPTID" docidref="ABCD_9876" service="DOC-ID" refpt="2006L1S3"&gt;s&amp;amp;#xA0;3&lt;/remotelink&gt;
                 &lt;/leg:empleg&gt;
              &lt;/leg:heading&gt;
              
              
         
              
              
             <b>becomes</b>
                  
               &lt;primlaw:level subdoc="true" leveltype="schedule" toc-caption="Schedule &amp;amp;#x2014; Alfred Cox Park"&gt;
                  &lt;ref:anchor id="nz_2006L1_SCHEDULE" anchortype="global"/&gt;
                  &lt;heading&gt;
                     &lt;desig&gt;Schedule&lt;/desig&gt;
                     &lt;title&gt;&lt;emph typestyle="bf"&gt;Alfred Cox Park&lt;/emph&gt;&lt;/title&gt;
                  &lt;/heading&gt;
              &lt;primlaw:authority&gt;
              &lt;primlaw:authority-item&gt;
                &lt;textitem&gt;
                  &lt;ref:lnlink&gt;
                    &lt;ref:marker role="label"&gt;s&amp;amp;#xA0;3&lt;/ref:marker&gt;
                      &lt;ref:locator anchoridref="_2006L1S3"&gt; 
                        &lt;ref:locator-key&gt;
                          &lt;ref:key-name name="normcite"/&gt;
                          &lt;ref:key-value value="0069-ABCD_9876"/&gt;
                        &lt;/ref:locator-key&gt;
                     &lt;/ref:locator&gt;
                 &lt;/ref:lnlink&gt;
               &lt;/textitem&gt;
              &lt;/primlaw:authority-item&gt;
              &lt;/primlaw:authority&gt;
                
              
           </pre>
						</li>
					</ul>
					<ul>
						<li> The conversion for <sourcexml>leg:levelstatus</sourcexml> is
							based on the following scenarios: <ul>
								<li>
									<ol>
										<li>If the
												<sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
											with text in that then becomes
												<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
												legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
											<note>Include the <targetxml>@statuscode</targetxml> in
												element <targetxml>legisinfo:status</targetxml> to
												represent repealed legislation.</note>
											<pre>
                
            
                       
                      &lt;leg:level id="1964A27_PART_3"&gt;
                      &lt;leg:level-vrnt searchtype="LEGISLATION PART" subdoc="true" leveltype="part" toc-caption="Part 3 &amp;amp;#x2014; Coinage And Legal Tender (ss 9&amp;amp;#x2014;15)"&gt;
                        &lt;leg:levelinfo&gt;
                           &lt;leg:levelstatus isrepealed="true"&gt;(Repealed)&lt;/leg:levelstatus&gt;
                        &lt;/leg:levelinfo&gt;
                        ...
                      &lt;/leg:level&gt;  
                      

                   <b>becomes</b>
            
                   
                     &lt;primlaw:level xml:id="nz_1964A27_PART_3" leveltype="part"&gt;
                         &lt;primlaw:levelinfo&gt;
                             &lt;primlawinfo:primlawinfo&gt;
                                 &lt;legisinfo:legisinfo&gt;
                                     &lt;legisinfo:statusgroup&gt;
                                         &lt;legisinfo:status statuscode="repealed"&gt;
                                             &lt;legisinfo:statustext&gt;
                                                 [Repealed]
                                             &lt;/legisinfo:statustext&gt;
                                         &lt;/legisinfo:status&gt;
                                     &lt;/legisinfo:statusgroup&gt;
                                 &lt;/legisinfo:legisinfo&gt;
                             &lt;/primlawinfo:primlawinfo&gt;
                         &lt;/primlaw:levelinfo&gt;
                         ....
                     &lt;/primlaw:level&gt;

                    

                                    </pre>
										</li>
										<li>If the
												<sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
											with no text in that then becomes
												<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
												legisinfo:status[@statuscode="repealed"]</targetxml>
											<pre>
                                        
                     &lt;leg:level id="ACLL.SCRN.SCCR70.PT80.R5.4"&gt;
                       &lt;leg:level-vrnt searchtype="LEGISLATION SUBRUL" leveltype="subrul"&gt;
                        &lt;leg:levelinfo&gt;
                            &lt;leg:levelstatus isrepealed="true"/&gt;
                       &lt;/leg:levelinfo&gt;
                       ...
                      &lt;/leg:level&gt;
                  
           
              <b>Becomes</b>
              
              
                  &lt;primlaw:level xml:id="ACLL.SCRN.SCCR70.PT80.R5.4" leveltype="subrule"&gt;
                  &lt;primlaw:levelinfo&gt;
                      &lt;primlawinfo:primlawinfo&gt;
                          &lt;legisinfo:legisinfo&gt;
                              &lt;legisinfo:statusgroup&gt;
                                  &lt;legisinfo:status statuscode="repealed"/&gt;
                                  &lt;/legisinfo:status&gt;
                              &lt;/legisinfo:statusgroup&gt;
                          &lt;/legisinfo:legisinfo&gt;
                      &lt;/primlawinfo:primlawinfo&gt;
                  &lt;/primlaw:levelinfo&gt;
               
                  </pre>
										</li>
										<li>If the
												<sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
											then supress the element.</li>
									</ol>
								</li>
							</ul>
							<ul>
								<li>For <b>NZ Legis</b> conversion: If
										<sourcexml>leg:bodytext/leg:comntry</sourcexml> occurs where
									there is <sourcexml>leg:comntry</sourcexml> between
										<sourcexml>bodytext</sourcexml> elements such as:
										<sourcexml>blockquote</sourcexml> and
										<sourcexml>p</sourcexml>. Wrap the first element ( in this
									situation blockquote) within
										<targetxml>primlaw:bodytext</targetxml>and close
										<targetxml>primlaw:bodytext</targetxml> after blockquote
									content is finished. After the
										<targetxml>primlaw:bodytext</targetxml> has been closed
									insert the <targetxml>annot:annotations</targetxml> element to
									capture the <sourcexml>leg:comntry</sourcexml> content. If
									another bodytext element falls after the annotation ( in this
									situation p) then start a new
										<targetxml>primlaw:bodytext</targetxml> after the annotation
									is complete and finish the content conversion. <note>
										<p>See the general markup section on how to convert specific
											element such as <sourcexml>leg:comntry</sourcexml>
										</p>
									</note>
									<pre>
                                    
                &lt;leg:levelbody&gt;
                      &lt;leg:bodytext&gt;
                        &lt;blockquote&gt;
                            &lt;p indent="none"&gt;
                                &lt;text align="center"&gt;
                                    &lt;emph typestyle="bf"&gt;1988, No 110&lt;/emph&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/blockquote&gt;
                        &lt;leg:comntry subdoc="true" toc-caption="Commentary"&gt;
                            &lt;level id="DCP-CIV_DCPCV-L-01-DCA47.SGM_PARA-DCP-CIV-DTAINTRO-1"
                                leveltype="para0" subdoc="true"
                                toc-caption="DTAINTRO.1 The philosophy of the Act"&gt;
                                &lt;heading searchtype="COMMENTARY"&gt;
                                    &lt;edpnum&gt;&lt;refpt id="PARA-DCP-CIV-DTAINTRO-1" type="ext"
                                        /&gt;DTAINTRO.1 &lt;/edpnum&gt;
                                    &lt;title&gt;The philosophy of the Act&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;bodytext searchtype="COMMENTARY"&gt;
                                &lt;p&gt;
                                 &lt;text&gt;Section 18 requires the Tribunal to determine the
                                     dispute according to the substantial merits and justice
                                     of the case. In doing so, it shall have regard to the
                                     law but shall not be bound to give effect to strict
                                     legal rights or obligations or to legal forms or
                                     technicalities.&lt;/text&gt;
                              &lt;/p&gt;
                              &lt;p&gt;
                                  &lt;text&gt;In doing so the Tribunal is empowered to disregard the
                                      provision of any agreements that exclude or limit
                                      conditions, warranties, or undertakings or any right,
                                      duty, liability,&lt;/text&gt;&lt;/p&gt;
                              &lt;p&gt;
                                  &lt;text&gt;The conciliatory nature of the Tribunal functions are
                                      emphasised by its power to assist parties to a
                                      settlement of their dispute.&lt;/text&gt;
                              &lt;/p&gt;
                                &lt;/bodytext&gt;
                            &lt;/level&gt;
                            &lt;/leg:comntry&gt;
                            &lt;p&gt;
                            &lt;text&gt;An Act to consolidate and amend the &lt;ci:cite searchtype="LEG-REF"
                                        &gt;&lt;ci:content&gt;Small Claims Tribunals
                                    Act 1976&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text/&gt;
                            &lt;blockquote&gt;
                                &lt;p indent="none"&gt;
                                    &lt;text align="right"&gt;
                                        &lt;emph typestyle="it"&gt;&lt;emph typestyle="bf"&gt;[&lt;/emph&gt;28 July
                                            1988&lt;/emph&gt;
                                    &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/blockquote&gt;
                            &lt;text&gt; &amp;#x2002; &lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text&gt;BE IT ENACTED by the Parliament of New Zealand as follows:&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/leg:bodytext&gt;&lt;/leg:levelbody&gt;
                                    
                                    <b>becomes</b>
                                    
                   &lt;primlaw:level leveltype="xxx"&gt;
                &lt;primlaw:bodytext&gt;
                &lt;blockquote&gt;
                    &lt;p indent="none"&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf"&gt;1988, No 110&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/blockquote&gt;
              &lt;/primlaw:bodytext&gt;
              &lt;annot:annotations&gt;
                &lt;annot:annotation-grp grptype="para0" alternatetoccaption="DTAINTRO.1 The philosophy of the Act" includeintoc="true"&gt;
                    &lt;heading&gt;
                        &lt;altdesig&gt;DTAINTRO.1&lt;/altdesig&gt;
                        &lt;desig&gt;1&lt;/desig&gt;
                        &lt;title&gt;The philosophy of the Act&lt;/title&gt;
                    &lt;/heading&gt;
                  &lt;annot:annotation&gt;
                  &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;Section 18 requires the Tribunal to determine the
                            dispute according to the substantial merits and justice
                            of the case. In doing so, it shall have regard to the
                            law but shall not be bound to give effect to strict
                            legal rights or obligations or to legal forms or
                            technicalities.&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;In doing so the Tribunal is empowered to disregard the
                            provision of any agreements that exclude or limit
                            conditions, warranties, or undertakings or any right,
                            duty, liability,&lt;/text&gt;&lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;The conciliatory nature of the Tribunal functions are
                            emphasised by its power to assist parties to a
                            settlement of their dispute.&lt;/text&gt;
                    &lt;/p&gt;
              
                &lt;/bodytext&gt;
                &lt;/annot:annotation&gt;
              &lt;/annot:annotation-grp&gt;
             &lt;/annot:annotations&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;An Act to consolidate and amend the &lt;lnci:cite&gt;
                            &lt;lnci:content&gt;Small Claims Tribunals Act 1976&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text/&gt;
                    &lt;blockquote&gt;
                        &lt;p indent="none"&gt;
                            &lt;text&gt;
                                &lt;emph typestyle="it"&gt;&lt;emph typestyle="bf"&gt;[&lt;/emph&gt;28 July
                                    1988&lt;/emph&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/blockquote&gt;
                    &lt;text&gt; &amp;#x2002; &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;BE IT ENACTED by the Parliament of New Zealand as follows:&lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;&lt;/primlaw:level&gt;
                                    
                                    
                                    </pre></li>
							</ul>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2014-02-20: <ph id="change_20140220_SS">Updated the instruction and
						example for handling <sourcexml>@inline</sourcexml> attribute when
						target conversion having
							<targetxml>primlaw:level@leveltype</targetxml> element with
						attribute values <b>"clause, section and regulation"</b>.</ph></p>
				<p>2013-12-09: <ph id="change_20131209_brt">Added explicit mappings for
						converting <sourcexml>leg:level/@leveltype</sourcexml> to
							<targetxml>primlaw:level/@leveltype</targetxml> in cases where
						they don't exactly match the allowed target values. P4 issue -
						affects only NZ06.</ph></p>
			</section>
		</body>
	</dita:topic>



	<xsl:template match="leg:body">
		<!--  Original Target XPath:  legis:body   -->
		<legis:body>
			<xsl:apply-templates select="@* | node()"/>
		</legis:body>
	</xsl:template>
	
	<!-- JD: if there is any other child besides leg:juris, create a level -->
	<xsl:template match="leg:info[* except (leg:juris)]">
		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
		<primlaw:level leveltype="unclassified">
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<xsl:apply-templates select="@* | node() except (leg:officialnum,leg:year)"/>
					</legisinfo:legisinfo>
					<!-- JD: Note that PS2017040705344880009LNINZACTSFROMSERVICES_input_gt-090-l-ca-cri-rl0110181000.xml
					     has leg:year then leg:officialnum; keep an eye out
					for output with different ordering -->
					<xsl:apply-templates select="leg:year, leg:officialnum"/>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>		
	</xsl:template>
	
	<xsl:template match="leg:dates">		
		<primlawinfo:dates>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:dates>
	</xsl:template>
	
	<!-- JD: 2017-07-27: see note in /modules/nonamespace/Rosetta_leg.year_ln.user-displayed.xsl
	Removing that module and using logic below.
	-->
	<xsl:template match="leg:info/leg:year[not(following-sibling::leg:dates)]">		
		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:assentdate   -->
		<primlawinfo:dates>
			<primlawinfo:assentdate>
				<xsl:attribute name="year" select="."/>
				<xsl:if test="not(@ln.user-displayed='false')">
					<xsl:apply-templates />
				</xsl:if>
			</primlawinfo:assentdate>
		</primlawinfo:dates>		
	</xsl:template>
	
	
	<xsl:template match="/LEGDOC/leg:body/leg:info/leg:juris" mode="metadata">
		<dc:coverage>
			<location:country>
				<xsl:attribute name="countrycode" select="."/>
				<xsl:attribute name="codescheme" select="'ISO-3166-1'"/>
			</location:country>
		</dc:coverage>
	</xsl:template>
	
	<xsl:template match="leg:juris/@searchtype | leg:juris/@ln.user-displayed"/>

	<xsl:template match="leg:heading/@inline">
		<xsl:attribute name="inline" select="."/>
	</xsl:template>
	
	<xsl:template match="leg:heading/@align"/>
	
	<xsl:template match="leg:preamble">		
		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]   -->
		<primlaw:level leveltype="preamble">
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>		
	</xsl:template>
	
	<xsl:template match="leg:bodytext[ancestor::leg:preamble and leg:history or leg:histnote]">
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>
	</xsl:template>
	
	<xsl:template match="leg:bodytext[ancestor::leg:level-vrnt and leg:histnote]">
		<primlaw:level leveltype="unclassified">
				<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	</xsl:template>
	
	<xsl:template match="leg:tableofamend">		
		<!--  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp[grptype="tableofamend"]/heading   -->
		<!--<primlawhist:primlawhist>-->
			<primlawhist:histgrp grptype="tableofamend">
				<xsl:apply-templates select="heading"/>
				<primlawhist:histitem>
					<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="@* | node() except heading"/>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		<!--</primlawhist:primlawhist>-->
	</xsl:template>
	
	<!-- JD: no mention in CI; pass through until diff shows what to do -->	
	<xsl:template match="levelinfo">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="leg:levelbody[name(child::*[1])='leg:bodytext']">
		<!-- JD: don't create wrapper, handled in /modules/nonamespace/Rosetta_endnote-LxAdv-endnote.xsl with a priority of 30 -->
		<!--<primlaw:bodytext>-->
			<xsl:apply-templates/>
		<!--</primlaw:bodytext>-->
	</xsl:template>
	
	<xsl:template match="leg:levelbody[name(child::*[1])='leg:level']">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
	
	<xsl:template match="leg:bodytext/leg:heading[subtitle]">		
		<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<!--<xsl:apply-templates select="@* | node()"/>-->
		  <xsl:apply-templates select="subtitle/node()"/>
		</h>		
	</xsl:template>  
  
  <!-- JD: 2017-12-14: Web* 7067620 : map any leg:bodytext/heading content to <h> -->
  <xsl:template match="leg:bodytext/leg:heading[title]">		
    <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <!--<xsl:apply-templates select="@* | node()"/>-->
      <xsl:apply-templates select="title/node()"/>
    </h>		
  </xsl:template>
  
  
	
	<xsl:template match="leg:history[$streamID='NZ06']">
		<primlawhist:primlawhist>			
			<xsl:apply-templates select="refpt | leg:heading/descendant::refpt"/>
			<xsl:apply-templates select="leg:heading"/>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="node() except (leg:heading | refpt | leg:tableofamend)"/>
					</bodytext>
				</primlawhist:histitem>				
			</primlawhist:histgrp>
			<!-- JD: no instructions in CI, mimicing DT output.
			Note that input elements 'leg:change' and 'leg:histinfo' have no current support
			-->
			<xsl:apply-templates select="leg:tableofamend"/>
		</primlawhist:primlawhist>
	</xsl:template>
	
	
</xsl:stylesheet>
