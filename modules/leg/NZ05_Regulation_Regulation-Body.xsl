<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulation-Body">
  <title>Body <lnpid>id-NZ05-23207</lnpid></title>
  <shortdesc>All of the following are descendants of <targetxml>regulation:body</targetxml>. Handle in document
    order unless specifically stated otherwise. Refer to General Markup Section for handling of children
    (including mixed content).</shortdesc>
  <body>
    <section>
      <title>regulation:body</title>
      
       <p><sourcexml>leg:body</sourcexml> <b>Becomes</b> <targetxml>regulation:body</targetxml> is created and children as described below:
        <ul>

		<li><sourcexml>leg:info</sourcexml>
						<b>becomes</b>
						<targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
						and attribute <sourcexml>leg:info/@id</sourcexml>
						<b>becomes</b>
						<targetxml>primlaw:level/@xml:id</targetxml>. Suppress
							<sourcexml>@subseqdoc</sourcexml> and handle the children of leg:info as
						described below: 
			<note>Conversion should not create
				adjacent <targetxml>primlaw:levelinfo</targetxml>. Data should be merged to single
				<targetxml>primlaw:levelinfo</targetxml>.</note><note>Conversion should not create
					adjacent <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged to
					single <targetxml>primlawinfo:primlawinfo</targetxml>.</note><ul>
							<li><sourcexml>leg:info/leg:officialname</sourcexml>
								<b>becomes</b>
								<targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
								with attribute <targetxml>@source="editoriallyassigned"</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:info&gt;
&lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;
	&lt;refpt id="2004R131" type="ext"/&gt;DAIRY INDUSTRY (APPLICATION FEES AND FONTERRA LEVY) REGULATIONS 2004
&lt;/leg:officialname&gt;
&lt;/leg:info&gt;

	</pre>
								<pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  

&lt;primlawinfo:primlawinfo&gt;
	&lt;legisinfo:legisinfo&gt;
		&lt;legisinfo:names&gt;
			&lt;legisinfo:officialtitle source="editoriallyassigned"&gt;
				DAIRY INDUSTRY (APPLICATION FEES AND FONTERRA LEVY) REGULATIONS 2004
			&lt;/legisinfo:officialtitle&gt;
		&lt;/legisinfo:names&gt;
	&lt;/legisinfo:legisinfo&gt;
&lt;/primlawinfo:primlawinfo&gt;

</pre>
								<note>For handling <b>@ln.user-displayed</b> attribute, refer the
									general markup <xref href="../../common_newest/Rosetta_leg.officialname_ln.user-displayed-LxAdv-legisinfo.officialtitle.dita">ln.user_displayed="false"</xref> section in the CI.</note>
								<note>In the above input example <sourcexml>lnlink</sourcexml> shall
									be suppressed from conversion and a corresponding product
									requirement shall be created with an instruction to build the
									link on retrieval based on semantic markup in the document. Use
									cases where the LBU feels the product requirement cannot be met
									if the markup is suppressed shall be handled
									case-by-case.</note>
								<note>Conversion should not create adjacent
										<targetxml>legisinfo:legisinfo</targetxml>. Data should be
									merged to single
									<targetxml>legisinfo:legisinfo</targetxml>.</note>
							</li>
							<li><sourcexml>leg:info/leg:officialnum</sourcexml>
								<b>becomes</b>
								<targetxml>primlawinfo:identifier</targetxml> with required
								attribute <targetxml>@idtype="officialnum"</targetxml> and
									<targetxml>@source="editoriallyassigned"</targetxml>: <pre>
                                
              <b><i>Example: Source XML 1</i></b>
                  

&lt;leg:info&gt;
	&lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;Act No. 373, 2001&lt;/leg:officialnum&gt;
&lt;/leg:info&gt;

</pre>
								<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;Act No. 131, 2004&lt;/primlawinfo:identifier&gt;
</pre>
								<note>For handling <b>@ln.user-displayed</b> attribute, refer the
									general markup <xref href="../../common_newest/Rosetta_leg.officialnum_ln.user-displayed-LxAdv-primlawinfo.identifier_source.dita">ln.user_displayed="false"</xref> section in the CI.</note>
							</li>
							
							
							<li><sourcexml>leg:info/leg:year</sourcexml>
								<b>becomes</b>
								<targetxml>primlawinfo:dates/primlawinfo:enactdate</targetxml> with
								attribute <targetxml>@year</targetxml>:
										<note><sourcexml>leg:year</sourcexml> input PCDATA
									transforms only to target attribute
										<targetxml>primlawinfo:enactdate[@year]</targetxml> and
									there should be no PCDATA in output.</note>
								<note>For handling <b>@ln.user-displayed</b> attribute, refer the
									general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
								<pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:info&gt;
	&lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;2004&lt;/leg:year&gt;
&lt;/leg:info&gt;
</pre>
								<pre>

              <b><i>Example: Target XML 1</i></b>
                 

&lt;primlawinfo:dates&gt;
	&lt;primlawinfo:enactdate year="2004"/&gt;
&lt;/primlawinfo:dates&gt;

                </pre>
							</li>
							
						</ul>
					</li>

          <li><sourcexml>leg:level</sourcexml>
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
								<sourcexml>@leveltype</sourcexml> values other than the tokenized
							list shown above, the value will be set as
								<targetxml>@leveltype="unclassified"</targetxml>.</note>
						<note>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from
							conversion except for the citation element.</note>
						<pre>
                
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="2004R131S1"&gt;
	&lt;leg:level-vrnt leveltype="reg"&gt;


</pre>
						<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level xml:id="2004R131S1" leveltype="regulation"&gt;

            </pre>
						<pre>
              <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="2004R131S2"&gt;
	&lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 2 Commencement"&gt;

              
</pre>
						<pre>
              <b><i>Example: Target XML 2</i></b>
              

