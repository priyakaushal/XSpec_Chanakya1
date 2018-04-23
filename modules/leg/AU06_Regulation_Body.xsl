<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp" 
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
	exclude-result-prefixes="dita docinfo glp in leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulation-Body">
		<title>Body <lnpid>id-AU06-19007</lnpid></title>
		<shortdesc>All of the following are descendants of <targetxml>regulation:body</targetxml>.
			Handle in document order unless specifically stated otherwise. Refer to General Markup
			Section for handling of children (including mixed content).</shortdesc>
		<body>
			<section>
				<title>regulation:body</title>
				<p><sourcexml>leg:body</sourcexml>
					<b>Becomes</b>
					<targetxml>regulation:body</targetxml> is created and children as described
					below: <ul> <li><sourcexml>leg:info</sourcexml>
							<b>becomes</b>
							<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
							and attribute <sourcexml>leg:info/@id</sourcexml>
							<b>becomes</b>
							<targetxml>primlaw:level/@xml:id</targetxml>. Suppress
								<sourcexml>@subseqdoc</sourcexml> and handle the children of
							leg:info as described below: <note>Conversion should not create adjacent
									<targetxml>primlaw:levelinfo</targetxml>. Data should be merged
								to single
								<targetxml>primlaw:levelinfo</targetxml>.</note><note>Conversion
								should not create adjacent
									<targetxml>primlawinfo:primlawinfo</targetxml>. Data should be
								merged to single
								<targetxml>primlawinfo:primlawinfo</targetxml>.</note><ul>
								<li><sourcexml>leg:info/leg:officialname</sourcexml>
									<b>becomes</b>
									<targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:info id="CTH_REG_1997-319_LEG_INFO" subseqdoc="false"&gt;
	&lt;leg:officialname searchtype="LEGISLATION"&gt;
		&lt;refpt id="CTH_REG_1997-319" type="ext"/&gt;HEALTH INSURANCE REGULATIONS (AMENDMENT) 1997 NO. 319&amp;#160;
		&lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
			&lt;marker&gt;
				&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;
			&lt;/marker&gt;
			&lt;api-params&gt;
				&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="HEALTH INSURANCE REGULATIONS AMENDMENT 1997 NO. 319"/&gt;
			&lt;/api-params&gt;
		&lt;/lnlink&gt;
	&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

	</pre>
									<pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  

&lt;legisinfo:legisinfo&gt;
	&lt;legisinfo:names&gt;
		&lt;legisinfo:officialtitle&gt;HEALTH INSURANCE REGULATIONS (AMENDMENT) 1997 NO. 319 &amp;#x00A0;&lt;/legisinfo:officialtitle&gt;
	&lt;/legisinfo:names&gt;
&lt;/legisinfo:legisinfo&gt;
		

								</pre>
									<note>For handling <b>@ln.user-displayed</b> attribute, refer
										the general markup <b>ln.user_displayed="false"</b> section
										in the CI.</note>
									<note>In the above input example <sourcexml>lnlink</sourcexml>
										shall be suppressed from conversion and a corresponding
										product requirement shall be created with an instruction to
										build the link on retrieval based on semantic markup in the
										document. Use cases where the LBU feels the product
										requirement cannot be met if the markup is suppressed shall
										be handled case-by-case.</note>
									<note>If the input document has scenario
											<sourcexml>leg:officialname/refpt</sourcexml> then
										suppress <sourcexml>refpt</sourcexml> from conversion since
										the id value matches with
											<sourcexml>docinfo:doc-id</sourcexml>.</note>
									<note>Conversion should not create adjacent
											<targetxml>legisinfo:legisinfo</targetxml>. Data should
										be merged to single
											<targetxml>legisinfo:legisinfo</targetxml>.</note>
									<pre>
                  
              <b><i>Example: Source XML 2</i></b>


&lt;leg:info&gt;
&lt;leg:officialname searchtype="LEGISLATION"&gt;
	&lt;refpt id="VIC_REG_2003-72" type="ext"/&gt;
	ELECTRICITY SAFETY (BUSHFIRE MITIGATION) REGULATIONS 2003 
		&lt;lnlink scope="All Subscribed Australian Cases and Commentary" 
		scope-protocol="combined-source-name" service="SEARCH" status="valid"&gt;
			&lt;marker&gt;
				&lt;inlineobject alttext="click to find cases &amp;amp; commentary" 
				attachment="web-server" filename="mb.gif" type="image" width="21px"/&gt;
			&lt;/marker&gt;
			&lt;api-params&gt;
				&lt;param name="expressSearch" value="true"/&gt;
				&lt;param name="searchString" value="ELECTRICITY SAFETY 
				BUSHFIRE MITIGATION REGULATIONS 2003"/&gt;
			&lt;/api-params&gt;
		&lt;/lnlink&gt;
&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

                  
	</pre>
									<pre>

              <b><i>Example: Target XML 2</i></b>
                  


&lt;legisinfo:legisinfo&gt;
	&lt;legisinfo:names&gt;
		&lt;legisinfo:officialtitle&gt;
			ELECTRICITY SAFETY (BUSHFIRE MITIGATION) 
			REGULATIONS 2003
		&lt;/legisinfo:officialtitle&gt;
	&lt;/legisinfo:names&gt;
&lt;/legisinfo:legisinfo&gt;
		

	</pre>
								</li>
								<li><sourcexml>leg:info/leg:officialnum</sourcexml>
									<b>becomes</b>
									<targetxml>primlawinfo:identifier</targetxml> with required
									attribute <targetxml>@idtype</targetxml>: <pre>
                                
              <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:info&gt;
	&lt;leg:officialnum searchtype="LEGISLATION"&gt;
		SR No. 10, 1991
	&lt;/leg:officialnum&gt;
&lt;/leg:info&gt;


	</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlawinfo:identifier idtype="officialnum"&gt;
	SR No. 10, 1991
&lt;/primlawinfo:identifier&gt;

								</pre>
									<note>For handling <b>@ln.user-displayed</b> attribute, refer
										the general markup <xref
											href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita"
											>ln.user_displayed="false"</xref> section in the
										CI.</note>
								</li>
								<li><sourcexml>leg:info/leg:dates/leg:effdate</sourcexml>
									<b>becomes</b>
									<targetxml>primlawinfo:dates/primlawinfo:effdate</targetxml>
									which is populated as follows: <pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:info&gt;
	....
	&lt;leg:dates&gt;
		&lt;leg:effdate&gt;
			[Issued by the Authority of the Minister for 
			Communications, the Information Economy 
			and the Arts]
		&lt;/leg:effdate&gt;
	&lt;/leg:dates&gt;
&lt;/leg:info&gt;

	</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
                 

&lt;primlawinfo:dates&gt;
	&lt;primlawinfo:effdate&gt;
		[Issued by the Authority of the Minister for 
		Communications, the Information Economy and 
		the Arts]
	&lt;/primlawinfo:effdate&gt;
&lt;/primlawinfo:dates&gt;

                </pre>
								</li>
								<li><sourcexml>leg:info/leg:year</sourcexml>
									<b>becomes</b>
									<targetxml>primlawinfo:dates/primlawinfo:enactdate</targetxml>
									with attribute <targetxml>@year</targetxml>:
											<note><sourcexml>leg:year</sourcexml> input PCDATA
										transforms only to target attribute
											<targetxml>primlawinfo:enactdate[@year]</targetxml> and
										there should be no PCDATA in output.</note>
									<note>For handling <b>@ln.user-displayed</b> attribute, refer
										the general markup <xref
											href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita"
											>ln.user_displayed="false"</xref> section in the
										CI.</note>
									<pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:info&gt;
	&lt;leg:year searchtype="LEGISLATION" ln.user-displayed="false"&gt;1991&lt;/leg:year&gt;
&lt;/leg:info&gt;

                  
	</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
                 

&lt;primlawinfo:dates&gt;
	&lt;primlawinfo:enactdate year="1991"/&gt;
&lt;/primlawinfo:dates&gt;

                </pre>
								</li>
								<li>
									<sourcexml>leg:info/leg:status</sourcexml>
									<b>becomes</b>
									<targetxml>legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml>
									<pre>
	<b><i>Example: Source XML 1</i></b>

&lt;leg:status&gt;
	&lt;nl/&gt;
	&lt;nl/&gt;
	&lt;inlineobject 
		alttext="Warning:" 
		attachment="web-server" 
		filename="au_exclaim.gif" 
		type="image"/&gt; 
		&lt;emph typestyle="bf"&gt;
			Historical Version: 17/3/2011 to 29/9/2011.
		&lt;/emph&gt;
&lt;/leg:status&gt;

                        
								</pre>
									<pre>
	<b><i>Example: Target XML 1</i></b>
                 

&lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:statusgroup&gt;
        &lt;legisinfo:status&gt;
            &lt;legisinfo:statustext&gt;
			&lt;emph typestyle="bf"&gt;Historical Version: 17/3/2011 to 29/9/2011.&lt;/emph&gt;
           &lt;/legisinfo:statustext&gt;
           &lt;/legisinfo:status&gt;
        &lt;/legisinfo:statusgroup&gt;
&lt;/legisinfo:legisinfo&gt;

								</pre>
									<pre>
      <b><i>Example: Source XML 2</i></b>


&lt;leg:status&gt;
	&lt;nl/&gt;&lt;emph typestyle="bf"&gt;Consolidated as in force on &lt;date&gt;23 November 2007&lt;/date&gt;&lt;/emph&gt;
&lt;/leg:status&gt;

                </pre>
									<pre>
    <b><i>Example: Target XML 2</i></b>


&lt;legisinfo:legisinfo&gt;
	&lt;legisinfo:statusgroup&gt;
		&lt;legisinfo:status&gt;
			&lt;legisinfo:statustext&gt;
			&lt;proc:nl/&gt;
				&lt;emph typestyle="bf"&gt;
					Consolidated as in force on 
					&lt;date&gt;23 November 2007&lt;/date&gt;
				&lt;/emph&gt;
			&lt;/legisinfo:statustext&gt;
        &lt;/legisinfo:status&gt;
    &lt;/legisinfo:statusgroup&gt;
&lt;/legisinfo:legisinfo&gt;

								</pre>
									<p><sourcexml>leg:status@statuscode</sourcexml> becomes
											<targetxml>legisinfo:status@statuscode</targetxml> the
										attribute value in the source XML can be directly converted
										into the target XML output as shown in the example below. <pre>
    <b><i>Example: Source XML 1</i></b>


&lt;leg:status statuscode="consolidated"&gt;

                </pre>
										<pre>
    <b><i>Example: Target XML 1</i></b>


&lt;legisinfo:status statuscode="consolidated"&gt;

								</pre>
									</p>
									<note>The <sourcexml>nl</sourcexml> will be suppressed from
										conversion as it is no longer required for
										presentation.</note>
									<note>Conversion should not create adjacent
											<targetxml>legisinfo:legisinfo</targetxml>. Data should
										be merged to single
											<targetxml>legisinfo:legisinfo</targetxml>.</note>
									<note>Conversion should not create adjacent
											<targetxml>legisinfo:statusgroup</targetxml>. Data
										should be merged to single
											<targetxml>legisinfo:statusgroup</targetxml>. </note>
								</li> <li>
									<sourcexml>leg:info/leg:longtitle</sourcexml>
									<b>becomes</b>
									<targetxml>regulation:body/primlaw:prelim/primlaw:synopsis</targetxml>
									with child as <targetxml>bodytext</targetxml> and populated as
									below <pre>
	<b><i>Example: Source XML 1</i></b>

&lt;leg:longtitle searchtype="LEGISLATION"&gt;
     &lt;p&gt;
         &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Minimum Standards of Conduct and Integrity for the&lt;/emph&gt; 
        &lt;/text&gt;
         &lt;text&gt;
            &lt;emph typestyle="bf"&gt;Western Australian Public Sector&lt;/emph&gt; 
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:longtitle&gt;

                        
</pre>
									<pre>
	<b><i>Example: Target XML 1</i></b>
                 

&lt;primlaw:synopsis&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="bf"&gt;Minimum Standards of Conduct and Integrity for the&lt;/emph&gt; 
            &lt;/text&gt;
            &lt;text&gt;
                &lt;emph typestyle="bf"&gt;Western Australian Public Sector&lt;/emph&gt; 
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/primlaw:synopsis&gt;

</pre>
									<note>The target element <targetxml>primlaw:synopsis</targetxml>
										is coming under <sourcexml>regulation:body</sourcexml> and
										not in <targetxml>legisinfo:legisinfo</targetxml>.</note>
									<note>Add to <targetxml>primlaw:synopsis</targetxml>
										documentation - "In AU and NZ refers to this content as
											<sourcexml>leg:longtitle</sourcexml>." Is documents
										contain both <sourcexml>leg:longtitle</sourcexml> and
											<sourcexml>leg:preamble</sourcexml>, the
											<sourcexml>leg:preamble</sourcexml> must be mapped to
											<targetxml>primlaw:level[@type="preamble"]</targetxml>.</note>
								</li>
							</ul>
						</li> <li><sourcexml>leg:level</sourcexml>
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
							</ul> and populated as below: <note>If the input files have
									<sourcexml>@leveltype</sourcexml> values other than the
								tokenized list shown above, the value will be set as
									<targetxml>@leveltype="unclassified"</targetxml>.</note>
							<note>The <sourcexml>@searchtype</sourcexml> attribute will be dropped
								from conversion except for the citation element.</note>
							<pre>
                
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="ACT_REG_1991-10_BODY"&gt;
	&lt;leg:level-vrnt leveltype="body"&gt;


</pre>
							<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level xml:id="ACT_REG_1991-10_BODY" leveltype="unclassified"&gt;

            </pre>
							<pre>
              <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="WFW.FWTP.FWTPAC09.SCH3A.CL53"&gt;
	&lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true" toc-caption="[30-1288] cl 53 Definitions"&gt;

              
</pre>
							<pre>
              <b><i>Example: Target XML 2</i></b>
              

&lt;primlaw:level xml:id="WFW.FWTP.FWTPAC09.SCH3A.CL53" leveltype="clause" includeintoc="true" alternatetoccaption="[30-1288] cl 53 Definitions"&gt;

              
            </pre>
							<note>In NL Schema <targetxml>primlaw:level</targetxml> element is used
								instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
									<sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute
									<sourcexml>@leveltype</sourcexml> with value from
									<sourcexml>leg:level-vrnt</sourcexml> element and
									<sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
								conversion.</note>
						</li> <li><sourcexml>/LEGDOC/leg:body/leg:prelim</sourcexml>
							<b>becomes</b>
							<targetxml>regulation:regulation/regulation:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim</targetxml>;
							an optional child elements and using converted rule below: <ul>
								<li><sourcexml>heading</sourcexml>
									<b>becomes</b>
									<targetxml>heading</targetxml></li>
								<li><sourcexml>title</sourcexml>
									<b>becomes</b>
									<targetxml>title</targetxml></li>
							</ul>
							<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:prelim&gt;
	&lt;heading&gt;
		&lt;title&gt;Author's Note&lt;/title&gt;
	&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
	...
