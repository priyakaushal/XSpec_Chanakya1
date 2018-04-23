<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Overview_cttr.annotations-LatestCases">
  <title>cttr:body/cttr:content/cttr:annotations - Latest Cases <lnpid>id-AU20-22245</lnpid></title>
  
  <body>
    <section>
      <p>If <sourcexml>cttr:annotations[@id="OP25"]</sourcexml> or <sourcexml>cttr:annotations/cttr:annotsummary[@id="OP25"]</sourcexml> 
        create <targetxml>ref:relatedcontent[@xml:id="refsection-OP25"][@contenttype="case-activity-latest-cases"]</targetxml>.</p>
    	<note>EXCEPTION: if the source <sourcexml>cttr:annotations[@id="OP25"]</sourcexml> or 
    		<sourcexml>cttr:annotations/cttr:annotsummary[@id="OP25"]</sourcexml> 
    		contains no descendant text nodes with non-whitespace text within <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml>, 
    		and no descendant text nodes with non-whitespace text within <sourcexml>cttr:annotations/cttr:annot</sourcexml>, 
    		do not create any output for this source content at all.</note>
      <p>Create <targetxml>ref:anchor[@id="ref-case-activity-latest-cases"]</targetxml> within 
        <targetxml>ref:relatedcontent</targetxml>.</p>
      <p>Create <targetxml>ref:relatedcontent/heading/title</targetxml> using the first matching condition below:
        <ul>
          <li>If <sourcexml>cttr:annotations/heading/title</sourcexml> contains "Latest Cases" (case insensitive),  
            use standard mapping to <targetxml>ref:relatedcontent/heading/title</targetxml>.</li>
          <li>If <sourcexml>cttr:annotations/@display-name</sourcexml> contains "Latest Cases" (case insensitive),  
            map <sourcexml>cttr:annotations/@display-name</sourcexml> to <targetxml>ref:relatedcontent/heading/title</targetxml>.</li>
          <li>If <sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> contains "Latest Cases" (case insensitive),  
            map <sourcexml>cttr:annotations/cttr:annotsummary/@display-name</sourcexml> to 
            <targetxml>ref:relatedcontent/heading/title</targetxml>.</li>
          <li>Otherwise create <targetxml>ref:relatedcontent/heading/title</targetxml> containing "Latest Cases".</li>
        </ul>
      </p>
      <p>For <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml>:
        <ul>
          <li>Note that the following mappings in this list do not use standard mapping for <sourcexml>lnlink</sourcexml>.</li>
          <li>Each <sourcexml>table/tgroup/tbody/row/entry[@colname="case"]</sourcexml> becomes a separate <targetxml>ref:relatedcontentitem</targetxml> 
            child of <targetxml>ref:relatedcontent</targetxml>, and within each map the following: 
            <ul>
              <li>Map <sourcexml>entry/lnlink/marker</sourcexml> to <targetxml>ref:relatedcontentitem/ref:crossreference/ref:content</targetxml>. 
                Note that the rest of the <sourcexml>lnlink</sourcexml> is ignored.</li>
              <li>Map <sourcexml>entry/text()</sourcexml> (i.e. the text content directly within <sourcexml>entry</sourcexml>) 
                to <targetxml>ref:relatedcontentitem/ref:relatedcontentdescription/p/text</targetxml>.</li>
            </ul>
          </li>
        </ul>
      </p>
      <p>For <sourcexml>cttr:annotations/cttr:annot</sourcexml>:
        <ul>
          <li>Each <sourcexml>cttr:annot</sourcexml> becomes a separate <targetxml>ref:relatedcontentitem</targetxml> 
            child of <targetxml>ref:relatedcontent</targetxml>, and within each map 
            <sourcexml>cttr:annot/case:citations/case:citetext/ci:cite</sourcexml> to 
            <targetxml>ref:relatedcontentitem/lnci:cite</targetxml>.  If 
            <sourcexml>remotelink/inlineobject</sourcexml> occurs within <sourcexml>ci:content</sourcexml>, map it 
            to <targetxml>ref:relatedcontentitem/ref:crossreference</targetxml> using the instructions 
            provided in the general markup section for "<sourcexml>remotelink/inlineobject</sourcexml> for Casebase Signal to 
            <targetxml>ref:crossreference</targetxml>". The target <targetxml>ref:crossreference</targetxml> element 
            should be a sibling of <targetxml>lnci:cite</targetxml> (i.e. both elements children of the same 
            <targetxml>ref:relatedcontentitem</targetxml> element. Note that this mapping instruction will "pull up" any 
            <sourcexml>remotelink/inlineobject</sourcexml> casebase signal markup that is within the 
            source document citation's <sourcexml>ci:content</sourcexml> element, to be outside of the target 
            document citation's <targetxml>lnci:cite</targetxml> element.</li>
          <li>If <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml> exists, it becomes 
            <targetxml>ref:relatedcontentitem/ref:crossreference</targetxml>, using the instructions 
            provided in the general markup section for "<sourcexml>remotelink/inlineobject</sourcexml> for Casebase Signal to 
            <targetxml>ref:crossreference</targetxml>". The target <targetxml>ref:crossreference</targetxml> element 
            should be a sibling of any other elements created from source markup inside the same 
            <sourcexml>cttr:annot</sourcexml> element that the <sourcexml>remotelink/inlineobject</sourcexml> is within.</li>
        </ul>
      </p>
    </section>

<example>
	<title>Example 1: Latest Cases Source Markup - with ci:content/remotelink/inlineobject</title>
	<codeblock>
&lt;cttr:annotations display-name="Latest Cases" id="OP25"&gt;
	&lt;!-- OP25 Most Recent Case --&gt;
	&lt;heading&gt;
		&lt;title&gt;Latest Cases&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						...
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						&lt;citefragment searchtype="CASE-CITE-REF"&gt;
							&lt;ci:span spanid="cb573697_0001"&gt;Alphapharm Pty Ltd v H
											Lundbeck A/S&lt;/ci:span&gt; FamCA·6/7/2011 &lt;/citefragment&gt;
						&lt;remotelink dpsi="0018" remotekey1="REFPTID" refpt="295808" service="DOC-ID"&gt;
							&lt;inlineobject alttext="Positive treatment indicated - Click for CaseBase entry" type="image" attachment="web-server" filename="2.gif"/&gt;
						&lt;/remotelink&gt;
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						...
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						&lt;citefragment searchtype="CASE-CITE-REF"&gt;
							&lt;ci:span spanid="cb573697_0002"&gt;Australian Competition and
											Consumer Commission (ACCC) v Cement Australia Pty Ltd
											(No 3)&lt;/ci:span&gt; FCA·30/5/2011 &lt;/citefragment&gt;
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						...
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						&lt;citefragment searchtype="CASE-CITE-REF"&gt;
							&lt;ci:span spanid="cb573697_0003"&gt;Australian Competition and
											Consumer Commission (ACCC) v Prysmian Cavi E Sistemi
											Energia SRL (No 4)&lt;/ci:span&gt; FCA·19/10/2010
									&lt;/citefragment&gt;
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        </codeblock>
	<title>Example 1: Latest Cases Target Markup - from Source with ci:content/remotelink/inlineobject</title>
	<codeblock>
&lt;ref:relatedcontent xml:id="refsection-OP25" contenttype="case-activity-latest-cases"&gt;
	&lt;ref:anchor id="ref-case-activity-latest-cases"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Latest Cases&lt;/title&gt;
	&lt;/heading&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			...
		&lt;/lnci:cite&gt;
		&lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcetype="citator" referencedresourcesentiment="positive"&gt;
			&lt;ref:content&gt;Positive treatment indicated&lt;/ref:content&gt;
			&lt;ref:locator anchoridref="_675199"&gt;
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0018-295808"/&gt;
				&lt;/ref:locator-key&gt;
			&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			...
		&lt;/lnci:cite&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			...
		&lt;/lnci:cite&gt;
	&lt;/ref:relatedcontentitem&gt;
&lt;/ref:relatedcontent&gt;        
        </codeblock>
</example>
<example>
	<title>Example 2: Latest Cases Source Markup - with cttr:annot/remotelink/inlineobject</title>
	<codeblock>
&lt;cttr:annotations display-name="Latest Cases" id="OP25"&gt;
	&lt;!-- OP25 Most Recent Case --&gt;
	&lt;heading&gt;
		&lt;title&gt;Latest Cases&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						...
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						...
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
		&lt;remotelink dpsi="0018" remotekey1="REFPTID" refpt="295808" service="DOC-ID"&gt;
			&lt;inlineobject alttext="Positive treatment indicated - Click for CaseBase entry" type="image" attachment="web-server" filename="2.gif"/&gt;
		&lt;/remotelink&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						...
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						...
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						...
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						...
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
</codeblock>
	<title>Example 2: Latest Cases Target Markup - from Source with cttr:annot/remotelink/inlineobject</title>
	<codeblock>
&lt;ref:relatedcontent xml:id="refsection-OP25" contenttype="case-activity-latest-cases"&gt;
	&lt;ref:anchor id="ref-case-activity-latest-cases"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Latest Cases&lt;/title&gt;
	&lt;/heading&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			...
		&lt;/lnci:cite&gt;
		&lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcetype="citator" referencedresourcesentiment="positive"&gt;
			&lt;ref:content&gt;Positive treatment indicated&lt;/ref:content&gt;
			&lt;ref:locator anchoridref="_675199"&gt;
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0018-295808"/&gt;
				&lt;/ref:locator-key&gt;
			&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			...
		&lt;/lnci:cite&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			...
		&lt;/lnci:cite&gt;
	&lt;/ref:relatedcontentitem&gt;
&lt;/ref:relatedcontent&gt;        
        </codeblock>
</example>
<example>
	<title>Example 3: Source Markup: Latest Cases - with cttr:annot/case:citations or cttr:annotsummary/table</title>
	<codeblock>
&lt;cttr:annotations display-name="Latest Cases" id="OP25"&gt;
	&lt;!-- OP25 Most Recent Case --&gt;
	&lt;!--SNB MOD TO SOURCE: Added a set of latest case links extracted from LCIT-NT_ACT_1983-47_PROV3-OVERVIEW.xml to show the markup as currently delivered by LBU in table markup. Note that I also left some of the previous markup structure showing source markup with ctr:annot/case:citations.Consequently the following is not truly representative of a real source document since I dont think that both of these types of markup would co-exist within the same document, but I have included it this way for testing purposes to ensure that both source markup structures are supported by conversion and by presentation.--&gt;
	&lt;heading&gt;
		&lt;title&gt;Latest Cases&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:annotsummary display-name="Latest Cases" id="OP25"&gt;
		&lt;!--OP25 Most Recent Case--&gt;
		&lt;table&gt;
			&lt;title&gt;Latest Cases&lt;/title&gt;
			&lt;tgroup cols="1"&gt;
				&lt;colspec colname="case"/&gt;
				&lt;tbody&gt;
					&lt;row&gt;
						&lt;entry colname="case"&gt;
							&lt;lnlink status="unresolved"&gt;
								&lt;marker&gt;Birkeland-Corro v Tudor-Stack&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="label" value="Status graphic linked to case"/&gt;
									&lt;param name="casename" value="Birkeland-Corro v Tudor-Stack"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;NTSC·20/5/2005&lt;/entry&gt;
						&lt;entry colname="case"&gt;
							&lt;lnlink status="unresolved"&gt;
								&lt;marker&gt;Crowson v Millar&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="label" value="Status graphic linked to case"/&gt;
									&lt;param name="casename" value="Crowson v Millar"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;NTSC·15/12/2014&lt;/entry&gt;
						&lt;entry colname="case"&gt;
							&lt;lnlink status="unresolved"&gt;
								&lt;marker&gt;Director of Public Prosecutions (DPP) (NT) v WJI&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="label" value="Status graphic linked to case"/&gt;
									&lt;param name="casename" value="Director of Public Prosecutions (DPP) (NT) v WJI"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;HCA·6/10/2004&lt;/entry&gt;
					&lt;/row&gt;
				&lt;/tbody&gt;
			&lt;/tgroup&gt;
		&lt;/table&gt;
	&lt;/cttr:annotsummary&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						&lt;ci:caseref spanref="cb573697_0001"&gt;
							&lt;ci:reporter value="Fam LR"/&gt;
							&lt;ci:edition status="valid"&gt;
								&lt;ci:date year="2013"/&gt;
							&lt;/ci:edition&gt;
							&lt;ci:page num="303"/&gt;
						&lt;/ci:caseref&gt;
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						&lt;citefragment searchtype="CASE-CITE-REF"&gt;
							&lt;ci:span spanid="cb573697_0001"&gt;Alphapharm Pty Ltd v H
											Lundbeck A/S&lt;/ci:span&gt; FamCA·6/7/2011 &lt;/citefragment&gt;
						&lt;!--SNB MOD TO SOURCE: Added a casebase signal based upon sample sent by LBU--&gt;
						&lt;remotelink dpsi="0018" remotekey1="REFPTID" refpt="295808" service="DOC-ID"&gt;
							&lt;inlineobject alttext="Positive treatment indicated - Click for CaseBase entry" type="image" attachment="web-server" filename="2.gif"/&gt;
						&lt;/remotelink&gt;
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				&lt;ci:cite searchtype="CASE-REF"&gt;
					&lt;ci:case&gt;
						&lt;ci:caseref spanref="cb573697_0002"&gt;
							&lt;ci:reporter value="Fam LR"/&gt;
							&lt;ci:edition status="valid"&gt;
								&lt;ci:date year="2013"/&gt;
							&lt;/ci:edition&gt;
							&lt;ci:page num="303"/&gt;
						&lt;/ci:caseref&gt;
					&lt;/ci:case&gt;
					&lt;ci:content popname="0"&gt;
						&lt;citefragment searchtype="CASE-CITE-REF"&gt;
							&lt;ci:span spanid="cb573697_0002"&gt;Australian Competition and
											Consumer Commission (ACCC) v Cement Australia Pty Ltd
											(No 3)&lt;/ci:span&gt; FCA·30/5/2011 &lt;/citefragment&gt;
					&lt;/ci:content&gt;
				&lt;/ci:cite&gt;
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        </codeblock>
	<title>Example 3: Target Markup: Latest Cases - ref:relatedcontent from source with cttr:annot/case:citations or cttr:annotsummary/table</title>
	<codeblock>
&lt;ref:relatedcontent xml:id="refsection-OP25" contenttype="case-activity-latest-cases"&gt;
	&lt;ref:anchor id="ref-case-activity-latest-cases"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Latest Cases&lt;/title&gt;
	&lt;/heading&gt;
	&lt;!--SNB MOD TO SOURCE: Added a set of latest case links extracted from LCIT-NT_ACT_1983-47_PROV3-OVERVIEW.xml to show the markup as currently delivered by LBU in table markup. Note that I also left some of the previous markup structure showing source markup with ctr:annot/case:citations.Consequently the following is not truly representative of a real source document since I dont think that both of these types of markup would co-exist within the same document, but I have included it this way for testing purposes to ensure that both source markup structures are supported by conversion and by presentation.--&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;ref:crossreference&gt;
			&lt;ref:content&gt;Birkeland-Corro v Tudor-Stack&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;NTSC·20/5/2005&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;ref:crossreference&gt;
			&lt;ref:content&gt;Crowson v Millar &lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;NTSC·15/12/2014&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;ref:crossreference&gt;
			&lt;ref:content&gt;Director of Public Prosecutions (DPP) (NT) v WJI&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
		&lt;ref:relatedcontentdescription&gt;
			&lt;p&gt;
				&lt;text&gt;HCA·6/10/2004&lt;/text&gt;
			&lt;/p&gt;
		&lt;/ref:relatedcontentdescription&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			&lt;lnci:case&gt;
				&lt;lnci:caseref&gt;
					&lt;lnci:reporter value="Fam LR"/&gt;
					&lt;lnci:edition status="valid"&gt;
						&lt;lnci:date year="2013"/&gt;
					&lt;/lnci:edition&gt;
					&lt;lnci:page num="303"/&gt;
				&lt;/lnci:caseref&gt;
			&lt;/lnci:case&gt;
			&lt;lnci:content&gt;Alphapharm Pty Ltd v H
                                                                                                                                                                          

      Lundbeck A/S FamCA·6/7/2011 &lt;/lnci:content&gt;
		&lt;/lnci:cite&gt;
		&lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcetype="citator" referencedresourcesentiment="positive"&gt;
			&lt;ref:content&gt;Positive treatment indicated&lt;/ref:content&gt;
			&lt;ref:locator anchoridref="_675199"&gt;
				&lt;ref:locator-key&gt;
					&lt;ref:key-name name="DOC-ID"/&gt;
					&lt;ref:key-value value="0018-295808"/&gt;
				&lt;/ref:locator-key&gt;
			&lt;/ref:locator&gt;
		&lt;/ref:crossreference&gt;
	&lt;/ref:relatedcontentitem&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;lnci:cite&gt;
			&lt;lnci:case&gt;
				&lt;lnci:caseref&gt;
					&lt;lnci:reporter value="Fam LR"/&gt;
					&lt;lnci:edition status="valid"&gt;
						&lt;lnci:date year="2013"/&gt;
					&lt;/lnci:edition&gt;
					&lt;lnci:page num="303"/&gt;
				&lt;/lnci:caseref&gt;
			&lt;/lnci:case&gt;
			&lt;lnci:content&gt;Australian Competition and
                                                                                                                                                                          

      Consumer Commission (ACCC) v Cement Australia Pty Ltd
                                                                                                                                                                          

      (No 3) FCA·30/5/2011 &lt;/lnci:content&gt;
		&lt;/lnci:cite&gt;
	&lt;/ref:relatedcontentitem&gt;
&lt;/ref:relatedcontent&gt;
        </codeblock>
</example>

    <section>
      <title>
        Changes:
      </title>
    	<p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress output when only whitespace  
    		exists within descendant text nodes within  <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml> and 
    		<sourcexml>cttr:annotations/cttr:annot</sourcexml>.</ph></p>
    	<p>2016-03-01: <ph id="change_20160301b_snb">Modifications for WebTeam #321704. Changed logic to create title 
        to use additional source XPATHs for the source title. Note that it was intentional to structure logic rather than 
        use an fixed title to support changes in the source title markup (e.g. use of emphasis, links, etc). Added mappings 
        for <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml> (found in some current LBU source documents), 
        and enclosed mappings for <sourcexml>cttr:annotations/cttr:annot</sourcexml> 
        (already in this CI) inside of a separate bulleted list to separate it from the table mappings. Added example for 
        <sourcexml>cttr:annotations/cttr:annotsummary/table</sourcexml> scenario.</ph>
      </p>
      <p>2016-01-13: <ph id="change_20160113d_snb">Added mapping of casebase signals; mapped  
        <sourcexml>remotelink/inlineobject</sourcexml> 
        within <sourcexml>ci:content</sourcexml> to "pull it up" in the target document to be 
        <targetxml>ref:relatedcontentitem/ref:crossreference</targetxml>. Added mapping of 
        casebase signals in <sourcexml>cttr:annot/remotelink/inlineobject</sourcexml>. 
        Updated target markup example accordingly.</ph>
      </p>
      <p>2015-12-11: <ph id="change_20151211n_snb">Created new section for "Latest Cases".</ph>
      </p>
    </section> 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-LatestCases.dita  -->
	 

	<xsl:template match="source_cttr:annotations[@id='OP25'] | source_cttr:annotations/source_cttr:annotsummary[@id='OP25']">
		<xsl:variable name="annotation-data" select="normalize-space(.)"/>
		<xsl:variable name="title-data" select="normalize-space(./table/title)"/>
		<xsl:choose>
			<xsl:when test="$annotation-data = $title-data"/>
			<xsl:otherwise><ref:relatedcontent>
				<xsl:attribute name="xml:id">
					<xsl:text>refsection-OP25</xsl:text>				
				</xsl:attribute>
				<xsl:attribute name="contenttype">
					<xsl:text>case-activity-latest-cases</xsl:text>	
				</xsl:attribute>
				<xsl:element name="ref:anchor">
					<xsl:attribute name="id"><xsl:text>ref-case-activity-latest-cases</xsl:text></xsl:attribute>
				</xsl:element>
				<xsl:choose>
					<xsl:when test="heading/title[.='Latest Cases']">
						<heading>
							<xsl:apply-templates select="title"/>					
						</heading>
					</xsl:when>
					<xsl:when test="@display-name.[.='Latest Cases']">
						<heading>
							<xsl:apply-templates select="title"/>					
						</heading>
					</xsl:when>
					<xsl:otherwise>
						<heading>
							<title>Latest Cases</title>
						</heading>
					</xsl:otherwise>
				</xsl:choose>		
				<xsl:if test="table/tgroup/tbody/row">
					<xsl:for-each select="table/tgroup/tbody/row/entry">
						<ref:relatedcontentitem>
							<xsl:if test="lnlink/marker">
								<ref:crossreference>
									<ref:content>
										<xsl:apply-templates select="lnlink/marker/text()"/>
									</ref:content>
								</ref:crossreference>
							</xsl:if>
							<xsl:if test="text()">
								<ref:relatedcontentdescription>
									<p>
										<text>
											<xsl:apply-templates select="text()"/>
										</text>
									</p>
								</ref:relatedcontentdescription>
							</xsl:if>
						</ref:relatedcontentitem>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="source_cttr:annot">
					<xsl:for-each select="source_cttr:annot">
						<ref:relatedcontentitem>
							<xsl:if test="case:citations/case:citetext/ci:cite">
								<xsl:apply-templates select="lnci:cite"/>
								<xsl:if test="ci:content[child::remotelink or child::inlineobject]">
									<!-- Awantika: Need to create the template for casebasesignal ID-10536 -->
									<xsl:apply-templates/>
								</xsl:if>
							</xsl:if>
							<xsl:if test="remotelink/inlineobject">
								<ref:relatedcontentitem>
									<ref:crossreference>
										<!-- Awantika: Need to create the template for casebasesignal ID-10536 -->
										<xsl:apply-templates/>
									</ref:crossreference>
								</ref:relatedcontentitem>
							</xsl:if>
						</ref:relatedcontentitem>
					</xsl:for-each>
				</xsl:if>
			</ref:relatedcontent></xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	

	

	<!--<xsl:template match="cttr:annotations/cttr:annotsummary[@id=&#34;OP25&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent[@xml:id="refsection-OP25"][@contenttype="case-activity-latest-cases"]   -\->
		<ref:relatedcontent>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/table"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-latest-cases"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annot"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-case-activity-latest-cases"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading/title"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent/heading/title   -\->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/@display-name"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent/heading/title   -\->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annotsummary/@display-name"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent/heading/title   -\->
		<ref:relatedcontent>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="lnlink"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem   -\->
		<ref:relatedcontentitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="table/tgroup/tbody/row/entry[@colname=&#34;case&#34;]"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem   -\->
		<ref:relatedcontentitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="entry/lnlink/marker"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:crossreference/ref:content   -\->
		<ref:relatedcontentitem>
			<ref:crossreference>
				<ref:content>
					<xsl:apply-templates select="@* | node()"/>
				</ref:content>
			</ref:crossreference>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="entry/text()"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:relatedcontentdescription/p/text   -\->
		<ref:relatedcontentitem>
			<ref:relatedcontentdescription>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</ref:relatedcontentdescription>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="entry"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:relatedcontentdescription/p/text   -\->
		<ref:relatedcontentitem>
			<ref:relatedcontentdescription>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</ref:relatedcontentdescription>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="cttr:annot"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem   -\->
		<ref:relatedcontentitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="cttr:annot/case:citations/case:citetext/ci:cite"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/lnci:cite   -\->
		<ref:relatedcontentitem>
			<lnci:cite>
				<xsl:apply-templates select="@* | node()"/>
			</lnci:cite>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="remotelink/inlineobject"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:crossreference   -\->
		<ref:relatedcontentitem>
			<ref:crossreference>
				<xsl:apply-templates select="@* | node()"/>
			</ref:crossreference>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="ci:content"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:crossreference   -\->
		<ref:relatedcontentitem>
			<ref:crossreference>
				<xsl:apply-templates select="@* | node()"/>
			</ref:crossreference>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="cttr:annot/remotelink/inlineobject"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:crossreference   -\->
		<ref:relatedcontentitem>
			<ref:crossreference>
				<xsl:apply-templates select="@* | node()"/>
			</ref:crossreference>
		</ref:relatedcontentitem>

	</xsl:template>-->

</xsl:stylesheet>