&lt;primlaw:level xml:id="2004R131S2" leveltype="regulation" includeintoc="true" alternatetoccaption="reg 2 Commencement"&gt;

              
            </pre>
						<note>In NL Schema <targetxml>primlaw:level</targetxml> element is used
							instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
								<sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute
								<sourcexml>@leveltype</sourcexml> with value from
								<sourcexml>leg:level-vrnt</sourcexml> element and
								<sourcexml>leg:level-vrnt</sourcexml> will be suppressed from
							conversion.</note>
					</li>

          <li><sourcexml>/LEGDOC/leg:body/leg:prelim</sourcexml>
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
		&lt;title&gt;Transitional Information&lt;/title&gt;
	&lt;/heading&gt;
	&lt;p&gt;&lt;text&gt;Evidence (Consequential and Other Provisions)...&lt;/text&gt;&lt;/p&gt;
	...
&lt;/leg:prelim&gt;


</pre>
						<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="unclassified"&gt;
	&lt;primlaw:prelim&gt;
			&lt;heading&gt;
				&lt;title&gt;Transitional Information&lt;/title&gt;
			&lt;/heading&gt;
			&lt;p&gt;&lt;text&gt;Evidence (Consequential and Other Provisions)...&lt;/text&gt;&lt;/p&gt;
			...
	&lt;/primlaw:prelim&gt;
&lt;/primlaw:level&gt;


            </pre>
					</li>
        	
       <li><sourcexml>leg:history</sourcexml>
						<b>becomes</b>
						<targetxml>primlawhist:primlawhist</targetxml> with optional child elements
						and is using converted rule below: <ul>
							<li><sourcexml>leg:heading</sourcexml>
								<b>becomes</b>
								<targetxml>heading</targetxml></li>
							<li><sourcexml>title</sourcexml>
								<b>becomes</b>
								<targetxml>title</targetxml></li>
						</ul>
						<pre>
              <b><i>Example: Source XML 1</i></b>

	&lt;leg:history&gt;
		&lt;leg:heading ln.user-displayed="false"&gt;&lt;title&gt;&lt;refpt id="1975R174_INDEX" type="ext"/&gt;Amending Legislation &lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Index (Revoked)&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
		&lt;leg:tableofamend&gt;
			&lt;table&gt;
				&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
					&lt;colspec colwidth="23*" colname="col1" colnum="1"/&gt;
					&lt;colspec colwidth="53*" colname="col2" colnum="2"/&gt;
					&lt;colspec colwidth="1*" colname="col3" colnum="3"/&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;&lt;/entry&gt;
							&lt;entry namest="col2" nameend="col3" align="left"&gt;2005 No&amp;#x00A0;126&amp;#x2014; Veterinary Act 2005:&lt;/entry&gt;
						&lt;/row&gt;
						...
					&lt;/tbody&gt;
				&lt;/tgroup&gt;
			&lt;/table&gt;
		&lt;/leg:tableofamend&gt;
	&lt;/leg:history&gt;




</pre>
						<pre>
              <b><i>Example: Target XML 1</i></b>


		&lt;primlawhist:primlawhist&gt;
			&lt;heading&gt;
				&lt;title&gt;Amending Legislation&lt;/title&gt;
			&lt;/heading&gt;
			&lt;primlawhist:histgrp&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;p align="center"&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Index (Revoked)&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
			&lt;primlawhist:histgrp grptype="tableofamend"&gt;
				&lt;primlawhist:histitem&gt;
					&lt;bodytext&gt;
						&lt;table&gt;
							&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
								&lt;colspec colwidth="23*" colname="col1" colnum="1"/&gt;
								&lt;colspec colwidth="53*" colname="col2" colnum="2"/&gt;
								&lt;colspec colwidth="1*" colname="col3" colnum="3"/&gt;
								&lt;tbody&gt;
									&lt;row&gt;
										&lt;entry colname="col1"&gt;&lt;/entry&gt;
										&lt;entry namest="col2" nameend="col3" align="left"&gt;2005 No&amp;#x00A0;126&amp;#x2014; Veterinary Act 2005:&lt;/entry&gt;
									&lt;/row&gt;
									...
								&lt;/tbody&gt;
							&lt;/tgroup&gt;
						&lt;/table&gt;
					&lt;/bodytext&gt;
				&lt;/primlawhist:histitem&gt;
			&lt;/primlawhist:histgrp&gt;
		&lt;/primlawhist:primlawhist&gt;

</pre>
					</li>

          <li><sourcexml>leg:heading</sourcexml>
						<b>Becomes</b>
						<targetxml>heading</targetxml> with attributes
							<sourcexml>@inline</sourcexml>
						<b>becomes</b>
						<targetxml>@inline</targetxml> which has tokenized values and populated as: <ul>
							<li><targetxml>heading[@inline="true"]</targetxml></li>
							<li><targetxml>heading[@inline="false"]</targetxml></li>
						</ul>
						<pre>              
              <b><i>Example: Source XML 1</i></b>


&lt;leg:level id="2004R131S2"&gt;
&lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 2 Commencement"&gt;
		&lt;leg:heading&gt;
			&lt;desig searchtype="REG-NUM"&gt;&lt;designum&gt;2&amp;#x2003;&lt;/designum&gt;&lt;/desig&gt;
			&lt;title searchtype="REG-TITLE"&gt;&lt;refpt id="2004R131S2" type="ext"/&gt;Commencement&lt;/title&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:level-vrnt &gt;
&lt;/leg:level&gt;

        
</pre>
						<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="regulation" includeintoc="true" alternatetoccaption="reg 2 Commencement"&gt;
		&lt;ref:anchor id="2004R131S2" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;desig&gt;2&amp;#x2003;&lt;/desig&gt;
			&lt;title&gt;Commencement&lt;/title&gt;
		&lt;/heading&gt;
		....
&lt;/primlaw:level&gt;


            </pre>
						<pre>
              <b><i>Example: Source XML 2 - Handling of 'leg:heading' with '@inline' attribute</i></b>

&lt;leg:level id="2004R131S3-1"&gt;
	&lt;leg:level-vrnt leveltype="subreg" searchtype="LEGISLATION SUBREG"&gt;
		&lt;leg:heading inline="true"&gt;
			&lt;desig&gt;&lt;designum&gt;&lt;refpt id="2004R131S3-1" type="ext"/&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
		&lt;/leg:heading&gt;
		....
&lt;/leg:level&gt;



</pre>
						<pre>

              <b><i>Example: Target XML 2</i></b>