&lt;/leg:prelim&gt;


</pre>
							<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;primlaw:prelim&gt;
			&lt;heading&gt;
				&lt;title&gt;Author's Note&lt;/title&gt;
			&lt;/heading&gt;
			&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
			...
	&lt;/primlaw:prelim&gt;
&lt;/primlaw:level&gt;


            </pre>
						</li> <li><sourcexml>leg:prelim/leg:history</sourcexml>
							<b>becomes</b>
							<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist</targetxml>
							with optional child elements and is using converted rule below: <ul>
								<li><sourcexml>leg:heading</sourcexml>
									<b>becomes</b>
									<targetxml>heading</targetxml></li>
								<li><sourcexml>title</sourcexml>
									<b>becomes</b>
									<targetxml>title</targetxml></li>
							</ul>
							<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:prelim&gt;
	&lt;heading&gt;&lt;title&gt;Author's Note&lt;/title&gt;&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
	&lt;leg:history&gt;
		&lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;Extracts of Rules of the Supreme Court 1971, commenced on 14 February 1972, as amended by:&lt;/text&gt;&lt;/p&gt;
		&lt;leg:tableofamend&gt;
			&lt;table&gt;
				&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
				&lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
				&lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
				&lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
				&lt;thead&gt;
				&lt;row&gt;
				&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
				&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Gazette&lt;/emph&gt;&lt;/entry&gt;
				&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
				&lt;/row&gt;
				&lt;/thead&gt;
				&lt;tbody&gt;
				&lt;row&gt;
				&lt;entry colname="c1"&gt;Supreme Court Amendment Rules (No 2) 2002&lt;/entry&gt;
				&lt;entry colname="c2"&gt;Gaz 175 of 27 September 2002&lt;/entry&gt;
				&lt;entry colname="c3"&gt;27 September 2002&lt;/entry&gt;
				&lt;/row&gt;
				&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/leg:tableofamend&gt;
	&lt;/leg:history&gt;
&lt;/leg:prelim&gt;



</pre>
							<pre>
              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;primlaw:prelim&gt;
		&lt;heading&gt;
			&lt;title&gt;Author's Note&lt;/title&gt;
		&lt;/heading&gt;
		&lt;p&gt;&lt;text&gt;The Crimes (Confiscation of Profits) Act 1988...&lt;/text&gt;&lt;/p&gt;
		&lt;primlawhist:primlawhist&gt;
			&lt;heading&gt;
				&lt;title&gt;Table of Amendments&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histgrp&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;p&gt;&lt;text&gt;Extracts of Rules of the Supreme Court 1971, commenced on 14 February 1972, as amended by:&lt;/text&gt;&lt;/p&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
			&lt;primlawhist:histgrp grptype="tableofamend"&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;table&gt;
							&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
								&lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
								&lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
								&lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
								&lt;thead&gt;
									&lt;row&gt;
									&lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Gazette&lt;/emph&gt;&lt;/entry&gt;
									&lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
									&lt;/row&gt;
								&lt;/thead&gt;
								&lt;tbody&gt;
									&lt;row&gt;
									&lt;entry colname="c1"&gt;Supreme Court Amendment Rules (No 2) 2002&lt;/entry&gt;
									&lt;entry colname="c2"&gt;Gaz 175 of 27 September 2002&lt;/entry&gt;
									&lt;entry colname="c3"&gt;27 September 2002&lt;/entry&gt;
									&lt;/row&gt;
								&lt;/tbody&gt;
							&lt;/tgroup&gt;
						&lt;/table&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
		&lt;/primlawhist:primlawhist&gt;
	&lt;/primlaw:prelim&gt;
&lt;/primlaw:level&gt;

</pre>
						</li> <li><sourcexml>leg:heading</sourcexml>
							<b>Becomes</b>
							<targetxml>heading</targetxml> with attributes
								<sourcexml>@inline</sourcexml>
							<b>becomes</b>
							<targetxml>@inline</targetxml> which has tokenized values and populated
							as: <ul>
								<li><targetxml>heading[@inline="true"]</targetxml></li>
								<li><targetxml>heading[@inline="false"]</targetxml></li>
							</ul>
							<pre>              
              <b><i>Example: Source XML 1</i></b>


&lt;leg:level id="ACT_REG_2011-17_NOTESPROV2"&gt;
	&lt;leg:level-vrnt leveltype="clause" searchtype="LEGISLATION" subdoc="true" toc-caption="2 Republications of amended laws"&gt;
		&lt;leg:heading&gt;
			&lt;desig searchtype="CLAUSE-NUM"&gt;
				&lt;designum&gt;&lt;refpt id="ACT_REG_2011-17_NOTESPROV2" type="ext"/&gt;
				&lt;emph typestyle="bf"&gt;2.&lt;/emph&gt;&lt;/designum&gt;
			&lt;/desig&gt;
			&lt;title align="left" searchtype="CLAUSE-TITLE"&gt;&lt;emph typestyle="bf"&gt;
			Republications of amended laws&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:level-vrnt &gt;
&lt;/leg:level&gt;

        
</pre>
							<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="clause" includeintoc="true" alternatetoccaption="2 Republications of amended laws"&gt;
		&lt;ref:anchor id="ACT_REG_2011-17_NOTESPROV2" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;desig&gt;&lt;emph typestyle="bf"&gt;2.&lt;/emph&gt;&lt;/desig&gt;
			&lt;title align="left"&gt;&lt;emph typestyle="bf"&gt;Republications of amended laws&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
		....
&lt;/primlaw:level&gt;


            </pre>
							<pre>
              <b><i>Example: Source XML 2 - Handling of 'leg:heading' with '@inline' attribute</i></b>

&lt;leg:level id="ACT_REG_1991-10_PROV2ASUB1"&gt;
	&lt;leg:level-vrnt leveltype="subreg" searchtype="LEGISLATION"&gt;
		&lt;leg:heading inline="true"&gt;
			&lt;desig&gt;
				&lt;designum&gt;&lt;refpt id="ACT_REG_1991-10_PROV2ASUB1" type="ext"/&gt;(1)&lt;/designum&gt;
			&lt;/desig&gt;
		&lt;/leg:heading&gt;
		....
&lt;/leg:level&gt;



</pre>
							<pre>

              <b><i>Example: Target XML 2</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;ref:anchor id="ACT_REG_1991-10_PROV2ASUB1" anchortype="global"/&gt;
	&lt;heading inline="true"&gt;
		&lt;desig&gt;(1)&lt;/desig&gt;
	&lt;/heading&gt;
	....
&lt;/primlaw:level&gt;

</pre>
							<note>Duplicate anchors should be suppressed in mapping rosetta to NL
								and note this means exact duplicates. Repeating anchors are ok and
								should not be suppressed. (non duplicate multiple anchors). Refer
								common <xref
									href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"
									>common_rosetta_refpt.dita</xref> file for handling of
									"<sourcexml>refpt</sourcexml>" element.</note>
						</li> <li>If the input document has scenarios
								<sourcexml>leg:heading/leg:histnote</sourcexml> and
								<sourcexml>leg:heading/glp:note</sourcexml> then move the
								<targetxml>note</targetxml> after <targetxml>heading</targetxml>
							within <targetxml>primlaw:level</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level&gt;
	....
	&lt;leg:heading&gt;
		&lt;desig searchtype="SCH-NUM"&gt;&lt;designum&gt;SCHEDULE 2&lt;/designum&gt;&lt;/desig&gt;&lt;title searchtype="SCH-TITLE"&gt;FORMS&lt;/title&gt;
		&lt;leg:histnote&gt;
			&lt;p&gt;&lt;text&gt;[Sch 2  rep SLI 179 of 2007  r 3 and Sch 1[47], effective 27 June 2007]&lt;/text&gt;&lt;/p&gt;
		&lt;/leg:histnote&gt;
		&lt;glp:note&gt;
			&lt;p&gt;&lt;text&gt;The above amendment legislation removed the Forms from the Rules. These Forms are now located in the &amp;#x201C;Forms&amp;#x201D; guide card in volume 2 of this service.&lt;/text&gt;&lt;/p&gt;
		&lt;/glp:note&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:level&gt;


</pre>
							<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level&gt;
	.....
	&lt;heading&gt;&lt;desig&gt;SCHEDULE 2&lt;/desig&gt;
		&lt;title&gt;FORMS&lt;/title&gt;
	&lt;/heading&gt;
	&lt;note notetype="historical"&gt;
		&lt;bodytext&gt;
		&lt;p&gt;
			&lt;text&gt;[Sch 2  rep SLI 179 of 2007  r 3 and Sch 1[47], effective 27 June 2007]&lt;/text&gt;
		&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;
	&lt;note&gt;
		&lt;bodytext&gt;
		&lt;p&gt;
			&lt;text&gt;The above amendment legislation removed the Forms from the Rules. These Forms are now located in the &amp;#x201C;Forms&amp;#x201D; guide card in volume 2 of this service.&lt;/text&gt;
		&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;
	....
&lt;/primlaw:level&gt;


            </pre>
						</li> <li><sourcexml>leg:levelbody</sourcexml> and
								<sourcexml>leg:bodytext</sourcexml> comes in following scenarios: <ul>
								<li>If the elements <sourcexml>leg:levelbody</sourcexml> and
										<sourcexml>leg:bodytext</sourcexml> occur simultaneously
									then <b>becomes</b>
									<targetxml>primlaw:bodytext</targetxml> and populated as: <pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:levelbody&gt;
	&lt;leg:bodytext&gt;
		&lt;p&gt;&lt;text&gt;The regulations may provide that a certain proceeding:&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                
</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:bodytext&gt;
	&lt;p&gt;&lt;text&gt;The regulations may provide that a certain proceeding:&lt;/text&gt;&lt;/p&gt;
&lt;/primlaw:bodytext&gt;

                </pre>
								</li> <li>If the element <sourcexml>leg:levelbody</sourcexml> has
									child <sourcexml>leg:level</sourcexml> then it becomes
										<targetxml>primlaw:level</targetxml> and populated as: <pre>  
 
&lt;leg:levelbody&gt;
	&lt;leg:level id="CTH_REG_1956-90_20110317_REG2SUB1"&gt;
		&lt;leg:level-vrnt leveltype="subreg" searchtype="LEGISLATION"&gt;
			&lt;leg:heading&gt;
				&lt;desig&gt;&lt;designum&gt;&lt;refpt id="CTH_REG_1956-90_20110317_REG2SUB1" type="ext"/&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

          
                <b>Becomes</b>
                  

&lt;primlaw:level leveltype="regulation" includeintoc="true"&gt;
	&lt;ref:anchor id="CTH_REG_1956-90_20110317_REG2SUB1" anchortype="global"/&gt;
	&lt;heading&gt;
    	&lt;desig&gt;(1)&lt;/desig&gt;
    &lt;/heading&gt;
    ...
&lt;/primlaw:level&gt;                
               
                </pre>
									<note>Refer common_rosetta_refpt for handling of
											<sourcexml>refpt</sourcexml></note>
								</li>
								<li>If the input documents are having scenario
										<sourcexml>leg:bodytext/leg:heading/title</sourcexml> then
										<sourcexml>leg:bodytext</sourcexml> becomes
										<targetxml>primlaw:bodytext</targetxml> and create a wrapper
										<targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
									with child <sourcexml>title</sourcexml> becomes
										<targetxml>title</targetxml>
									<pre>

