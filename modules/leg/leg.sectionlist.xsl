<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.sectionlist">
  <title>leg:sectionlist <lnpid>id-ST04-26846</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
								<sourcexml>leg:sectionlist</sourcexml> comes with following
								scenarios: <ol>
									<li><b>Rule for sectionlist appearing within leg:info</b>: <ul>
											<li>When <sourcexml>leg:info/leg:sectionlist</sourcexml> does not contain @id OR @id that
                                    DOES NOT contain the value "xxxxx_PROVLIST" (xxxxx can be any
                                    text), then create a new <targetxml>primlaw:level</targetxml>
                                    with <targetxml>leveltype="unclassified"</targetxml>. This level
                                    is solely for the sectionlist content within
                                        <sourcexml>leg:info</sourcexml>. Insert all sectionlist
                                    element content within this single unclassified level tags and
                                    table tags are retained as they are in the source. The
                                    conversion rule is <sourcexml>leg:sectionlist</sourcexml>
                                    becomes <targetxml>navaid:navigationaid</targetxml> with
                                    attribute <targetxml>@type="sectionlist"</targetxml> and
                                    required child <targetxml>bodytext</targetxml>. <note>If
                                            <sourcexml>leg:sectionlist</sourcexml> has information
                                        about <b>LawNow Home Page</b> and <b>Government Website</b>
                                        captured in table then it becomes
                                            <targetxml>navaid:navigationaid</targetxml> with
                                        attribute <targetxml>@type="links"</targetxml>.</note>
                                    <note>Refer <xref href="../../common_newest/Rosetta_table-LxAdv-table.dita">table</xref> for handling of
                                            <sourcexml>table</sourcexml></note>
                                    <note>Refer <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref> for handling of
                                            <sourcexml>remotelink</sourcexml></note>
                                    <pre>
                    
              <b><i>Source example based on AU content</i></b>

