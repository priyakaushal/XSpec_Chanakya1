<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA13_change-log">
  <title>Change Log for CA13 Currency Statements</title>
  <body>
    <section>
      <title>currencystatement 1.1 ALPHA</title>
      <p>2015-04-03</p><ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA13-Currency_Statements/CA13_introduction.dita">2015-04-03 - Introduction id-CA13-33009: The Apr 3 2015 release is a
            refresh because CI last published Sept 2 2014. There are no changes unique
            to CA13.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2015-01-09 - remotelink to ref:crossreference id-CCCC-10465: For the two
            use cases associated with url (target <targetxml>url</targetxml> or
            <targetxml>ref:lnlink</targetxml>): Added exceptional rule to not
            concatenate values when <sourcexml>@hrefclass</sourcexml> content is already
            present in <sourcexml>@href</sourcexml>. Expanded examples 5 and 7 to
            illustrate the scenario. Responds to data for UK10 Dictionaries but applies
            in general. R4.5 Content Issue 2120.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">2014-10-27 - remotelink to ref:crossreference id-CCCC-10465: Minor. Within
            use case for <sourcexml>@service="DOC-ID"</sourcexml>, rule for
            <sourcexml>@remotekey1="REFPTID"</sourcexml> now also applies when
            <sourcexml>@remotekey1="REFPT"</sourcexml>. That is, the condition is
            expanded to include value <sourcexml>"REFPT"</sourcexml>; the mapping is
            unchanged. The value <sourcexml>"REFPT"</sourcexml> is new in Oct 2014
            redelivery of UK11-DN but the rule applies to any stream where
            <sourcexml>@remotekey1="REFPT"</sourcexml> may occur. R4.5 Content Issue
            2003.</xref>
        </li></ul></section>
    <section>
      <title>currencystatement 1.1 ALPHA</title>
      <p>2014-09-02</p>
      <ul>
        <li>
          <xref href="../../../Rosetta/DITA-CAN/CA13-Currency_Statements/CA13_introduction.dita">2014-09-02 - Introduction id-CA13-33009: Revised rule for
            <targetxml>@pcsi</targetxml> on root. Value now obtained from dx.properties
            file. Previously was hardcoded as "0" during conversion. Affects CA13 only. R4.5
            Content Issue 1479.</xref>
        </li>
        <li>
          <xref href="../../../Rosetta/common_newest/Rosetta_text-LxAdv-text.dita">2014-08-11 -
            text to text id-CCCC-10477: For CANADA Content Stream: Only move the <sourcexml>
              text@align</sourcexml> to the parent <targetxml>p</targetxml> if it is the only
            text in <sourcexml>p</sourcexml>, Otherwise, wrap the <sourcexml>text</sourcexml>
            with <targetxml>p</targetxml> and move the <sourcexml>@align</sourcexml> attribute
            to the newly created <targetxml> p</targetxml>.</xref>
        </li></ul>
    </section>
    <section>
      <title>currencystatement 1.1 ALPHA</title>
      <p>2014-07-16</p>
      <ul><li>Initial Release</li></ul>
      <!-- McNally Apr 1 2016. Changed markup for "Initial Release" from p to ul/li, part of cross-stream changelog cleanup -->
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA13-Currency_Statements\CA13_change-log.dita  -->
<!--	<xsl:message>CA13_change-log.xsl requires manual development!</xsl:message>--> 

</xsl:stylesheet>