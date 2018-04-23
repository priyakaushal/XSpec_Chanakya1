<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
						xmlns:case="http://www.lexis-nexis.com/glp/case"
						xmlns:ci="http://www.lexis-nexis.com/ci"
						xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
						xmlns:glp="http://www.lexis-nexis.com/glp"
						xmlns:in="http://www.lexis-nexis.com/glp/in"
						xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
						xmlns:leg="http://www.lexis-nexis.com/glp/leg"
						xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
						xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
						xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"

exclude-result-prefixes="xs dita ci docinfo glp leg case index source_cttr lnci in ref">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_remotelink-to-LexisAdvance_ref.crossreference">
	  <title><sourcexml>remotelink</sourcexml> to <targetxml>ref:crossreference</targetxml>
		<lnpid>id-CCCC-10465</lnpid></title>
	  <body>
		<section>
		  <title>Instructions <i>[common element]</i></title>
		  <note>This topic is used in numerous conversion instructions for several LBUs. It is a
			shared topic rather than duplicated to ensure consistency and accuracy. The xml
			snippets contained in this topic reflect markup needed for the Apollo image handling
			application. The UK is the first LBU to move from Apollo to the Blobstore
			application for image handling. Therefore, if this is a UK conversion instruction
			document, please refer to the following topics for correct image handling markup.<ul>
			  <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
				<targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
				images (id-CCCC-10542)</li>
			  <li><sourcexml>inlineobject</sourcexml> to
				<targetxml>ref:inlineobject</targetxml> for BLOBSTORE images
				(id-CCCC-10540)</li>
			  <li><sourcexml>link[@filename]</sourcexml> to
				<targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE
				images (id-CCCC-10541)</li>
			</ul></note>
		  <p>Regardless of which of the use cases described below occurs, the attribute <sourcexml>remotelink/@status</sourcexml> is always suppressed, it is never output to the target document.</p>
		  <ul>
			<li>Use case: <sourcexml>remotelink[@service='SEARCH']</sourcexml>. The service type
			  "SEARCH" is not supported in New Lexis. Unless
				<sourcexml>remotelink[@hrefclass='http']</sourcexml> it is recommended that such
			  remotelink elements be copied into an xml comment. This retains the content for future
			  analysis without creating unsupported target markup. The risk of this approach is the loss
			  of ref:marker text content from display to the user. If there is a
				<sourcexml>remotelink/@hrefclass]</sourcexml> attribute equal to "http" then the
			  remotelink is <b>not</b> copied into a comment but is instead converted to either a
				<targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>, see below for details. </li>
			<li>Use case: <sourcexml>remotelink[@service='QUERY']</sourcexml>: <ul>
				<li>In General, convert the pcdata, but suppress the <sourcexml>remotelink</sourcexml>
				  tag and its attributes.</li>
				<li>
				  <p>For the following exceptional contexts, do not convert the pcdata of
					  <sourcexml>remotelink[@service="QUERY"]</sourcexml>. Instead, suppress both the
					pcdata and <sourcexml>remotelink</sourcexml> markup: <ul>
					  <li>
						<p> docinfo:assoc-links/remotelink[@service="QUERY"] </p>
						<note>For CA05-CA07 please follow <xref href="../common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita"><sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml></xref></note>
					  </li>
					  <li>
						<p> docinfo:assoc-links-grp/remotelink[@service="QUERY"] </p>
					  </li>
					  <li>
						<p> NZ-Cases only:   glp:note/remotelink[@service="QUERY"]</p>
					  </li>
					</ul></p>
				</li>
			  </ul><p>A corresponding product requirement shall be created with an instruction to build
				the link on retrieval based on semantic markup in the document. </p></li>
			<li>Use case: <sourcexml>remotelink[@service='DOC-ID']</sourcexml> becomes
				<targetxml>ref:crossreference</targetxml> with required child
				<targetxml>ref:content</targetxml> and attribute
				<sourcexml>remotelink/@xml:lang</sourcexml> becomes
				<targetxml>ref:content/@xml:lang</targetxml>. For multiple, immediate, sibling
			  occurrences without intermediary text, group within a
				<targetxml>ref:crossreferencegroup</targetxml> parent except for
				<targetxml>lnci:content</targetxml> and <targetxml>title</targetxml>.<ul>
				<li>The value of <targetxml>ref:crossreference/@crossreferencetype</targetxml> should be
				  set to "seeAlso".</li>
				<li>
				  <p> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with
					attributes and children as follows: <ul>
					  <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> or
						  <sourcexml>@remotekey1="DOCID"</sourcexml> then <ul>
						  <li><targetxml>ref:key-name/@name</targetxml> will have the value
							"DOC-ID".</li>
						  <li><targetxml>key-value/@value</targetxml> will be the value of
							  <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
							  <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which
							ever is present (if both are present, use
							<sourcexml>@remotekey2</sourcexml>).</li>
						</ul></li>
					  <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> or
						  <sourcexml>@remotekey1="REFPT"</sourcexml> then <ul>
						  <li><targetxml>ref:key-name/@name</targetxml> will have the value
							"DOC-ID".</li>
						  <li><targetxml>ref:key-value/@value</targetxml> will be the value of
							  <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
							  <sourcexml>@docidref</sourcexml>.</li>
						  <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
							  <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which
							ever is present (if both are present, use
							<sourcexml>@refpt</sourcexml>).  If <sourcexml>@refpt</sourcexml> is empty or only whitespace, do not output a <targetxml>@anchoridref</targetxml>.</li>
						</ul></li>
					</ul>
				  </p>
				  <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
					  <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
					manifest file.</note>
				  <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
					have an underscore added at start. Also apply other identifier data type format as
					used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
					(e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
					Handling Pattern Restrictions", if that section exists in this CI.</note>
				</li>
			  </ul>
			</li>
			<li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml> or
				<sourcexml>remotelink[@href]</sourcexml>
			  <!-- SP: added 2013-10-03 -->
			  <b>and</b> the data content of the remotelink is a URL. That is, the data content of
				<sourcexml>remotelink</sourcexml> starts with text such as "http://...", "https://...",
			  "www.some.domain", or is of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>url</targetxml>, and populated as follows:<ul>
				<li>
				  <p>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present in the
					source document, the <sourcexml>remotelink[@hrefclass="http"]</sourcexml> becomes
					  <targetxml>url</targetxml> and <sourcexml>@href</sourcexml> becomes
					  <targetxml>@normval</targetxml>. The value of the attribute
					  <sourcexml>@hrefclass</sourcexml> is prepended to the value of
					  <sourcexml>@href</sourcexml> with the addition of '://' to form the
					  <targetxml>@normval</targetxml>.</p><ul>
					<li>Exception: If content of <sourcexml>@hrefclass</sourcexml> is already present in
						<sourcexml>@href</sourcexml> then do not concatenate. Populate
						<targetxml>@normval</targetxml> with content of
					  <sourcexml>@href</sourcexml>.</li>
				  </ul>
				</li>
				<li>
				  <p>When <sourcexml>remotelink/@hrefclass</sourcexml> does not exist in
					  <sourcexml>remotelink</sourcexml> then nothing will be prepended to the
					  <sourcexml>@href</sourcexml> value. That is, <sourcexml>remotelink</sourcexml>
					with <sourcexml>@href</sourcexml> attribute but no <sourcexml>@hrefclass</sourcexml>
					attribute converts to <targetxml>url</targetxml> where the
					  <targetxml>@normval</targetxml> attribute is set to
					  <sourcexml>remotelink/@href</sourcexml>. </p>
				</li>
			  </ul>
			</li>
			<li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml>
			  <b>but</b> the data content of the remotelink is <b>not</b> a URL. That is, the data
			  content of <sourcexml>remotelink</sourcexml>
			  <b>does not</b> start with text such as "http://...", "https://...", "www.some.domain",
			  nor is it of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>ref:lnlink</targetxml> with
			  children <targetxml>ref:marker</targetxml> and <targetxml>ref:locator</targetxml>,
			  populated as follows: <ol>
				<li>The <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
				<li>The contents of <sourcexml>remotelink</sourcexml> becomes the contents of child
					<targetxml>ref:lnlink/ref:marker</targetxml>. Any subelements (such as
					<sourcexml>emph</sourcexml> and <sourcexml>inlineobject</sourcexml>) are converted
				  as described elsewhere by instructions given for those specific elements. </li>
				<li>The child <targetxml>ref:lnlink/ref:locator</targetxml> is created, and within it
				  the child <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> is created,
				  and within it the children
					<targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-name</targetxml> and
					<targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value</targetxml> are
				  created.</li>
				<li>The <targetxml>ref:key-name/@name</targetxml> attribute is set to "URL".</li>
				<li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present,
					<targetxml>ref:key-value/@value</targetxml> is set to the combined value of
					<sourcexml>remotelink/@hrefclass</sourcexml>, followed by "://", followed by the
				  value of <sourcexml>remotelink/@href</sourcexml>.<ul>
					<li>Exception: If content of <sourcexml>@hrefclass</sourcexml> is already present in
						<sourcexml>@href</sourcexml> then do not concatenate. Populate
						<targetxml>@value</targetxml> with content of <sourcexml>@href</sourcexml>.</li>
				  </ul></li>
				<li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is <b>not</b> present,
					<targetxml>ref:key-value/@value</targetxml> is set to the value of
					<sourcexml>remotelink/@href</sourcexml>.</li>
			  </ol>
			</li>
			<li>Use case: <sourcexml>remotelink[@href]</sourcexml>
			</li>
			<li>If <sourcexml>remotelink</sourcexml> doesn't have any attributes, then
				<sourcexml>remotelink</sourcexml> should be suppressed, but any elements contained
			  within <sourcexml>remotelink</sourcexml> should be processed according to the appropriate
			  instructions.</li>
		  </ul>
		  <note><p>In the source documents, <sourcexml>remotelink</sourcexml> is used for two distinct
			purposes:</p><ul>
			  <li>To create an inter-document link; a link to a location outside the containing
				document.</li>
			  <li>To create link for a traditional URL.</li>
			</ul>
		  </note>
		  <p>If <sourcexml>refpt</sourcexml> and <sourcexml>remotelink</sourcexml> occurs as adjacent
			siblings then refer to the instructions for converting <sourcexml>endnote</sourcexml>.</p>
      
		  <note>
			<b>Exception for NZ17CC:</b> When <sourcexml>remotelink</sourcexml> is a child of
				<sourcexml>emph</sourcexml> then conversion should suppress <sourcexml>emph</sourcexml>
			  element only and process <sourcexml>remotelink</sourcexml> as per above instruction. See
			  example 17.</note>
		</section>
		<example>
		  <title>Source XML 1: showing service type "DOC-ID" converted to ref:crossreference.</title>
		  <codeblock>
					
	&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0062"
				refpt="QLD_ACT_1992-48_20050831"&gt;31/8/2005 to
				18/11/2005&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 1</title>
		  <codeblock>
				                              
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0062-QLD_ACT_1992-48_20050831"/&gt;
				&lt;/ref:locator-key&gt;		
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
			</codeblock>
		</example>
		<example>
		  <title>Source XML 2: showing <sourcexml>remotelink/@xml:lang</sourcexml>.</title>
		  <codeblock>
				
&lt;remotelink dpsi="03JC" remotekey1="DOC-ID" remotekey2="currentness" 
service="DOC-ID" xml:lang="en"&gt;Current&amp;#x20;to&amp;#x20;June&amp;#x20;23,&amp;#x20;2012&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 2</title>
		  <codeblock>
				                              
	&lt;ref:crossreference&gt;                                        
		&lt;ref:content xml:lang="en"&gt;Current&amp;#x20;to&amp;#x20;June&amp;#x20;23,&amp;#x20;2012&lt;/ref:content&gt;
    &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
         &lt;ref:key-name name="DOC-ID"/&gt;
         &lt;ref:key-value value="03JC-currentness"/&gt;
     &lt;/ref:locator-key&gt;
   &lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
				</codeblock>
		</example>
		<example>
		  <title>Source XML 3: showing service type "DOC-ID" converted to ref:crossreference (multiple,
			immediate siblings).</title>
		  <codeblock>
				           
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="0062" docidref="ABCD_5641"      
            refpt="QLD_ACT_1992-48_20050831"&gt;31/8/2005 to
            18/11/2005&lt;/remotelink&gt;
&lt;remotelink service="DOC-ID" remotekey1="DOC-ID" dpsi="0000"
            refpt="QLD_ACT_1992-48_00000000"&gt;31/8/2005 to
            18/11/2005&lt;/remotelink&gt;
&lt;remotelink service="DOC-ID" remotekey1="REFPTID" dpsi="1111" docidref="EFGH_2468"  
            refpt="QLD_ACT_1992-48_11111111"&gt;31/8/2005 to
            18/11/2005&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 3</title>
		  <codeblock>
				
&lt;ref:crossreferencegroup&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="QLD_ACT_1992-48_20050831"&gt;                                             
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0062-ABCD_5641"/&gt;
				&lt;/ref:locator-key&gt;			
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0000-QLD_ACT_1992-48_00000000"/&gt;
				&lt;/ref:locator-key&gt;			
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;31/8/2005 to 18/11/2005&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="QLD_ACT_1992-48_11111111"&gt;                                            
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="1111-EFGH_2468"/&gt;
				&lt;/ref:locator-key&gt;	
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;
&lt;/ref:crossreferencegroup&gt;
				</codeblock>
		</example>
		<example>
		  <title>Source XML 4: showing remotelink/sup</title>
		  <codeblock>
				
&lt;remotelink remotekey1="REFPTID" service="DOC-ID" dpsi="0062" docidref="ABCD_5641" refpt="VIC_ACT_6231_FN31"&gt;
&lt;sup&gt;31&lt;/sup&gt;
&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 4</title>
		  <codeblock>
				
&lt;ref:crossreferencegroup&gt;
	&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;&lt;sup&gt;31&lt;/sup&gt;&lt;/ref:content&gt;
			&lt;ref:locator anchoridref="VIC_ACT_6231_FN31"&gt;                                                
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0062-ABCD_5641"/&gt;
				&lt;/ref:locator-key&gt;                                                    
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;                                    
&lt;/ref:crossreferencegroup&gt;

				</codeblock>
		</example>
		<example>
		  <title>Source XML 5: for link to URL, with URL as content</title>
		  <codeblock>
				
&lt;remotelink href="www.statedevelopment.qld.gov.au" hrefclass="http" newwindow="YES"&gt;www.statedevelopment.qld.gov.au&lt;/remotelink&gt;

&lt;!-- The following illustrates scenario where content of @hrefclass is already present in @href and so values are not concatenated for target --&gt;

&lt;remotelink href="http://www.acmecorp.com" hrefclass="http" newwindow="YES"&gt;www.acmecorp.com&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 5: for link to URL, with URL as content</title>
		  <codeblock>
				
&lt;url normval="http://www.statedevelopment.qld.gov.au"&gt;www.statedevelopment.qld.gov.au&lt;/url&gt;

&lt;url normval="http://www.acmecorp.com"&gt;www.acmecorp.com&lt;/url&gt;

				</codeblock>
		</example>
		<note>As shown here in Example 6, the use of an @href attribute without @hrefclass, where 
			the @href attribute does not itself contain an hrefclass, ("http://" for example),
			is not advised because the resulting @normval would not contain
			the hrefclass. Normalized values should be consistent in providing the href class.
			The link to the target may not work.</note>
		<example>
		  <title>Source XML 6: for link to URL with no hrefclass attribute, and with URL as
			content</title>
		  <codeblock>
				
&lt;remotelink href="www.asx.com" newwindow="YES" service="SEARCH"&gt;www.asx.com&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 6: for link to URL with no hrefclass attribute, and with URL as
			content</title>
		  <codeblock>
				
&lt;url normval="www.asx.com"&gt;www.asx.com&lt;/url&gt;

				</codeblock>
		</example>
		<example>
		  <title>Source XML 7: for link to URL, with non-URL text content</title>
		  <codeblock>
				
&lt;remotelink href="www.asx.com" hrefclass="http" newwindow="YES" service="SEARCH" status="valid"&gt;Australian Securities Exchange (ASX)&lt;/remotelink&gt;

&lt;!-- The following illustrates scenario where content of @hrefclass is already present in @href and so values are not concatenated for target --&gt;

&lt;remotelink href="http://www.acmecorp.com" hrefclass="http" newwindow="YES"&gt;Acme Corporation&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 7: for link to URL, with non-URL text content</title>
		  <codeblock>
				
&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Australian Securities Exchange (ASX)&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.asx.com"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Acme Corporation&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.acmecorp.com"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

				</codeblock>
		</example>
		<note>Please note that XML comments need to be added around markup <targetxml>ref:marker
		  </targetxml> if it is in <targetxml>ref:lnlink@service=”URL”</targetxml>and the
			<targetxml>ref:key-value@value</targetxml> starts-with
			(<b>'http://www.lexisnexis.com/au/legal/api'</b>). Please see the below target xml for more
		  details. </note>

		<example>
		  <title>Source XML 7a: for link to URL, with non-URL text content</title>
		  <codeblock>

    &lt;remotelink href=”www.lexisnexis.com/au/legal/api/version1/sr?csi=357205&amp;sr=FILE%2DCODE(%28%23LL00093CF%23+OR+%23LL000CQNJ%23%29)&amp;shr=T&amp;oc=00254"
 hrefclass="http" newwindow="YES" service="SEARCH" status="valid"&gt;Search LexisNexisAU&lt;/remotelink&gt;

		  </codeblock>
		</example>

		<example>
		  <title>Target XML 7a: for link to URL, with non-URL text content</title>
		  <codeblock>

&lt;ref:lnlink service="URL"&gt;
  &lt;!--&lt;ref:marker&gt;Search LexisNexisAU&lt;/ref:marker&gt;--&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.lexisnexis.com/au/legal/api/version1/sr?csi=357205&amp;sr=FILE%2DCODE(%28%23LL00093CF%23+OR+%23LL000CQNJ%23%29)&amp;shr=T&amp;oc=00254"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

		  </codeblock>
		</example>

		<example>
		  <title>Source XML 8: for link to URL with no hrefclass attribute, and with non-URL text
			content</title>
		  <codeblock>
				
&lt;remotelink href="http://www.legislation.vic.gov.au/Domino/Web_Notes/LDMS/PubStatbook.nsf/b05145073fa2a882ca256da4001bc4e7/DDB2D286D7B9C8E2CA2578C6001CCC82/$FILE/11-058sr%20authorised.pdf" service="URL" newwindow="YES"&gt;Government Website&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 8: for link to URL with no hrefclass attribute, and with non-URL text
			content</title>
		  <codeblock>
				
&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;Government Website&lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.legislation.vic.gov.au/Domino/Web_Notes/LDMS/PubStatbook.nsf/b05145073fa2a882ca256da4001bc4e7/DDB2D286D7B9C8E2CA2578C6001CCC82/$FILE/11-058sr%20authorised.pdf"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

				</codeblock>
		</example>
		<example>
		  <p>
			<ul>
			  <li>If <sourcexml>remotelink[@service= ‘DOC-ID’]</sourcexml> is a child of
				  <sourcexml>glp:note</sourcexml>; glp:note becomes
				  <targetxml>note/bodytext/p/text</targetxml>, <sourcexml>remotelink[@service=
				  ‘DOC-ID’]</sourcexml> becomes <targetxml>ref:crossreference</targetxml> (see
				conversion rules in remotelink section). </li>
			</ul>
		  </p>
		  <title>Source XML 9:</title>
		  <codeblock>

&lt;glp:note&gt;
    &lt;remotelink dpsi="006P" refpt="AFL.FL.FLA75.PT1_2" remotekey1="REFPTID" service="DOC-ID"  docidref="ABCD_5641" status="unval"&gt;
        Next page in this legislation
    &lt;/remotelink&gt;
&lt;/glp:note&gt;

		  </codeblock>
		  <title>Target XML 9</title>
		  <codeblock>

&lt;note&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;					                            
                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
                    &lt;ref:content&gt;Next page in this legislation&lt;/ref:content&gt;                                        
                    &lt;ref:locator anchoridref="AFL.FL.FLA75.PT1_2"&gt;                                            
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="006P-ABCD_5641"/&gt;
                        &lt;/ref:locator-key&gt;		
                    &lt;/ref:locator&gt;                                 
                &lt;/ref:crossreference&gt;                             
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;

		  </codeblock>
		</example>
		<example>
		  <title>Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
			  <sourcexml>ci:cite/ci:content</sourcexml></title>
		  <codeblock>
			
      &lt;ci:cite searchtype="LEG-REF"&gt;
        &lt;ci:content&gt;
          &lt;remotelink refpt="CTH_ACT_1993-80" dpsi="005X" docidref="ABCD_9876" 
            remotekey1="REFPTID" service="DOC-ID" 
            alttext="Click to link to LawNow Legislation"&gt;Superannuation (Resolution of Complaints) Act 1993&lt;/remotelink&gt;.
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;			
			
			</codeblock>
		  <title>Target XML 10: <sourcexml>remotelink</sourcexml> as a child of
			  <sourcexml>ci:cite/ci:content</sourcexml></title>
		  <codeblock>

&lt;lnci:cite type="legislation"&gt;
    &lt;lnci:content&gt;
        &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
            &lt;ref:content&gt;Superannuation (Resolution of Complaints) Act 1993&lt;/ref:content&gt;
            &lt;ref:locator anchoridref="CTH_ACT_1993-80"&gt;
                &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="DOC-ID"/&gt;  
                    &lt;ref:key-value value="005X-ABCD_9876"/&gt;
                &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
        &lt;/ref:crossreference&gt;
    &lt;/lnci:content&gt;
&lt;/lnci:cite&gt;			

			</codeblock>
		</example>
		<example>
		  <title>Source XML 11: <sourcexml>remotelink</sourcexml> as a child of
			  <sourcexml>title</sourcexml></title>
		  <codeblock>
				
&lt;level id="ACLPP_C1.SGM_ACLP.1.2.0015" leveltype="para0" toc-caption="[1.2.0015] Interpretation rules applicable to the Corporations Act: Pt&amp;#x00A0;1.2" subdoc="true"&gt;
    &lt;!-- ETC. --&gt;
    &lt;heading searchtype="COMMENTARY"&gt;
        &lt;edpnum&gt;
            &lt;refpt type="ext" id="ACLP.1.2.0015"&gt;&lt;/refpt&gt;[1.2.0015]&lt;/edpnum&gt;
        &lt;title&gt;Interpretation rules applicable to the Corporations Act:
            &lt;remotelink refpt="ACLL.CL.PT1-2" dpsi="006K" remotekey1="REFPTID" service="DOC-ID"  docidref="EFGH_2468"&gt;Pt&amp;#x00A0;1.2&lt;/remotelink&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;bodytext searchtype="COMMENTARY"&gt;
        &lt;!-- ETC. --&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
				</codeblock>
		</example>
		<example>
		  <title>Target XML 11: <sourcexml>remotelink</sourcexml> as a child of
			  <sourcexml>title</sourcexml></title>
		  <codeblock>
				
&lt;seclaw:level xml:id="ACLPP_C1.SGM_ACLP.1.2.0015" leveltype="paragraph" alternatetoccaption="&amp;#x005B;1.2.0015&amp;#x005D; Interpretation rules applicable to the Corporations Act: Pt&amp;#x00A0;1.2" includeintoc="true"&gt;
    &lt;ref:anchor id="ACLP.1.2.0015" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;&amp;#x005B;1.2.0015&amp;#x005D;&lt;/desig&gt;
        &lt;title&gt;Interpretation rules applicable to the Corporations Act: &lt;ref:crossreferencegroup&gt;
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Pt&amp;#x00A0;1.2&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="ACLL.CL.PT1-2"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="006K-EFGH_2468"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;
                &lt;/ref:crossreferencegroup&gt;&lt;/title&gt;
    &lt;/heading&gt;
    &lt;!-- ETC. --&gt;
    &lt;seclaw:bodytext&gt;
        &lt;!-- ETC. --&gt;
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
				</codeblock>
		</example>
		<example>
		  <title>Source XML 12: <sourcexml>remotelink</sourcexml> with no attributes</title>
		  <codeblock>

&lt;remotelink&gt;&lt;emph typestyle="smcaps"&gt;agency&lt;/emph&gt;&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 12: <sourcexml>remotelink</sourcexml> with no attributes</title>
		  <codeblock>

&lt;emph typestyle="smcaps"&gt;agency&lt;/emph&gt;

				</codeblock>
		</example>

		<example>
		  <title>Source XML 13: for link to URL with inlineobject as content</title>
		  <codeblock>
				
&lt;remotelink href="www.kpmg.com.au/default.aspx?tabid=145" hrefclass="http" newwindow="YES"&gt;
  &lt;inlineobject type="image" attachment="ln-server" filename="kpmglogo.gif"/&gt;
&lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Target XML 13: for link to URL with inlineobject as content</title>
		  <codeblock>
				
&lt;ref:lnlink service="URL"&gt;
  &lt;ref:marker&gt;
    &lt;ref:inlineobject&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="object-key"/&gt;
            &lt;ref:key-value value="X-Y-kpmglogo"/&gt;   &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
        &lt;/ref:locator-key&gt;
        &lt;ref:locator-params&gt;
            &lt;proc:param name="componentseq" value="1"/&gt;
            &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
            &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
        &lt;/ref:locator-params&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:inlineobject&gt;
  &lt;/ref:marker&gt;
  &lt;ref:locator&gt;
    &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.kpmg.com.au/default.aspx?tabid=145"/&gt;
    &lt;/ref:locator-key&gt;
  &lt;/ref:locator&gt;
&lt;/ref:lnlink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Source XML 14: <sourcexml>emph</sourcexml> as child of
			  <sourcexml>remotelink</sourcexml>
		  </title>
		  <codeblock>

    &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="04M2_1_1662:HTCOMM-PARAGRAPH" dpsi="04M2"&gt;
           HEC &lt;emph typestyle="bf"&gt;[1662]&lt;/emph&gt;
     &lt;/remotelink&gt;

				</codeblock>
		</example>
		<example>
		  <title>Source XML 14: <sourcexml>emph</sourcexml> as child of
			  <sourcexml>remotelink</sourcexml>
		  </title>
		  <codeblock>
				
 &lt;ref:crossreference crossreferencetype="seeAlso"&gt;                                        
		&lt;ref:content&gt;HEC &lt;emph typestyle="bf"&gt;[1662]&lt;/emph&gt;&lt;/ref:content&gt;                                        
			&lt;ref:locator anchoridref="04M2_1_1662:HTCOMM-PARAGRAPH"&gt;                                             
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="04M2-ABC"/&gt;
				&lt;/ref:locator-key&gt;			
			&lt;/ref:locator&gt;                                 
	&lt;/ref:crossreference&gt;

				</codeblock>
		</example>
		<example>
		  <title>Source XML 15: <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings
			and without intermediary text within <sourcexml>title</sourcexml></title>
		  <codeblock>

&lt;leg:level&gt;
 &lt;leg:level-vrnt leveltype="prov1"&gt;
  &lt;leg:heading&gt;
   &lt;title&gt;&lt;refpt id="EU_LEGISLATION:31998L0096R_02:" type="ext"/&gt;Corrigendum to Council &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:Directive_98_96_EC_" dpsi="08LU" docidref="08LU_EU_LEGISLATION:Directive_98_96_EC_"&gt;Directive 98/96/EC&lt;/remotelink&gt; of 14 December 1998 amending, inter alia, as regards unofficial field inspections under &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:Directives_66_400_EEC__" dpsi="08LU" docidref="08LU_EU_LEGISLATION:Directives_66_400_EEC__"&gt;Directives 66/400/EEC, &lt;/remotelink&gt;66/401/EEC, 66/402/EEC, 66/403/EEC, 69/208/EEC, 70/457/EEC and 70/458/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__66_401" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__66_401"&gt;/EEC, 66/401&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__66_402" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__66_402"&gt;/EEC, 66/402&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__66_403" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__66_403"&gt;/EEC, 66/403&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__69_208" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__69_208"&gt;/EEC, 69/208&lt;/remotelink&gt;
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_EEC__70_457" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_EEC__70_457"&gt;/EEC, 70/457&lt;/remotelink&gt;/EEC and
   &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="EU_LEGISLATION:_70_458" dpsi="08LU" docidref="08LU_EU_LEGISLATION:_70_458"&gt; 70/458&lt;/remotelink&gt;/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2.1999)&lt;/title&gt;
  &lt;/leg:heading&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
		  </codeblock>
		</example>
		<example>
		  <title>Target XML 15: <sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings
			and without intermediary text within <sourcexml>title</sourcexml></title>
		  <codeblock>