&lt;leg:info&gt;
	&lt;leg:sectionlist&gt;
       &lt;p&gt;
        &lt;table frame="none" pgwide="1"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colname="c1" colnum="1" colwidth="12*"/&gt;
                &lt;colspec colname="c2" colnum="2" colwidth="12*"/&gt;
                &lt;tbody&gt;
                    &lt;row&gt;&lt;entry align="left"&gt;&lt; dpsi="03AV" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_LAUNCH_CTH" service="DOC-ID"&gt;
					LawNow Home Page&lt;/remotelink&gt;&lt;/entry&gt;&lt;entry align="right"/&gt;
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

              <b><i>Target Example</i></b>


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
							&lt;entry align="right"/&gt;
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
              <b><i>Source example based on AU content</i></b>


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

              <b><i>Target Example</i></b>

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
                                    <note>In the above example 'inlineobject' element will be
                                        suppressed in conversion and corresponding product
                                        requirement should be created with an instruction to
                                        instantiate the image on retrieval based on
                                        information/semantic markup in the document.</note>
                                </li>
										</ul>
									</li>
									<li><b>Rule for <sourcexml>leg:sectionlist</sourcexml> having
												<sourcexml>@id</sourcexml></b>: <ul>
											<li>When <sourcexml>leg:sectionlist</sourcexml> contains
												@id AND @id contains value "xxxxx_PROVLIST" (xxxxx
												can be any text), then create a new
												<targetxml>primlaw:level</targetxml> with
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
                                            <targetxml>primlaw:level/heading/title</targetxml></li>
                                        <li>Rows with only one <sourcexml>entry</sourcexml>
                                            (alternatively, <sourcexml>entry</sourcexml> that
                                            feature <sourcexml>@namest</sourcexml>) and
                                                <sourcexml>@nameend</sourcexml> will map to: <ul>
                                                <li>Each <sourcexml>row</sourcexml> in table will
                                                  become <targetxml>toc-entry</targetxml> with child
                                                  <targetxml>desig</targetxml>
                                                  <note>If <sourcexml>row</sourcexml> contains only
                                                  one <sourcexml>entry</sourcexml> then map it to
                                                  <targetxml>desig</targetxml>.</note>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>Rows with two or more <sourcexml>entry</sourcexml> will
                                            map to: <ul>
                                                <li>Each <sourcexml>row</sourcexml> in table will
                                                  become <targetxml>toc-entry</targetxml> with child
                                                  <targetxml>desig</targetxml> and
                                                  <targetxml>title</targetxml>
                                                  <note>The first entry in a
                                                  <sourcexml>row</sourcexml> will become
                                                  <targetxml>desig</targetxml> followed by the
                                                  second entry which will map to
                                                  <targetxml>title</targetxml>.</note>
                                                </li>
                                            </ul>
                                            <note>Conversion needs to create nested
                                                  <targetxml>toc-entry</targetxml>.</note>
                                        </li>
                                        <li>
                                            <ul>
                                                <li><sourcexml>entry/remotelink</sourcexml>
                                                  <b>becomes</b>
                                                  <targetxml>title/ref:crossreference</targetxml>.
                                                  <note>If there is only one
                                                  <sourcexml>row</sourcexml> then
                                                  <sourcexml>entry/remotelink</sourcexml> becomes
                                                  <targetxml>desig/ref:crossreference</targetxml>
                                                  with required child
                                                  <targetxml>ref:content</targetxml>.</note>
                                                  <ul>
                                                  <li>Use case:
                                                  <sourcexml>remotelink[@service='DOC-ID']</sourcexml>
                                                  becomes <targetxml>ref:crossreference</targetxml>
                                                  with required child
                                                  <targetxml>ref:content</targetxml> and attribute
                                                  <sourcexml>remotelink/@xml:lang</sourcexml>
                                                  becomes
                                                  <targetxml>ref:content/@xml:lang</targetxml>. For
                                                  multiple, immediate, sibling occurrences without
                                                  intermediary text, group within a
                                                  <targetxml>ref:crossreferencegroup</targetxml>
                                                  parent except for
                                                  <targetxml>lnci:content</targetxml>.<ul>
                                                  <li>The value of
                                                  <targetxml>ref:crossreference/@crossreferencetype</targetxml>
                                                  should be set to "seeAlso".</li>
                                                  <li>
                                                  <p> Create
                                                  <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml>
                                                  with attributes and children as follows: <ul>
                                                  <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml>
                                                  or <sourcexml>@remotekey1="DOCID"</sourcexml> then <ul>
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
                                                  </p>
                                                  <note>If <sourcexml>remotelink/@dpsi</sourcexml>
                                                  is not present, use value from
                                                  <sourcexml>docinfo:dpsi/@id-string</sourcexml> or
                                                  capture value from the LBU manifest file.</note>
                                                  <note><targetxml>ref:locator/@anchoridref</targetxml>
                                                  that begins with a number must have an underscore
                                                  added at start. Also apply other identifier data
                                                  type format as used for
                                                  <targetxml>xml:id</targetxml> and
                                                  <targetxml>ref:anchor/@id</targetxml> (e.g. change
                                                  colon to underscore).</note>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <pre>
              <b><i>Source example based on AU content</i></b>


          &lt;leg:sectionlist id="NSW_ACT_2007-93_PROVLIST"&gt;
    &lt;leg:heading&gt;
        &lt;title&gt;&lt;refpt id="NSW_ACT_2007-93_PROVLIST" type="ext"/&gt;List of
            provisions&lt;/title&gt;
    &lt;/leg:heading&gt;
    &lt;p&gt;
        &lt;table frame="none"&gt;
            &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
                &lt;colspec colwidth="3*" colname="c1" colnum="1"/&gt;
                &lt;colspec colwidth="12*" colname="c2" colnum="2"/&gt;
                &lt;tbody&gt;
                    &lt;row&gt;
                        &lt;entry namest="c1" nameend="c2"&gt;
                            &lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876"
                                refpt="NSW_ACT_2007-93_ACTPT1"&gt;Part
                                1&amp;mdash;Preliminary&lt;/remotelink&gt;
                        &lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;1&lt;/entry&gt;
                        &lt;entry&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876"
                            refpt="NSW_ACT_2007-93_SEC1"&gt;Name of
                            Act&lt;/remotelink&gt;&amp;#160;&lt;lnlink status="valid"
                                service="SEARCH"
                                scope="All Subscribed Australian Cases and Commentary"
                                scope-protocol="combined-source-name"
                                &gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image"
                                    filename="mb.gif" attachment="web-server"
                                    alttext="click to find cases &amp;amp; commentary"
                                /&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch"
                                    value="true"/&gt;&lt;param name="searchString"
                                        value="LOCAL COURT ACT 2007 w/s LEG-REF(1)"
                                    /&gt;&lt;/api-params&gt;&lt;/lnlink&gt;&lt;/entry&gt;
                    &lt;/row&gt;
                    &lt;row&gt;
                        &lt;entry&gt;2&lt;/entry&gt;
                        &lt;entry&gt;&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="ABCD_9876"
                            refpt="NSW_ACT_2007-93_SEC2"
                            &gt;Commencement&lt;/remotelink&gt;&amp;#160;&lt;lnlink status="valid"
                                service="SEARCH"
                                scope="All Subscribed Australian Cases and Commentary"
                                scope-protocol="combined-source-name"
                                &gt;&lt;marker&gt;&lt;inlineobject width="21px" type="image"
                                    filename="mb.gif" attachment="web-server"
                                    alttext="click to find cases &amp;amp; commentary"
                                /&gt;&lt;/marker&gt;&lt;api-params&gt;&lt;param name="expressSearch"
                                    value="true"/&gt;&lt;param name="searchString"
                                        value="LOCAL COURT ACT 2007 w/s LEG-REF(2)"
                                    /&gt;&lt;/api-params&gt;&lt;/lnlink&gt;&lt;/entry&gt;
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
            &lt;toc-entry&gt;
            &lt;heading&gt;
            &lt;desig&gt;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;Part 1-Preliminary&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="NSW_ACT_2007-93_ACTPT1"&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name ="DOCID"/&gt;
					&lt;ref:key-value value ="1111-ABCD_9876"/&gt;
				&lt;/ref:locator-key&gt;						
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
	&lt;/desig&gt;	
	&lt;/heading&gt;	