&lt;leg:bodytext&gt;
	&lt;leg:heading&gt;
		&lt;title&gt;&lt;refpt type="ext"/&gt;TREATY ON EXTRADITION BETWEEN THE GOVERNMENT OF AUSTRALIA AND THE GOVERNMENT OF THE REPUBLIC OF ECUADOR&lt;/title&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:bodytext&gt;

                     
                 <b>Becomes</b>
                     

		&lt;primlaw:bodytext&gt;
				&lt;primlaw:level leveltype="unclassified"&gt;
					&lt;ref:anchor id="CTH_REG_1990-133_SCHSD1" anchortype="global"/&gt;
					&lt;heading&gt;
						&lt;title&gt;TREATY ON EXTRADITION BETWEEN THE GOVERNMENT OF AUSTRALIA AND THE GOVERNMENT OF THE REPUBLIC OF ECUADOR&lt;/title&gt;
					&lt;/heading&gt;
					....
				&lt;/primlaw:level&gt;
		&lt;/primlaw:bodytext&gt;
    
                   </pre>
								</li> <li>If the input documents are having scenario
										<sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml>
									then it will becomes <targetxml>primlaw:bodytext/h</targetxml>
									<pre>
                     
					 &lt;leg:levelbody&gt;
						&lt;leg:bodytext&gt;
							&lt;leg:heading&gt;
								&lt;subtitle&gt;Extracts&lt;/subtitle&gt;
							&lt;/leg:heading&gt;
							....
						&lt;/leg:bodytext&gt;
					 &lt;/leg:levelbody&gt;
                      
                     
                 <b>Becomes</b>
                	
            
			&lt;primlaw:bodytext&gt;
					&lt;h&gt;Extracts&lt;/h&gt;
			&lt;/primlaw:bodytext&gt;
                     
                </pre>
								</li> <li> The first occurence of
										<sourcexml>leg:bodytext</sourcexml> becomes
										<targetxml>primlaw:bodytext</targetxml> and after if
										<sourcexml>leg:bodytext</sourcexml> has other
										<sourcexml>leg:bodytext</sourcexml> or
										<sourcexml>leg:level</sourcexml> as siblings then wrap each
									of them <targetxml>primlaw:level</targetxml> with
										<targetxml>@leveltype="unclassified"</targetxml>
									<pre>
                       <b>Source XML 1</b>
			
				&lt;leg:level id="SA_REG_1995-10_SCHSD2"&gt;
					&lt;leg:level-vrnt subdoc="false" toc-caption="WorkCover Corporation"&gt;
						&lt;leg:levelbody&gt;
							&lt;leg:bodytext searchtype="LEGISLATION"&gt;
								&lt;leg:heading&gt;
									&lt;title&gt;&lt;refpt id="SA_REG_1995-10_SCHSD2" type="ext"/&gt;WorkCover Corporation&lt;/title&gt;
								&lt;/leg:heading&gt;
							&lt;/leg:bodytext&gt;
							&lt;leg:bodytext searchtype="LEGISLATION"&gt;
								&lt;h&gt;INFORMATION SYSTEMS&lt;/h&gt;
							&lt;/leg:bodytext&gt;
							&lt;leg:bodytext searchtype="LEGISLATION"&gt;
								&lt;h align="center"&gt;SECURITY POLICY&lt;/h&gt;
								&lt;table&gt;
								&lt;tgroup cols="3"&gt;
								&lt;colspec colwidth="4*" colname="c1" colnum="1"/&gt;
								&lt;colspec colwidth="16*" colname="c2" colnum="2"/&gt;
								&lt;colspec colwidth="9*" colname="c3" colnum="3"/&gt;
								&lt;tbody&gt;
								....
								&lt;/tbody&gt;
								&lt;/tgroup&gt;
								&lt;/table&gt;
							&lt;/leg:bodytext&gt;
						&lt;/leg:levelbody&gt;
					&lt;/leg:level-vrnt&gt;
				&lt;/leg:level&gt;                
                
          </pre>
									<b>Becomes</b>
									<pre>
                   <b>Target XML 1</b>
                   
               
			   &lt;primlaw:level leveltype="unclassified" includeintoc="false" alternatetoccaption="WorkCover Corporation"&gt;
					&lt;ref:anchor id="SA_REG_1995-10_SCHSD2" anchortype="global"/&gt;
					&lt;primlaw:bodytext&gt;
						&lt;primlaw:level leveltype="unclassified"&gt;
							&lt;heading&gt;
								&lt;title&gt;WorkCover Corporation&lt;/title&gt;                
							&lt;/heading&gt;
						&lt;/primlaw:level&gt;
					&lt;/primlaw:bodytext&gt;
					&lt;primlaw:level leveltype="unclassified"&gt;
						&lt;primlaw:bodytext&gt;
							&lt;h&gt;INFORMATION SYSTEMS&lt;/h&gt;
						&lt;/primlaw:bodytext&gt;
					&lt;/primlaw:level&gt;
					&lt;primlaw:level leveltype="unclassified"&gt;
						&lt;primlaw:bodytext&gt;
							&lt;h align="center"&gt;SECURITY POLICY&lt;/h&gt;
						&lt;table&gt;
						&lt;tgroup cols="3"&gt;
						&lt;colspec colwidth="4*" colname="c1" colnum="1"/&gt;
						&lt;colspec colwidth="16*" colname="c2" colnum="2"/&gt;
						&lt;colspec colwidth="9*" colname="c3" colnum="3"/&gt;
						&lt;tbody&gt;
						....
						&lt;/tbody&gt;
						&lt;/tgroup&gt;
						&lt;/table&gt;
					&lt;/primlaw:bodytext&gt;                
				&lt;/primlaw:level&gt;
			&lt;/primlaw:level&gt;
     
      </pre>
								</li>
										<li><sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite</sourcexml>
									<b>becomes</b>
									<targetxml>/regulation:regulation/regulation:body/primlaw:level/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]</targetxml>
									with attributes <sourcexml>leg:histcite[@id]</sourcexml>
									<b>Becomes</b>
									<targetxml>primlawhist:histgrp[@xml:id]</targetxml> which is
									populated as follows: <note>Add the attribute value
											<targetxml>@grptype="histcite"</targetxml> to
											<targetxml>primlawhist:histgrp</targetxml>.</note>
									<pre>
              <b><i>Example: Source XML 1</i></b>

             
&lt;leg:histcite id="ACT_REG_1991-10_HISTORICALVERSIONS"&gt;
	&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_HISTORICALVERSIONS" type="ext"/&gt;
			Historical Versions&lt;/title&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:histcite&gt;


</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlawhist:primlawhist&gt;
	&lt;primlawhist:histgrp grptype="histcite"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_HISTORICALVERSIONS" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title&gt;Historical Versions&lt;/title&gt;
		&lt;/heading&gt;
		....
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

            </pre>
									<ul>
										<li><sourcexml>leg:histcite/heading/title</sourcexml>
											<b>becomes</b>
											<targetxml>primlawhist:histgrp[@grptype="histcite"]/heading/title</targetxml>
										</li>
										<li>If the source document has scenario
												<sourcexml>leg:histcite/table</sourcexml> it will be
											converted using the following rule: <ul>
												<li><sourcexml>/LEGDOC/leg:body/leg:info/leg:histcite/table</sourcexml>
												<b>Becomes</b>
												<targetxml>/regulation:regulation/regulation:body/primlaw:level[@leveltype="unclassified"]/primlawhist:primlawhist/primlawhist:histgrp[@grptype="histcite"]/primlawhist:histitem/bodytext/table.</targetxml>
												</li>
											</ul>
											<note>Add the attribute value
												<targetxml>@grptype="histcite"</targetxml> to
												<targetxml>primlawhist:histgrp</targetxml>.</note>
											<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:histcite id="ACT_REG_1991-10_HISTORICALVERSIONS"&gt;
	&lt;leg:heading&gt;
	&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_HISTORICALVERSIONS" type="ext"/&gt;Historical
	Versions&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;table frame="none"&gt;
		&lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
			&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
			&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;entry colname="c1"&gt;&lt;/entry&gt;
					&lt;entry colname="c2"&gt;&lt;remotelink service="DOC-ID"   docidref="ABCD_9876" remotekey1="REFPTID"
					dpsi="03AF" refpt="ACT_REG_1991-10_20040805"&gt;5/8/2004 to 22/11/2007
					&lt;/remotelink&gt;&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/tbody&gt;
		&lt;/tgroup&gt;
	&lt;/table&gt;
&lt;/leg:histcite&gt;

                

</pre>
											<pre>
              <b><i>Example: Target XML 1</i></b>
                

&lt;primlawhist:primlawhist&gt;
&lt;primlawhist:histgrp grptype="histcite"&gt;
	&lt;ref:anchor id="ACT_REG_1991-10_HISTORICALVERSIONS" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Historical Versions&lt;/title&gt;
	&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;table frame="none"&gt;
					&lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
						&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
						&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
						&lt;tbody&gt;
							&lt;row&gt;
								&lt;entry colname="c1"&gt;&lt;/entry&gt;
								&lt;entry colname="c2"&gt;
									&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
									&lt;ref:content&gt;5/8/2004 to 22/11/2007&lt;/ref:content&gt;
									&lt;ref:locator anchoridref="ACT_REG_1991-10_20040805"&gt;
										&lt;ref:locator-key&gt;
											&lt;ref:key-name name="DOC-ID"/&gt;
											&lt;ref:key-value value="03AF-ABCD_9876"/&gt;
										&lt;/ref:locator-key&gt;
									&lt;/ref:locator&gt;
									&lt;/ref:crossreference&gt;
								&lt;/entry&gt;
							&lt;/row&gt;
						&lt;/tbody&gt;
					&lt;/tgroup&gt;
				&lt;/table&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

              </pre>
											<note>Refer general mark up '<xref
												href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"
												>common_rosetta_refpt.dita</xref>' for handling of
												<sourcexml>refpt</sourcexml>.</note>
											<note>The value for attribute
												<targetxml>primlaw:level[@leveltype]</targetxml>
												will be set as
												<targetxml>@leveltype='unclassified'.</targetxml></note>
										</li>
									</ul>
								</li> <li><sourcexml>leg:preamble</sourcexml>
									<b>Becomes</b>
									<targetxml>primlaw:level[@leveltype="preamble"]</targetxml> and
									populated as: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:preamble id="ACT_REG_2007-10_LEG_PREAMBLE"&gt;
	&lt;leg:level id="ACT_REG_2007-10_ENACT"&gt;
		&lt;leg:level-vrnt&gt;
			&lt;leg:heading&gt;
				&lt;title&gt;Enactment&lt;/title&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:preamble&gt;

             
</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
              

&lt;primlaw:level xml:id="ACT_REG_2007-10_LEG_PREAMBLE" leveltype="preamble"&gt;
	&lt;primlaw:level xml:id="ACT_REG_2007-10_ENACT" leveltype="unclassified"&gt;
		&lt;heading&gt;
			&lt;title&gt;Enactment&lt;/title&gt;
		&lt;/heading&gt;
	&lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

            </pre>
									<note>"<sourcexml>leg:preamble</sourcexml>" element mapped to
											'<targetxml>primlaw:level</targetxml>' with fixed
										attribute value
											<targetxml>'@leveltype="preamble"</targetxml>'.</note>
									<note>If source document having
											"<sourcexml>leg:preamble/leg:bodytext</sourcexml>" then
										it <b>becomes</b>
											"<targetxml>primlaw:level[@leveltype="preamble]/primlawbodytext</targetxml>".
										Please refer the below markup for your reference:</note>
									<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:preamble&gt;
	&lt;leg:bodytext searchtype="LEGISLATION"&gt;
		&lt;p&gt;&lt;text&gt;SR 1990/234: Revoked on 1 July...&lt;/text&gt;&lt;/p&gt;
		...
	&lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;


             
</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
              

&lt;primlaw:level leveltype="preamble"&gt;
	&lt;primlaw:bodytext&gt;
		&lt;p&gt;&lt;text&gt;SR 1990/234: Revoked on 1 July...&lt;/text&gt;&lt;/p&gt;
		...
	&lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

            </pre>
								</li> <li>
									<sourcexml>/LEGDOC/leg:body/leg:endmatter</sourcexml>
									<b>Becomes</b>
									<targetxml>/regulation:regulation/regulation:body/primlaw:level</targetxml>
									with <targetxml>@leveltype["endnote"]</targetxml> with child
									elements being handled as: <ul>
										<li>
											<sourcexml>leg:level/leg:level-vrnt</sourcexml>
											<b>becomes</b>
											<targetxml>primlaw:level</targetxml> with attribute
												<targetxml>@leveltype</targetxml>
										</li>
									</ul>
									<pre>
              <b><i>Example: Source XML 1</i></b>            


&lt;leg:endmatter&gt;
	&lt;leg:level id="ACT_REG_1991-10_NOTES"&gt;
		&lt;leg:level-vrnt leveltype="notes" subdoc="true" toc-caption="Endnotes"&gt;
			&lt;leg:heading&gt;
				&lt;title align="center"&gt;&lt;refpt id="ACT_REG_1991-10_NOTES" 
				type="ext"/&gt;&lt;emph typestyle="bf"&gt;Endnotes&lt;/emph&gt;&lt;/title&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:endmatter&gt;

            
</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;primlaw:level leveltype="endnote"&gt;
	&lt;primlaw:level leveltype="unclassified" includeintoc="true" alternatetoccaption="Endnotes"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_NOTES" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;Endnotes&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
		....
	&lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

       </pre>
								</li>
								<li>
									<sourcexml>leg:companion</sourcexml>
									<b>Becomes</b>
									<targetxml>primlaw:level[@leveltype="companion"]</targetxml> <pre>
              <b><i>Example: Source XML 1</i></b>            


&lt;leg:endmatter&gt;
	&lt;leg:companion searchtype="LEGISLATION"&gt;
	    &lt;leg:level id="QLD_REG_1993-135_SD2"&gt;
	        &lt;leg:level-vrnt subdoc="true" leveltype="subdoc" toc-caption="BRISBANE CASINO AGREEMENT"&gt;
	            &lt;leg:levelbody&gt;
	                ...
	            &lt;/leg:levelbody&gt;
	        &lt;/leg:level-vrnt&gt;
	    &lt;/leg:level&gt;
	&lt;/leg:companion&gt;
&lt;/leg:endmatter&gt;

            
</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;primlaw:level leveltype="endnote"&gt;
    &lt;primlaw:level leveltype="companion"&gt;
        &lt;primlaw:level xml:id="QLD_REG_1993-135_SD2" leveltype="unclassified" includeintoc="true" alternatetoccaption="BRISBANE CASINO AGREEMENT"&gt;
            &lt;primlaw:bodytext&gt;
                ....
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:level&gt;
&lt;/primlaw:level&gt;

       </pre>
								</li> <li><sourcexml>leg:history</sourcexml>
									<b>Becomes</b>
									<targetxml>primlawhist:primlawhist</targetxml> with optional
									child elements <sourcexml>leg:history/leg:heading</sourcexml>
									<b>becomes</b>
									<targetxml>primlawhist:primlawhist/heading</targetxml> with
									attributes <sourcexml>leg:history[@id]</sourcexml>
									<b>becomes</b>
									<targetxml>primlawhist:primlawhist[@xml:id]</targetxml>
									populated as: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:endmatter&gt;
	&lt;leg:history id="ACT_REG_1991-10_LEGHIST"&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST" type="ext"/&gt;
			&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:history&gt;
&lt;/leg:endmatter&gt;



</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="endnote"&gt;
	&lt;primlawhist:primlawhist xml:id="ACT_REG_1991-10_LEGHIST"&gt;
		&lt;heading&gt;
			&lt;title&gt;Legislative History&lt;/title&gt;
		&lt;/heading&gt;
		....
	&lt;/primlawhist:primlawhist&gt;