&lt;primlaw:level leveltype="subregulation"&gt;
	&lt;ref:anchor id="2004R131S3-1" anchortype="global"/&gt;
	&lt;heading inline="true"&gt;
		&lt;desig&gt;(1)&lt;/desig&gt;
	&lt;/heading&gt;
	....
&lt;/primlaw:level&gt;

</pre>
						<note>Duplicate anchors should be suppressed in mapping rosetta to NL and
							note this means exact duplicates. Repeating anchors are ok and should
							not be suppressed. (non duplicate multiple anchors). Refer common <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common_rosetta_refpt.dita</xref> file for handling of
								"<sourcexml>refpt</sourcexml>" element.</note>
						<note>If source document is having the scenario
								<sourcexml>leg:heading[@ln.user-displayed="false"]/title/refpt</sourcexml>
							then output should be dropped both "<b>heading</b>" and
								"<b>title/refpt</b>" markup in target conversion.</note>
						<pre>
              <b><i>Example: Source XML 3 - Handling of scenario 'leg:heading[@ln.user-displayed="false"]/title/refpt'</i></b>

&lt;leg:history id="A2006R84:ANALYSIS"&gt;
    &lt;leg:heading ln.user-displayed="false"&gt;
        &lt;title&gt;
            &lt;refpt id="A2006R84:ANALYSIS" type="ext" /&gt; 
            Contents - Land Transport (Driver Licensing) Amendment Rule 2006 
        &lt;/title&gt;
    &lt;/leg:heading&gt;



</pre>
						<pre>

              <b><i>Example: Target XML 3</i></b>


&lt;primlawhist:primlawhist xml:id="A2006R84:ANALYSIS"&gt;
	&lt;!-- output Suppressed--&gt;
	&lt;primlawhist:histgrp&gt;
		&lt;primlawhist:histitem&gt;

</pre>
					</li>
        	
        	<li>If the input document has scenarios <sourcexml>leg:heading/leg:histnote</sourcexml> and
							<sourcexml>leg:heading/glp:note</sourcexml> then move the
							<targetxml>note</targetxml> after <targetxml>heading</targetxml> within
							<targetxml>primlaw:level</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level&gt;
	....
	&lt;leg:heading&gt;
		&lt;title searchtype="SUBDIV-TITLE"&gt;
			&lt;refpt id="1999R100_D1_GENERAL_PROVISION_ABOUT_MEDICAL_CERTIFICATES" type="ext"&gt;&lt;/refpt&gt;[General Provision About Medical Certificates]
		&lt;/title&gt;
		&lt;leg:histnote&gt;
			&lt;p&gt;&lt;text&gt;[Omitted]&lt;/text&gt;&lt;/p&gt;
		&lt;/leg:histnote&gt;
		&lt;glp:note&gt;
			&lt;p&gt;&lt;text&gt;Dated at Wellington this 31st day of March 1999&lt;/text&gt;&lt;/p&gt;
		&lt;/glp:note&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:level&gt;


</pre>
						<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level&gt;
	&lt;ref:anchor id="1999R100_D1_GENERAL_PROVISION_ABOUT_MEDICAL_CERTIFICATES" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;title&gt;[General Provision About Medical Certificates]&lt;/title&gt;
	&lt;/heading&gt;
	&lt;note notetype="historical"&gt;
		&lt;bodytext&gt;
		&lt;p&gt;
			&lt;text&gt;[Omitted]&lt;/text&gt;
		&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;
	&lt;note&gt;
		&lt;bodytext&gt;
		&lt;p&gt;
			&lt;text&gt;Dated at Wellington this 31st day of March 1999.&lt;/text&gt;
		&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;
	....
&lt;/primlaw:level&gt;


            </pre>
					</li>
        	<li>If <sourcexml>leg:histnote</sourcexml> comes under the <sourcexml>leg:histnote</sourcexml> then it becomes <targetxml>note[@notetype="historical"]/bodytext/note[@notetype="historical"]/bodytext</targetxml>.</li>
        	<li>If input scenario is having "<b>leg:bodytext/p/leg:histnote</b>" then making <b>p</b>
						element a sibling of the <b>note[@notetype="historical"]</b>. </li>

        <li><sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> comes in
            following scenarios:  
				<ul>
				<li>If the elements <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml>
								occur simultaneously then <b>becomes</b>
								<targetxml>primlaw:bodytext</targetxml> and populated as: <pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:levelbody&gt;
	&lt;leg:bodytext&gt;
		&lt;p&gt;&lt;text&gt;These regulations are the Dairy Industry (Application Fees and Fonterra Levy) Regulations 2004&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                
</pre>
								<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:bodytext&gt;
	&lt;p&gt;&lt;text&gt;These regulations are the Dairy Industry (Application Fees and Fonterra Levy) Regulations 2004&lt;/text&gt;&lt;/p&gt;
&lt;/primlaw:bodytext&gt;

                </pre>
							</li> 

              <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
									<sourcexml>leg:level</sourcexml> then it becomes
									<targetxml>primlaw:level</targetxml> and populated as: <pre>  
 
&lt;leg:levelbody&gt;
	&lt;leg:level id="2004R131S3-1"&gt;
		&lt;leg:level-vrnt leveltype="subreg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 3 Levy"&gt;
			&lt;leg:heading&gt;
				&lt;desig&gt;&lt;designum&gt;3&amp;#x2003;&lt;/designum&gt;&lt;/desig&gt;
				&lt;title searchtype="REG-TITLE"&gt;&lt;refpt id="2004R131S3-1" type="ext"/&gt;Levy&lt;/title&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

          
                <b>Becomes</b>
                  

&lt;primlaw:level leveltype="subregulation" includeintoc="true" alternatetoccaption="reg 3 Levy"&gt;
	&lt;ref:anchor id="2004R131S3-1" anchortype="global"/&gt;
	&lt;heading&gt;
    	&lt;desig&gt;3&amp;#x2003;&lt;/desig&gt;
		&lt;title&gt;Levy&lt;/title&gt;
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
			&lt;heading&gt;
				&lt;title&gt;TREATY ON EXTRADITION BETWEEN THE GOVERNMENT OF AUSTRALIA AND THE GOVERNMENT OF THE REPUBLIC OF ECUADOR&lt;/title&gt;
			&lt;/heading&gt;
			....
		&lt;/primlaw:level&gt;
