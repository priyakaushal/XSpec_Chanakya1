<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_catchwordgrp">
  <title>catchwordgrp <lnpid/></title>
  <body>
    <section>
      <p><sourcexml>catchwordgrp</sourcexml> is a container element that should be omitted, but its
        content should be retained and converted as follows: <ul>
          <li><sourcexml>catchwordgrp/heading</sourcexml> becomes
                            <targetxml>classify:classification/heading</targetxml>.</li>
          <li><sourcexml>catchwordgrp/catchwords</sourcexml> becomes
                            <targetxml>classify:classification</targetxml> with the value of
                            <targetxml>classify:classification/@classscheme</targetxml> set to
                        "catchwords". Each instance of <sourcexml>catchwords</sourcexml> should be
                        converted to its own
                            <targetxml>classify:classification[@classscheme="catchwords"]</targetxml>
                        element. The children of <sourcexml>catchwords</sourcexml> are converted as follows:<ul>
                            <li><sourcexml>catchwords/catchphrase</sourcexml> becomes
                                    <targetxml>classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</li>
                        </ul></li>
        </ul></p>
      <!-- <note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
        elements. When 2 or more consecutive sibling source elements map to
          <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
          <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content
        ordering.</note> -->
    </section>
    <example>
      <title>Example: CA content</title>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Zoning by-laws&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Defendant's commercial greenhouse not permitted under prior by-law and therefore
      not a continuing non-conforming legal use&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Municipality having right to enforce by-law by injunction&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Planning Act, R.S.P.E.I. 1974, c. P-6, ss. 46(1)(e), (f), (g), 49, 52,
      56&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Municipalities Act, R.S.P.E.I. 1974, c. M-15.1, s. 1(b).&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Zoning by-laws&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Defendant's commercial greenhouse not permitted under prior by-law and
        therefore not a continuing non-conforming legal use&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Municipality having right to enforce by-law by
        injunction&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Planning Act, R.S.P.E.I. 1974, c. P-6, ss. 46(1)(e), (f), (g), 49, 52,
        56&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Municipalities Act, R.S.P.E.I. 1974, c. M-15.1, s.
        1(b).&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <example>
      <title>Example: CA content <sourcexml>catchwordgrp</sourcexml> with child
          <sourcexml>heading</sourcexml></title>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;heading&gt;
    &lt;title&gt;Indexation :&lt;/title&gt;
  &lt;/heading&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Assurance&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Assurance automobile&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Régime d'indemnisation sans égard à la responsabilité&lt;/catchphrase&gt;
    ...
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;heading&gt;
    &lt;title&gt;Indexation :&lt;/title&gt;
  &lt;/heading&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Assurance&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Assurance automobile&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Régime d'indemnisation sans égard à la responsabilité&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  ...
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <example>
      <title>Example: AU content</title>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Practice and procedure&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Applications&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Applicant sought declaration that insurance agents were independent
      contractors&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Agents had already commenced proceedings in the Chief Industrial Magistrates Court
      of NSW claiming entitlements&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Practice and procedure&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Applications&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Applicant sought declaration that insurance agents were independent
        contractors&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Agents had already commenced proceedings in the Chief Industrial
        Magistrates Court of NSW claiming entitlements&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <example>
      <title>Example: NZ content</title>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;
      &lt;emph typestyle="it"&gt;Deceit&lt;/emph&gt;
    &lt;/catchphrase&gt;
    &lt;catchphrase&gt;
      &lt;emph typestyle="it"&gt;Amendment of Declaration&lt;/emph&gt;
    &lt;/catchphrase&gt;
    &lt;catchphrase&gt;
      &lt;emph typestyle="it"&gt;Terms&lt;/emph&gt;
    &lt;/catchphrase&gt;
    &lt;catchphrase&gt;
      &lt;emph typestyle="it"&gt;Reservation of leave&lt;/emph&gt;
    &lt;/catchphrase&gt;
    &lt;catchphrase&gt;
      &lt;emph typestyle="it"&gt;New Trial&lt;/emph&gt;
    &lt;/catchphrase&gt;
    &lt;catchphrase&gt;
      &lt;emph typestyle="it"&gt;Two concurring verdicts&lt;/emph&gt;
    &lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;emph typestyle="it"&gt;Deceit&lt;/emph&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;emph typestyle="it"&gt;Amendment of Declaration&lt;/emph&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;emph typestyle="it"&gt;Terms&lt;/emph&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;emph typestyle="it"&gt;Reservation of leave&lt;/emph&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;emph typestyle="it"&gt;New Trial&lt;/emph&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;
        &lt;emph typestyle="it"&gt;Two concurring verdicts&lt;/emph&gt;
      &lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <example>
      <title>Example: UK content</title>
      <codeblock>