&lt;primlaw:level leveltype="section"&gt;
 &lt;heading&gt;
  &lt;title&gt;Corrigendum to Council &lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;Directive 98/96/EC &lt;/ref:content&gt;&lt;ref:locator anchoridref="EU_LEGISLATION_Directive_98_96_EC_"&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value value="08LU-08LU_EU_LEGISLATION_Directive_98_96_EC_"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt; of 14 December 1998 amending, inter alia, as regards unofficial field inspections under &lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;Directives 66/400/EEC, &lt;/ref:content&gt;&lt;ref:locator anchoridref="EU_LEGISLATION_Directives_66_400_EEC__"&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value value="08LU-08LU_EU_LEGISLATION_Directives_66_400_EEC__"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt;66/401/EEC, 66/402/EEC, 66/403/EEC, 69/208/EEC, 70/457/EEC and 70/458/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 66/401&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__66_401"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__66_401"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 66/402&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__66_402"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__66_402"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 66/403&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__66_403"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__66_403"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 69/208&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__69_208"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__69_208"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt;/EEC, 70/457&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__EEC__70_457"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__EEC__70_457"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;/EEC and
   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
    &lt;ref:content&gt; 70/458&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="EU_LEGISLATION__70_458"&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="08LU-08LU_EU_LEGISLATION__70_458"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:crossreference&gt;/EEC on the marketing of beet seed, fodder plant seed, cereal seed, seed potatoes, seed of oil and fibre plants and vegetable seed and on the common catalogue of varieties of agricultural plant species (OJ L 25 of 1.2.1999)&lt;/title&gt;
  &lt;/heading&gt;
  &lt;!-- ETC. --&gt;