&lt;/primlaw:bodytext&gt;
    
                   </pre>
							</li>
				
			<li>If the input documents are having scenario
									<sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml> then it
								will becomes <targetxml>primlaw:bodytext/h</targetxml>
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
							</li>

          <li><sourcexml>leg:preamble</sourcexml>
								<b>Becomes</b>
								<targetxml>primlaw:level[@leveltype="preamble"]</targetxml> and
								populated as: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:preamble&gt;
	&lt;leg:bodytext searchtype="LEGISLATION"&gt;
		&lt;p&gt;&lt;text align="center"&gt;ORDER IN COUNCIL MAKING CONTINUING ORDER DIRECTING...&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;1909 No 1228&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;____________________________________&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;At the Court at Buckingham Palace, the 18th day of October,&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;1909.&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;PRESENT,&lt;/text&gt;&lt;/p&gt;
	&lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;

             
</pre>
								<pre>

              <b><i>Example: Target XML 1</i></b>
              

&lt;primlaw:level leveltype="preamble"&gt;
	&lt;primlaw:bodytext&gt;
		&lt;p&gt;&lt;text align="center"&gt;ORDER IN COUNCIL MAKING CONTINUING ORDER DIRECTING...&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;1909 No 1228&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;____________________________________&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;At the Court at Buckingham Palace, the 18th day of October,&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;1909.&lt;/text&gt;&lt;/p&gt;
		&lt;p&gt;&lt;text align="center"&gt;PRESENT,&lt;/text&gt;&lt;/p&gt;
	&lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

            </pre>
								<note>"<sourcexml>leg:preamble</sourcexml>" element mapped to
										'<targetxml>primlaw:level</targetxml>' with fixed attribute
									value <targetxml>'@leveltype="preamble"</targetxml>'.</note>
								<note>If source document having
										"<sourcexml>leg:preamble/leg:bodytext</sourcexml>" then it
										<b>becomes</b>
										"<targetxml>primlaw:level[@leveltype="preamble]/primlawbodytext</targetxml>".</note>
								
          </li>
					<li>When the <sourcexml>leg:bodytext</sourcexml> occurs between the
									<sourcexml>leg:history</sourcexml> and
									<sourcexml>leg:preamble</sourcexml> elements (i.e.
										"<i><b>leg:preamble/leg:bodytext/leg:history</b></i>") then
									<targetxml>primlawhist:primlawhist</targetxml> will becomes
								sibling of <targetxml>primlaw:bodytext</targetxml>. Please refer the
								below input and target examples for more clarification: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:preamble&gt;
     &lt;leg:bodytext searchtype="LEGISLATION"&gt;
        &lt;p&gt;&lt;text align="center"&gt;1901, No 531&lt;/text&gt;&lt;/p&gt;
		...
        &lt;leg:history id="1901I000_INDEX"&gt;
            &lt;leg:heading ln.user-displayed="false"&gt;&lt;title&gt;&lt;refpt id="1901I000_INDEX" type="ext"/&gt;Amending Legislation &lt;/title&gt;&lt;/leg:heading&gt;
           &lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Index&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
           ...
      &lt;/leg:history&gt;
     &lt;p&gt;&lt;text align="center"&gt;...Governor-General&lt;/text&gt;&lt;/p&gt;
  &lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;

								</pre>
						<pre>
              <b><i>Example: Target XML 1</i></b>
              

&lt;primlaw:level leveltype="preamble"&gt;
	&lt;primlaw:bodytext&gt;
		&lt;p&gt;&lt;text align="center"&gt;1901, No 531&lt;/text&gt;&lt;/p&gt;
		...
	&lt;/primlaw:bodytext&gt;
	&lt;primlawhist:primlawhist xml:id="1901I000_INDEX"&gt;
		&lt;heading&gt;
			&lt;title&gt;Amending Legislation&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histgrp&gt;
			&lt;primlawhist:histitem&gt;
				&lt;bodytext&gt;
					&lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Index&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
           			...
          	 	&lt;/bodytext&gt;
			&lt;/primlawhist:histitem&gt;
		&lt;/primlawhist:histgrp&gt;
	&lt;/primlawhist:primlawhist&gt;
	&lt;primlaw:bodytext&gt;
		&lt;p&gt;&lt;text align="center"&gt;...Governor-General&lt;/text&gt;&lt;/p&gt;
	&lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

            </pre>
							</li>
          
              <li><sourcexml>leg:history</sourcexml>
								<b>Becomes</b>
								<targetxml>primlawhist:primlawhist</targetxml> with optional child
								elements <sourcexml>leg:history/leg:heading</sourcexml>
								<b>becomes</b>
								<targetxml>primlawhist:primlawhist/heading</targetxml> with
								attributes <sourcexml>leg:history[@id]</sourcexml>
								<b>becomes</b>
								<targetxml>primlawhist:primlawhist[@xml:id]</targetxml> populated
								as: <pre>
              <b><i>Example: Source XML 1</i></b>


	&lt;leg:history id="A2009R46:ANALYSIS"&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="A2009R46:ANALYSIS" type="ext"/&gt;Contents - Abel Tasman National Park Bylaws 2009&lt;/title&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:history&gt;




</pre>
								<pre>

              <b><i>Example: Target XML 1</i></b>


	&lt;primlawhist:primlawhist xml:id="A2009R46:ANALYSIS"&gt;
		&lt;heading&gt;
			&lt;title&gt;&lt;ref:anchor id="A2009R46:ANALYSIS" anchortype="global"/&gt;Contents - Abel Tasman National Park Bylaws 2009&lt;/title&gt;
		&lt;/heading&gt;
		....
	&lt;/primlawhist:primlawhist&gt;

            </pre>
              	<note>Refer "<xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common_rosetta_refpt.dita</xref>" file for handling of
										<sourcexml>refpt</sourcexml> element.</note>
							</li>


