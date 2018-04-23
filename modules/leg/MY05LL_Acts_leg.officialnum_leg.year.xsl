<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum_leg.year">
  <title>leg:officialnum/leg:year <lnpid>id-MY05LL-17026</lnpid></title>
  <body>
    <section> 
      <p><sourcexml>leg:officialnum/leg:year</sourcexml> becomes <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml> with attribute <targetxml>@year</targetxml></p> 
      <note>If input document have <sourcexml>leg:year</sourcexml> with same value in given xpaths
        (i.e. <sourcexml>leg:info/leg:year</sourcexml> and
        <sourcexml>leg:officialnum/leg:year</sourcexml>) then we should tranform the first scenrio
        <sourcexml>leg:info/leg:year</sourcexml> in target conversion and suppressed the second
        scenario.</note>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:year</sourcexml></title>
      <codeblock>

&lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;USM_B000147e&lt;
    &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1974&lt;/leg:year&gt;
&lt;/leg:officialnum&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:levelinfo&gt;
 &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:identifier idtype="officialnum" source="editoriallyassigned"&gt;USM_B000147e&lt;&lt;/primlawinfo:identifier&gt;
    &lt;primlawinfo:dates&gt;
      &lt;primlawinfo:enactdate year="1974"/&gt;
    &lt;/primlawinfo:dates&gt;
 &lt;/primlawinfo:primlawinfo&gt;
 &lt;/primlaw:levelinfo&gt;

       </codeblock>
    </example>  
    <note>For handling <b>@ln.user-displayed</b> attribute, refer the
      general markup <xref href="../../common_newest/Rosetta_leg.year_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\leg.officialnum_leg.year.dita  -->
<!--	<xsl:message>MY05LL_Acts_leg.officialnum_leg.year.xsl requires manual development!</xsl:message> -->

<!-- Handeled in the Common module-->

</xsl:stylesheet>