&lt;/primlaw:level&gt;  

		  </codeblock>
		</example>

		<example><title>Source XML 16: <sourcexml>remotelink[@service="QUERY"]</sourcexml>
		  </title>
		  <codeblock>

&lt;p&gt;
    &lt;text&gt;Consultation Paper: The Award of Costs from Central Funds in Criminal
        Cases - &lt;remotelink service="QUERY"
            remotekey1="DIGEST-CITATION(LNB News 06/11/2008 25)"
            remotekey2="All Subscribed Current Awareness Sources" cmd="f:exp"
            alttext="References to"&gt;LNB News 06/11/2008 25&lt;/remotelink&gt;; &lt;/text&gt;
&lt;/p&gt;

	</codeblock>
		</example>
		<example><title>Target XML 16: <sourcexml>remotelink[@service="QUERY"]</sourcexml></title>
		  <codeblock>

&lt;p&gt;
    &lt;text&gt;Consultation Paper: The Award of Costs from Central Funds in Criminal
        Cases - LNB News 06/11/2008 25; &lt;/text&gt;
&lt;/p&gt;

	</codeblock>
		</example>
    
		<example><title>Source XML 17: <sourcexml>remotelink</sourcexml> as a child of <sourcexml>emph</sourcexml></title>
		  <codeblock>
