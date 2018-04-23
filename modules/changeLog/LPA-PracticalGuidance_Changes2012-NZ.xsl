<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci comm docinfo glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_Changes2012">
  <title>Changes During 2012</title>
  <body>
    <p>Below are changes made during 2012. All changes made in 2013 and later now use a new format
      and are specified in the <xref href="LPA-PracticalGuidance_ChangeManagement-NZ.dita">next
        topic</xref>.</p>
  </body>

  <topic id="pg-changemanagement-element-43">
    <title>2013-01-17</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Added a phrase to the instructions in subtopic <i>bodytext/pgrp/heading and optional
              bodytext/pgrp/p</i> stating that the <targetxml>inlinenote@notetype</targetxml>
            attribute is to be set to "other", and added the notetype attribute to the corresponding
            example target XML.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-42">
    <title>2012-11-29</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>clause IDs</title>
        <ul>
          <li>2012-11-29: MLV - added explicit instruction for mapping clause@id to
            form:clause@xml:id.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-41">
    <title>2012-10-24</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Modified instructions regarding conversion of <sourcexml>bodytext/h/date</sourcexml>,
              <sourcexml>bodytext/p/text/date</sourcexml>, and
              <sourcexml>bodytext/pgrp/heading/title/date</sourcexml> that immediately follow a
              <sourcexml>remotelink</sourcexml> element. These are now converted to
              <targetxml>ref:referencestatusgroup/ref:referencestatusdate</targetxml> and the date
            value is put in the attributes <targetxml>ref:referencestatusdate/@year
              ref:referencestatusdate/@month ref:referencestatusdate/@day</targetxml> instead of
              <targetxml>ref:referencestatusgroup/ref:referencestatus/@value</targetxml>.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-40">
    <title>2012-09-28</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Guidance:<ul>
          <li>Updated instructions detailing the mapping of
              <sourcexml>glp:note[notetype="xref"]</sourcexml> to include the scenario when
              <sourcexml>glp:note[notetype="xref"]</sourcexml> is a child of
              <sourcexml>li</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-39">
    <title>2012-09-24</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <p>Added rule for lnlink handling within Landing Pages. Rule appplies to @status when links to
        ATTACHMENTs are made and smi value is not supplied.</p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-38">
    <title>2012-09-18</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Guidance:<ul>
          <li>Added instructions detailing the mapping of
              <sourcexml>bodytext/glp:note[notetype="xref"]</sourcexml> to
              <targetxml>seclaw:bodytext/p/text/marginnote</targetxml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-37">
    <title>2012-09-07</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages:<ul>
          <li>Changed the instructions for the subtopic <i>Landing Page Type "Home" or "Other
              Resources"</i> so that digests within these two landing page types are now converted
            to <targetxml>seclaw:digest/seclaw:digestinfo</targetxml> instead of
              <targetxml>seclaw:digest/bodytext</targetxml>.</li>
          <li>Added an instruction to the subtopic <i>Dates associated with remotelinks in landing
              page documents</i> indicating that a colon (":") preceding the
              <sourcexml>date</sourcexml> element should be dropped.</li>
        </ul>
      </p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-36">
    <title>2012-09-04</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Introduction and Landing Pages:<ul>
          <li>Added a note to explicitly specify that for dates where a day or month is only one
            digit in the source, this day or month should be output so it is padded with a leading 0
            to make it two digits.</li>
        </ul>
      </p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-35">
    <title>2012-08-24</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section><title>General Markup</title>
        <p>Updated the instructions for <sourcexml>footnotegrp</sourcexml> with directions to map
            <sourcexml>level/bodytext/footnotegrp</sourcexml> to
            <targetxml>seclaw:level/seclaw:bodytext/p/text/footnotegroup</targetxml></p></section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-34">
    <title>2012-08-21</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <p>Modified topic tree leveltype values mapping. New mapping from of leveltype within
        TopicTree documents will map values like 'AT-A'GLANCE', etc to '@leveltype="landingpage"'
        and 'HOME' should be to '@leveltype="topictree"' and 'xml:id="HOME"'.</p>
      <p>Mapping 'sub-topic' value maps to 'subtopic'</p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-33">
    <title>2012-08-20</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p><b>Changes Made As A Result of Kraken Link Resolution Protocol</b></p>
      <section>
        <title>Entire CI</title>
        <ul>
          <li>Changed all examples where <sourcexml>remotelink</sourcexml> appears.</li>
          <li>Changed instructions regarding <sourcexml>ci:cite/remotelink</sourcexml> conversion to
              <targetxml>lnci:cite</targetxml>.</li>
        </ul>
      </section>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Changed instructions regarding <sourcexml>remotelink</sourcexml> conversion to
              <targetxml>toc-entry</targetxml>.</li>
          <li>Removed instructions regarding a particular kind of
              <sourcexml>remotelink/@service="QUERY"</sourcexml> conversion to
              <targetxml>lnci:cite</targetxml>. This kind of link will be changed by the LBU to a
            link using <sourcexml>remotelink/@refptid and remotelink/@docifref</sourcexml>
            attributes.</li>
        </ul>
      </section>
      <section>
        <title>Guidance</title>
        <ul>
          <li>Removed instructions regarding a particular kind of
              <sourcexml>remotelink/@service="QUERY"</sourcexml> conversion to
              <targetxml>lnci:cite</targetxml>. This kind of link will be changed by the LBU to a
            link using <sourcexml>remotelink/@refptid and remotelink/@docifref</sourcexml>
            attributes.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-32">
    <title>2012-08-09</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Added instructions to convert <sourcexml>bodytext/h/date</sourcexml> and
              <sourcexml>bodytext/p/text/date</sourcexml> to
              <targetxml>ref:referencestatusgroup/ref:referencestatus/@name="updatedate"</targetxml>.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-31">
    <title>2012-08-02</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>Common markup - docinfo:lbu-metak</title>
        <ul>
          <li>Added instructions for handling topic-PGUID/sub-topic-PGUID/PA-PGUID values mapping
            from lbu-meta to classification.</li>
          <li>Added instructions for handling Module-PGUID values mapping from lbu-meta to
            doc:legacy-metadata/meta/metaitem.</li>
          <li>Added mapping for TopicTree documents - mapping of level@leveltype to
            seclaw:level@leveltype values for named landing pages and sub-topic.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-30">
    <title>2012-07-12</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Removed the substantive content of subtopic "4.2.9", but left it in the CI to preserve
            subtopic numbering, leaving just a short paragraph of explanation. Due to additional
            information from LBU, both "Checklist" and "Latest Legal Updates" type landing pages are
            now to be converted according to the instructions given in "4.2.11.", titled: Landing
            Page Type NOT "Home", "Other Resources", or "Guidance".</li>
        </ul>
      </section>
      <section>
        <title>Common markup - glp:note/remotelink</title>
        <ul>
          <li>Modified instruction for glp:note/remotelink handling when
            remotelink@service="DOC-ID".</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-29">
    <title>2012-07-11</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Changed instructions for "Checklist" landing pages. These are no longer converted
            according to subtopic "4.2.9". Instead, "Checklist" landing pages are be converted
            according to the instructions given in "4.2.11.", titled: Landing Page Type NOT "Home",
            "Other Resources", "Latest Legal Updates", or "Guidance".</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-28">
    <title>2012-07-11</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>Guidance</title>
        <ul>
          <li>Added instructions for handling <sourcexml>remotelink</sourcexml>.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-27">
    <title>2012-07-06</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Updated the instructions for handling <sourcexml>footnote/@type</sourcexml> with
            directions to supress <sourcexml>@type</sourcexml> when it has a value of
            "annotation".</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-26">
    <title>2012-07-03</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Updated the instructions for <sourcexml>remotelink</sourcexml> with directions for the
            situation when <sourcexml>remotelink</sourcexml> doesn't have any attributes.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-25">
    <title>2012-06-29</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages:<ul>
          <li>Added the phrase "or any of its subelements" in key places to emphasize that when the
            phrases "does contain" or "does not contain" are used, they mean to indicate all
            children, sub-children, etc. and not just direct children.</li>
          <li>Added a sentence about wrapping <targetxml>emph</targetxml> with
              <targetxml>seclaw:subjectmattertext</targetxml> in instructions about converting to
              <targetxml>seclaw:subjectmatterreference</targetxml>.</li>
          <li>Replaced the temporary note regarding creating an "empty"
              <targetxml>ref:alternaterenditions</targetxml> element with a note that explicitly
            says no "empty" <targetxml>ref:alternaterenditions</targetxml> element should be
            created. Also modified the example showing what to do in this scenario.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-24">
    <title>2012-06-28</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>General Markup:<ul>
          <li>Added an instruction to <sourcexml>url</sourcexml> for the use case where
              <sourcexml>remotelink</sourcexml> begins with "www." as well as an example of this
            conversion.</li>
        </ul></p>
      <p>Landing Pages:<ul>
          <li>Corrected several references mentioning <targetxml>ref:byline</targetxml>; these
            should be <targetxml>byline</targetxml> (no "ref:" namespace).</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-23">
    <title>2012-06-27</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Added instructions for the scenario when <sourcexml>l</sourcexml> has 2 or more
            consecutive <sourcexml>glp:note</sourcexml> children.</li>
        </ul>
      </section>
      <section>
        <title>Guidance</title>
        <ul>
          <li>Added instructions to handle the scenario when <sourcexml>level/@id</sourcexml>
            contains a compound value that represents 2 or more jurisdictions.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-22">
    <title>2012-06-25</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages:<ul>
          <li>Added <targetxml>url</targetxml> to list of direct children of
              <targetxml>seclaw:subjectmatterreference</targetxml> given in several places.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-21">
    <title>2012-06-24</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages:<ul>
          <li>Added temporary note regarding generation of "empty"
              <targetxml>ref:altrenditions</targetxml> when <sourcexml>person</sourcexml> occurs
            without an associated <sourcexml>lnlink</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-20">
    <title>2012-06-22</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>General Markup:<ul>
          <li>Corrected instruction for <sourcexml>url</sourcexml> to show mapping to
              <targetxml>ref:lnlink</targetxml> (instead of
              <targetxml>ref:crossreference</targetxml>) when content of
              <sourcexml>remotelink</sourcexml> does <b>not</b> begin with "http".</li>
        </ul>
      </p>
      <p>Landing Pages:<ul>
          <li>Simplified instructions relating to when to create
              <targetxml>seclaw:subjectmatterreference</targetxml> vs.
              <targetxml>ref:subjectmattercite</targetxml>. </li>
          <li>Added an instruction to map text within
              <targetxml>seclaw:subjectmatterreference</targetxml> to
              <targetxml>seclaw:subjectmattertext</targetxml>.</li>
          <li>Removed specific <sourcexml>url</sourcexml> instructions and referred to the common
            element url instruction in General Markup.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-19">
    <title>2012-06-22</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Guidance:<ul>
          <li>Added instructions that <sourcexml>level/@id</sourcexml> should map to
              <targetxml>seclaw:level/@xml:id</targetxml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-18">
    <title>2012-06-18</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Corrected an error in all instructions regarding conversion of
              <sourcexml>bodytext/p</sourcexml> to
              <targetxml>seclaw:subjectmatterreference</targetxml> where <sourcexml>h</sourcexml>
            was refered to when the instruction should refer to <sourcexml>p/text</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-17">
    <title>2012-06-13</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Fixed mistakes in conversion instructions for
              <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml></li>
          <li>Updated the instructions for use case:
              <sourcexml>remotelink[@service='DOC-ID']</sourcexml>. Described exactly how to obtain
            a value for <targetxml>ref:key-value/@value</targetxml> depending on what other
            attributes and values are present.</li>
          <li>Updated instruction with topic tree section and classcode mapping when empty.</li>
          <li>Added comments to allow consolidation of attributes from docinfo and content from
            lbu-meta from source into a single doc:legacy-metadata grouping.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-16">
    <title>2012-06-08</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance: <ul>
          <li>Updated the instructions for mapping <sourcexml>level/@levetype</sourcexml> with
            special directions for when <sourcexml>docinfo:selector</sourcexml> has a value of
            "Excerpts".</li>
          <li>Added conversion instructions for lnlink@service="ATTACHMENT"</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-15">
    <title>2012-06-06</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Changed all pertinent headings and heading references to include the new type of
            "Latest Legal Updates".</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-14">
    <title>2012-06-04</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Added "Latest Legal Updates" to the list of
              <sourcexml>bodytext/@searchtype</sourcexml> attribute values and specified that it be
            handled like "Checklist".</li>
          <li>Added instructions to cover the scenario of a <sourcexml>p</sourcexml> occurring
            before a second <sourcexml>bodytext/h</sourcexml> when
              <sourcexml>bodytext/@searchtype</sourcexml> is "Checklist" or "Latest Legal
            Updates".</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-13">
    <title>2012-05-23</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance: <ul>
          <li>Added "COMMENTARY" to the list of <sourcexml>docinfo:selector</sourcexml> values that
            trigger use of the Guidance instructions.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-12">
    <title>2012-05-21</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Added instructions for handling url.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-11">
    <title>2012-05-16</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <section>
        <title>Metadata</title>
        <ul>
          <li>Added instruction to map comm:info/pubdate/date to dc:date in
            doc:metadata/doc:docinfo/dc:metadata.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-10">
    <title>2012-05-14</title>
    <prolog>
      <author>Sandor Kekesi</author>
    </prolog>
    <body>
      <section>
        <title>Forms and Precedents</title>
        <ul>
          <li>Added instruction to map level/glp:note to seclaw:prelim/note.</li>
          <li>Added instruction to consolidate multiple instance of bodytext into a single
            seclaw:bodytext in the target document.</li>
          <li>Added instruction to map frm:body//glp:note to form:bodytext//note.</li>
        </ul>
      </section>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-9">
    <title>2012-05-10</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Additional restriction added to instructions about what is to mappped to
              <targetxml>seclaw:subjectmatterreference</targetxml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-8">
    <title>2012-05-10</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Based on specific message board questions, added clarification to instructions
            regarding creation of <targetxml>seclaw:subjectmatterreference</targetxml> and
              <targetxml>ref:subjectmattercite</targetxml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-7">
    <title>2012-05-07</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance: <ul>
          <li>Added General Markup instructions for handling <sourcexml>email</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-6">
    <title>2012-04-27</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance: <ul>
          <li>Added instructions for handling <sourcexml>level/levelinfo</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-5">
    <title>2012-04-22</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Further elaboration regarding creation of
              <targetxml>seclaw:subjectmatterreference</targetxml> and
              <targetxml>ref:subjectmattercite</targetxml>. </li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-4">
    <title>2012-04-20</title>
    <prolog>
      <author>Sandor Kekesi</author>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>PG Forms and Precedents:<ul>
          <li>Added instructions for handling <sourcexml>comm:info/contrib</sourcexml>.</li>
        </ul>
      </p>
      <p>Landing Pages: <ul>
          <li>Added additional details to instructions regarding creation of
              <targetxml>seclaw:subjectmatterreference</targetxml> and
              <targetxml>ref:subjectmattercite</targetxml>. </li>
        </ul>
      </p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-3">
    <title>2012-04-18</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <p>TopicTree: <ul>
          <li>Added instructions for mapping <sourcexml>levelinfo/classification</sourcexml> element
            in a document has a value of "TopicTree".
              <sourcexml>levelinfo/classification</sourcexml> becomes
              <sourcexml>seclaw:levelinfo/classify:classification</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-2">
    <title>2012-04-17</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance: <ul>
          <li>Added a note to use Landing Page instructions when the top
              <sourcexml>level</sourcexml> element in a document has a value of "landingpage" in
              <sourcexml>@leveltype</sourcexml> regardless of the value in
              <sourcexml>docinfo:selector</sourcexml>.</li>
          <li>Updated sample for nested <sourcexml>level</sourcexml> elements to indicate proper
            mapping of <sourcexml>@leveltype</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-1">
    <title>2012-04-16</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Added specific instructions regarding <targetxml>seclaw:seclaw@seclawtype</targetxml>,
            rather than relying on general instructions elsewhere. </li>
          <li>Made minor adjustments to text formatting in samples. </li>
        </ul>
      </p>
    </body>
  </topic>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ11_LNPG_seclaw\LPA-PracticalGuidance_Changes2012-NZ.dita  -->

</xsl:stylesheet>