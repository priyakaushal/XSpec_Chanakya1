<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CourtOrder_Change-Log">
  <title>Change Log for CourtOrder</title>
  <body>
    <section>
      <title>CourtOrder 2.7_BETA</title>
      <p>2012-06-13
        <ol>
          <li>test run</li>
        </ol>
      </p>     
      <p>2012-06-06
        <ol>
          <li>Introduction topic: Modified the schema version to 2.7_BETA.</li>
          <li>CR # DAAM2012042415014700 has been implemented to allow <targetxml>primlaw:excerpt</targetxml> within <targetxml>blockquote</targetxml>.</li>
          <li>General Markup section - remotelink : The instruction - <targetxml>ref:marker/@service</targetxml> attribute is set to "URL" was updated to <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
        </ol>
      </p>
    </section>
    <section>
      <title>CourtOrder 2.6_BETA</title>
      <p>2012-05-24
        <ol>
          <li>case:content/case:judgments topic: Added a note section on handling of 
            <sourcexml>remotelink</sourcexml> and its child element <sourcexml>inlineobject</sourcexml> whenever the value of attribute <sourcexml>remotelink @service="QUERY"</sourcexml>.</li>
          <li>General Markup section - footnotegrp and footnote : Removed instructions for handling of <sourcexml>footnotegrp</sourcexml> without <sourcexml>fnr</sourcexml>.</li>      
        </ol>
      </p>
      <p>2012-05-22
        <ol>
          <li>Introduction topic: Modified the CourtOrder schema version to 2.6_BETA.</li>
          <li>case:courtcode topic: Modified the NL sample output to add the mandatory attribute @metadatasource.</li>
          <li>case.body_case.content_case.appendix topic: Modified the note to add instructions on how to handle child elements if 
            <sourcexml>case:appendix</sourcexml> other than <sourcexml>sigblock</sourcexml>.</li>
          <li>General Markup section - form-chars : Added instructions on handling of <sourcexml>form-chars[@character="underline"]</sourcexml>.</li>      
        </ol>
      </p>
    </section>
    <section>
      <title>CourtOrder 2.4_BETA</title>
      <p>2012-04-23
        <ol>
          <li>Format (Increased nesting of topics to show child/parent relationships) of the CI document has been changed.</li>
          <li>CR # DAAM2012040510553600 has been implemented to allow <targetxml>note</targetxml> within <targetxml>blockquote</targetxml>.</li>
          <li>Introduction topic: Modified the CourtOrder schema version to 2.4_BETA.</li>
          <li>Head topic: Added a note section on handling of text occuring between two <sourcexml>catchphrase</sourcexml> elements.</li>
          <li>Head topic: Added a note section on how to handle the element - <sourcexml>case:info</sourcexml> of Hybrid Practice Notes/Case Summaries.</li>
          <li>Head topic: Added a new section-'Hybrid Practice Notes-Case Summaries' at the end of 'Head' topic.</li>
          <li>Head topic: Modified the instructions on handling of <sourcexml>case:courtcode</sourcexml>.</li>      
        </ol>      
      </p>
    </section>
    <section>
      <title>CourtOrder 2.3_BETA</title>
      <p>2012-04-09
        <ol>
          <li>Introduction topic: Modified the CourtOrder schema version to 2.3_BETA.</li>
          <li>Head topic: Added a note section on handling of text occuring between <sourcexml>case:parallelcite</sourcexml> and <sourcexml>ci:cite</sourcexml>.</li>
          <li>Head topic: Added a note section below the instructions for /case:reportercite @ln.user-displayed.</li>
          <li>Head topic: Added a note section on handling of text occuring within <sourcexml>case:decisiondate</sourcexml> and without the child element <sourcexml>date</sourcexml>.</li>
          <li>Body topic: Added the conversion instruction for case:judgmentbody/p/blockquote/p/blockquote/legfragment/leg:level (nested <sourcexml>blockquote</sourcexml> scenario).</li>
          <li>Body topic: Added the conversion instruction for case:judgmentbody/pgrp/p/l/li/blockquote/legfragment/deflist.</li>
          <li>Body topic: Added a note section (and example) on handling of scenario when <sourcexml>page</sourcexml> is the first child element of <sourcexml>pgrp</sourcexml>.</li>
          <li>Please note that the conversion instructions and NL examples have been modified in the following (Metadata) sections - <sourcexml>docinfo</sourcexml> and <sourcexml>docinfo:lbu-meta</sourcexml>.</li>
        </ol>
      </p>
    </section>
    <section>
      <title>CourtOrder 2.2_BETA</title>
      <p>2012-03-23
        <ol>
          <li>Namespaces topic: Added namespaces for xmlns:caseinfo and xmlns:decision.</li>
          <li>Head topic: Added conversion instructions for case:courtloc.</li>
          <li>Head topic: Added conversion instructions for case:filenum.</li>
          <li>Head topic: Added conversion instructions for case:courtinfo/case:dates/case:hearingdates.</li>
          <li>Head topic: Modified conversion instructions by adding two different scenarios(AU/NZ) for case:factsummary and its children.</li>
          <li>Head topic: Modified conversion instructions by adding two different scenarios(AU/NZ) for case:juris and its children.</li>
          <li>Body topic: Added conversion instructions for name.degree</li>
        </ol>
      </p>
      <p>2012-03-19
        <ol>
          <li>Introduction topic: Modified the CourtOrder schema version to 2.2_BETA.</li>
          <li>Head topic: Modified the conversion instructions for case:juris.</li>
          <li>Head topic: Modified the conversion instructions for case:courtcode.</li>
          <li>Head topic: Added conversion instructions for the attribute case:reportercite @ln.user-displayed.</li>
          <li>Body topic: Added conversion instructions for the following scenarios: /pgrp/blockquote/blockquote/insert-line, /glp:note/blockquote/blockquote/insert-line,
            /glp:note/blockquote/insert-line, /p/blockquote/insert-line/</li>
        </ol>
      </p>
    </section>
    <section>
      <title>CourtOrder 2.0_ALPHA</title>
      <p>2012-03-09
        <ol>
          <li>Head topic: Added conversion instructions for /ci:cite/ci:content/refpt.</li>
          <li>Head topic: Modified conversion instructions for handling of /case:juris/.</li>
          <li>Namespaces topic: Modified the target xml declaration for courtorder as : 
            xmlns:courtorder=urn:x-lexisnexis:content:courtorder:sharedservices:1</li>
          <li>Body topic: Modified the NL conversion instructions and NL example for /case:content/case:appendix.</li>
          <li>Body topic: Added conversion instructions for /pgrp/p/blockquote/legfragment/leg:level and its children.</li>
          <li>Body topic: Added conversion instructions for /pgrp/p/blockquote/legfragment/l.</li>
          <li>Body topic: Added conversion instructions for /pgrp/p/blockquote/legfragment/deflist.</li>           
          <li>Body topic: Modified the NL conversion instructions and NL example for /ci:content/remotelink.</li> 
          <li>Body topic: Modified the NL conversion instructions for /case:body/heading/edpnum/refpt.</li>
          <li>Body topic: Added conversion instructions for /case:judgmentbody/pgrp/pgrp/heading/title/remotelink.</li>
          <li>Body topic: Added conversion instructions for /leg:level/leg:level-vrnt/leg:heading/leg:empleg.</li>
          <li>CR #DAAM2012022111440100 has been implemented to allow ref:crossreference within title in the CourtOrder NL schema.</li>
          <li>CR #DAAM2012022814545200 has been implemented to allow the elements proc:formchars, proc:nl and ref:crossreference to intermingle.</li>
        </ol>
      </p>
    </section>
    <section>
      <title>CourtOrder 1.1_ALPHA</title>
      <p>2012-02-07
        <ol>
          <li>Introduction topic: Modified the CourtOrder schema version to 1.1_ALPHA</li>
          <li>Head topic: Removed "CR# DADF2012011815045500 has been created to create lnci:courtorder" from the note sections.</li>
          <li>Head topic: Modified the conversion instructions and example for /case:info/case:reportercite/ci:cite/ci:case.</li>
          <li>Head topic: Modified the conversion instructions and example for /case:info/case:parallelcite/ci:cite/ci:case.</li>
          <li>Body topic: Added conversion instructions for case:appendix/p/text.</li>
          <li>Body topic: Added conversion instructions for case:appendix/p/inlineobject.</li>
        </ol>      
      </p>
    </section>
    <section>
        <p>2012-01-20
          <ol>
            <li>Head topic: Added a note section in the conversion instructions for handling of /catwordgrp/catchwords.</li></ol>        
        </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\CourtOrder_Change-log-old.dita  -->
	<xsl:message>CourtOrder_Change-log-old.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>