&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Copyright &amp;#x2013; Compilation &amp;#x2013; No evidence of any specific infringement
      &amp;#x2013; Declaratory judgment &amp;#x2013; Possible infringement by documents not yet in existence
      &amp;#x2013; RSC Ord XXV, r 5.&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Copyright &amp;#x2013; Compilation &amp;#x2013; No evidence of any specific
        infringement &amp;#x2013; Declaratory judgment &amp;#x2013; Possible infringement by documents not
        yet in existence &amp;#x2013; RSC Ord XXV, r 5.&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
      </codeblock>
    </example>
    <note>If the punctuation marks occuring between <sourcexml>catchwords</sourcexml> and <sourcexml>catchphrase</sourcexml> conversion should drop these punctuation in output this will be handle by stylesheet.</note>
    <note>If the punctuation marks occuring inside the <sourcexml>catchphrase</sourcexml> then,
      these will be retain in output.</note>
    <example>
      <title>Example: UK content, punctuation marks occuring between <sourcexml>catchwords</sourcexml> and <sourcexml>catchphrase</sourcexml></title>
      <codeblock>

&lt;catchwordgrp&gt;
  &lt;catchwords&gt;
    ( 
      &lt;catchphrase&gt;Comitology&lt;/catchphrase&gt; 
      — 
      &lt;catchphrase&gt;Council Decision 1999/468/EC laying down the procedures for the exercise of implementing powers conferred on the Commission&lt;/catchphrase&gt; 
      — 
      &lt;catchphrase&gt;Criteria for choosing between the different procedures for adopting implementing measures&lt;/catchphrase&gt; 
      — 
      &lt;catchphrase&gt;Effects&lt;/catchphrase&gt; 
      — 
      &lt;catchphrase&gt;Obligation to state reasons&lt;/catchphrase&gt; 
      — 
      &lt;catchphrase&gt;Annulment in part of Regulation (EC) No 1655/2000 of the European Parliament and of the Council concerning the Financial Instrument for the Environment (LIFE)&lt;/catchphrase&gt; 
    ) 
   &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

<b>becomes</b>

&lt;classify:classification classscheme="catchwords"&gt;
  &lt;classify:classitem&gt;
    &lt;classify:classitem-identifier&gt;
        &lt;classify:classname&gt;Comitology&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
    &lt;classify:classitem-identifier&gt;
        &lt;classify:classname&gt;Council Decision 1999/468/EC laying down the procedures for the exercise of implementing powers conferred on the Commission&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Criteria for choosing between the different procedures for adopting implementing measures&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Effects&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Obligation to state reasons&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
    &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;Annulment in part of Regulation (EC) No 1655/2000 of the European Parliament and of the Council concerning the Financial Instrument for the Environment (LIFE)&lt;/classify:classname&gt;
    &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-09-26: <ph id="change_20140926_AS">Updated instructions to map <sourcexml>catchwordgrp</sourcexml> to <targetxml>admindoc:head/classify:classification/heading</targetxml></ph></p>
      <p>2013-12-13: <ph id="change_2013_12_13_SSX">Added instruction to drop punctuation occuring between catchwords and catchphrase Webteam# 247658</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\catchwordgrp.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_catchwordgrp.xsl requires manual development!</xsl:message> -->

	<xsl:template match="catchwordgrp">

		<!--  Original Target XPath:  classify:classification/heading   -->
	  
			<xsl:apply-templates select="@* | node()"/>
		

	</xsl:template>

<xsl:template match="catchwords">
  <classify:classification classscheme='catchwords'>
    <xsl:apply-templates select="*"/>
  </classify:classification>
</xsl:template>

  <xsl:template match="catchphrase">
    <classify:classitem>
      <classify:classitem-identifier>
        <classify:classname>
          <xsl:value-of select="."/>
        </classify:classname>
      </classify:classitem-identifier>
    </classify:classitem>
  </xsl:template>

	

</xsl:stylesheet>