<li><sourcexml>leg:history/p/text</sourcexml>
								<b>becomes</b>
								<targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text</targetxml>
								<pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:history&gt;
    &lt;leg:heading&gt;&lt;title&gt;Contents - Accident Compensation (Anaesthetists Costs) Regulations 1990, Amendment No. 3&lt;/title&gt;&lt;/leg:heading&gt;
    &lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
    &lt;leg:tableofamend&gt;
        &lt;table frame="none" colsep="0" rowsep="0"&gt;
			&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
			&lt;colspec colwidth="24*" colname="col1" colnum="1"/&gt;
			&lt;colspec colwidth="125*" colname="col2" colnum="2"/&gt;
			&lt;colspec colwidth="50*" colname="col3" colnum="3"/&gt;
			&lt;tbody&gt;
				&lt;row&gt;
					&lt;entry colname="col1"&gt;1&lt;/entry&gt;
					&lt;entry colname="col2"&gt;Title and commencement&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;entry colname="col1"&gt;2&lt;/entry&gt;
					&lt;entry colname="col2"&gt;Interpretation&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;entry colname="col1"&gt;3&lt;/entry&gt;
					&lt;entry colname="col2"&gt;Meaning of &amp;quot;specialist anaesthetist&amp;quot;&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;entry colname="col1"&gt;4&lt;/entry&gt;
					&lt;entry colname="col2"&gt;Corporation to pay certain costs&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;entry colname="col1"&gt;5&lt;/entry&gt;
					&lt;entry colname="col2"&gt;Prohibition on contributions to cost of treatment provided by crown health enterprises&lt;/entry&gt;
				&lt;/row&gt;
				&lt;row&gt;
					&lt;entry colname="col1"&gt;6&lt;/entry&gt;
					&lt;entry colname="col2"&gt;Revocation&lt;/entry&gt;
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
	&lt;heading&gt;&lt;title&gt;Contents - Accident Compensation (Anaesthetists Costs) Regulations 1990, Amendment No. 3&lt;/title&gt;&lt;/heading&gt;
	&lt;primlawhist:histgrp&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
	&lt;primlawhist:histgrp grptype="tableofamend"&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;table frame="none" colsep="0" rowsep="0"&gt;
					&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
					&lt;colspec colwidth="24*" colname="col1" colnum="1"/&gt;
					&lt;colspec colwidth="125*" colname="col2" colnum="2"/&gt;
					&lt;colspec colwidth="50*" colname="col3" colnum="3"/&gt;
					&lt;tbody&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;1&lt;/entry&gt;
							&lt;entry colname="col2"&gt;Title and commencement&lt;/entry&gt;
						&lt;/row&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;2&lt;/entry&gt;
							&lt;entry colname="col2"&gt;Interpretation&lt;/entry&gt;
						&lt;/row&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;3&lt;/entry&gt;
							&lt;entry colname="col2"&gt;Meaning of &amp;quot;specialist anaesthetist&amp;quot;&lt;/entry&gt;
						&lt;/row&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;4&lt;/entry&gt;
							&lt;entry colname="col2"&gt;Corporation to pay certain costs&lt;/entry&gt;
						&lt;/row&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;5&lt;/entry&gt;
							&lt;entry colname="col2"&gt;Prohibition on contributions to cost of treatment provided by crown health enterprises&lt;/entry&gt;
						&lt;/row&gt;
						&lt;row&gt;
							&lt;entry colname="col1"&gt;6&lt;/entry&gt;
							&lt;entry colname="col2"&gt;Revocation&lt;/entry&gt;
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
										<sourcexml>title/refpt</sourcexml> scenario since the ids
									are duplicate in element <sourcexml>leg:history</sourcexml> and
										<sourcexml>refpt</sourcexml>.</note>
							</li>
					
					<li><sourcexml>leg:history/p/glp:note</sourcexml>
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
			&lt;h&gt;History&lt;/h&gt; 
			&lt;p&gt;&lt;text&gt;Form 3: Words &amp;#x201C;Manager of the prison&amp;#x201D; substituted for omitted words...&lt;/text&gt;&lt;/p&gt;
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
					&lt;h&gt;History&lt;/h&gt; 
						&lt;p&gt;&lt;text&gt;Form 3: Words &amp;#x201C;Manager of the prison&amp;#x201D; substituted for omitted words...&lt;/text&gt;&lt;/p&gt;
				&lt;/note&gt;
			&lt;/bodytext&gt;
			....
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;

              </pre>
							</li>
              
              <li>The conversion of
									<sourcexml>leg:history/leg:tableofamend</sourcexml>
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
	&lt;title&gt;Contents - Accident Compensation (Anaesthetists Costs) Regulations 1990, Amendment No. 3&lt;/title&gt;
	&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
			&lt;table frame="none" colsep="0" rowsep="0"&gt;
				&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
				&lt;colspec colwidth="24*" colname="col1" colnum="1"/&gt;
				&lt;colspec colwidth="125*" colname="col2" colnum="2"/&gt;
				&lt;colspec colwidth="50*" colname="col3" colnum="3"/&gt;
				&lt;tbody&gt;
					&lt;row&gt;
						&lt;entry colname="col1"&gt;1&lt;/entry&gt;
						&lt;entry colname="col2"&gt;Title and commencement&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="col1"&gt;2&lt;/entry&gt;
						&lt;entry colname="col2"&gt;Interpretation&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="col1"&gt;3&lt;/entry&gt;
						&lt;entry colname="col2"&gt;Meaning of &amp;quot;specialist anaesthetist&amp;quot;&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="col1"&gt;4&lt;/entry&gt;
						&lt;entry colname="col2"&gt;Corporation to pay certain costs&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="col1"&gt;5&lt;/entry&gt;
						&lt;entry colname="col2"&gt;Prohibition on contributions to cost of treatment provided by crown health enterprises&lt;/entry&gt;
					&lt;/row&gt;
					&lt;row&gt;
						&lt;entry colname="col1"&gt;6&lt;/entry&gt;
						&lt;entry colname="col2"&gt;Revocation&lt;/entry&gt;
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
		&lt;heading&gt;
			&lt;title&gt;Contents - Accident Compensation (Anaesthetists Costs) Regulations 1990, Amendment No. 3&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text align="center"&gt;&lt;emph typestyle="bf"&gt;Contents&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
				&lt;table frame="none" colsep="0" rowsep="0"&gt;
					&lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
					&lt;colspec colwidth="24*" colname="col1" colnum="1"/&gt;
					&lt;colspec colwidth="125*" colname="col2" colnum="2"/&gt;
					&lt;colspec colwidth="50*" colname="col3" colnum="3"/&gt;
						&lt;tbody&gt;
							&lt;row&gt;
								&lt;entry colname="col1"&gt;1&lt;/entry&gt;
								&lt;entry colname="col2"&gt;Title and commencement&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="col1"&gt;2&lt;/entry&gt;
								&lt;entry colname="col2"&gt;Interpretation&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="col1"&gt;3&lt;/entry&gt;
								&lt;entry colname="col2"&gt;Meaning of &amp;quot;specialist anaesthetist&amp;quot;&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="col1"&gt;4&lt;/entry&gt;
								&lt;entry colname="col2"&gt;Corporation to pay certain costs&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="col1"&gt;5&lt;/entry&gt;
								&lt;entry colname="col2"&gt;Prohibition on contributions to cost of treatment provided by crown health enterprises&lt;/entry&gt;
							&lt;/row&gt;
							&lt;row&gt;
								&lt;entry colname="col1"&gt;6&lt;/entry&gt;
								&lt;entry colname="col2"&gt;Revocation&lt;/entry&gt;
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

              <li>
            
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
              	<note>If input documents is having scenario <sourcexml>leg:histnote/leg:histnote</sourcexml> then it <b>becomes</b> <targetxml>note[notetype="historical"]/bodytext/note[notetype="historical"]</targetxml>. Please refer the below markup for your reference:</note>
              	<pre>
            
              <b><i>Example: Source XML 1</i></b>

