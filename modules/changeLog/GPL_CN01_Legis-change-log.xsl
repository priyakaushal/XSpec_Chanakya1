<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_IN01_Legis-change-log.dita">
  <title>Change Log for Legislation</title>
  <body>
    <section>
    <p>2014-06-20 - BRT</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-GPL/CN01-Legislation/primlawinfo.primlawinfo.dita">2014-06-20 - primlawinfo:primlawinfo: Moved docinfo:selector to classify:classification[@classscheme="selector"] id-CCCC-10304 from primlawinfo:primlawinfo to doc:metadata</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/DITA-GPL/CN01-Legislation/leg.level_primlaw.level.dita">2014-06-20 - leg:level id-CN01-15220: deleted xml:id from target example. Also changed underscores '_' to periods '.'</xref>
        </li>
      </ul>
    </section>
    <section>
      <title>Legis 8.6 PROD</title>
      <p>2014-06-06 - BRT</p>
   <ul>   <li>
        <xref href="../../../Rosetta/DITA-GPL/CN01-Legislation/primlaw.level.dita">2014-06-06 - primlaw:level: Created new topic and moved contents in <targetxml>primlawinfo:primlawinfo</targetxml> 
          from <targetxml>legis:head</targetxml> to <targetxml>legis:body/primlaw:level/primlaw:levelinfo</targetxml>
        </xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_table-LxAdv-table.dita">2014-06-04 - table to table id-CCCC-10475: For completeness, added instructions for the
          following rarely occurring attributes of <sourcexml>table/tgroup/colspec</sourcexml>:
          <sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
          <sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
          <sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
          <sourcexml>@searchtype</sourcexml>, and <sourcexml>@xml:lang</sourcexml>. This is in
          response to various minor questions on message boards that have been asked and answered
          over the past two years. These instructions should not trigger changes to existing
          conversion programs, as the programs have already been changed in response to previous
          message board answers. These instructions have been added so this topic is up-to-date with
          respect to current conversion program behavior for these rarely occuring
          attributes.</xref>
      </li>
      <li>
        <xref href="../../../Rosetta/common_newest/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.dita">2014-05-21 - docinfo:doc-id to dc:identifier[@lnmeta:identifier-scheme] id-CCCC-10293: For CA05 Acts and Bills- Mapping in dc:identifier for act-no and chunk-no.. Db issue #1464 </xref>
      </li>
   </ul>
    </section>
    <section>
      <title>Legis 8.5:PROD</title>
       <p>2014-05-09: <ph id="change_20140509_brt">First Draft</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN01-Legislation\GPL_CN01_Legis-change-log.dita  -->
	<xsl:message>GPL_CN01_Legis-change-log.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>