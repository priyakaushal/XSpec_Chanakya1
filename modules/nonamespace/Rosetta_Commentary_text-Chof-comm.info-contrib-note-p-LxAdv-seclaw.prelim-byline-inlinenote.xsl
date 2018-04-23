<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_COMMENTARY_comm.info-contrib-note-p-text-to-LexisAdvance_seclaw.prelim-byline-inlinenote.dita">
  <title>(Commentary) <sourcexml>comm:info/contrib/note/p/text</sourcexml> to
    <targetxml>seclaw:prelim/byline/inlinenote</targetxml> <lnpid>id-CCCC-10271</lnpid></title>
<body>
	<section>
		<title>Instructions</title>
	    <p><sourcexml>comm:info/contrib/note/p/text</sourcexml> becomes <targetxml>seclaw:prelim/byline/inlinenote[@notetype="contributor"]</targetxml>.</p>
	    <p>The resulting <targetxml>seclaw:prelim/byline/inlinenote[@notetype="contributor"]</targetxml> is placed within the target document's main <targetxml>seclaw:level</targetxml>.</p>
		<p>The text and element content of <sourcexml>comm:info/contrib/note/p/text</sourcexml> maps to become  
			the content of <targetxml>seclaw:prelim/byline/inlinenote[@notetype="contributor"]</targetxml>.</p>
		<p>Exceptional mapping for LPA only: If <sourcexml>comm:info/contrib/note/p/text/person</sourcexml> exists, <sourcexml>person</sourcexml> requires different 
			mapping than specified in other parts of this instruction. The following scenarios exist:
			<ul>
				<li>If <sourcexml>comm:info/contrib/note/p/text/person/remotelink[@href]</sourcexml> exists, then 
					<sourcexml>person</sourcexml> element is dropped, but its child <sourcexml>remotelink</sourcexml> 
					element is mapped following the mapping instructions instructions for <sourcexml>remotelink/@href</sourcexml> 
					(id-CCCC-10467) in the General Markup section of this Conversion Instruction.</li>
				<li>Otherwise, <sourcexml>comm:info/contrib/note/p/text/person</sourcexml> 
					becomes <targetxml>seclaw:prelim/byline/inlinenote[@notetype="contributor"]/person:person</targetxml>. 
					using the instructions provided in <sourcexml>person</sourcexml> to <targetxml>person:person</targetxml> 
					(id-CCCC-10428) in the General Markup section of this Conversion Instruction.</li>
			</ul>
		</p>
   
	</section>
	
    <example>
		<title>Source XML</title>
		<codeblock>

&lt;comm:info&gt;
&lt;contrib&gt;
&lt;note&gt;
&lt;p&gt;
&lt;text&gt;&lt;emph typestyle="ib"&gt;Form Adapted for Use in Lexis Practice Advisor and Drafting Notes
Provided By:&lt;/emph&gt; Robert C. Kern, Jr., Moses &amp;amp; Singer LLP&lt;/text&gt;
&lt;/p&gt;
&lt;/note&gt;
&lt;/contrib&gt;
&lt;/comm:info&gt;

	</codeblock>
    </example>
	
    <example>
		<title>Target XML</title>
		<codeblock>

&lt;seclaw:level leveltype="form"&gt;
&lt;heading&gt;
&lt;title&gt;Short Form Commercial Loan Agreement&lt;/title&gt;
&lt;/heading&gt;
&lt;seclaw:prelim&gt;
&lt;byline&gt;
&lt;inlinenote notetype="contributor"&gt;&lt;emph typestyle="ib"&gt;Form Adapted 
for Use in Lexis Practice Advisor and Drafting Notes
Provided By:&lt;/emph&gt; Robert C. Kern, Jr., Moses &amp;amp; Singer LLP
&lt;/inlinenote&gt;
&lt;/byline&gt;
&lt;/seclaw:prelim&gt;
&lt;seclaw:bodytext&gt;
[...]
&lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

	</codeblock>
    </example>
	<example>
		<title>Source XML containing <sourcexml>person/remotelink/@href</sourcexml></title>
		<codeblock>
&lt;comm:info>
	&lt;contrib>
		&lt;person>
			&lt;name.text>J. Bryan Echols&lt;/name.text>
			&lt;remotelink href="www.lexisnexis.com/en-us/practice-advisor-authors/real-estate.page#j-bryan-echols" hrefclass="http">J. Bryan Echols&lt;/remotelink>
		&lt;/person>
		&lt;note>
			&lt;p>
				&lt;text>by &lt;person>
						&lt;name.text>J. Bryan Echols&lt;/name.text>
						&lt;remotelink href="http://www.lexisnexis.com/en-us/practice-advisor-authors/zzzz" hrefclass="http">J. Bryan Echols&lt;/remotelink>
					&lt;/person>, Waller Lansden Dortch &amp;amp; Davis LLP&lt;/text>
			&lt;/p>
		&lt;/note>
	&lt;/contrib>
&lt;/comm:info>
</codeblock>

		<title>Target XML containing <targetxml>person:person/url</targetxml></title>
		<codeblock>