&lt;leg:histnote&gt;
	&lt;leg:heading&gt;&lt;title&gt;Hist.&lt;/title&gt;&lt;/leg:heading&gt;
	&lt;p&gt;&lt;text&gt;cl.4: Omitted and substituted on 12 November 2009 by ...&lt;/text&gt;&lt;/p&gt;
	&lt;leg:histnote&gt;
		&lt;leg:heading&gt;&lt;title&gt;Hist.&lt;/title&gt;&lt;/leg:heading&gt;
		&lt;p&gt;&lt;text&gt;cl.4: Omitted and substituted on 1 October 2009 by ...&lt;/text&gt;&lt;/p&gt;
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
		&lt;p&gt;&lt;text&gt;cl.4: Omitted and substituted on 12 November 2009 by ...&lt;/text&gt;&lt;/p&gt;
		&lt;note notetype="historical"&gt;
			&lt;heading&gt;
				&lt;title&gt;Hist.&lt;/title&gt;
			&lt;/heading&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text&gt;cl.4: Omitted and substituted on 1 October 2009 by  ...&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/note&gt;
	&lt;/bodytext&gt;
&lt;/note&gt;

</pre>    	
          </li>


          <li><sourcexml>leg:empleg</sourcexml>
								<b>Becomes</b>
								<targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>
								and populated as: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="APN210704_SCHEDULE_1"&gt;
	&lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION" 
	subdoc="true" toc-caption="Schedule 1 Maximum permissible levels for specified substances"&gt;
		&lt;leg:heading&gt;
			&lt;desig searchtype="SCH-NUM"&gt;&lt;refpt type="ext" id="APN210704_SCHEDULE_1"/&gt;Schedule 1&lt;/desig&gt;
			&lt;title align="left" searchtype="SCH-TITLE"&gt;Maximum permissible levels for specified substances&lt;/title&gt;
			&lt;leg:empleg&gt;
					&lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;cl.7&lt;/ci:content&gt;&lt;/ci:cite&gt;
			&lt;/leg:empleg&gt;
		&lt;/leg:heading&gt;
</pre>
								<pre>
              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="schedule" includeintoc="true"
	 alternatetoccaption="Schedule 1 Maximum permissible levels for specified substances"&gt;
		&lt;ref:anchor id="APN210704_SCHEDULE_1" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;desig&gt;Schedule 1&lt;/desig&gt;
		&lt;title&gt;Maximum permissible levels for specified substances&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlaw:authority&gt;
		&lt;primlaw:authority-item&gt;
			&lt;textitem&gt;
				&lt;lnci:cite type="legislation"&gt;
						&lt;lnci:content&gt;cl.7&lt;/lnci:content&gt;
				&lt;/lnci:cite&gt;
			&lt;/textitem&gt;
		&lt;/primlaw:authority-item&gt;
	&lt;/primlaw:authority&gt;

            </pre>
													
			<note>The <sourcexml>leg:empleg</sourcexml> comes under <sourcexml>leg:heading</sourcexml>
			element in Rosetta but as per New Lexis <targetxml>primlaw:authority</targetxml> should be
			moved between <targetxml>primlaw:level</targetxml> and <targetxml>heading</targetxml> elements.</note>

							</li>
          
          <li><sourcexml>bodytext</sourcexml>
								<b>Becomes</b>
								<targetxml>bodytext</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;bodytext searchtype="COMMENTARY"&gt;
	&lt;p&gt;&lt;text&gt;(Land Transport Rules are displayed under the authority of the Land Transport Safety Authority)&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;



</pre>
								<pre>
              <b><i>Example: Target XML 1</i></b>

&lt;bodytext&gt;
	&lt;p&gt;&lt;text&gt;(Land Transport Rules are displayed under the authority of the Land Transport Safety Authority)&lt;/text&gt;&lt;/p&gt;
&lt;/bodytext&gt;

            </pre>
							</li>
          

              <li>The conversion for <sourcexml>leg:levelstatus</sourcexml> is based on the following scenarios:
			  
                <ol>
                  <li>If the <sourcexml>leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
										with text in that then <b>becomes</b>
										<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/
											legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]</targetxml>

                  	<note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.levelstatus_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>

										<note>Include the <targetxml>@statuscode</targetxml> in
											element <targetxml>legisinfo:status</targetxml> to
											represent repealed legislation.</note>

										<pre>
              <b><i>Example: Source XML 1</i></b>