&lt;/primlaw:level&gt;

            </pre>
									<note>Refer "<xref
											href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"
											>common_rosetta_refpt.dita</xref>" file for handling of
											<sourcexml>refpt</sourcexml> element.</note>
								</li> <li><sourcexml>leg:history/p/text/</sourcexml>
									<b>becomes</b>
									<targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml>
									<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:history&gt;
    &lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
    &lt;p&gt;&lt;text&gt;The Fair Work (Transitional Provisions and Consequential Amendments) Regulations 2009 SLI No 166, were registered
	on 30 June 2009 and commenced operation on 1 July 2009 (FRLI No F2009L02566). These Regulations are yet to be amended.&lt;/text&gt;&lt;/p&gt;
    &lt;leg:tableofamend&gt;
        &lt;table&gt;
            &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
                &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
                &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
                &lt;thead&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/thead&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work (Transitional Provisions and Consequential Amendments) Amendment Regulations 2009 (No 1) SLI 335 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;26 November 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;1 January 2009&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 1) SLI 337 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;27 November 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;Regulations 1&amp;#x2013;3, Sch 1: 28 November 2009; remainder: 1 January 2010&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 2) SLI 364 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 3) SLI 391 of 2009&lt;/entry&gt;
                        &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                        &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;


              </pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlawhist:primlawhist&gt;
	&lt;heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/heading&gt;
	&lt;primlawhist:histgrp&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text&gt;The Fair Work (Transitional Provisions and Consequential Amendments) Regulations
				 2009 SLI No 166, were registered on 30 June 2009 and commenced operation on 1 July 2009 
				(FRLI No F2009L02566). These Regulations are yet to be amended.&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
					&lt;table&gt;
                        &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
                            &lt;colspec align="left" colname="c1" colnum="1" colwidth="50*"/&gt;
                            &lt;colspec align="left" colname="c2" colnum="2" colwidth="50*"/&gt;
                            &lt;colspec align="left" colname="c3" colnum="3" colwidth="50*"/&gt;
                            &lt;thead&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;&lt;emph typestyle="bf"&gt;Amending Legislation&lt;/emph&gt;&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;&lt;emph typestyle="bf"&gt;Date of Assent&lt;/emph&gt;&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;&lt;emph typestyle="bf"&gt;Date of Commencement&lt;/emph&gt;&lt;/entry&gt;
                                &lt;/row&gt;
                            &lt;/thead&gt;
                            &lt;tbody&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work (Transitional Provisions and Consequential Amendments) Amendment
									Regulations 2009 (No 1) SLI 335 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;26 November 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;1 January 2009&lt;/entry&gt;
                                &lt;/row&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 1) SLI 337 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;27 November 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;Regulations 1&amp;#x2013;3, Sch 1: 28 November 2009; remainder: 1 January 2010&lt;/entry&gt;
                                &lt;/row&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 2) SLI 364 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                                &lt;/row&gt;
                                &lt;row&gt;
                                    &lt;entry colname="c1"&gt;Fair Work Legislation Amendment Regulations 2009 (No 3) SLI 391 of 2009&lt;/entry&gt;
                                    &lt;entry colname="c2"&gt;14 December 2009&lt;/entry&gt;
                                    &lt;entry colname="c3"&gt;1 January 2010&lt;/entry&gt;
                                &lt;/row&gt;
                            &lt;/tbody&gt;
                        &lt;/tgroup&gt;
                    &lt;/table&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;



						</pre>
									<note>Supress the <sourcexml>refpt</sourcexml> element in
											<sourcexml>title/refpt</sourcexml> scenario since the
										ids are duplicate in element
											<sourcexml>leg:history</sourcexml> and
											<sourcexml>refpt</sourcexml>.</note>
								</li>
								<li><sourcexml>leg:history/p/blockquote</sourcexml>
									<b>becomes</b>
									<targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/
										bodytext/p/blockquote</targetxml>
									<note>Refer <xref
											href="../../common_newest/Rosetta_blockquote-legfragment-leg.level-LxAdv-primlaw.excerpt-primlaw.level.dita"
											>legfragment</xref> for handling of
										blockquote/legfragment scenario.</note>
									<pre>

&lt;leg:prelim&gt;
    &lt;leg:history&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;Table of Amendments&lt;/title&gt; 
		&lt;/leg:heading&gt;
		&lt;p&gt;
			&lt;blockquote&gt;
				&lt;p indent="none"&gt;
					&lt;text&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Note: These Rules are applicable....&lt;/emph&gt;&lt;/emph&gt;&lt;/text&gt;
				&lt;/p&gt;
			&lt;/blockquote&gt;
            ...
	&lt;/leg:history&gt;
&lt;/leg:prelim&gt;

                   <b>Becomes</b>
                   
                   
&lt;primlaw:prelim&gt;
    &lt;primlawhist:primlawhist&gt;
        &lt;primlawhist:histgrp&gt;
            &lt;primlawhist:histitem&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;blockquote&gt;
                            &lt;p indent="none"&gt;
                                &lt;text&gt;
                                    &lt;emph typestyle="bf"&gt;
                                        &lt;emph typestyle="it"&gt;Note: These Rules are applicable....&lt;/emph&gt; 
                                    &lt;/emph&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/blockquote&gt;
                        ....
                &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;    
    &lt;/primlaw:prelim&gt;
                 </pre>
									<pre>
                    <b>Handling of blockquote/legfragment:</b>
                    
&lt;leg:history&gt;
	&lt;leg:heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;Criminal Code Act 1995 No 12, received assent 15 March 1995, commenced....&lt;/text&gt;&lt;/p&gt;
	&lt;p&gt;&lt;text&gt;....&lt;/text&gt;
		&lt;blockquote&gt;
			&lt;legfragment&gt;
				&lt;leg:level&gt;
					&lt;leg:level-vrnt leveltype="clause"&gt;
						&lt;leg:heading inline="true"&gt;
						&lt;title&gt;Transitional &amp;mdash; Criminal Code Act 1995&lt;/title&gt;
						&lt;/leg:heading&gt;
						....
					&lt;/leg:level-vrnt&gt;
				&lt;/leg:level&gt;
			&lt;/legfragment&gt;
		&lt;/blockquote&gt;
	&lt;/p&gt;
	....
&lt;/leg:history&gt;

         
             <b>Becomes</b>
                    
              
&lt;primlawhist:primlawhist&gt;
	&lt;heading&gt;&lt;title&gt;Table of Amendments&lt;/title&gt;&lt;/heading&gt;
		&lt;primlawhist:histgrp&gt;
			&lt;primlawhist:histitem&gt;
				&lt;bodytext&gt;
					&lt;p&gt;&lt;text&gt;Criminal Code Act 1995 No 12, received assent 15 March 1995, commenced....&lt;/text&gt;&lt;/p&gt;
			        &lt;p&gt;
        			&lt;text&gt;...&lt;/text&gt;&lt;/p&gt;
          			&lt;primlaw:excerpt&gt;
             			&lt;primlaw:level leveltype="clause"&gt;
                			&lt;heading inline="true"&gt;
                				&lt;title&gt;ransitional &amp;mdash; Criminal Code Act 1995&lt;/title&gt;
                			&lt;/heading&gt;           
             				....
             			&lt;/primlaw:level&gt;
             		&lt;/primlaw:excerpt&gt;
             		....
             	&lt;/bodytext&gt;
           &lt;/primlawhist:histitem&gt;
        &lt;/primlawhist:histgrp&gt;
    &lt;/primlawhist:primlawhist&gt;
          
    </pre>
								</li> <li><sourcexml>leg:history/p/glp:note</sourcexml>
									<b>becomes</b>
									<targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note</targetxml>.
										<note>If there is only <sourcexml>glp:note</sourcexml> as a
										child of <sourcexml>p</sourcexml> then omit
											<sourcexml>p</sourcexml> from conversion and generate
											<targetxml>note</targetxml> but if there is any child of
											<sourcexml>p</sourcexml> other than
											<sourcexml>glp:note</sourcexml> then
											<targetxml>note</targetxml> will becomes sibling of
											<targetxml>p</targetxml> in output.</note>
									<pre>
                   
&lt;leg:history&gt;
	&lt;leg:heading&gt;
		&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt; 
	&lt;/leg:heading&gt;
	&lt;p&gt;
		&lt;glp:note&gt;
			&lt;h&gt;Editor’s Note:&lt;/h&gt; 
			&lt;p&gt;&lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt;&lt;/p&gt;
		&lt;/glp:note&gt;
	&lt;/p&gt;
	...
&lt;/leg:history&gt;

                   
                   <b>Becomes</b>
                   
                   
&lt;primlawhist:primlawhist&gt;
	&lt;heading&gt;
		&lt;title&gt;TABLE OF AMENDMENTS&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlawhist:histgrp&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;note&gt;
					&lt;h&gt;Editor’s Note:&lt;/h&gt; 
						&lt;p&gt;&lt;text&gt;The County Court Civil Procedure Rules 2008, SR 148 of 2008, revoked and replaced Ch I of the County Court Rules of Procedure in Civil Proceedings 1999, effective 22 February 2009.&lt;/text&gt;&lt;/p&gt;
				&lt;/note&gt;
			&lt;/bodytext&gt;
			....
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

              </pre>
								</li> <li>The conversion of
										<sourcexml>/LEGDOC/leg:body/leg:endmatter/leg:history/leg:tableofamend</sourcexml>
									is based on the following scenarios: <ul>
										<li>
											<sourcexml>leg:tableofamend/heading</sourcexml>
											<b>Becomes</b>
											<targetxml>primlaw:primlawhist/primlaw:histgrp[@grptype="tableofamend"]/heading</targetxml>,
											this is for capturing the heading information.</li>
										<li><sourcexml>leg:tableofamend/table</sourcexml>
											<b>Becomes</b>
											<targetxml>primlaw:primlawhist/primlaw:histgrp/primlaw:histitem/bodytext/table.</targetxml>
											<note>Add the attribute value
												<sourcexml>@grptype="tableofamend"</sourcexml> to
												<targetxml>primlawhist:histgrp</targetxml>.</note>
										</li>
									</ul>
									<p>Below examples show the handling of
											<sourcexml>leg:tableofamend</sourcexml>:</p>
									<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:tableofamend&gt;
	&lt;leg:heading&gt;
	&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_AMENDTOME" type="ext"/&gt;
	&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
	&lt;table frame="all"&gt;
		&lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
			&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
			&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
			&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
			&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
			&lt;thead&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending 
					Law&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
					&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement Dates&lt;/emph&gt;
					&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully Proclaimed?&lt;/emph&gt;
					&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/thead&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="left"&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES)
					LEGISLATION AMENDMENT ACT 2007&lt;/entry&gt;
					&lt;entry colname="c2" align="left"&gt;Schedule 2 Part 2.5&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/tbody&gt;
		&lt;/tgroup&gt;
	&lt;/table&gt;
&lt;/leg:tableofamend&gt;


</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlawhist:primlawhist&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
	&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_AMENDTOME" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title&gt;
				&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;
			&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
			&lt;table frame="all"&gt;
				&lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
					&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
					&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
					&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
					&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending 
							Law&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
							&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement 
							Dates&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully 
							Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="left"&gt;OCCUPATIONAL HEALTH AND SAFETY
							(REGULATORY SERVICES) LEGISLATION AMENDMENT ACT 2007&lt;/entry&gt;
							&lt;entry colname="c2" align="left"&gt;Schedule 2 Part 2.5&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

                </pre>
									<pre>               
              <b><i>Example: Source XML 2</i></b>


&lt;leg:history id="ACT_REG_1991-10_LEGHIST"&gt;
	&lt;leg:heading&gt;
		&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST" type="ext"/&gt;
				&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_PRE-YEAR" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;Pre-2004 subordinate law&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law history only includes events from 2004. Details
		of events affecting the subordinate law before 2004 may be found in the 
		&lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_NOTES" dpsi="05CC" docidref="ABCD_9876"&gt;
		Notes&lt;/remotelink&gt; at the end of the subordinate law.&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:tableofamend&gt;

	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_REPEALED" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;Legislative Status&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law was repealed on 26/5/2008 by &lt;remotelink
		service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876" refpt="ACT_REG_2007-36_PROV94"&gt;OCCUPATIONAL
		HEALTH AND SAFETY (GENERAL) REGULATION 2007&lt;/remotelink&gt;.&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:tableofamend&gt;

	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_MADE" type="ext"/&gt;
					&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;Notification Date 6/5/1991&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:tableofamend&gt;

	&lt;leg:tableofamend&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="ACT_REG_1991-10_LEGHIST_AMENDTOME" type="ext"/&gt;
				&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;&lt;/title&gt;
		&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
		&lt;table frame="all"&gt;
		  &lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
			&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
			&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
			&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
			&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
			&lt;thead&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending Law&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement Dates&lt;/emph&gt;&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/thead&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;entry colname="c1" align="left"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
					refpt="ACT_ACT_2007-37"&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES) LEGISLATION
					AMENDMENT ACT 2007&lt;/remotelink&gt;&lt;/entry&gt;
					&lt;entry colname="c2" align="left"&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
					refpt="ACT_ACT_2007-37_SCH2PT2.5"&gt;Schedule 2 Part 2.5&lt;/remotelink&gt;&lt;/entry&gt;
					&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
					&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
				&lt;/row&gt;
			&lt;/tbody&gt;
		  &lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/leg:tableofamend&gt;
&lt;/leg:history&gt;

</pre>
									<pre>   
              <b><i>Example: Target XML 2 - Handling of Multiple 'tableofamend' within 'leg:history'</i></b>

&lt;primlawhist:primlawhist xml:id="ACT_REG_1991-10_LEGHIST"&gt;
		&lt;heading&gt;
			&lt;title&gt;&lt;emph typestyle="bf"&gt;Legislative History&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_PRE-YEAR" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title&gt;&lt;emph typestyle="bf"&gt;Pre-2004 subordinate law&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
		&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law history only includes events from 2004. Details of events
		affecting the subordinate law before 2004 may be found in the 
		&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;Notes&lt;/ref:content&gt;
		&lt;ref:locator anchoridref="ACT_REG_1991-10_NOTES"&gt;
			&lt;ref:locator-key&gt;
				&lt;ref:key-name name="DOC-ID"/&gt;
				&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
			&lt;/ref:locator-key&gt;
		&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt; at the end of the subordinate law.&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_REPEALED" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;emph typestyle="bf"&gt;Legislative Status&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
		&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;This subordinate law was repealed on 26/5/2008 by 
		&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;OCCUPATIONAL HEALTH AND SAFETY (GENERAL) REGULATION 2007&lt;/ref:content&gt;
		&lt;ref:locator anchoridref="ACT_REG_2007-36_PROV94"&gt;
			&lt;ref:locator-key&gt;
				&lt;ref:key-name name="DOC-ID"/&gt;
				&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
			&lt;/ref:locator-key&gt;
		&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt;.&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;ref:anchor id="ACT_REG_1991-10_LEGHIST_MADE" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;emph typestyle="bf"&gt;Notification&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
		&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;Notification Date 6/5/1991&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;heading&gt;
			&lt;title&gt;
				&lt;emph typestyle="bf"&gt;Amendments to this subordinate law&lt;/emph&gt;
			&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
			  &lt;p&gt;&lt;text&gt;This subordinate law is amended by:&lt;/text&gt;&lt;/p&gt;
			  &lt;table frame="all"&gt;
				&lt;tgroup cols="4" colsep="1" rowsep="1"&gt;
					&lt;colspec colwidth="12*" colname="c1" colnum="1"/&gt;
					&lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
					&lt;colspec colwidth="12*" colname="c3" colnum="3"/&gt;
					&lt;colspec colwidth="12*" colname="c4" colnum="4"/&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="center"&gt;&lt;emph typestyle="bf"&gt;Amending 
							Law&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c2" align="center"&gt;&lt;emph typestyle="bf"&gt;Source&lt;/emph&gt;
							&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;&lt;emph typestyle="bf"&gt;Commencement 
							Dates&lt;/emph&gt;&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;&lt;emph typestyle="bf"&gt;Fully 
							Proclaimed?&lt;/emph&gt;&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="c1" align="left"&gt;
							&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
							&lt;ref:content&gt;OCCUPATIONAL HEALTH AND SAFETY (REGULATORY SERVICES) LEGISLATION AMENDMENT ACT 2007&lt;/ref:content&gt;
							&lt;ref:locator anchoridref="ACT_ACT_2007-37"&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
							&lt;/ref:crossreference&gt;&lt;/entry&gt;
							&lt;entry colname="c2" align="left"&gt;
							&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
							&lt;ref:content&gt;Schedule 2 Part 2.5&lt;/ref:content&gt;
							&lt;ref:locator anchoridref="ACT_ACT_2007-37_SCH2PT2.5"&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
							&lt;/ref:crossreference&gt;&lt;/entry&gt;
							&lt;entry colname="c3" align="center"&gt;23/11/2007&lt;/entry&gt;
							&lt;entry colname="c4" align="center"&gt;Yes&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		  &lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