&lt;ci:cite searchtype="LEG-REF"&gt;
    &lt;ci:content&gt;
        &lt;citefragment searchtype="LEG-NAME-REF"&gt;
            &lt;emph typestyle="it"&gt;
                &lt;remotelink dpsi="0069" remotekey1="REFPTID" service="DOC-ID" refpt="1952A52"
                    docidref="1952A52.BODY"&gt;Land Transfer Act 1952&lt;/remotelink&gt;
            &lt;/emph&gt;
        &lt;/citefragment&gt;
        &lt;emph typestyle="it"&gt;, ss 62, 105 and 119&lt;/emph&gt;
    &lt;/ci:content&gt;
&lt;/ci:cite&gt;
	</codeblock>
		</example>
		<example><title>Target XML 17: <sourcexml>remotelink</sourcexml> as a child of <sourcexml>emph</sourcexml></title>
		  <codeblock>
&lt;lnci:cite type="legislation"&gt;
    &lt;lnci:content&gt;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Land Transfer Act 1952&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="_1952A52"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0069-1952A52.BODY"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;
        &lt;emph typestyle="it"&gt;, ss 62, 105 and 119&lt;/emph&gt;
    &lt;/lnci:content&gt;
&lt;/lnci:cite&gt;
	</codeblock>
		</example>
		<section>
		  <title>Changes</title>
		  <p>2016-11-16: <ph id="change_20161116_snb">Added to note regarding applying any rules related to 
			<targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
			Handling Pattern Restrictions".</ph>
		  </p>
		  <p>2011-12-16: Created. </p>
		  <p>2011-12-16: Changed URL/Email link instructions and example to map to url target element. </p>
		  <p>2011-12-22: Defined a rule for glp:note/remotelink, per linking strategy.</p>
		  <p>2011-12-22: Removed reference to Email links, these do not happen in AU nor NZ data. </p>
		  <p>2011-12-22: Fixed formating of a sublist. </p>
		  <p>2011-12-22: Updated to match linking strategy. </p>
		  <p>2012-01-17: Updated instruction and example for handling remotelink[@service="DOC-ID"].</p>
		  <p>2012-01-17: Added example for handling of remotelink/sup.</p>
		  <p>2012-02-23: Added conversion instructions and the NL example for /remotelink @dpsi for the
			use case - remotelink @service='DOC-ID'.</p>
		  <p>2012-02-28: Instruction update for handling <sourcexml>remotelink</sourcexml> appear in
			  <sourcexml>title</sourcexml>.</p>
		  <p>2012-02-28: Example added for handling <sourcexml>remotelink</sourcexml> appear in
			  <sourcexml>title</sourcexml>.</p>
		  <p>2012-02-29: Added instruction and example when <sourcexml>remotelink</sourcexml> has no
			  <sourcexml>@hrefclass</sourcexml>.</p>
		  <p>2012-03-12: Added instruction and example for handling of scenario glp:note/remotelink in
			AU legislation/Courtrule.</p>
		  <p>2012-03-15: Added instruction for single versus multiple, sibling occurrences of
			  <sourcexml>remotelink</sourcexml>.</p>
		  <p>2012-03-16: Corrected target markup for <targetxml>ref:key-name/@name</targetxml> value.
			Changed from "DOC-ID" to "REFPTID.</p>
		  <p>2012-04-26: Modified the instructions for the use case:
			  <sourcexml>remotelink[@service='DOC-ID']</sourcexml> to include the text -'without
			intermediary text'.</p>
		  <p>2012-04-27: Made fundemental modifications the instructions regarding
			  <sourcexml>remotelink[@service='URL']</sourcexml>. This is now usually converted to
			  <targetxml>ref:lnlink</targetxml> and only converted to <targetxml>url</targetxml> under
			certain conditions as described in the instructions. </p>
		  <p>2012-05-09: Removed the reference to AU Legislation/Courtrule: for the rule when
			  <sourcexml>remotelink</sourcexml> is the child of <sourcexml>glp:note </sourcexml>. This
			instruction is common across content types and not just AU Legis/Courtrule</p>
		  <p>2012-05-14: Removed a note for handling <sourcexml>remotelink</sourcexml> appear in
			  <sourcexml>title</sourcexml>.</p>
		  <p>2012-05-14: Example updated for handling <sourcexml>title/remotelink</sourcexml>.</p>
		  <p>2012-05-24: Instructions updated for handling
			  <sourcexml>glp:note/remotelink/@service='QUERY'</sourcexml>.</p>
		  <p>2012-06-06: Updated the instruction The ref:marker/@service attribute is set to "URL"
			  <b>to</b> The ref:lnlink/@service attribute is set to "URL".</p>
		  <p>2012-06-12: Updated the instructions for use case:
			  <sourcexml>remotelink[@service='DOC-ID']</sourcexml>. Described exactly how to obtain a
			value for <targetxml>ref:key-value/@value</targetxml> depending on what other attributes and
			values are present.</p>
		  <p>2012-07-04: Added instructions for the situation when <sourcexml>remotelink</sourcexml>
			doesn't have any attributes.</p>
		  <p>2012-07-12: modified instruction for glp:note/remotelink handling when
			remotelink@service="DOC-ID".</p>
		  <p>2012-07-31: Replaced the instruction "some other form of a URL" with dtd values (http |
			https | nohttp | mailto | ftp).</p>
		  <p>2012-07-31: Updated the instructions for use case
			  <sourcexml>remotelink[@service='DOC-ID']</sourcexml> with directions to set the value of
			  <targetxml>ref:crossreference/@crossreferencetype</targetxml> to "seeAlso".</p>
		  <p>2012-08-17: Updated the instructions for use case
			  <sourcexml>remotelink[@service='DOC-ID']</sourcexml> with new instructions for
			  <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml>.</p>
		  <p>2012-08-17: Moved handling for NZ Cases to a separate module.</p>
		  <p>2012-09-05: Added to note for <targetxml>ref:locator/@anchoridref</targetxml> that begins
			with a number... Also apply other identifier data type format as used for
			  <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml> (e.g. change colon
			to underscore).</p>
		  <p>2012-12-03: Instruction and example added for
			<sourcexml>remotelink/@xml:lang</sourcexml>.</p>
		  <p>2013-01-22: Instruction and example added for
			  <sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the
			  <sourcexml>remotelink</sourcexml> is to be converted to
			  <targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and
			end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are
			dropped.</p>
		  <p>2013-02-18: Target example updated per inlineobject instructions. </p>
		  <p>2013-02-18: <ph id="change_20130218_SP">Created two sections, one for <b>"Release 4.0 and
				after"</b> and another for <b>"Pre-Release 4.0"</b>.</ph></p>
		  <p>2013-03-11: <ph id="change_20130311_RPX">Instruction and example added on how to handle
				<targetxml>ref:marker </targetxml> if it is in
				<targetxml>ref:lnlink@service=”URL”</targetxml>and the
				<targetxml>ref:key-value@value</targetxml> starts-with (.,
				<b>'http://www.lexisnexis.com/au/legal/api'</b>)</ph></p>
		  <p>2013-04-10: <ph id="change_20130410_MLV">Added Source XML 7a: for link to URL, with non-URL
			  text content because it was previously missing, only the target example was here.</ph></p>
		  <p>2013-04-30: <ph id="change_20130430_SP">Updated target sample according to latest Apollo
			  markup.</ph></p>
		  <p>2013-05-01: <ph id="change_20130501_SP">Removed instructions for section <b>"Pre-Release
				4.0"</b> because according to latest Apollo markup, section <b>"Release 4.0 and
				after"</b> and section <b>"Pre-Release 4.0"</b> now have similar conversion
			markup.</ph></p>
		  <p>2013-05-01: <ph id="change_20130501_PY">"Instruction added for
				<sourcexml>ci:cite/ci:content/remotelink</sourcexml> specifying that the
				<sourcexml>remotelink</sourcexml> is to be converted to
				<targetxml>ref:crossreference</targetxml> but the containing elements' start-tags and
			  end-tags (<sourcexml>ci:cite</sourcexml> and <sourcexml>ci:content</sourcexml>) are
			  dropped", has been removed from the instructions and now <sourcexml>remotelink</sourcexml>
			  will be converted to the resulting mapping where it is. For more details you can see
			  example: <b>Source XML 10: <sourcexml>remotelink</sourcexml> as a child of
				  <sourcexml>ci:cite/ci:content</sourcexml></b></ph></p>
		  <p>2013-05-08: <ph id="change_20130508_SP">Extended the list of allowable values for image
			  handling.</ph></p>
		  <p>2013-06-03: <ph id="change_20130603_VV">Updated the Target XML 2 by removing the
				<targetxml>@crossreferencetype</targetxml> for Canada example.</ph></p>
		  <p>2013-08-22: <ph id="change_20130822_jm">Not a rule change. Modified Sample #10 on
				<sourcexml>ci:cite/ci:content/remotelink</sourcexml>. Removed target attribute
				<targetxml>lnci:cite[@citeref]</targetxml> because value captured in
				<targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.</ph></p>
		  <p>2013-10-03: <ph id="change_20131003_sp">Added use case where remotelink contains @href
			  which is a URL but does not contain @hrefclass='http'.</ph></p>
		  <p>2013-10-23: <ph id="change_20131023_ssx">Added Example when
				<sourcexml>remotelink</sourcexml> having child <sourcexml>emph</sourcexml>. Webteam #
			  239816</ph>
		  </p>
		  <p>2014-02-03: <ph id="change_20140203_AB">Instruction updated if
				<sourcexml>remotelink</sourcexml> occurs as multiple, immediate siblings and without
			  intermediary text within <sourcexml>title</sourcexml>. Also added a example for the same
			  scenario. Phase 5 UK discussion-defect tracking issue #161</ph></p>
		  <p>2014-02-25: <ph id="change_20140225_BRT">Updated instruction and created new example (#16)
			  for handling <sourcexml>remotelink[@service="QUERY"]</sourcexml>. New instruction
			  preserves pcdata but suppresses <sourcexml>remotelink</sourcexml> markup. Webstar #250335.
			  Change applies immediately to all Pacific streams, and in the long run to all
			  streams.</ph></p>
		  <p>2014-10-27: <ph id="change_20141027_jm">Minor. Within use case for
				<sourcexml>@service="DOC-ID"</sourcexml>, rule for
				<sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
				<sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is expanded to
			  include value <sourcexml>"REFPT"</sourcexml>; the mapping is unchanged. The value
				<sourcexml>"REFPT"</sourcexml> is new in Oct 2014 redelivery of UK11-DN but the rule
			  applies to any stream where <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5
			  Content Issue 2003.</ph></p>
		  <p>2015-01-09: <ph id="change_20150109_jm">For the two use cases associated with url (target
				<targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>): Added exceptional rule
			  to not concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
			  present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to illustrate the
			  scenario. Responds to data for UK10 Dictionaries but applies in general. R4.5 Content
			  Issue 2120.</ph></p>
		  <p>2015-05-22: <ph id="change_20150522_JCG">Added an instruction to explicitly indicate <sourcexml>remotelink/@status</sourcexml> is always dropped (suppressed). This is a very low-priority change and has been added for technical correctness, particularly with respect to new CIs. Existing scripts do not have to implement this change unless needed since prior to the change <targetxml>remotelink/@status</targetxml> handling was not explicitly specified.</ph></p>
		  <p>2015-06-24: <ph id="change_20150624_SEP">Added clarification note about url, @normval, and @hrefclass. Webstar 302055.</ph></p>
		  <p>2016-02-05: <ph id="change_20160205_PS">Added note and example when
				<sourcexml>remotelink</sourcexml> is a child of <sourcexml>emph</sourcexml>. Applicable
			on NZ17CC, Webstar: 319232 and 318735.</ph></p>
		  <p>2016-08-03: <ph id="change_20160803_jm">Added Note about xml snippets that illustrate
			image handling. Note summarizes move from Apollo to Blobstore application. UK is
			first LBU to move to Blobstore.</ph></p>
		</section>
	  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-LxAdv-ref.crossreference.dita  -->

	<xsl:template match="remotelink/@status"/>
	
	<!-- JL: suppressing attributes as templates because they are used in more complex ways below -->
	<xsl:template match="remotelink/@refpt"/>
	<xsl:template match="remotelink/@dpsi"/>
	<xsl:template match="remotelink/@service"/>
	<xsl:template match="remotelink/@remotekey1"/>

	<xsl:template match="remotelink[@hrefclass ne 'http'  and @service = 'SEARCH']">
		<xsl:comment>
			<xsl:copy-of select="."/>
		</xsl:comment>
	</xsl:template>

	<xsl:template match="remotelink[ @service = 'QUERY' ][ not( ancestor::docinfo:assoc-links or parent::glp:note[ not( starts-with( $streamID , 'NZ' ) ) ] ) ]">
		<!--  Original Target XPath:  ref:crossreference   -->
		<!-- Suppress remotelink and retain the content -->
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="remotelink[ancestor::docinfo:assoc-links][ @service = 'QUERY' ][ not( $streamID = ( 'CA03', 'CA05' , 'CA06' , 'CA07', 'CA08' ) ) ]"/>
	<!--Commeted below line for stop the warning of duplicate rule of glp:note/remotelink-->
	<!--<xsl:template match="glp:note/remotelink[ @service = 'QUERY' ][ starts-with( $streamID , 'NZ' ) ]"/>-->

	<xsl:template name="remotelinkDOCID">
		<!--  Original Target XPath:  ref:crossreference   -->

		<ref:crossreference>
			<!-- following atts and inlineobject template from modules/cttr/HK08k_subseqcases_cttr.annot.xsl -->
			
			<!-- Sudhanshu Srivastava : Added condition for parent cttr:annot and streamID CA03. -->
			<!-- Awantika: Added inlineobject for AU01 -->
			<xsl:attribute name="crossreferencetype" select="if (((parent::source_cttr:annot or parent::source_cttr:annot or ancestor::citefragment[ancestor::case:references]) and $streamID=('HK08' , 'AU02', 'AU04','UK05','CA03')) or (ancestor::citefragment and inlineobject and $streamID=('NZ09', 'AU17'))or (parent::ci:content and $streamID='AU20') or inlineobject and $streamID='AU01') then 'citatorAlert' else 'seeAlso'"/>			
			<xsl:if test="(parent::source_cttr:annot or parent::source_cttr:annot and $streamID=('HK08' , 'AU02', 'AU04','UK05','CA03')) or (ancestor::citefragment and inlineobject and $streamID=('NZ09', 'AU17')) or (parent::ci:content and $streamID='AU20') or inlineobject and $streamID='AU01'">
				<xsl:attribute name="referencedresourcetype" select="'citator'"></xsl:attribute>
				<xsl:apply-templates select="inlineobject" mode="citator-ref"/>
			</xsl:if>
			<!-- JD: 20170525: (from UK05) following if test for att 'referencedresourcesentiment' from modules/cttr/UK05_Citator_annotations_cttr.annot-LxAdv-cttr.refs.xsl -->

			<xsl:if test="parent::source_cttr:annot/@signal or parent::source_cttr:annot/@signal and $streamID=('UK05','CA03')">
				<xsl:attribute name="referencedresourcesentiment">
					<xsl:choose>
						<xsl:when test="parent::source_cttr:annot/@signal='citation'"><xsl:value-of select="'none'"/></xsl:when>
						<xsl:when test="not(parent::source_cttr:annot/@signal='citation') and parent::source_cttr:annot/@signal"><xsl:value-of select="parent::source_cttr:annot/@signal"/></xsl:when>
						
						<xsl:when test="parent::source_cttr:annot/@signal='citation'"><xsl:value-of select="'none'"/></xsl:when>
						
						<xsl:otherwise>
							<xsl:copy-of select="parent::source_cttr:annot/@signal"/>
						</xsl:otherwise>					
					</xsl:choose>
				</xsl:attribute>
			</xsl:if>	
			
			<xsl:if test="ancestor::citefragment and inlineobject and $streamID=('AU17')">
				<xsl:attribute name="referencedresourcesentiment">
					<xsl:value-of select="lower-case(substring-before(inlineobject/@alttext, ' '))"/>
				</xsl:attribute>
			</xsl:if>
			
			<!-- JL: Ok to output empty ref:content as ref:content is a required element -->
			<!-- Awantika:24-07-2017: for AU20 added parent::ci:content -->
				<ref:content>
					<xsl:if test="$streamID='AU19_CC'">
						<xsl:attribute name="xml:lang">
							<xsl:value-of select="/CASEDOC/docinfo/docinfo:doc-lang/@lang"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:copy-of select="@xml:lang"/>
					<xsl:apply-templates select="if($streamID='UK12') then @* except(@xml:lang,@refpt) else @* except@xml:lang"/>
					<xsl:if test="parent::source_cttr:annot and $streamID=('HK08' , 'AU02', 'AU04') or parent::ci:content and $streamID='AU20'">
						<xsl:value-of select="if (contains(inlineobject/@alttext, ' - Click for CaseBase entry')) then substring-before(inlineobject/@alttext, ' - Click for CaseBase entry') else inlineobject/@alttext"/>
					</xsl:if>
					<xsl:if test=" $streamID=('NZ09', 'AU17','AU01','NZ11','AU10','HK07')">
						<xsl:value-of select="if (contains(inlineobject/@alttext, ' - Click for CaseBase entry')) then substring-before(inlineobject/@alttext, ' - Click for CaseBase entry') else inlineobject/@alttext"/>
					</xsl:if>
					<!-- Sudhanshu Srivastava: Added if condition for getting ref content for CA03 -->
					<xsl:if test="parent::source_cttr:annot and $streamID=('CA03')">
						<xsl:value-of select="if (contains(inlineobject/@alttext, 'QuickCITE - ')) then substring-after(inlineobject/@alttext, 'QuickCITE - ') else inlineobject/@alttext"/>
					</xsl:if>
					
					<!-- Awantika:24-07-2017: blobstore mapping was getting created therefore added 'except' for AU20 not to create that instead create the 
					below ref:locator-->
					<!--05-04-2018:Ravikant:  blobstore mapping was getting created therefore added 'except' for NZ09 not to create that instead create the 
					below ref:locator-->
					<xsl:apply-templates select="node() except inlineobject[parent::remotelink[parent::ci:content][$streamID=('AU20','HK07')]] except inlineobject[$streamID='AU01'] except inlineobject[parent::remotelink[parent::citefragment[parent::ci:content][$streamID=('NZ09')]]]"/>
				</ref:content>
			
			<ref:locator>
				<xsl:for-each select=" if (@refpt) then @refpt else @remotekey2">
					<!-- MDS - 2017-05-12 - Created choose statement to deal with empty @refpt in source resulting in empty @anchoridref in target. -->
					<xsl:choose>
						<xsl:when test="normalize-space(.) = ''"/>
						<xsl:otherwise>
							<!-- JD: 2017-05-26: adding 'if' to prevent @anchoridref being added from markup like this:
							<remotelink remotekey1="DOC-ID" service="DOC-ID" remotekey2="a1baecf6-dc1f-4bd0-ba0c-a91177f0efe6" dpsi="03W6" status="valid"/>
							so as to match DT output.
							-->
							<!-- Sudhanshu Srivastava: addrd StreamID CA03, no need to generate anchoridref attribute. -->
							<!-- Paul: this is often the case.  May want "and @remotekey1="REFPTID" in this somewhere.
								I'm getting it with DOC-ID in the attribute.  AU08
								PS2017042700263627135LNIAUCOURTRULES_input_VIC_REG_2008-14810000.xml
			                    <remotelink dpsi="03AP" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_LAUNCH_VIC" service="DOC-ID">LawNow Home Page</remotelink>
							If @remotekey1="REFPTID" then
								– Create ref:locator/@anchoridref with value from @refpt or @remotekey2, which ever is present (if both are present, use
								@refpt).-->
							<xsl:if test="not($streamID='UK05' or $streamID='CA03' or $streamID='AU19_CC') and parent::remotelink/@remotekey1='REFPTID'">
								<xsl:attribute name="anchoridref">
									<xsl:call-template name="normalizeIdString"/>
								</xsl:attribute>
							</xsl:if>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<ref:locator-key>
					<xsl:choose>
						<!-- Awantika: Added choose as it is required to capture URL in ref:key-name while creating ref:crossreference for p/remotelink in AU20 -->
						<xsl:when test="parent::p[parent::note][$streamID='AU20']">
							<ref:key-name name="URL"/>
						</xsl:when>
						<xsl:otherwise>
							<ref:key-name name="DOC-ID"/>
						</xsl:otherwise>
					</xsl:choose>
					
					<ref:key-value>
						<xsl:attribute name="value">
							<!-- Awantika: Added choose as it is required to capture value of @href while creating ref:crossreference for p/remotelink in AU20 -->
							<xsl:choose>
								<xsl:when test="@dpsi">
									<xsl:value-of select="@dpsi"/>
								</xsl:when>								
								<xsl:when test="parent::p[parent::note][$streamID='AU20']">
									<xsl:value-of select="@href"/>
								</xsl:when>
								<xsl:when test="not(@dpsi) and //docinfo/docinfo:dpsi/@id-string">
									<xsl:value-of select="//docinfo/docinfo:dpsi/@id-string"/>
								</xsl:when>
								<xsl:when test="not(@dpsi) and not(//docinfo/docinfo:dpsi/@id-string)">
									<xsl:value-of select="$dpsi"/>
								</xsl:when>								
								
								<!-- JL if @dpsi isn't present, use DPSI from document or LBU manifest file as in CI above. 
									Verified with Pacific LBU 2017-11-06 -->
								<!-- JL : dpsi may be validly missing if the link is invalid -->
								<xsl:when test="@status=('unval','invalid')"><!-- no @dpsi however status is unvalidated or invalid so don't throw error  --></xsl:when>
								
								<xsl:otherwise>
									<!--<xsl:value-of select="$dpsi"/>-->
									<xsl:call-template name="outputErrorMessage">
										<xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@dpsi is missing and link cannot be correctly completed' "/>
										<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
										<xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
										<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
									</xsl:call-template>
								</xsl:otherwise>
							</xsl:choose>

							<xsl:text>-</xsl:text>

							<xsl:choose>
								
								<xsl:when test="$streamID='AU19_CC'">
									<xsl:value-of select="@refpt"/>
								</xsl:when>
								<!-- CSN - 2017/11/06 - Backing this change out from the last SVN Version becuase it may fix AU08 but it breaks links for the other Conversions
								<xsl:when test=" @remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID' or @service='DOC-ID'">
								-->
								<xsl:when test=" @remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID'">
									<xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>
								</xsl:when>
								<xsl:when test=" @remotekey1 = 'REFPTID' or @remotekey1 = 'REFPT' ">

									<xsl:choose>
										<xsl:when test="@docidref">
											<xsl:value-of select="@docidref"/>
										</xsl:when>
										<xsl:when test="@status=('unval','invalid')"><!-- no @docidref however status is unvalidated or invalid so don't throw error  --></xsl:when>
										<xsl:otherwise>
											<!-- This should be an error message -->
											<xsl:text>XXXX</xsl:text>
											<xsl:call-template name="outputErrorMessage">
												<xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@docidref is missing and link cannot be correctly completed' "/>
												<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
												<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
												<!--SNB: 2017-10-27 adding the XPATH of problem link to error output instead of previous base:uri() -->
												<xsl:with-param name="context" as="xs:string"><xsl:call-template name="generateXPath"/></xsl:with-param>
												<!--<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>-->
											</xsl:call-template>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:when>
							</xsl:choose>

						</xsl:attribute>
					</ref:key-value>
				</ref:locator-key>
			</ref:locator>

		</ref:crossreference>

	</xsl:template>
	
	
	<!--  multiple immediate sibling remotelinks will get grouped, see further below  -->
	<xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ]"/>

	<!--  process immediate sibling remotelink elements one by one  -->
	<xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ]" mode="combineSiblingRemotelinks">

		<!--  output  ref:crossreference for the current remotelink  -->
		<xsl:call-template name="remotelinkDOCID"/>
		<!--  process immediate sibling remotelink elements one by one  -->
		<xsl:apply-templates select="following-sibling::node()[1][self::remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ] ]" mode="combineSiblingRemotelinks"/>

	</xsl:template>

  <!-- JD: 2017-10-13: trap remotelink as child of <li>  -->
  <xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]
    [parent::li]" priority="1">
    <p>
      <text>
        <xsl:choose>
          <xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)">			<!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  -->
            <ref:crossreferencegroup>
              <!--  output  ref:crossreference for the current remotelink  -->
              <xsl:call-template name="remotelinkDOCID"/>
              <!--  process immediate sibling remotelink elements one by one  -->
              <xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ]" mode="combineSiblingRemotelinks"/>
            </ref:crossreferencegroup>
          </xsl:when>
          <xsl:otherwise>
            <!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
            <xsl:call-template name="remotelinkDOCID"/>
          </xsl:otherwise>
        </xsl:choose>
      </text>
    </p>
  </xsl:template>
	
	<!-- For multiple, immediate, sibling
			  occurrences without intermediary text, group within a
				<targetxml>ref:crossreferencegroup</targetxml> parent except for
				<targetxml>lnci:content</targetxml> and <targetxml>title</targetxml>.<ul>  -->
	<!--  @@@ SBy:  I do not understand what is meant by "except for lnci:content and title" since the examples have those under ref:crossreferencegroup even if there is only one remotelink[ @service = 'DOC-ID' ] sibling !!!  -->
	
	<!-- JL: seems like lnci:content/ref:crossreferencegroup is not schema valid -->
	
	<xsl:template match="remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]" priority="2">

		<xsl:choose>
			<!-- BRT 1/30/17 fix issue with missing p element -->
			<xsl:when test="parent::bodytext and $streamID = ('UK15_DS')">
				<p><text>
					<xsl:call-template name="remotelinkDOCID"/>
				</text></p>
			</xsl:when>
			<xsl:when test="$streamID=('AU10','NZ11') and ancestor::level/@leveltype='landingpage'">
				<!--  no grouping needed, it becomes seclaw:subjectmatterreference 
					which doesn't allow groupings so just output  ref:crossreference for the current remotelink  -->
				<xsl:call-template name="remotelinkDOCID"/>
				
			</xsl:when>
			
			<xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)">			<!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  -->

				<ref:crossreferencegroup>

					<!--  output  ref:crossreference for the current remotelink  -->
					<xsl:call-template name="remotelinkDOCID"/>
					<!--  process immediate sibling remotelink elements one by one  -->
					<xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ]" mode="combineSiblingRemotelinks"/>

				</ref:crossreferencegroup>

			</xsl:when>
			<xsl:otherwise>
				<!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
				<xsl:call-template name="remotelinkDOCID"/>

			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

		<!--  If there is a
				<sourcexml>remotelink/@hrefclass]</sourcexml> attribute equal to "http" then the
			  remotelink is <b>not</b> copied into a comment but is instead converted to either a
				<targetxml>url</targetxml> or <targetxml>ref:lnlink</targetxml>   -->
	<!-- remotelink[@service='URL'] or remotelink[@hrefclass='http'][@href] or remotelink[@href] and the data content of the remotelink is a URL -->
	<!--  @@@ SBy:  how does one check for "... or is of type (http | https | nohttp | mailto | ftp ..."  ??? using contains...  -->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][not(parent::ci:content)]" name="remotelink-url-urltext">

				<!--   @@@TODO:  perhaps fix type (http | https | nohttp | mailto | ftp handling.  Probably @hrefclass ?  also check for case insensitivity  -->

		<!-- <li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml> or
				<sourcexml>remotelink[@href]</sourcexml>
			  <b>and</b> the data content of the remotelink is a URL. That is, the data content of
				<sourcexml>remotelink</sourcexml> starts with text such as "http://...", "https://...",
			  "www.some.domain", or is of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>url</targetxml>		-->
		
		
		
		<url xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:attribute name="normval">
				<xsl:if test=" @hrefclass and not( contains( @href , @hrefclass ) ) ">
					<xsl:value-of select="@hrefclass"/>
					<xsl:text>://</xsl:text>
				</xsl:if>
				<xsl:value-of select="normalize-space( @href )"/>
			</xsl:attribute>

			<xsl:apply-templates/>

		</url>

	</xsl:template>
	
	<!-- JL emph is invalid as a child of url, so adding this: -->
	
	<xsl:template match="emph[parent::remotelink [( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][not(parent::ci:content)]]" priority="35">
		<xsl:apply-templates/>
	</xsl:template>
	
 <!--Awantika: If lnci:content/remotelink have the following scenarios:if it's href,url,or www.... then retain the content of remotelink and suppress the element-->
	<!-- Awantika:11-07-2017: Added priority to resolve the conflict on template "remotelink[not(ancestor::docinfo:assoc-links)][ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ]" -->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ][parent::ci:content]" priority="5">
	 <xsl:apply-templates/>			
	</xsl:template>
	
	<!-- 2017-11-28 - MDS: person/remotelink output does not allow for ref:lnlink.  url is sufficient for UK12 stream -->
	<xsl:template match="person/remotelink[$streamID='UK12']" priority="25">
		<url>
			<xsl:attribute name="normval">
				<xsl:value-of select="@hrefclass"/>
				<xsl:text>://</xsl:text>
				<xsl:value-of select="@href"/>
			</xsl:attribute>
			<xsl:apply-templates select="node()"/>
		</url>
	</xsl:template>
	
	<!-- remotelink[@service='URL'] or remotelink[@hrefclass='http'][@href] but the data content of the remotelink is not a URL. -->
	<!--  @@@ SBy:  how does one check for "... nor is it of type (http | https | nohttp | mailto | ftp ..."  ??? using contains...  -->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and not( ( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) ) ) ]" name="remotelink-url">

				<!--   @@@TODO:  perhaps fix type (http | https | nohttp | mailto | ftp handling.  Probably @hrefclass ?  also check for case insensitivity  -->

		<!-- <li>Use case: <sourcexml>remotelink[@service='URL']</sourcexml> or
				<sourcexml>remotelink[@hrefclass='http'][@href]</sourcexml>
			  <b>but</b> the data content of the remotelink is <b>not</b> a URL. That is, the data
			  content of <sourcexml>remotelink</sourcexml>
			  <b>does not</b> start with text such as "http://...", "https://...", "www.some.domain",
			  nor is it of type (http | https | nohttp | mailto | ftp). In this case,
				<sourcexml>remotelink</sourcexml> becomes <targetxml>ref:lnlink</targetxml> with
			  children <targetxml>ref:marker</targetxml> and <targetxml>ref:locator</targetxml>	-->

		<ref:lnlink service="URL">

			<ref:marker>
				<xsl:apply-templates/>
			</ref:marker>

			<ref:locator>
				<ref:locator-key>
					<ref:key-name name="URL"/>
					<ref:key-value>

						<xsl:attribute name="value">
							<xsl:if test=" @hrefclass and not( contains( @href , @hrefclass ) ) ">
								<xsl:value-of select="@hrefclass"/>
								<xsl:text>://</xsl:text>
							</xsl:if>
							<xsl:value-of select="normalize-space( @href )"/>
						</xsl:attribute>

					</ref:key-value>
				</ref:locator-key>
			</ref:locator>
		</ref:lnlink>

	</xsl:template>
	<xsl:template match="remotelink/@href"/>
	<!-- suppress remotelink and retain its content as text -->
	<xsl:template match="remotelink[not(@*)]">
		<xsl:apply-templates/>
	</xsl:template>

	<!-- @@@  SBy:  TODO, need to coordinate with Mark S footnote/endote logic:   <p>If <sourcexml>refpt</sourcexml> and <sourcexml>remotelink</sourcexml> occurs as adjacent
				siblings then refer to the instructions for converting <sourcexml>endnote</sourcexml>.</p>  

				There's another separate module for this... -->

	<xsl:template match="emph[ remotelink and $streamID = 'NZ17-CCD' ]">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="remotelink/@remotekey2"/>
	<!-- it doesn't seem like we use this att -->
	<xsl:template match="remotelink/@newwindow"/>
	<xsl:template match="remotelink/@docidref"/>

	<xsl:template match="remotelink[parent::in:entry-text][$streamID='AU16']" priority="25">
		<index:locator>
			<!-- <in:entry-text>
          <remotelink dpsi="009K" remotekey1="REFPTID" service="DOC-ID" refpt="CTH_BIL_2017-74"
            status="unval">ASIC SUPERVISORY COST RECOVERY LEVY BILL 2017</remotelink>
        </in:entry-text> -->
			<ref:lnlink>
				<xsl:attribute name="service">DOCUMENT</xsl:attribute>
				<ref:marker>
					<xsl:apply-templates select="node()"/>
				</ref:marker>
				<ref:locator>
					<xsl:choose>
						<xsl:when test="not(@refpt)">
							<xsl:attribute name="anchoridref">
								<xsl:choose>
									<xsl:when test="string(number(substring(@remotekey2, 1, 1))) = 'NaN'">
										<xsl:value-of select="@remotekey2"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="concat('_', @remotekey2)"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="anchoridref">
								<xsl:choose>
									<xsl:when test="string(number(substring(@refpt, 1, 1))) = 'NaN'">
										<xsl:value-of select="@refpt"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="concat('_', @refpt)"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<ref:locator-key>
						<ref:key-name name="DOC-ID"/>
						<ref:key-value>
							<xsl:attribute name="value">
								<xsl:choose>
									<!-- <in:entry-text>Insurance Premiums Order (January-June) 2014 <remotelink dpsi="005Y"
              remotekey1="REFPTID" service="DOC-ID" refpt="NSW_REG_2013-622_WA"
              docidref="NSW_REG_2013-622_SCH11">SCH11CL1SUB1</remotelink></in:entry-text> -->
									<xsl:when test="@remotekey1 = 'DOC-ID'">
										<xsl:value-of select="concat(@dpsi, '-')"/>
										<xsl:choose>
											<xsl:when test="not(@remotekey2)"><xsl:value-of select="@refpt"/></xsl:when>
											<xsl:otherwise><xsl:value-of select="@remotekey2"/></xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:when test="@remotekey1 = 'REFPTID'">
										<xsl:value-of select="concat(@dpsi, '-')"/>
										<xsl:choose>
											<xsl:when test="@docidref">
												<xsl:value-of select="@docidref"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text>XXXX</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
								</xsl:choose>
							</xsl:attribute>
						</ref:key-value>
					</ref:locator-key>
				</ref:locator>
			</ref:lnlink>
		</index:locator>
	</xsl:template>

<!--Vikas Rohilla : Template to match the remotelink-->
	<xsl:template match="remotelink[ ( @service = 'URL' or @href ) and not(( contains( . , 'www' ) or contains( . , 'http' ) or contains( . , 'mailto' ) or contains( . , 'ftp' ) )) ][$streamID='UK11DA']" priority="20">
		<url>
			<xsl:attribute name="normval">
				<xsl:if test=" @hrefclass and not( contains( @href , @hrefclass ) ) ">
					<xsl:value-of select="@hrefclass"/>
					<xsl:text>://</xsl:text>
				</xsl:if>
				<xsl:value-of select="normalize-space( @href )"/>
			</xsl:attribute>			
			<xsl:apply-templates/>			
		</url>		
	</xsl:template>
	
	<xsl:template match="remotelink/@alttext"/>
	
	<!-- Priya Kaushal added below for UK15 -->
	
	<xsl:template match="remotelink[(ancestor::docinfo:assoc-links)| (ancestor::docinfo:assoc-links-grp)] [parent::text] [ @service = 'DOC-ID' ][ not( preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] ) ] [$streamID='UK15' or $streamID='UK12' or $streamID='UK14']" priority="40">
		
		<xsl:choose>
			<xsl:when test=" following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ] and not(parent::ci:content)">			<!--  multiple immediate sibling remotelinks, so group in ref:crossreferencegroup  -->
				<!--<doc:related-content-item>
					<doc:related-content-desc>
						<p>
							<text>-->
				<ref:crossreferencegroup>
					
					<!--  output  ref:crossreference for the current remotelink  -->
					<xsl:call-template name="remotelinkDOCID"/>
					<!--  process immediate sibling remotelink elements one by one  -->
					<xsl:apply-templates select="following-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ] ][not($streamID='UK15')]" mode="combineSiblingRemotelinks"/>
					
				</ref:crossreferencegroup>
								
									
											<!--</text>
											</p>
											</doc:related-content-desc>
				</doc:related-content-item>-->
			</xsl:when>
			<xsl:otherwise>
				
				<!--  no grouping needed, so just output  ref:crossreference for the current remotelink  -->
				<xsl:call-template name="remotelinkDOCID"/>
				
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
<xsl:template match="remotelink[(ancestor::docinfo:assoc-links)| (ancestor::docinfo:assoc-links-grp)][parent::text][preceding-sibling::node()[1][self::remotelink[ @service = 'DOC-ID' ]]][$streamID='UK15']" priority="2">
		<xsl:call-template name="remotelinkDOCID"/>
	</xsl:template>

<!-- Vikas Rohilla : included for the UK12	-->
	<xsl:template match="remotelink[@refpt=''][$streamID='UK12']" priority="25">
		<ref:lnlink>
			<ref:marker>
				<xsl:apply-templates select="node()"/>
			</ref:marker>
				<ref:locator>
					<xsl:apply-templates select="@refpt"/>					
				</ref:locator>
		</ref:lnlink>		
	</xsl:template>
	<xsl:template match="remotelink/@refpt[$streamID='UK12']" priority="25">
		<xsl:choose>
			<xsl:when test="normalize-space(.)!=''">
				<xsl:attribute name="anchoridref">
					<xsl:call-template name="normalizeIdString"/>
				</xsl:attribute>		
			</xsl:when>
			<xsl:otherwise>
				<xsl:comment>Mandatory element according to the CI</xsl:comment>
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select=" 'remotelink/@refpt is missing and link cannot be correctly completed' "/>
					<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
					<xsl:with-param name="errorCode" as="xs:string*" select=" 'TBD' "/>
					<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<!--SS 28-11-2017: Added handling of remotelink/@refpt='dummy' value comes in HK07.-->
	<xsl:template match="remotelink[@refpt='dummy' and @status='unval'][$streamID='HK07']">
		<xsl:apply-templates/>
	</xsl:template>

	
	<!-- @@@  SBy:  below is from Awntika and likely from QC code base, but not mentioned in DITA so commenting out for now -->

	<!--xsl:template match="remotelink[@service=ATTACHMENT]">
		<!-/-  Original Target XPath:  ref:lnlink[@service="ATTACHMENT"]   -/->
		<xsl:element name="ref:lnlink">
			<xsl:attribute name="service"><xsl:text>URL</xsl:text></xsl:attribute>
			<xsl:element name="ref:marker">
				<xsl:apply-templates/>
			</xsl:element>
			<xsl:element name="ref:locator">
				<xsl:element name="ref:locator-key">
					<xsl:element name="ref:key-name">
						<xsl:attribute name="name"><xsl:value-of select="@remotekey1='DOC-ID' or @remotekey1='DOCID'"/></xsl:attribute>
					</xsl:element>
					<xsl:element name="ref:key-value">
						<xsl:attribute name="value"><xsl:value-of select="@dpsi"/><xsl:text>_</xsl:text><xsl:choose><xsl:when test="@docidref"><xsl:value-of select="./@docidref"/></xsl:when><xsl:otherwise><xsl:value-of select="./@refpt"/></xsl:otherwise></xsl:choose></xsl:attribute>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="remotelink[parent::glp:note]">
		<xsl:element name="note">
			<xsl:element name="bodytext">
				<xsl:element name="p">
					<xsl:element name="text">
						<ref:crossreference>
							<xsl:attribute name="crossreferencetype">See Also</xsl:attribute>
							<ref:content>
								<xsl:if test="remotelink[@xml:lang]">
									<xsl:attribute name="xml:lang"><xsl:value-of select="@xml:lang"/></xsl:attribute>
								</xsl:if>
								<xsl:apply-templates/>
							</ref:content>
							<xsl:element name="ref:locator">
								<xsl:choose>
									<xsl:when test="@remotekey1='DOC-ID' or @remotekey1='DOCID'">
										<xsl:element name="ref:locator-key">
											<xsl:element name="ref:key-name">
												<xsl:attribute name="name"><xsl:text>DOC-ID</xsl:text></xsl:attribute>
											</xsl:element>
											<xsl:element name="ref:key-value">
												<xsl:attribute name="value"><xsl:choose><xsl:when test="@dpsi"><xsl:value-of select="@dpsi"/><xsl:text>-</xsl:text></xsl:when><xsl:when test="../docinfo:dpsi/@id-string"><xsl:value-of select="../docinfo:dpsi/@id-string"/></xsl:when><xsl:otherwise>***no dpsi</xsl:otherwise></xsl:choose><xsl:choose><xsl:when test="@remotekey2"><xsl:value-of select="@remotekey2"/></xsl:when><xsl:otherwise><xsl:value-of select="@refpt"/></xsl:otherwise></xsl:choose></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</xsl:when>
									<xsl:when test="@remotekey1='REFPTID'">
										<xsl:attribute name="anchoridref"><xsl:choose><xsl:when test="contains('0123456789', substring(@refpt,1,1))"><xsl:text>_</xsl:text><xsl:value-of select="@refpt or @remotelink2"/></xsl:when><xsl:otherwise><xsl:value-of select="@refpt"/></xsl:otherwise></xsl:choose></xsl:attribute>
									</xsl:when>
								</xsl:choose>
							</xsl:element>
						</ref:crossreference>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="remotelink[child::inlineobject]">
		<xsl:element name="ref:lnlink">
			<xsl:attribute name="service"><xsl:text>URL</xsl:text></xsl:attribute>
			<xsl:element name="ref:marker">
				<xsl:apply-templates/>
			</xsl:element>
			<xsl:element name="ref:locator">
				<xsl:element name="ref:locator-key">
					<xsl:element name="ref:key-name">
						<xsl:attribute name="name"><xsl:text>URL</xsl:text></xsl:attribute>
					</xsl:element>
					<xsl:element name="ref:key-value">
						<xsl:attribute name="value"><xsl:value-of select="normalize-space(@href)"/></xsl:attribute>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template match="docinfo:assoc-links/remotelink[@service='DOC-ID']">
		<!-/-  Original Target XPath:  ref:crossreference   -/->
		<xsl:element name="doc:related-content">
			<xsl:element name="doc:related-content-item">
				<xsl:element name="doc:related-content-link">
					<xsl:element name="ref:lnlink">
						<xsl:attribute name="service"><xsl:text>DOCUMENT</xsl:text></xsl:attribute>
						<xsl:element name="ref:marker">
							<xsl:value-of select="./remotelink[@service='DOC-ID']"/>
						</xsl:element>
						<xsl:element name="ref:locator">
							<xsl:attribute name="anchoridref"><xsl:choose><xsl:when test="./remotelink[@service='DOC-ID']/@refpt"><xsl:value-of select="./remotelink[@service='DOC-ID']/@refpt"/></xsl:when><xsl:otherwise><xsl:value-of select="./remotelink[@service='DOC-ID']/@remotekey2"/></xsl:otherwise></xsl:choose></xsl:attribute>
							<xsl:element name="ref:locator-key">
								<xsl:element name="ref:key-name">
									<xsl:attribute name="name"><xsl:value-of select="./remotelink[@service='DOC-ID']/@service"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="ref:key-value">
									<xsl:attribute name="value"><xsl:value-of select="./remotelink[@service='DOC-ID']/@dpsi"/><xsl:text>-</xsl:text><xsl:value-of select="remotelink[@service='DOC-ID']/@remotekey2"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</xsl:element>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template-->
	

</xsl:stylesheet>