&lt;leg:level id="1959R109S15"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION REG" subdoc="true" leveltype="reg"  toc-caption="reg 15 Fee (Revoked)"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true" ln.user-displayed="false"&gt;(Repealed)&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		...
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

</pre>
										<pre>

              <b><i>Example: Target XML 1</i></b>
            

&lt;primlaw:level xml:id="1959R109S15" leveltype="regulation" includeintoc="true" alternatetoccaption="reg 15 Fee (Revoked)"&gt;
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
              <li>If the <sourcexml>leg:level/leg:levelinfo/leg:levelstatus[@isrepealed="true"]</sourcexml>
										with no text in that then <b>becomes</b>
										<targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/
											legisinfo:status[@statuscode="repealed"]</targetxml>. <pre>
              <b><i>Example: Source XML 2</i></b>

  
&lt;leg:level id="2010R44.BODY"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION REGULATION" leveltype="regulation"&gt;
		&lt;leg:levelinfo&gt;
			&lt;leg:levelstatus isrepealed="true"&gt;&lt;/leg:levelstatus&gt;
		&lt;/leg:levelinfo&gt;
		...
&lt;/leg:level&gt;

 </pre><pre>
              <b><i>Example: Target XML 2</i></b>
            

&lt;primlaw:level xml:id="2010R44.BODY" leveltype="regulation"&gt;
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
                	<li>If the <sourcexml>leg:levelstatus[@isrepealed="false"]</sourcexml> then suppress the element.</li>
			</ol>
              </li>
				</ul>
        </li>
        	<li>If all the <sourcexml>/leg:comntry/bodytext/p/text</sourcexml> within the
							<sourcexml>leg:comntry</sourcexml> are empty, spaces and/or non-breaking
						spaces then REMOVE the entire <sourcexml>leg:comntry</sourcexml>. <pre>
              <b><i>Example: Source XML</i></b>

  
&lt;leg:comntry subdoc="true" toc-caption="Notes"&gt;
	&lt;bodytext&gt;
    	&lt;p&gt;
        	&lt;text&gt; &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
        	&lt;text&gt; &lt;/text&gt;
        &lt;/p&gt;
        &lt;hrule/&gt;
	&lt;/bodytext&gt;
    &lt;bodytext&gt;
    	&lt;hrule/&gt;
        &lt;p&gt;
        	&lt;text&gt; &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
        	&lt;text&gt; &lt;/text&gt;
        &lt;/p&gt;
	&lt;/bodytext&gt;