&lt;seclaw:body>
	&lt;seclaw:level leveltype="topic">
		&lt;ref:anchor anchortype="global" id="_0QYC_1657397"/>
		&lt;seclaw:prelim>
			&lt;byline>
				&lt;inlinenote notetype="contributor">by &lt;ref:lnlink service="URL">
						&lt;ref:marker>J. Bryan Echols&lt;/ref:marker>
						&lt;ref:locator>
							&lt;ref:locator-key>
								&lt;ref:key-name name="URL"/>
								&lt;ref:key-value value="http://www.lexisnexis.com/en-us/practice-advisor-authors/zzzz"/>
							&lt;/ref:locator-key>
						&lt;/ref:locator>
					&lt;/ref:lnlink>, Waller Lansden Dortch &amp;amp; Davis LLP&lt;/inlinenote>
			&lt;/byline>			...
		&lt;/seclaw:prelim>
		...
	&lt;/seclaw:level>
&lt;/seclaw:body>
</codeblock>
	</example>
<section>
    <title>Notes</title>
	<p>This mapping may need to be revised if more complicated examples of "notes" within contributor markup turn up.  A more scalable solution might be to make a schema change to allow <targetxml>note</targetxml> as a child of <targetxml>seclaw:prelim</targetxml>.</p>
</section>

    <section>
		<title>Changes</title>
    	<p>2017-04-24: <ph id="change_20170424_snb">LPA 2017 enhancements: Changed the mapping by adding 
    		special handling for <sourcexml>comm:info/contrib/note/p/text/person</sourcexml>, including use 
    		of a newly included mapping rule for <sourcexml>remotelink/@href</sourcexml> 
    		(id-CCCC-10467) in the General Markup section of this Conversion Instruction. Adding a markup 
    		example to illustrate the unique mapping.</ph></p>
		<p>2012-09-11: <ph id="change_20120419_sk">- Created.</ph></p>
    </section>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_Commentary_text-Chof-comm.info-contrib-note-p-LxAdv-seclaw.prelim-byline-inlinenote.dita  -->


<!-- this may  need more careful placement once testing in context -->
	
	<xsl:template match="comm:info/contrib/note[not(preceding::contrib/note)]" mode="inline_note">
		<seclaw:prelim>
			<byline xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<inlinenote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:attribute name="notetype">contributor</xsl:attribute>
					<xsl:apply-templates select="@* | node()" mode="inline_note"/>
				</inlinenote>
			</byline>
			<xsl:apply-templates select="following::contrib/note" mode="contrib_note_wrapper"/>
			<xsl:if test="following::comm:body/level/levelprelim">
				<xsl:apply-templates select="following::comm:body/level/levelprelim"/>
			</xsl:if>
		</seclaw:prelim>
		<!-- SNB 2018-01-23 Webstar_7093076: similar to webstar 7091986 fix, 
               need to copy  following-level processing from the bodytext processing mentioned 
               in comment inside <xsl:template match="levelprelim">, so that following-level process 
               gets done here after prelim is closed. -->
		<xsl:if test="$streamID = 'USLPA' and following::comm:body/level/levelprelim[following-sibling::level and not(following-sibling::bodytext)]">
			<!-- SNB NOTE: in this case, prelim was created above and levelprelim was processed, but no bodytext after levelprelim that 
           will initiate following level processing (meat of document), so need to initiate it here after prelim is closed -->
			<seclaw:bodytext>
				<xsl:apply-templates select="following::comm:body/level/levelprelim/following-sibling::level"
					mode="bodytext_wrapper"/>
			</seclaw:bodytext>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="contrib/note" mode="contrib_note_wrapper">
		<byline xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<inlinenote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:attribute name="notetype">contributor</xsl:attribute>
				<xsl:apply-templates select="@* | node()" mode="inline_note"/>
			</inlinenote>
		</byline>
		<!-- SNB 2018-01-19 Webstar_7091986 : similar to webstar 7060631 fix, 
               need to copy of following level-processing from the bodytext processing mentioned 
               in comment inside <xsl:template match="levelprelim">, so that only happens if seclaw:prelim was opened AND closed first. 
               for case where prelim wasnt closed, will need to add following level process to other location where ...
               preceding::comm:info/contrib/note[not(preceding::comm:info/contrib/note)] was being processed because that 
               should be where prelim gets closed -->
		<xsl:if test="$streamID = 'USLPA' and following::comm:body/level/levelprelim[following-sibling::level and not(following-sibling::bodytext)]">
			<!-- SNB NOTE: in this case, prelim was created above and levelprelim was processed, but no bodytext after levelprelim that 
           will initiate following level processing (meat of document), so need to initiate it here after prelim is closed -->
			<seclaw:bodytext>
				<xsl:apply-templates select="following::comm:body/level/levelprelim/following-sibling::level" mode="bodytext_wrapper"/>
			</seclaw:bodytext>
		</xsl:if>
	</xsl:template>
	
   <!--SNB 2017-10-27 add template for 2nd and later comm:info/contrib/note elements that does nothing 
      so that default unexpected element template doesnt run and generate error. Note that these
      elements are dealt with inside of <xsl:template match="comm:info/contrib/note[not(preceding::contrib/note)]"
         mode="inline_note">-->
   <xsl:template match="comm:info/contrib/note[(parent::contrib[(preceding::contrib[note])])]" />

   <!-- SNB 2017-10-27 no change here, but just a note; dont think the following is doing what it's 
   intended to do (which my added template above does). There shouldnt be a preceding comm:info element
   before a comm:info/contrib/note element - think this is just a mistaken XPATH below -->
   <xsl:template match="contrib/note[preceding::comm:info/contrib/note]"/>
	
	<xsl:template match="note/p" mode="inline_note">
		<xsl:apply-templates select="@* | node()" mode="inline_note"/>
	</xsl:template>
	
	<xsl:template match="p/text" mode="inline_note">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	
</xsl:stylesheet>