</pre>
								</li>
											<li><p><sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml>
										<b>becomes</b>
										<targetxml>/regulation:regulation/regulation:body/primlaw:level[@leveltype="endnote"]/index:index</targetxml>
										with optional child <sourcexml>heading</sourcexml>
										<b>becomes</b>
										<targetxml>heading</targetxml> and attributes
											<sourcexml>@id</sourcexml>
										<b>becomes</b>
										<targetxml>@xml:id</targetxml>,
											<sourcexml>@subdoc</sourcexml>
										<b>becomes</b>
										<targetxml>@includeintoc</targetxml> and
											<sourcexml>@toc-caption</sourcexml>
										<b>becomes</b>
										<targetxml>@alternatetoccaption</targetxml> along with a
										required attribute
											<targetxml>index:index[@indextype="definedTerms"]</targetxml>
										and
										<targetxml>index:index[@indextype="topical"]</targetxml>.
											<note>When input documents has attribute
												<sourcexml>index[@id="XXXX_DEFLIST"]</sourcexml>
											then it will map to
												<targetxml>index:index[@indextype="definedTerms"]</targetxml>
											or if it has attribute
												<sourcexml>index[@id="XXXX_INDEX"]</sourcexml> then
											it will map to
												<targetxml>index:index[@indextype="topical"]</targetxml></note>
										<note>Refer common <xref
												href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"
												>common_rosetta_refpt.dita</xref> file for handling
											of "<sourcexml>refpt</sourcexml>" element.</note>
									</p> <p>The child elements are converted using the rule below: <ul>
											<li><sourcexml>index/p</sourcexml>
												<b>becomes</b>
												<targetxml>index:index/heading/subtitle</targetxml></li>
											<li><sourcexml>index/in:lev1</sourcexml>
												<b>becomes</b>
												<targetxml>index:index/index:item</targetxml></li>
											<li><sourcexml>in:lev1/in:entry/in:entry-text</sourcexml>
												<b>becomes</b>
												<targetxml>index:item/index:entry/index:entrytext</targetxml></li>
											<li><sourcexml>in:entry/in:index-ref</sourcexml>
												<b>becomes</b>
												<targetxml>index:entry/index:locator/ref:lnlink</targetxml>
												(create both target element
												<targetxml>index:locator</targetxml> and target
												child element
												<targetxml>index:locator/ref:lnlink</targetxml>),
												Create <sourcexml>index:locator</sourcexml> and then
												create child element
												<sourcexml>index:locator/ref:lnlink</sourcexml>
												with attribute
												<sourcexml>ref:lnlink/@service="DOCUMENT"</sourcexml>.
												The source child element
												<sourcexml>in:index-ref/remotelink</sourcexml>
												will be converted as : <ul>
												<li>Use case:
												<sourcexml>remotelink[@service='DOC-ID']</sourcexml>
												becomes <targetxml>ref:marker</targetxml>. Create
												a <targetxml>ref:locator</targetxml> and the
												following child elements within it:<ul>
												<li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml>
												then <ul>
												<li><targetxml>ref:key-name/@name</targetxml> will
												have the value "DOC-ID".</li>
												<li><targetxml>key-value/@value</targetxml> will
												be the value of <sourcexml>@dpsi</sourcexml>
												followed by hyphen and concatenated with
												<sourcexml>@refpt</sourcexml> or
												<sourcexml>@remotekey2</sourcexml>, which ever is
												present (if both are present, use
												<sourcexml>@remotekey2</sourcexml>).</li>
												</ul></li>
												<li>If
												<sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
												<li><targetxml>ref:key-name/@name</targetxml> will
												have the value "DOC-ID".</li>
												<li><targetxml>ref:key-value/@value</targetxml>
												will be the value of <sourcexml>@dpsi</sourcexml>
												followed by hyphen and concatenated with
												<sourcexml>@docidref</sourcexml>.</li>
												<li>Create
												<targetxml>ref:locator/@anchoridref</targetxml>
												with value from <sourcexml>@refpt</sourcexml> or
												<sourcexml>@remotekey2</sourcexml>, which ever is
												present (if both are present, use
												<sourcexml>@refpt</sourcexml>).</li>
												</ul></li>
												</ul>
												<note>If <sourcexml>remotelink/@dpsi</sourcexml>
												is not present, use value from
												<sourcexml>docinfo:dpsi/@id-string</sourcexml> or
												capture value from the LBU manifest file.</note>
												<note><targetxml>ref:locator/@anchoridref</targetxml>
												that begins with a number must have an underscore
												added at start.</note>
												</li>
												</ul>
												<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:endmatter&gt;
&lt;index id="NSW_REG_1913-1_DEFLIST"&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;refpt id="NSW_REG_1913-1_DEFLIST" type="ext"/&gt;
		&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;employee&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
			refpt="NSW_REG_1913-1_EMPLOYEE"&gt;reg2&lt;/remotelink&gt;&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;jointer&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
			refpt="NSW_REG_1913-1_JOINTER"&gt;reg19sub8a&lt;/remotelink&gt;&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;the Act&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="05CC" docidref="ABCD_9876"
			refpt="NSW_REG_1913-1_THEACT"&gt;reg2&lt;/remotelink&gt;&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
&lt;/index&gt;
&lt;/leg:endmatter&gt;

              
                </pre>
												<pre>
              <b><i>Example: Target XML 1</i></b>

&lt;primlaw:level leveltype="endnote"&gt;
  &lt;index:index indextype="definedTerms"&gt;
	&lt;ref:anchor id="NSW_REG_1913-1_DEFLIST" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;&lt;emph typestyle="bf"&gt;List of Defined Terms&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
	&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;employee&lt;/index:entrytext&gt;
				&lt;index:locator&gt;
				  &lt;ref:lnlink service="DOCUMENT"&gt;
  					&lt;ref:marker&gt;reg2&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="NSW_REG_1913-1_EMPLOYEE"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
				  &lt;/ref:lnlink&gt;
				&lt;/index:locator&gt;
			&lt;/index:entry&gt;
		&lt;/index:item&gt;
		&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;jointer&lt;/index:entrytext&gt;
				&lt;index:locator&gt;
				  &lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker&gt;reg19sub8a&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="NSW_REG_1913-1_JOINTER"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
				  &lt;/ref:lnlink&gt;
				&lt;/index:locator&gt;
			&lt;/index:entry&gt;
		&lt;/index:item&gt;
		&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;the Act&lt;/index:entrytext&gt;
				&lt;index:locator&gt;
				  &lt;ref:lnlink service="DOCUMENT"&gt;
						&lt;ref:marker&gt;reg2&lt;/ref:marker&gt;
						&lt;ref:locator anchoridref="NSW_REG_1913-1_THEACT"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="05CC-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
				  &lt;/ref:lnlink&gt;
				&lt;/index:locator&gt;
			&lt;/index:entry&gt;
		&lt;/index:item&gt;
  &lt;/index:index&gt;
&lt;/primlaw:level&gt;

              
        		</pre>
											</li>
											<li><b>Handling for <sourcexml>index/table</sourcexml>
												and <sourcexml>index/p</sourcexml> scenarios:</b>
												<sourcexml>/LEGDOC/leg:body/leg:endmatter/index</sourcexml>
												<b>becomes</b>
												<targetxml>/regulation:regulation/regulation:body/primlaw:level[@leveltype="endnote"]/navaid:navigationaid</targetxml>
												with optional child <sourcexml>heading</sourcexml>
												<b>becomes</b>
												<targetxml>title</targetxml> and attributes
												<sourcexml>@id</sourcexml>
												<b>becomes</b>
												<targetxml>@xml:id</targetxml> and child elements
												are converted using the rule below: <ul>
												<li><sourcexml>index/p/table</sourcexml>
												<b>becomes</b>
												<targetxml>navaid:navigationaid/bodytext/p/table</targetxml>
												<note>Refer <xref
												href="../../common_newest/Rosetta_table-LxAdv-table.dita"
												>table</xref> for handling of
												<sourcexml>table</sourcexml></note>
												</li>
												<li><sourcexml>index/table</sourcexml>
												<b>becomes</b>
												<targetxml>navaid:navigationaid/bodytext/table</targetxml>
												<note>Refer <xref
												href="../../common_newest/Rosetta_table-LxAdv-table.dita"
												>table</xref> for handling of
												<sourcexml>table</sourcexml></note>
												</li>
												<li><sourcexml>index/p</sourcexml>
												<b>becomes</b>
												<targetxml>navaid:navigationaid/bodytext/p</targetxml>
												<note>Refer <xref
												href="../../common_newest/Rosetta_p-LxAdv-p.dita"
												>p</xref> for handling of
												<sourcexml>p</sourcexml></note>
												<note>Refer <xref
												href="../../common_newest/Rosetta_text-LxAdv-text.dita"
												>text</xref> for handling of
												<sourcexml>text</sourcexml></note>
												</li>
												</ul>
												<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:endmatter&gt;
	&lt;index id="VIC_REG_2002-73_INDEX"&gt;
		&lt;heading&gt;
			&lt;title align="center"&gt;&lt;refpt id="VIC_REG_2002-73_INDEX" type="ext"/&gt;&lt;emph typestyle="bf"&gt;INDEX&lt;/emph&gt;&lt;/title&gt;
		&lt;/heading&gt;
		&lt;p&gt;
			&lt;table&gt;
				&lt;tgroup cols="2"&gt;
					&lt;colspec colwidth="3*" colname="c1"/&gt;
					&lt;colspec colwidth="12*" colname="c2"/&gt;
					&lt;tbody&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Subject&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Regulation&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Absent voters&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;ballot material after close of voting&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;37&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;declarations&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;28, Sch.&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;extraction of ballot papers from accepted envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;36&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;forwarding of envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;29&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;preliminary scrutiny&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;31, 34&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Antarctic electors&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;24&lt;/entry&gt;
							&lt;/row&gt;
							....
						&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/p&gt;
	&lt;/index&gt;
	....
&lt;/leg:endmatter&gt;

              
                </pre>
												<pre>
              <b><i>Example: Target XML 1</i></b>

&lt;primlaw:level leveltype="endnote"&gt;
	&lt;navaid:navigationaid&gt;    
	&lt;ref:anchor id="VIC_REG_2002-73_INDEX" anchortype="global"/&gt;
	    &lt;title align="center"&gt;&lt;emph typestyle="bf"&gt;INDEX&lt;/emph&gt;&lt;/title&gt;    
	    &lt;bodytext&gt;
		  &lt;p&gt;
			&lt;table&gt;
				&lt;tgroup cols="2"&gt;
					&lt;colspec colwidth="3*" colname="c1"/&gt;
					&lt;colspec colwidth="12*" colname="c2"/&gt;
					&lt;tbody&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Subject&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;emph typestyle="bf"&gt;&lt;emph typestyle="it"&gt;Regulation&lt;/emph&gt;&lt;/emph&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Absent voters&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;ballot material after close of voting&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;37&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;declarations&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;28, Sch.&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;extraction of ballot papers from accepted envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;36&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;forwarding of envelopes&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;29&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;preliminary scrutiny&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;31, 34&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="c1" align="left"&gt;&lt;emph typestyle="bf"&gt;Antarctic electors&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry colname="c2" align="left"&gt;24&lt;/entry&gt;
							&lt;/row&gt;
							....
						&lt;/tbody&gt;
					&lt;/tgroup&gt;
				&lt;/table&gt;
			&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/navaid:navigationaid&gt;
	...
&lt;/primlaw:level&gt;

</pre>
											</li>
										</ul>
									</p>
								</li> <li>
									<sourcexml>leg:histnote</sourcexml>
									<b>Becomes</b>
									<targetxml>note[notetype="historical"]</targetxml>
									<pre>
            
              <b><i>Example: Source XML 1</i></b>

&lt;leg:histnote&gt;
	&lt;leg:heading&gt;
		&lt;title align="left"&gt;Rule 1&lt;/title&gt;
	&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;[Amended by S.R. 2001, No. 133,
	Applied: 24 October 2001]&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
	....
&lt;/leg:histnote&gt;

            

</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;note notetype="historical"&gt;
		&lt;heading&gt;
			&lt;title align="left"&gt;Rule 1&lt;/title&gt;
		&lt;/heading&gt;
		&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;[Amended by S.R. 2001, No. 133,
			Applied: 24 October 2001]&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		....
&lt;/note&gt;

</pre>
									<note>If input documents is having scenario
											<sourcexml>leg:histnote/leg:histnote</sourcexml> then it
											<b>becomes</b>
										<targetxml>note[notetype="historical"]/bodytext/note[notetype="historical"]</targetxml>.
										Please refer the below markup for your reference:</note>
									<pre>
            
              <b><i>Example: Source XML 1</i></b>

&lt;leg:histnote&gt;
	&lt;leg:heading&gt;&lt;title&gt;Hist.&lt;/title&gt;&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;Reference to "new Ministry" substituted ...&lt;/text&gt;&lt;/p&gt;
	&lt;leg:histnote&gt;
		&lt;leg:heading&gt;&lt;title&gt;Hist.&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;Reference to "responsible Ministry" substituted ...&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:histnote&gt;
&lt;/leg:histnote&gt;

            