&lt;/leg:comntry&gt;

 </pre><pre>
              <b><i>No Target Conversion</i></b>
            

 </pre>
						<note>This rule results in the ommission/removal of the
								<sourcexml>leg:comntry</sourcexml> element and its children so no
							output/target XML is displayed.</note>
					</li>
        </ul>
       </p>
    </section>
  	
  	<section>
  		<title>Changes</title>
  		<p>2013-09-30: <ph id="change_20130930_PS">Updated target example when <sourcexml>leg:history</sourcexml> Becomes <targetxml>primlawhist:primlawhist</targetxml> with optional child elements <sourcexml>leg:history/leg:heading</sourcexml>.</ph></p>
  		<p>2013-10-23: <ph id="change_20131023_SS">Added the rule for handling
						<sourcexml>leg:heading[@ln.user-displayed="false"]/title/refpt</sourcexml>
					scenario with their source and target examples.</ph></p>
  	</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ05_Regulation\Regulation-Body.dita  -->

	<!-- <xsl:template match="leg:body">

		...  Original Target XPath:  regulation:body   ...
		<regulation:body>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:body>

	</xsl:template> -->

	<!-- <xsl:template match="leg:info">

		...  Original Target XPath:  primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   ...
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<xsl:apply-templates select="@* | node()"/>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template> -->

	<!-- <xsl:template match="leg:info/@id">

		...  Original Target XPath:  primlaw:level/@xml:id   ...
		<primlaw:level>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template> -->

	<!-- <xsl:template match="@subseqdoc">

		...  Original Target XPath:  primlaw:levelinfo   ...
		<primlaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:levelinfo>

	</xsl:template> -->

	<!-- <xsl:template match="leg:info/leg:officialname">

		...  Original Target XPath:  legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle   ...
		<legisinfo:legisinfo>
			<legisinfo:names>
				<legisinfo:officialtitle>
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:officialtitle>
			</legisinfo:names>
		</legisinfo:legisinfo>

	</xsl:template> -->

	<!-- <xsl:template match="lnlink">

		...  Original Target XPath:  legisinfo:legisinfo   ...
		<legisinfo:legisinfo>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:legisinfo>

	</xsl:template> -->

	<!-- <xsl:template match="leg:info/leg:officialnum">

		...  Original Target XPath:  primlawinfo:identifier   ...
		<primlawinfo:identifier>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:identifier>

	</xsl:template> -->

	<!-- <xsl:template match="leg:info/leg:year">

		...  Original Target XPath:  primlawinfo:dates/primlawinfo:enactdate   ...
		<primlawinfo:dates>
			<primlawinfo:enactdate>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:enactdate>
		</primlawinfo:dates>

	</xsl:template> -->

	<!-- <xsl:template match="leg:year">

		...  Original Target XPath:  primlawinfo:enactdate[@year]   ...
		<primlawinfo:enactdate>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>

	</xsl:template> -->

	<!-- <xsl:template match="leg:level">

		...  Original Target XPath:  primlaw:level   ...
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template> -->

	<!-- <xsl:template match="@subdoc">

		...  Original Target XPath:  @includeintoc   ...
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template> -->

	<!-- <xsl:template match="@toc-caption">

		...  Original Target XPath:  @alternatetoccaption   ...
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template> -->

	<!-- <xsl:template match="@leveltype">

		...  Original Target XPath:  @leveltype  ...
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template> -->

	<!-- <xsl:template match="@searchtype">

		...  Original Target XPath:  primlaw:level   ...
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template> -->

	<!-- <xsl:template match="leg:level-vrnt">

		...  Original Target XPath:  regulation:regulation/regulation:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim   ...
		<regulation:regulation>
			<regulation:body>
				<primlaw:level>
					<primlaw:prelim>
						<xsl:apply-templates select="@* | node()"/>
					</primlaw:prelim>
				</primlaw:level>
			</regulation:body>
		</regulation:regulation>

	</xsl:template> -->

	<!-- <xsl:template match="/LEGDOC/leg:body/leg:prelim">

		...  Original Target XPath:  regulation:regulation/regulation:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim   ...
		<regulation:regulation>
			<regulation:body>
				<primlaw:level>
					<primlaw:prelim>
						<xsl:apply-templates select="@* | node()"/>
					</primlaw:prelim>
				</primlaw:level>
			</regulation:body>
		</regulation:regulation>

	</xsl:template>

	<xsl:template match="heading">

		...  Original Target XPath:  heading   ...
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		...  Original Target XPath:  title   ...
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:history">

		...  Original Target XPath:  primlawhist:primlawhist   ...
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:heading">

		...  Original Target XPath:  heading   ...
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@inline">

		...  Original Target XPath:  @inline   ...
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="refpt">

		...  Original Target XPath:  note   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:heading[@ln.user-displayed=&#34;false&#34;]/title/refpt">

		...  Original Target XPath:  note   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:heading/leg:histnote">

		...  Original Target XPath:  note   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:heading/glp:note">

		...  Original Target XPath:  note   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:histnote">

		...  Original Target XPath:  note[@notetype="historical"]/bodytext/note[@notetype="historical"]/bodytext   ...
		<note>
			<bodytext>
				<note>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</note>
			</bodytext>
		</note>

	</xsl:template>

	<xsl:template match="leg:levelbody">

		...  Original Target XPath:  primlaw:bodytext   ...
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		...  Original Target XPath:  primlaw:bodytext   ...
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/title">

		...  Original Target XPath:  primlaw:bodytext   ...
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/subtitle">

		...  Original Target XPath:  primlaw:bodytext/h   ...
		<primlaw:bodytext>
			<h>
				<xsl:apply-templates select="@* | node()"/>
			</h>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:preamble">

		...  Original Target XPath:  primlaw:level[@leveltype="preamble"]   ...
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:preamble/leg:bodytext">

		...  Original Target XPath:  primlaw:level[@leveltype="preamble]/primlawbodytext   ...
		<primlaw:level>
			<primlawbodytext>
				<xsl:apply-templates select="@* | node()"/>
			</primlawbodytext>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:history/leg:heading">

		...  Original Target XPath:  primlawhist:primlawhist/heading   ...
		<primlawhist:primlawhist>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history[@id]">

		...  Original Target XPath:  primlawhist:primlawhist[@xml:id]   ...
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/text">

		...  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/p/text   ...
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="title/refpt">

		...  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note   ...
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<note>
							<xsl:apply-templates select="@* | node()"/>
						</note>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="leg:history/p/glp:note">

		...  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem/bodytext/note   ...
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<bodytext>
						<note>
							<xsl:apply-templates select="@* | node()"/>
						</note>
					</bodytext>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="glp:note">

		...  Original Target XPath:  note   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="p">

		...  Original Target XPath:  note   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:history/leg:tableofamend">

		...  Original Target XPath:  primlaw:primlawhist/primlaw:histgrp[@grptype="tableofamend"]/heading   ...
		<primlaw:primlawhist>
			<primlaw:histgrp>
				<heading>
					<xsl:apply-templates select="@* | node()"/>
				</heading>
			</primlaw:histgrp>
		</primlaw:primlawhist>

	</xsl:template>

	<xsl:template match="leg:tableofamend/heading">

		...  Original Target XPath:  primlaw:primlawhist/primlaw:histgrp[@grptype="tableofamend"]/heading   ...
		<primlaw:primlawhist>
			<primlaw:histgrp>
				<heading>
					<xsl:apply-templates select="@* | node()"/>
				</heading>
			</primlaw:histgrp>
		</primlaw:primlawhist>

	</xsl:template>

	<xsl:template match="leg:tableofamend/table">

		...  Original Target XPath:  primlaw:primlawhist/primlaw:histgrp/primlaw:histitem/bodytext/table.   ...
		<primlaw:primlawhist>
			<primlaw:histgrp>
				<primlaw:histitem>
					<bodytext>
						<table.>
							<xsl:apply-templates select="@* | node()"/>
						</table.>
					</bodytext>
				</primlaw:histitem>
			</primlaw:histgrp>
		</primlaw:primlawhist>

	</xsl:template>

	<xsl:template match="@grptype=&#34;tableofamend&#34;">

		...  Original Target XPath:  primlawhist:histgrp   ...
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="leg:tableofamend">

		...  Original Target XPath:  note[notetype="historical"]   ...
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="leg:histnote/leg:histnote">

		...  Original Target XPath:  note[notetype="historical"]/bodytext/note[notetype="historical"]   ...
		<note>
			<bodytext>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</bodytext>
		</note>

	</xsl:template>

	<xsl:template match="leg:empleg">

		...  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   ...
		<primlaw:authority>
			<primlaw:authority-item>
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</primlaw:authority-item>
		</primlaw:authority>

	</xsl:template>

	<xsl:template match="bodytext">

		...  Original Target XPath:  bodytext   ...
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

	<xsl:template match="leg:levelstatus">

		...  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   ...
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelinfo/leg:levelstatus[@isrepealed=&#34;true&#34;]">

		...  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   ...
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:levelinfo/leg:levelstatus[@isrepealed=&#34;true&#34;]">

		...  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]   ...
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<legisinfo:legisinfo>
						<legisinfo:statusgroup>
							<legisinfo:status>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:status>
						</legisinfo:statusgroup>
					</legisinfo:legisinfo>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelstatus[@isrepealed=&#34;false&#34;]">

		...  Original Target XPath:  primlawhist:primlawhist   ...
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="/leg:comntry/bodytext/p/text">

		...  Original Target XPath:  primlawhist:primlawhist   ...
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template> -->

	<!-- <xsl:template match="leg:comntry">

		...  Original Target XPath:  primlawhist:primlawhist   ...
		<primlawhist:primlawhist>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:primlawhist>

	</xsl:template> -->

</xsl:stylesheet>