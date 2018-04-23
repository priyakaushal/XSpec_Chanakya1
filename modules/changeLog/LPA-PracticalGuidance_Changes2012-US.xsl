<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita ci comm docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_Changes2012">
  <title>Changes During 2012</title>
  <body>
    <p>Below are changes made during 2012. All changes made in 2013 and later now use a new format
      and are specified in the <xref href="LPA-PracticalGuidance_ChangeManagement-US.dita">next
        topic</xref>.</p>
  </body>

  <topic id="pg-changemanagement-element-37">
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

  <topic id="pg-changemanagement-element-36">
    <title>2012-11-13</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>Fillable Forms</title>
        <ul>
          <li>11/14/2012 - added attribute @service="DOCUMENT" to target output to comply with
            Kraken method.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-35">
    <title>2012-11-05</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>Fillable Forms</title>
        <ul>
          <li>Modified instructions for mapping link under section: 4.5.8.
            comm:info/contrib/note/p/text/remotelink, to include dpsi value followed by hyphen prior
            to remotekey2 value.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-34">
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

  <topic id="pg-changemanagement-element-33">
    <title>2012-10-18</title>
    <prolog>
      <author>Sandor Kekesi</author>
    </prolog>
    <body>
      <p>Added an instruction within Forms and Precedents for consecutive
          <sourcexml>bodytext[@searchtype="FORM"]</sourcexml>.</p>
      <p>Added further explanation within the
          <sourcexml>comm:info/contrib/note/p/text/remotelink</sourcexml> and
          <sourcexml>comm:info/contrib/note/p/text</sourcexml> instructions; to merge the resulting
        XML into the existing form rather than creating separate form instances.</p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-32">
    <title>2012-09-24</title>
    <prolog>
      <author>Sandor Kekesi</author>
    </prolog>
    <body>
      <p>Added explanatory notes for <sourcexml>comm:info/contrib/note/p/text</sourcexml>
        instructions, for when the source document does or does not contain
          <sourcexml>form</sourcexml>.</p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-31">
    <title>2012-09-24</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <p>Added rule for lnlink handling within Landing Pages. Rule appplies to @status when links to
        ATTACHMENTs are made and smi value is not supplied.</p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-30">
    <title>2012-09-21</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Guidance:<ul>
          <li>Added instructions for handling <sourcexml>p/text/glp:note</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-29">
    <title>2012-09-10</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <p>Added rule for mapping topic tree leveltype level[@leveltype='ADMINISTRATIVE']</p>
      <p>Added rule for mapping source 'custom-metafield' with value of EDIT-DATE to
        seclaw:level/seclaw:levelinfo/miscdate.</p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-28">
    <title>2012-09-07</title>
    <prolog>
      <author>Sandor Kekesi</author>
    </prolog>
    <body>
      <p>Added form:document to the target xpath for the "comm:info/contrib/note/p/text" instruction
        (fillable forms).</p>
    </body>
  </topic>


  <topic id="pg-changemanagement-element-27">
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

  <topic id="pg-changemanagement-element-26">
    <title>2012-08-29</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages:<ul>
          <li>Removed the entire substantive content of subtopic "4.2.4", but left it in the CI to
            preserve subtopic numbering, leaving just a short paragraph of explanation. Due to
            functional requirements, "Home" (aka "What's New") type landing pages are now to be
            converted according to the instructions given in "4.2.5.", titled: All Landing
            Pages.</li>
        </ul>
      </p>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-25">
    <title>2012-08-28</title>
    <prolog>
      <author>Sandor Kekesi</author>
    </prolog>
    <body>
      <p>Added instructions for mapping checklists and author attributions to fillable forms.</p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-24">
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

  <topic id="pg-changemanagement-element-23">
    <title>2012-08-20</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>
        <b>Changes Made As A Result of Kraken Link Resolution Protocol</b>
      </p>
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
          <li>Changed instructions regarding a particular kind of
              <sourcexml>remotelink/@service="QUERY"</sourcexml> conversion to
              <targetxml>lnci:cite</targetxml>. This kind of link will be changed by the LBU to a
            link using <sourcexml>remotelink/@refptid and remotelink/@docifref</sourcexml>
            attributes.</li>
        </ul>
      </section>
      <section>
        <title>Guidance</title>
        <ul>
          <li>Changed instructions regarding a particular kind of
              <sourcexml>remotelink/@service="QUERY"</sourcexml> conversion to
              <targetxml>lnci:cite</targetxml>. This kind of link will be changed by the LBU to a
            link using <sourcexml>remotelink/@refptid and remotelink/@docifref</sourcexml>
            attributes.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-22">
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


  <topic id="pg-changemanagement-element-21">
    <title>2012-07-12</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>Common markup - glp:note/remotelink</title>
        <ul>
          <li>Modified instruction for glp:note/remotelink handling when
            remotelink@service="DOC-ID".</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-20">
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
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-19">
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
    </body>
  </topic>
  <topic id="pg-changemanagement-element-18">
    <title>2012-06-25</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages:<ul>
          <li>Simplified instructions relating to when to create
              <targetxml>seclaw:subjectmatterreference</targetxml> vs.
              <targetxml>ref:subjectmattercite</targetxml>.</li>
          <li>Added an instruction to map text within
              <targetxml>seclaw:subjectmatterreference</targetxml> to
              <targetxml>seclaw:subjectmattertext</targetxml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-17">
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
          <li>Removed specific <sourcexml>url</sourcexml> instructions and referred to the common
            element url instruction in General Markup.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-16">
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
  <topic id="pg-changemanagement-element-15">
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
  <topic id="pg-changemanagement-element-14">
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

  <topic id="pg-changemanagement-element-13">
    <title>2012-06-08</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Added conversion instructions for frm:prompt.</li>
          <li>Added conversion instructions for lnlink@service="ATTACHMENT"</li>
        </ul>
      </section>
    </body>
  </topic>


  <topic id="pg-changemanagement-element-12">
    <title>2012-05-24</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>General Markup</title>
        <ul>
          <li>Reworded instructions for mapping /leveinfo/classification within the TopicTree body
            section for clarity.</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-11">
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
  <topic id="pg-changemanagement-element-10">
    <title>2012-05-21</title>
    <prolog>
      <author>Matt Voisard</author>
    </prolog>
    <body>
      <section>
        <title>Landing Pages</title>
        <ul>
          <li>Added instruction to map /bodytext/pgrp/h/date/[@searchtype="LAST-ACTION-DATE"] and
            /bodytext/pgrp/h/date/[@searchtype="LAST-UPDATE-DATE"] to
            /ref:referencestatusgroup/ref:referencestatus name="lastactiondate" AND
            ref:referencestatus name="updatedate".</li>
        </ul>
      </section>
    </body>
  </topic>

  <topic id="pg-changemanagement-element-9">
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
  <topic id="pg-changemanagement-element-8">
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
  <topic id="pg-changemanagement-element-7">
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
  <topic id="pg-changemanagement-element-6">
    <title>2012-04-22</title>
    <prolog>
      <author>John Garbuio</author>
    </prolog>
    <body>
      <p>Landing Pages: <ul>
          <li>Added additional details to instructions regarding creation of
              <targetxml>seclaw:subjectmatterreference</targetxml> and
              <targetxml>ref:subjectmattercite</targetxml>. </li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-5">
    <title>2012-04-20</title>
    <prolog>
      <author>Sandor Kekesi</author>
    </prolog>
    <body>
      <p>PG Forms and Precedents:<ul>
          <li>Added instructions for handling <sourcexml>comm:info/contrib</sourcexml>.</li>
        </ul>
      </p>
    </body>
  </topic>
  <topic id="pg-changemanagement-element-4">
    <title>2012-04-20</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance:<ul>
          <li>Added instructions for handling <sourcexml>level/bodytext/heading</sourcexml>.</li>
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
    <title>2012-04-18</title>
    <prolog>
      <author>Doug Fillmore</author>
    </prolog>
    <body>
      <p>Practical Guidance:<ul>
          <li>Added a note to use Landing Page instructions when the top
              <sourcexml>level</sourcexml> element in a document has a value of "landingpage" in
              <sourcexml>@leveltype</sourcexml> regardless of the value in
              <sourcexml>docinfo:selector</sourcexml>.</li>
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

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_Changes2012-US.dita  -->
	<xsl:message>LPA-PracticalGuidance_Changes2012-US.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>