&lt;toc-entry&gt;
    &lt;heading&gt;
        &lt;desig&gt;1&lt;/desig&gt;
        &lt;title&gt;
        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
            &lt;ref:content&gt;Name of Act&lt;/ref:content&gt;                                        
            &lt;ref:locator anchoridref="NSW_ACT_2007-93_SEC1"&gt;                                            
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name ="DOCID"/&gt;
                    &lt;ref:key-value value ="1111-ABCD_9876"/&gt;
                &lt;/ref:locator-key&gt;						
            &lt;/ref:locator&gt;                                 
        &lt;/ref:crossreference&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
&lt;/toc-entry&gt;
&lt;toc-entry&gt;
    &lt;heading&gt;
        &lt;desig&gt;2&lt;/desig&gt;
        &lt;title&gt;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
                &lt;ref:content&gt;Commencement&lt;/ref:content&gt;                                        
                &lt;ref:locator anchoridref="NSW_ACT_2007-93_SEC2"&gt;                                            
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name ="DOCID"/&gt;
                        &lt;ref:key-value value ="1111-ABCD_9876"/&gt;
                    &lt;/ref:locator-key&gt;						
                &lt;/ref:locator&gt;                                 
            &lt;/ref:crossreference&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
&lt;/toc-entry&gt;
&lt;/toc-entry&gt;            
            ....
	&lt;/toc&gt;
 &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

            </pre>
                                    <note>In the above example <sourcexml>lnlink</sourcexml> will be
                                        dropped from conversion. Also, added the attribute
                                            <targetxml>@toctype="sectionlist"</targetxml> to
                                            <targetxml>toc</targetxml>.</note>
                                    <note>If <sourcexml>table</sourcexml> contains only one
                                            <sourcexml>row</sourcexml> and that
                                            <sourcexml>row</sourcexml> contains only one
                                            <sourcexml>entry</sourcexml>, then replace the
                                            <sourcexml>table</sourcexml> with
                                            <targetxml>desig</targetxml> containing the contents of
                                            <sourcexml>entry</sourcexml>.</note>
                                    <pre>

              <b><i>Source example based on AU content (Having single entry within a row)</i></b>


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
					&lt;row&gt;
						&lt;entry namest="c1" nameend="c2"&gt;&lt;remotelink service="DOC-ID" dpsi="1111" docidref="ABCD_9876" remotekey1="REFPTID" refpt="ACT_REG_1991-10_PT1"&gt;Part&amp;#160;1 Preliminary&lt;/remotelink&gt;&lt;/entry&gt;
					&lt;/row&gt;
					.....
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
			&lt;toc-entry&gt;
			   &lt;heading&gt;
				&lt;desig&gt;
					&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
						&lt;ref:content&gt;Part&amp;#160;1 Preliminary&lt;/ref:content&gt;
						&lt;ref:locator anchoridref="ACT_REG_1991-10_PT1"&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="DOC-ID"/&gt;
								&lt;ref:key-value value="1111-ABCD_9876"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:crossreference&gt;
				  &lt;/desig&gt;
				&lt;/heading&gt;
			&lt;/toc-entry&gt;
			....
		&lt;/toc&gt;
	&lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
    
</pre>
                                </li>
										</ul>
									</li>
								</ol>
							</li>
        </ul>
      </section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.sectionlist.dita  -->
	<xsl:message>leg.sectionlist.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:sectionlist">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info/leg:sectionlist">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  navaid:navigationaid   -->
		<navaid:navigationaid>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:navigationaid>

	</xsl:template>

	<xsl:template match="table">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:sectionlist/@id">

		<!--  Original Target XPath:  primlaw:level[@leveltype="table-of-contents"]/@xml:id   -->
		<primlaw:level>
			<xsl:attribute name="xml:id">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:sectionlist/leg:heading/title">

		<!--  Original Target XPath:  primlaw:level/heading/title   -->
		<primlaw:level>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="entry">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="@namest">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="@nameend">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="row">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>

	<xsl:template match="entry/remotelink">

		<!--  Original Target XPath:  title/ref:crossreference   -->
		<title>
			<ref:crossreference>
				<xsl:apply-templates select="@* | node()"/>
			</ref:crossreference>
		</title>

	</xsl:template>

	<xsl:template match="remotelink[@service='DOC-ID']">

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="remotelink/@xml:lang">

		<!--  Original Target XPath:  ref:content/@xml:lang   -->
		<ref:content>
			<xsl:attribute name="xml:lang">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:content>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;DOC-ID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;DOCID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@dpsi">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@refpt">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey2">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPTID&#34;">

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@docidref">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string">

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="lnlink">

		<!--  Original Target XPath:  @toctype="sectionlist"   -->
		<xsl:attribute name="toctype">
			<xsl:text>sectionlist</xsl:text>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>