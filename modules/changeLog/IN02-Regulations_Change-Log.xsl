<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
  <title>Change Log</title>
  <body>
    <section>
      <title>Regulation 8.3 PROD</title>
      <p>2016-08-08
        <ul>
          <li>Updated CI as per new data set.</li>
        </ul>
      </p>
    </section>
    
    <section>
      <title>Regulation 7.5_PROD</title>
      <p>2014-06-03
        <ul>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-06-02 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Canada only. Added special rule to suppress
              indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
              immediately to all Canada streams. R4.5 Content Issue 1609.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_GPL_IN_refpt-Chof-deflist_defitem_defterm-LxAdv-deflist_defitem_defterm.dita">2014-05-23 - deflist/defitem/defterm/refpt to deflist/defitem/defterm id-CCCC-10344: Updated instruction to handle <sourcexml>p/text/deflist</sourcexml>.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-28 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Clarified instructions regarding <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or added.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-21 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added an instruction to handle
              <sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
              and will be present in stream UK21fl when those documents become available later in
              2014.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_footnote-LxAdv-footnote.dita">2014-04-17 - footnotegrp and footnote to footnotegrp and footnote id-CCCC-10322: Added instruction for
              <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>.
              Specifies <targetxml>p/text</targetxml> wrapper for target
              <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects
              UK12 but will apply to any stream if the use case occurs. Phase 6 UK discussion
              items 76 and 88.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_p-LxAdv-p.dita">2014-04-14 - p to p id-CCCC-10424: Removed Colons from Labels.. DB item #1255</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-04-03 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Illustrative changes. Examples modified. Mapping for
              <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to avoid
              confusion with special AU-NZ use case described in a separate module. R4.5 Content issue #1125,
              for AU-NZ, has prompted the changes for this general module.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita">2014-03-25 - docinfo:assoc-links to doc:related-content id-CCCC-10284: Added rule and example for
              <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content issue
              #1125</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_deflist-LxAdv-deflist.dita">2014-03-21 - deflist to deflist id-CCCC-10277: Added instruction to handle <sourcexml>defitem/@id</sourcexml> and <sourcexml>defterm/@id</sourcexml> only for GPL IN content Streams.</xref>
          </li>
          <li>
            <xref href="../../../Rosetta/common_newest/Rosetta_figure-LxAdv-figure.dita">2014-03-20 - figure to figure id-CCCC-10320: Illustrative change. Added example to
              explicitly show standard conversion of child link to ref:lnlink. Prompted by
              Phase 6 UK Discussion Item 77. Webteam 252434.</xref>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Regulation 7.4_PROD</title>
      <p>2014-03-05
        <ul>
          <li>First release.</li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN02-Regulations\Change-Log.dita  -->
	<xsl:message>IN02-Regulations_Change-Log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>