</pre>
									<pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;note notetype="historical"&gt;
	&lt;heading&gt;
		&lt;title&gt;Hist.&lt;/title&gt;
	&lt;/heading&gt;
	&lt;bodytext&gt;
		&lt;p&gt;&lt;text&gt;Reference to "new Ministry" substituted ...&lt;/text&gt;&lt;/p&gt;
		&lt;note notetype="historical"&gt;
			&lt;heading&gt;
				&lt;title&gt;Hist.&lt;/title&gt;
			&lt;/heading&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text&gt;Reference to "responsible Ministry" substituted ...&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/note&gt;
	&lt;/bodytext&gt;
&lt;/note&gt;

</pre>
								</li> <li><sourcexml>leg:empleg</sourcexml>
									<b>Becomes</b>
									<targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>
									and populated as: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="ACT_REG_1991-29_SCH1"&gt;
	&lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION" 
	subdoc="true" toc-caption="Schedule&amp;#160;1 Exemptions from marking"&gt;
		&lt;leg:heading&gt;
			&lt;title align="left" searchtype="SCH-TITLE"&gt;&lt;refpt 
			id="ACT_REG_1991-29_SCH1" type="ext"/&gt;&lt;emph typestyle="bf"&gt;
			Schedule&amp;#160;1 Exemptions from marking&lt;/emph&gt;&lt;/title&gt;
			&lt;leg:empleg&gt;
					&lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;(see s&amp;#160;4)&lt;/ci:content&gt;&lt;/ci:cite&gt;
			&lt;/leg:empleg&gt;
		&lt;/leg:heading&gt;
</pre>
									<pre>
              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="schedule" includeintoc="true"
	 alternatetoccaption="Schedule&amp;#x00A0;1 Exemptions from marking"&gt;
		&lt;ref:anchor id="ACT_REG_1991-29_SCH1" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title align="left"&gt;&lt;emph typestyle="bf"&gt;Schedule&amp;#x00A0;1 
		Exemptions from marking&lt;/emph&gt;&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlaw:authority&gt;
		&lt;primlaw:authority-item&gt;
			&lt;textitem&gt;
				&lt;lnci:cite type="legislation"&gt;
						&lt;lnci:content&gt;(see s&amp;#x00A0;4)&lt;/lnci:content&gt;
				&lt;/lnci:cite&gt;
			&lt;/textitem&gt;
		&lt;/primlaw:authority-item&gt;
	&lt;/primlaw:authority&gt;

            </pre>
									<note>The <sourcexml>leg:empleg</sourcexml> comes under
											<sourcexml>leg:heading</sourcexml> element in Rosetta
										but as per New Lexis
											<targetxml>primlaw:authority</targetxml> should be moved
										between <targetxml>primlaw:level</targetxml> and
											<targetxml>heading</targetxml> elements.</note>
								</li> <li><sourcexml>bodytext</sourcexml>
									<b>Becomes</b>
									<targetxml>bodytext</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;bodytext searchtype="COMMENTARY"&gt;
	&lt;p&gt;&lt;text&gt;Before the Work Choices amendments changed the constitutional underpinnings for the Workplace Relations Act 1996...&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;



</pre>
									<pre>
              <b><i>Example: Target XML 1</i></b>

&lt;bodytext&gt;
	&lt;p&gt;&lt;text&gt;Before the Work Choices amendments changed the constitutional underpinnings for the Workplace Relations Act 1996...&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;

            </pre>
								</li> <li>The conversion for <sourcexml>leg:levelstatus</sourcexml>
									is based on the following scenarios: <ol>
										<li>If the
												<sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
											with text in that then <b>becomes</b>
											<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/
												legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]</targetxml>
											<note>For handling <b>@ln.user-displayed</b> attribute,
												refer the general markup <xref
												href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita"
												>ln.user_displayed="false"</xref> section in the
												CI.</note>
											<note>Include the <targetxml>@statuscode</targetxml> in
												element <targetxml>legisinfo:status</targetxml> to
												represent repealed legislation.</note>
											<pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:level id="WFW.REGS.FWTPCARC09.REG5-10"&gt;
	&lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="[40-640] reg 5.10 References to employee and employer taken to be references to national system employee and national system employer"&gt;
		&lt;leg:levelinfo&gt;
				&lt;leg:levelstatus isrepealed="true" ln.user-displayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		...
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
											<pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;primlaw:level xml:id="WFW.REGS.FWTPCARC09.REG5-10" leveltype="regulation" includeintoc="true" 
	alternatetoccaption="[40-640] reg 5.10 References to employee and employer taken to be references
	to national system employee and national system employer"&gt;
		&lt;primlaw:levelinfo&gt;
			&lt;primlawinfo:primlawinfo&gt;
				&lt;legisinfo:legisinfo&gt;
					&lt;legisinfo:statusgroup&gt;
						&lt;legisinfo:status statuscode="repealed"/&gt;
					&lt;/legisinfo:statusgroup&gt;
				&lt;/legisinfo:legisinfo&gt;
			&lt;/primlawinfo:primlawinfo&gt;
		&lt;/primlaw:levelinfo&gt;
		...
&lt;/primlaw:level&gt;

            </pre>
										</li>
										<li>If the
												<sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
											with no text in that then <b>becomes</b>
											<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
												legisinfo:status[@statuscode="repealed"]</targetxml>.
											<pre>
              <b><i>Example: Source XML 2</i></b>

  
&lt;leg:level id="WFW.REGS.FWTPCARC09.REG5-10"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"&gt;&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

 </pre><pre>
              <b><i>Example: Target XML 2</i></b>
            

&lt;primlaw:level xml:id="WFW.REGS.FWTPCARC09.REG5-10"&gt;
	&lt;primlaw:levelinfo&gt;
		&lt;primlawinfo:primlawinfo&gt;
			&lt;legisinfo:legisinfo&gt;
				&lt;legisinfo:statusgroup&gt;
				&lt;legisinfo:status statuscode="repealed"/&gt;
				&lt;/legisinfo:statusgroup&gt;
			&lt;/legisinfo:legisinfo&gt;
		&lt;/primlawinfo:primlawinfo&gt;
	&lt;/primlaw:levelinfo&gt;
            ....
&lt;/primlaw:level&gt;

            </pre>
										</li>
										<li>If the
												<sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml>
											then suppress the element.</li>
									</ol>
								</li>
								<li>
									<sourcexml>leg:sectionlist</sourcexml> comes with following
									scenarios: <ol>
										<li><b>Rule for sectionlist appearing within leg:info</b>: <ul>
												<li>When
												<sourcexml>leg:info/leg:sectionlist</sourcexml>
												does not contain @id OR @id that DOES NOT contain
												the value "xxxxx_PROVLIST" (xxxxx can be any
												text), then create a new
												<targetxml>primlaw:level</targetxml> with
												<targetxml>leveltype="unclassified"</targetxml>.
												This level is solely for the sectionlist content
												within <sourcexml>leg:info</sourcexml>. Insert all
												sectionlist element content within this single
												unclassified level tags and table tags are
												retained as they are in the source. The conversion
												rule is <sourcexml>leg:sectionlist</sourcexml>
												becomes
												<targetxml>navaid:navigationaid</targetxml> with
												attribute
												<targetxml>@type="sectionlist"</targetxml> and
												required child <targetxml>bodytext</targetxml>.
												<note>If <sourcexml>leg:sectionlist</sourcexml>
												has information about <b>LawNow Home Page</b> and
												<b>Government Website</b> captured in table then
												it becomes
												<targetxml>navaid:navigationaid</targetxml> with
												attribute
												<targetxml>@type="links"</targetxml></note>
												<note>Refer <xref
												href="../../common_newest/Rosetta_table-LxAdv-table.dita"
												>table</xref> for handling of
												<sourcexml>table</sourcexml></note>
												<note>Refer <xref
												href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita"
												>remotelink</xref> for handling of
												<sourcexml>remotelink</sourcexml></note>
												<pre>
                    
              <b><i>Example: Source XML 1</i></b>

&lt;leg:info&gt;
    &lt;leg:sectionlist&gt;
        &lt;p&gt;
            &lt;table frame="none" pgwide="1"&gt;
                &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                    &lt;colspec colname="c1" colnum="1" colwidth="12*"/&gt;
                    &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
                    &lt;tbody&gt;
                        &lt;row&gt;&lt;entry align="left"&gt;&lt; dpsi="03AV" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_LAUNCH_CTH" service="DOC-ID"&gt;
                            LawNow Home Page&lt;/remotelink&gt;&lt;/entry&gt;
                            &lt;entry align="right"&gt;&lt;remotelink hrefclass="http" href="www.legislation.act.gov.au/sl/2002-21/default.asp" newwindow="YES"&gt;
                                Government Website&lt;/remotelink&gt;&lt;/entry&gt;
                        &lt;/row&gt;
                        ....
                    &lt;/tbody&gt;
                &lt;/tgroup&gt;
            &lt;/table&gt;
        &lt;/p&gt;
    &lt;/leg:sectionlist&gt;
&lt;/leg:info&gt;
                                                                                                                                                          
</pre>
												<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;navaid:navigationaid type="links"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;table frame="none" pgwide="1"&gt;
                    &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                        &lt;colspec colname="c1" colnum="1" colwidth="12*"/&gt;
                        &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
                        &lt;tbody&gt;
                            &lt;row&gt;
                                &lt;entry align="left"&gt;
                                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                        &lt;ref:content&gt;LawNow Home Page&lt;/ref:content&gt;
                                        &lt;ref:locator&gt;
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="DOC-ID"/&gt;
                                                &lt;ref:key-value value="03AV-LAWNOW_LEG_LAUNCH_CTH"/&gt;
                                            &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:crossreference&gt;
                                &lt;/entry&gt;
                                &lt;entry align="right"&gt;
                                    &lt;ref:lnlink service="URL"&gt;
                                        &lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
                                        &lt;ref:locator&gt;
                                            &lt;ref:locator-key&gt;
                                                &lt;ref:key-name name="URL"/&gt;
                                                &lt;ref:key-value value="http://www.legislation.act.gov.au/sl/2002-21/default.asp"/&gt;
                                            &lt;/ref:locator-key&gt;
                                        &lt;/ref:locator&gt;
                                    &lt;/ref:lnlink&gt;
                                &lt;/entry&gt;
                            &lt;/row&gt;
                            ....
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;

   </pre>
												<pre>
              <b><i>Example: Source XML 2</i></b>


&lt;leg:info&gt;
    &lt;leg:sectionlist&gt;
        &lt;p&gt;
            &lt;text&gt;&lt;inlineobject type="image" filename="mb.gif" attachment="web-server" alttext="Click the Express Search icon to search
                all subscribed cases and commentary for the selected provision" width="21px"/&gt;&amp;#160;Click the &lt;remotelink href="www.lexisnexis.com.au/
                    expresssearch/default.htm" hrefclass="http" newwindow="YES"&gt;Express Search&lt;/remotelink&gt; icon to search all subscribed cases and commentary
                for the selected provision.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:sectionlist&gt;
&lt;/leg:info&gt;
                                                                                                                                                          
 </pre><pre>

              <b><i>Example: Target XML 2</i></b>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;navaid:navigationaid type="sectionlist"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;&lt;text&gt;&amp;#x00A0;Click the 
                &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;Express Search&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="URL"/&gt;
                            &lt;ref:key-value value="http://www.lexisnexis.com.au/expresssearch/default.htm"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt; icon 
                to search all subscribed cases and commentary for the selected provision.&lt;/text&gt;&lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/navaid:navigationaid&gt;
&lt;/primlaw:level&gt;

</pre>
												<note>In the above example 'inlineobject' element
												will be suppressed in conversion and corresponding
												product requirement should be created with an
												instruction to instantiate the image on retrieval
												based on information/semantic markup in the
												document.</note>
												</li>
											</ul>
										</li>
										<li><b>Rule for <sourcexml>leg:sectionlist</sourcexml>
												having <sourcexml>@id</sourcexml></b>: <ul>
												<li>When <sourcexml>leg:sectionlist</sourcexml>
												contains @id AND @id contains value
												"xxxxx_PROVLIST" (xxxxx can be any text), then
												create a new <targetxml>primlaw:level</targetxml>
												with
												<targetxml>leveltype="table-of-contents"</targetxml>.
												The <sourcexml>leg:sectionlist/@id</sourcexml>
												<b>becomes</b>
												<targetxml>primlaw:level[@leveltype="table-of-contents"]/@xml:id</targetxml>
												and <sourcexml>leg:sectionlist</sourcexml> will
												<b>becomes</b>
												<targetxml>primlaw:bodytext/toc</targetxml> with
												attribute
												<targetxml>@toctype="sectionlist"</targetxml>.</li>
												<li>The child elements will be converted as: <ul>
												<li><sourcexml>leg:sectionlist/leg:heading/title</sourcexml>
												<b>becomes</b>
												<targetxml>primlaw:level[@leveltype="table-of-contents"]/heading/title</targetxml></li>
												<li>
												<p>Conversion is based on the following scenarios
												and retaining the two level TOC formatting: <ul>
												<li><b>Scenario 1</b>: When first row contains
												single entry then conversion needs to create
												<targetxml>toc-entry</targetxml> as a outermost
												level of next two entry rows (means one entry row,
												that should be on the first level of the toc with
												all following two entry rows nested within).
												<p>Each <sourcexml>row</sourcexml> in table will
												become <targetxml>toc-entry</targetxml> with child
												<targetxml>desig</targetxml> and
												<targetxml>title</targetxml>
												<note>If <sourcexml>row</sourcexml> contains only
												one <sourcexml>entry</sourcexml> then map it to
												<targetxml>desig</targetxml>.</note>
												<note>If row contains two entry then first entry
												will become <targetxml>desig</targetxml> followed
												by the second entry which will map to
												<targetxml>title</targetxml>.</note></p>
												<p>Refer the below <b>Scenario 1</b> input and
												target example for your reference.</p></li>
												<li><b>Scenario 2</b>: When the first row of table
												contains two entries then conversion needs to
												create an empty <targetxml>toc-entry</targetxml>
												level so that all of the following two entry rows
												are nested within. <p>Each
												<sourcexml>row</sourcexml> in table will become
												<targetxml>toc-entry</targetxml> with child
												<targetxml>desig</targetxml> and
												<targetxml>title</targetxml>
												<note>The first entry in a
												<sourcexml>row</sourcexml> will become
												<targetxml>desig</targetxml> followed by the
												second entry which will map to
												<targetxml>title</targetxml>.</note></p>
												<p>Refer the below <b>Scenario 2</b> input and
												target example for your reference.</p>
												</li>
												<li><b>Scenario 3</b>: When the first row of table
												contains two entries then conversion needs to
												create an empty <targetxml>toc-entry</targetxml>
												level so that all of the following two entry rows
												are nested within. And one entry row appears later
												(means 'at the end of the table for endnotes').
												<p>Each <sourcexml>row</sourcexml> in table will
												become <targetxml>toc-entry</targetxml> with child
												<targetxml>desig</targetxml> and
												<targetxml>title</targetxml>
												<note>The first entry in a
												<sourcexml>row</sourcexml> will become
												<targetxml>desig</targetxml> followed by the
												second entry which will map to
												<targetxml>title</targetxml>.</note></p>
												<p>Refer the below <b>Scenario 3</b> input and
												target example for your reference.</p>
												</li>
												<li><b>Scenario 4</b>: When complete table
												contains only one entry row then conversion needs
												to map <targetxml>toc-entry</targetxml> with child
												<targetxml>title</targetxml> or
												<targetxml>desig</targetxml>. <p>Refer the below
												<b>Scenario 4</b> input and target example for
												your reference.</p>
												</li>
												</ul></p>
												<ul>
												<li><sourcexml>entry/remotelink[@service='DOC-ID']</sourcexml>
												becomes
												<targetxml>toc-entry/heading/title</targetxml> and
												<sourcexml>remotelink</sourcexml> attributes
												become <targetxml>toc-entry</targetxml> attributes
												as follows: <ul>
												<li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml>
												then <ul>
												<li><targetxml>@ref:locatorkeyprotocol</targetxml>
												will have the value "DOC-ID".</li>
												<li><targetxml>@ref:locatorkey</targetxml> will be
												the value of <sourcexml>@dpsi</sourcexml> followed
												by hyphen and concatenated with
												<sourcexml>@refpt</sourcexml> or
												<sourcexml>@remotekey2</sourcexml>, which ever is
												present (if both are present, use
												<sourcexml>@remotekey2</sourcexml>).</li>
												</ul></li>
												<li>If
												<sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
												<li><targetxml>@ref:locatorkeyprotocol</targetxml>
												will have the value "DOC-ID".</li>
												<li><targetxml>@ref:locatorkey</targetxml> will be
												the value of <sourcexml>@dpsi</sourcexml> followed
												by hyphen and concatenated with
												<sourcexml>@docidref</sourcexml>.</li>
												<li><targetxml>@anchoridref</targetxml> with value
												from <sourcexml>@refpt</sourcexml> or
												<sourcexml>@remotekey2</sourcexml>, which ever is
												present (if both are present, use
												<sourcexml>@refpt</sourcexml>). </li>
												</ul>
												<note>If there is only one
												<sourcexml>row</sourcexml> then
												<sourcexml>entry/remotelink</sourcexml> becomes
												<targetxml>toc-entry/heading/desig</targetxml>
												.</note>
												<note>If <sourcexml>remotelink/@dpsi</sourcexml>
												is not present, use value from
												<sourcexml>docinfo:dpsi/@id-string</sourcexml> or
												capture value from the LBU manifest file.</note>
												<note><targetxml>ref:locator/@anchoridref</targetxml>
												that begins with a number must have an underscore
												added at start. Also apply other identifier data
												type format as used for xml:id and ref:anchor/@id,
												e.g. change colon to underscore.</note>
												<note>If the target
												<sourcexml>toc-entry</sourcexml> is in the same
												source document then omit
												<sourcexml>@ref:locatorkey </sourcexml> and
												<sourcexml>@ref:locatorkeyprotocol</sourcexml>
												from the <sourcexml>toc-entry</sourcexml>.
												</note></li>
												</ul>
												<note>In the above example
												<sourcexml>lnlink</sourcexml> will be dropped from
												conversion. Also, added the attribute
												<targetxml>@toctype="sectionlist"</targetxml> to
												<targetxml>toc</targetxml>.</note>
												</li>
												</ul>
												</li>
												</ul>
												<b><i><b>Scenario 1 - Example</b>: When first row
												contains single entry and second row contains two
												entries</i></b><pre>
												
&lt;leg:sectionlist id="NSW_ACT_2007-93_PROVLIST"&gt;
  &lt;leg:heading&gt;
    &lt;title&gt;&lt;refpt id="NSW_ACT_2007-93_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;p&gt;
    &lt;table frame="none"&gt;
      &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
        &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
        &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
        &lt;tbody&gt;
          &lt;row&gt;
            &lt;entry namest="c1" nameend="c2"&gt;
              &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_ACTPT1"&gt;Part 1&amp;mdash;Preliminary&lt;/remotelink&gt;
            &lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry&gt;1&lt;/entry&gt;
            &lt;entry&gt;
              &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_SEC1"&gt;Name of Act&lt;/remotelink&gt;
              &amp;#160;
              &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="LOCAL COURT ACT 2007 w/s LEG-REF(1)"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;
            &lt;/entry&gt;
          &lt;/row&gt;
          &lt;row&gt;
            &lt;entry&gt;2&lt;/entry&gt;
            &lt;entry&gt;
              &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876" refpt="NSW_ACT_2007-93_SEC2"&gt;Commencement&lt;/remotelink&gt;
              &amp;#160;
              &lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString" value="LOCAL COURT ACT 2007 w/s LEG-REF(2)"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;
            &lt;/entry&gt;
         &lt;/row&gt;
         &lt;!-- ... --&gt;
        &lt;/tbody&gt;
     &lt;/tgroup&gt;
  &lt;/table&gt;
 &lt;/p&gt;
&lt;/leg:sectionlist&gt;
</pre>
												<pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="NSW_REG_1994-173_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt;    
            &lt;toc-entry anchoridref="NSW_ACT_2007-93_ACTPT1" ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Part 1-Preliminary&lt;/desig&gt;	
                &lt;/heading&gt;	
                &lt;toc-entry anchoridref="NSW_ACT_2007-93_SEC1" ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;1&lt;/desig&gt;
                        &lt;title&gt;Name of Act&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;toc-entry anchoridref="NSW_ACT_2007-93_SEC2" ref:locatorkey="1111-ABCD_9876" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;2&lt;/desig&gt;
                        &lt;title&gt;Commencement&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
            &lt;/toc-entry&gt;            
            &lt;!-- ... --&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

                  </pre>
												<pre>

              <b><i><b>Scenario 2 - Example</b>: First row of table contains two entries</i></b>


&lt;leg:sectionlist id="WA_ACT_1830-800_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="WA_ACT_1830-800_PROVLIST" type="ext"&gt;&lt;/refpt&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colnum="1" colname="c1" colwidth="3*" /&gt;
                &lt;colspec colnum="2" colname="c2" colwidth="12*" /&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry&gt;[1.]&lt;/entry&gt;
                        &lt;entry&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_PROV1" docidref="WA_ACT_1830-800_BODY"&gt;Recited Acts repealed&lt;/remotelink&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;2.&lt;/entry&gt;
                        &lt;entry&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_PROV2" docidref="WA_ACT_1830-800_BODY"&gt;For remedying frauds committed on creditors by wills&lt;/remotelink&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;3.&lt;/entry&gt;
                        &lt;entry&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_PROV3" docidref="WA_ACT_1830-800_BODY"&gt;Enabling creditors to recover upon bonds, etc.&lt;/remotelink&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;!--...--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_NOTES" docidref="WA_ACT_1830-800_NOTESTBLAMEND"&gt;Notes&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                          &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1830-800_NOTESTBLAMEND" docidref="WA_ACT_1830-800_NOTESTBLAMEND"&gt;Compilation table&lt;/remotelink&gt;
                        &lt;/entry&gt;
                   &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;


                </pre>
												<pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="WA_ACT_1830-800_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;toc-entry&gt;
                &lt;heading/&gt;
                &lt;toc-entry anchoridref="WA_ACT_1830-800_PROV1" ref:locatorkey="0000-WA_ACT_1830-800_BODY" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;[1.]&lt;/desig&gt;
                        &lt;title&gt;Recited Acts repealed&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;toc-entry anchoridref="WA_ACT_1830-800_PROV2" ref:locatorkey="0000-WA_ACT_1830-800_BODY" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;2.&lt;/desig&gt;
                        &lt;title&gt;For remedying frauds committed on creditors by wills&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;toc-entry anchoridref="WA_ACT_1830-800_PROV3" ref:locatorkey="0000-WA_ACT_1830-800_BODY" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;3.&lt;/desig&gt;
                        &lt;title&gt;Enabling creditors to recover upon bonds, etc.&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
                &lt;!--...--&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1830-800_NOTES" ref:locatorkey="0000-WA_ACT_1830-800_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt; 
                &lt;heading&gt;
                    &lt;desig&gt;Notes&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1830-800_NOTESTBLAMEND" ref:locatorkey="0000-WA_ACT_1830-800_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt; 
                &lt;heading&gt;
                    &lt;desig&gt;Compilation table&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

                  </pre>
												<pre>

              <b><i><b>Scenario 3 - Example</b>: If table having 'two entry' rows then 'one entry' rows appear later (often at the end of the table for endnotes)</i></b>


&lt;leg:sectionlist id="ACT_REG_1991-10_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="ACT_REG_1991-10_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
                &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                &lt;tbody&gt;
                    &lt;!--......--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_PT4"&gt;Part&amp;#x00A0;4 Miscellaneous&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;11&lt;/entry&gt;
                        &lt;entry&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_PROV11"&gt;Time for decision on internal review&amp;#x2014;Act,
                            s&amp;#x00A0;186 (2)&lt;/remotelink&gt;&amp;#x00A0;&lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary"
                                scope-protocol="combined-source-name"&gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server"
                                    alttext="click to find cases &amp;amp; commentary"/&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch" value="true"/&gt;&lt;param name="searchString"
                                        value="OCCUPATIONAL HEALTH AND SAFETY REGULATION 1991 w/s LEG-REF(11)"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="ACT_REG_1991-10_NOTES"&gt;Endnotes&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;

</pre>
												<pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="ACT_REG_1991-10_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;!--......--&gt;
            &lt;toc-entry anchoridref="ACT_REG_1991-10_PT4" ref:locatorkey="0000-@docidref" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Part 4 Miscellaneous&lt;/desig&gt;
                &lt;/heading&gt;
                &lt;toc-entry anchoridref="ACT_REG_1991-10_PROV11" ref:locatorkey="0000-@docidref" ref:locatorkeyprotocol="DOC-ID"&gt;
                    &lt;heading&gt;
                        &lt;desig&gt;11&lt;/desig&gt;
                        &lt;title&gt;Time for decision on internal review&amp;#x2014;Act, s&amp;#x00A0;186 (2)&lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/toc-entry&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="ACT_REG_1991-10_NOTES" ref:locatorkey="0000-@docidref" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Endnotes&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
  
                  
                  </pre>
												<pre>

              <b><i><b>Scenario 4 - Example</b>: Having a single entry within a row</i></b>


&lt;leg:sectionlist id="WA_ACT_1982-22_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="WA_ACT_1982-22_PROVLIST" type="ext"&gt;&lt;/refpt&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colnum="1" colname="c1" colwidth="3*" /&gt;
                &lt;colspec colnum="2" colname="c2" colwidth="12*" /&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_PTI" docidref="WA_ACT_1982-22_PTI"&gt;Part I &amp;#x2014; Preliminary&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;!--......--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH3DV1" docidref="WA_ACT_1982-22_SCH3DV1"&gt;Division 1 &amp;#x2014; Provisions for Petroleum and Energy Legislation Amendment Act 2010&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH3DV2" docidref="WA_ACT_1982-22_SCH3DV2"&gt;Division 2 &amp;#x2014; Provisions for Petroleum (Submerged Lands) Amendment Act 2011&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH5" docidref="WA_ACT_1982-22_SCH5DV1"&gt;Schedule 5 &amp;#x2014; Occupational safety and health&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_SCH5DV1" docidref="WA_ACT_1982-22_SCH5DV1"&gt;Division 1 &amp;#x2014; Introduction&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_NOTES" docidref="WA_ACT_1982-22_NOTESTBLAMEND"&gt;Notes&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1982-22_NOTESTBLAMEND" docidref="WA_ACT_1982-22_NOTESTBLAMEND"&gt;Compilation table&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;

                </pre>
												<pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="WA_ACT_1982-22_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;toc-entry anchoridref="WA_ACT_1982-22_PTI" ref:locatorkey="0000-WA_ACT_1982-22_PTI" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Part I — Preliminary&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;!--......--&gt;
             &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH3DV1" ref:locatorkey="0000-WA_ACT_1982-22_SCH3DV1" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Division 1 — Provisions for Petroleum and Energy Legislation Amendment Act 2010&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH3DV2" ref:locatorkey="0000-WA_ACT_1982-22_SCH3DV2" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Division 2 — Provisions for Petroleum (Submerged Lands) Amendment Act 2011&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH5" ref:locatorkey="0000-WA_ACT_1982-22_SCH5" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Schedule 5 — Occupational safety and health&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_SCH5DV1" ref:locatorkey="0000-WA_ACT_1982-22_SCH5DV1" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Division 1 — Introduction&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_NOTES" ref:locatorkey="0000-WA_ACT_1982-22_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;Notes&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry anchoridref="WA_ACT_1982-22_NOTESTBLAMEND" ref:locatorkey="0000-WA_ACT_1982-22_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Compilation table&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
 </pre>
												<note>If <sourcexml>remotelink</sourcexml> comes
												without <sourcexml>@docidref</sourcexml> attribute
												inside <sourcexml>entry</sourcexml> markup in
												source document and target
												<targetxml>toc-entry</targetxml> markup does not
												have <targetxml>@ref:locatorkey</targetxml> and
												<targetxml>@ref:locatorkeyprotocal</targetxml> has
												a value of "<b>DOC-ID</b>" then suppress both
												attributes <targetxml>@anchoridref</targetxml> and
												<targetxml>@ref:locatorkeyprotocol</targetxml>
												inside <targetxml>toc-entry</targetxml> in target
												conversion because its generating Inactive (dead)
												links on LexisAdvance Platform.</note>
												<pre>

              <b><i><b>Scenario 5 - Example</b>: Suppressed the attributes '@anchoridref' and '@ref:locatorkeyprotocol'</i></b>


&lt;leg:sectionlist id="WA_ACT_1957-50_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;
            &lt;refpt id="WA_ACT_1957-50_PROVLIST" type="ext"/&gt;List of provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colnum="1" colname="c1" colwidth="3*" /&gt;
                &lt;colspec colnum="2" colname="c2" colwidth="12*" /&gt;
                &lt;tbody&gt;
                    &lt;!--......--&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1957-50_NOTESTBLAMEND" docidref="WA_ACT_1957-50_NOTESTBLAMEND"&gt;Compilation table&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink remotekey1="REFPTID" service="DOC-ID" refpt="WA_ACT_1957-50_INDEX" status="unval"&gt;Defined Terms&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
    &lt;/p&gt;
&lt;/leg:sectionlist&gt;

                </pre>
												<pre>
              <b><i>Target Example</i></b>

&lt;primlaw:level leveltype="table-of-contents"&gt;
    &lt;ref:anchor id="WA_ACT_1957-50_PROVLIST" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;List of provisions&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
        &lt;toc toctype="sectionlist"&gt; 
            &lt;!--......--&gt;
            &lt;toc-entry anchoridref="WA_ACT_1957-50_NOTESTBLAMEND" ref:locatorkey="0000-WA_ACT_1957-50_NOTESTBLAMEND" ref:locatorkeyprotocol="DOC-ID"&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Compilation table&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
            &lt;toc-entry&gt;
                &lt;heading&gt;
                    &lt;desig&gt;Defined Terms&lt;/desig&gt;
                &lt;/heading&gt;
            &lt;/toc-entry&gt;
        &lt;/toc&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
 </pre>
												</li>
											</ul>
										</li>
									</ol></li>
								<li><sourcexml>leg:levelprelim</sourcexml>
									<b>becomes</b>
									<targetxml>primlaw:prelim</targetxml> and populated as: <pre>
				<b><i>Example: Source XML 1</i></b>

&lt;leg:level id="CF_FL.SGM_FORM.GRP_21"&gt;
	&lt;leg:level-vrnt toc-caption="FORMS" subdoc="true" searchtype="LEGISLATION FORMS" leveltype="forms"&gt;
		&lt;leg:heading&gt;&lt;title&gt;FORMS&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;leg:levelprelim&gt;
			&lt;heading&gt;&lt;title&gt;Table of Forms&lt;/title&gt;&lt;/heading&gt;
			&lt;p&gt;
				&lt;table id="CF.FL.T1" frame="none" pgwide="1"&gt;
					&lt;tgroup cols="2" colsep="0" rowsep="0" align="left"&gt;
						&lt;colspec colwidth="386*" colname="colspec0" colsep="0" rowsep="0"/&gt;
						&lt;colspec colwidth="76*" colname="colspec1" colsep="0" rowsep="0"/&gt;
						&lt;tbody valign="top"&gt;
							&lt;row rowsep="0"&gt;
								&lt;entry colname="colspec0" morerows="0" colsep="0" rowsep="0" align="left" valign="top"&gt;&lt;emph typestyle="it"&gt;Form&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry morerows="0" colsep="0" rowsep="0" align="right" valign="top"&gt;&lt;emph typestyle="it"&gt;Paragraph&lt;/emph&gt;&lt;/entry&gt;
							&lt;/row&gt;
							...
						&lt;/tbody&gt;
					&lt;/tgroup&gt;
				&lt;/table&gt;
			&lt;/p&gt;
		&lt;/leg:levelprelim&gt;
		...
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
</pre>
									<pre>
              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level xml:id="CF_FL.SGM_FORM.GRP_21" alternatetoccaption="FORMS" includeintoc="true" leveltype="form"&gt;
	&lt;heading&gt;&lt;title&gt;FORMS&lt;/title&gt;&lt;/heading&gt;
	&lt;primlaw:prelim&gt;
		&lt;heading&gt;&lt;title&gt;Table of Forms&lt;/title&gt;&lt;/heading&gt;
		&lt;p&gt;
			&lt;table id="CF.FL.T1" frame="none" pgwide="1"&gt;
					&lt;tgroup cols="2" colsep="0" rowsep="0" align="left"&gt;
						&lt;colspec colwidth="386*" colname="colspec0" colsep="0" rowsep="0"/&gt;
						&lt;colspec colwidth="76*" colname="colspec1" colsep="0" rowsep="0"/&gt;
						&lt;tbody valign="top"&gt;
							&lt;row rowsep="0"&gt;
								&lt;entry colname="colspec0" morerows="0" colsep="0" rowsep="0" align="left" valign="top"&gt;&lt;emph typestyle="it"&gt;Form&lt;/emph&gt;&lt;/entry&gt;
								&lt;entry morerows="0" colsep="0" rowsep="0" align="right" valign="top"&gt;&lt;emph typestyle="it"&gt;Paragraph&lt;/emph&gt;&lt;/entry&gt;
							&lt;/row&gt;
							...
						&lt;/tbody&gt;
					&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/p&gt;
	&lt;/primlaw:prelim&gt;
	...
&lt;/primlaw:level&gt;

            </pre>
								</li> <li><sourcexml>form</sourcexml>
									<b>becomes</b>
									<targetxml>form:form</targetxml> with required child as
										<targetxml>form:form/form:document</targetxml> with
									attribute values <targetxml>@annotated="false"</targetxml>,
										<targetxml>@official="true"</targetxml> and
										<targetxml>@typeofdoc="unnamed"</targetxml>
									<sourcexml>form/bodytext</sourcexml>
									<b>becomes</b>
									<targetxml>form:form/form:document/form:bodytext</targetxml> The
									child element of form includes: <ul>
										<li><sourcexml>form/h</sourcexml>
											<b>becomes</b>
											<targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
										<li><sourcexml>form/p</sourcexml>
											<b>becomes</b>
											<targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
										<li><sourcexml>form/p/text</sourcexml>
											<b>becomes</b>
											<targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
									</ul>
									<pre>
				<b><i>Example: Source XML 1</i></b>
     
 &lt;form&gt;
    &lt;bodytext searchtype="FORM"&gt;
        &lt;p&gt;&lt;text&gt;Form No 38&lt;/text&gt;&lt;/p&gt;
        ....
        &lt;table colsep="0" rowsep="0"&gt;
            &lt;tgroup cols="6" colsep="0" rowsep="0"&gt;
                &lt;colspec colname="col1" colnum="1" colwidth="499*"/&gt;
                &lt;colspec colname="col2" colnum="2" colwidth="161*"/&gt;
                &lt;colspec colname="col3" colnum="3" colwidth="165*"/&gt;
                &lt;colspec colname="col4" colnum="4" colwidth="165*"/&gt;
                &lt;colspec colname="col5" colnum="5" colwidth="4*"/&gt;
                &lt;colspec colname="col6" colnum="6" colwidth="161*"/&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry nameend="col5" namest="col1"&gt;Action No. &lt;/entry&gt;
                        &lt;entry colname="col2"&gt;  &lt;emph typestyle="bf"&gt;OFFICE USE ONLY&lt;/emph&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry align="left" nameend="col5" namest="col1"&gt;  Trial Court: &lt;/entry&gt;
                        &lt;entry align="left" colname="col2"&gt;  Date of Filing: &lt;/entry&gt;
                    &lt;/row&gt;
                ....   
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
        &lt;p&gt;&lt;text&gt;I give notice that this Application will be listed for directions at the trial court on the ____day of ____________________ 20___, at ______ am/pm&lt;/text&gt;&lt;/p&gt;
    ....    
    &lt;/bodytext&gt;
&lt;/form&gt;

</pre>
									<pre> 
				<b><i>Example: Target XML 1</i></b>

&lt;form:form&gt;
	&lt;form:document annotated="false" official="true" typeofdoc="unnamed"&gt;
	&lt;form:bodytext&gt;
		&lt;form:p&gt;&lt;form:text&gt;Form No 38&lt;/form:text&gt;&lt;/form:p&gt;
		....
    	&lt;table colsep="0" rowsep="0"&gt;
            &lt;tgroup cols="6" colsep="0" rowsep="0"&gt;
                &lt;colspec colname="col1" colnum="1" colwidth="499*"/&gt;
                &lt;colspec colname="col2" colnum="2" colwidth="161*"/&gt;
                &lt;colspec colname="col3" colnum="3" colwidth="165*"/&gt;
                &lt;colspec colname="col4" colnum="4" colwidth="165*"/&gt;
                &lt;colspec colname="col5" colnum="5" colwidth="4*"/&gt;
                &lt;colspec colname="col6" colnum="6" colwidth="161*"/&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry nameend="col5" namest="col1"&gt;Action No. &lt;/entry&gt;
                        &lt;entry colname="col2"&gt;  &lt;emph typestyle="bf"&gt;OFFICE USE ONLY&lt;/emph&gt; &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry align="left" nameend="col5" namest="col1"&gt;  Trial Court: &lt;/entry&gt;
                        &lt;entry align="left" colname="col2"&gt;  Date of Filing: &lt;/entry&gt;
                    &lt;/row&gt;
                ....   
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
    	&lt;/table&gt;
		&lt;form:p&gt;
			&lt;form:text&gt;I give notice that this Application will be listed for directions at the trial court on the ____day of ____________________ 20___, at ______ am/pm&lt;/form:text&gt;
		&lt;/form:p&gt;
		....
	&lt;/bodytext&gt;
&lt;/form:form&gt;

          </pre>
									<pre> 
				<b><i>Example: Source XML 2</i></b>

&lt;entry colname="col3" valign="top"&gt;
	&lt;h align="center"&gt; &lt;/h&gt;
&lt;/entry&gt;

        		</pre>
									<pre> 
				<b><i>Example: Target XML 2</i></b>

&lt;entry colname="col3" valign="top"&gt;
	&lt;form:h align="center"&gt; &lt;/form:h&gt;
&lt;/entry&gt;

        		</pre>
								</li> <li>
									<sourcexml>leg:info/leg:relatedleg</sourcexml> with attribute
										<sourcexml>leg:relatedleg[@type="parent"]</sourcexml>
									<b>becomes</b>
									<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:authority/
										primlaw:authority-item/textitem</targetxml>
									<pre>
				<b><i>Example: Source XML 1</i></b>
     
&lt;leg:relatedleg type="parent"&gt;Made under the 
	&lt;ci:cite searchtype="LEG-REF"&gt;
		&lt;ci:content&gt;
			&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="03AF" docidref="ABCD_9876" refpt="NT_ACT_1986-38"&gt;SUPERANNUATION ACT 1986&lt;/remotelink&gt;
		&lt;/ci:content&gt;
	&lt;/ci:cite&gt;.
&lt;/leg:relatedleg&gt;


</pre>
									<pre> 
				<b><i>Example: Target XML 1</i></b>

 &lt;primlaw:level leveltype="unclassified"&gt;
 	&lt;primlaw:authority&gt;
      	&lt;primlaw:authority-item&gt;
      		&lt;textitem&gt;Made under the &lt;lnci:cite type="legislation" citeref="NT_ACT_1986-38"&gt;
      		&lt;lnci:content&gt;
      		&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      		&lt;ref:content&gt;SUPERANNUATION ACT 1986&lt;/ref:content&gt;
      		&lt;ref:locator anchoridref="NT_ACT_1986-38"&gt;
       		  &lt;ref:locator-key&gt;
      		   &lt;ref:key-name name="DOC-ID"/&gt;
      		   &lt;ref:key-value value="03AF-ABCD_9876"/&gt;
      		  &lt;/ref:locator-key&gt;
      		&lt;/ref:locator&gt;
      		&lt;/ref:crossreference&gt;&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/textitem&gt;
      	&lt;/primlaw:authority-item&gt;
      &lt;/primlaw:authority&gt;
&lt;/primlaw:level&gt;

          </pre>
									<note>The element <sourcexml>leg:relategleg</sourcexml> comes
										under <sourcexml>leg:info</sourcexml> in Rosetta, In New
										Lexis it will be part of Regulation body.</note>
								</li>
								<li><b>Special Handling of Image - For AU04, AU06 and AU08</b>: If
										<sourcexml>inlineobject</sourcexml> markup having some
									specific image name (either '<i><b>au_inforce.png</b></i>' and
											'<i><b>au_noforce.png</b></i>') then conversion needs to
									create target <targetxml>ref:inlineobject</targetxml> and should
									be handle these images differently means remove the extension
									only when these specific images have occured, not convert
									according to general markup. Refer below input and output markup
									for better understanding.<pre>
				<b><i>Example: Source XML 1</i></b>
     
&lt;p&gt;
       &lt;text&gt;
              &lt;inlineobject alttext="[Not in Force]" type="image" attachment="web-server" filename="au_noforce.png"/&gt;
       &lt;/text&gt;
&lt;/p&gt;

</pre>
									<pre> 
				<b><i>Example: Target XML 1</i></b>

&lt;figure&gt;
       &lt;ref:inlineobject&gt;
              &lt;ref:locator&gt;
                     &lt;ref:locator-key&gt;
                           &lt;ref:key-name name="object-key"/&gt;
                           &lt;ref:key-value value="au_noforce"/&gt;
                     &lt;/ref:locator-key&gt;
                     &lt;ref:locator-params&gt;
                           &lt;proc:param name="componentseq" value="1"/&gt;
                           &lt;proc:param name="object-type" value="image"/&gt;
                           &lt;proc:param name="object-smi" value="12638"/&gt;
                     &lt;/ref:locator-params&gt;
              &lt;/ref:locator&gt;
       &lt;/ref:inlineobject&gt;
&lt;/figure&gt;

          </pre>
								</li> </ul>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>Changes:</title>
				<p>2016-04-22: <ph id="change_20160422_SS">Added the new instruction with examples
						for handling some specific images (either '<i><b>au_inforce.png</b></i>' and
								'<i><b>au_noforce.png</b></i>'). (Webstar #6036111)</ph></p>
				<p>2014-08-05: <ph id="change_20140805_SS">Updated the examples (input and target)
						with rule for suppressed the both attributes
							<targetxml>@anchoridref</targetxml> and
							<targetxml>@ref:locatorkeyprotocol="DOC-ID"</targetxml> inside
							<targetxml>toc-entry</targetxml> because its generating Inactive (dead)
						links on LexisAdvance Platform.</ph></p>
				<p>2014-07-28: <ph id="change_20140728_SS">Added a rule for suppressed the both
						attributes <targetxml>@anchoridref</targetxml> and
							<targetxml>@ref:locatorkeyprotocol="DOC-ID"</targetxml> inside
							<targetxml>toc-entry</targetxml> because its generating Inactive (dead)
						links on LexisAdvance Platform.</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU06_Regulation\Regulation-Body.dita  -->
	<!--    20170515:  MCJ:  Renamed from Regulation-Body.xsl to AU06_Regulation_Body.xsl. -->
	<!-- <xsl:message>Regulation-Body.xsl requires manual development!</xsl:message> -->

	<!-- 20170517:  MCJ:  The code for this module is currently in the AU06_Regulation_Common module. At some point, it might get refactored back in here. -->



</xsl:stylesheet>
