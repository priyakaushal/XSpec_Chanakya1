<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_ci.cite_cite4thisdoc">
    <title><sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml> to
            <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml>
        <lnpid>id-CA10-14609</lnpid></title>
    <body>

        <section>
            <p><sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml> occuring anywhere in the source document becomes
                    <targetxml>seclaw:head/ref:citations/ref:cite4thisresource[@citetype="reporter"]/lnci:cite</targetxml>. Attribute
                    <sourcexml>@type</sourcexml> is suppressed. Note that attribute
                    <targetxml>@citetype="reporter"</targetxml> is generated in
					<targetxml>ref:cite4thisresource</targetxml> element, see Examples.</p>
            <p>If <sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml> occurs as a child of
                    <sourcexml>heading/title</sourcexml> or
                    <sourcexml>heading/title/emph</sourcexml> then convert as follows:<ul
                    id="ul_yii_yyg_uj">
                    <li><sourcexml>heading/title</sourcexml> and descendant
                            <sourcexml>emph</sourcexml> are suppressed (suppress tags, process
                        content). There may be nested <sourcexml>emph</sourcexml>; all are
                        suppressed.</li>
                    <li>text occurring after <sourcexml>ci:cite</sourcexml> is appended to
                            <targetxml>lnci:content</targetxml> in the output. That is, append text
                        occurring between end-cite <sourcexml>&lt;/ci:cite&gt;</sourcexml> and
                        end-title <sourcexml>&lt;/title&gt;</sourcexml><ul>
                            <li><u>Exception for Halsbury's</u>: Do not append text if source
                                document contains <sourcexml>publication</sourcexml> beginning with
                                phrase "Halsbury's Laws of Canada" (without quotes). See Example
                                3.</li>
                        </ul></li>
                    <li>all other rules for converting <sourcexml>ci:{element-name}</sourcexml>
                        apply</li>
                </ul></p>
        </section>
        <example>
            <title>Source XML 1. emph present</title>
            <codeblock>

...
&lt;comm:body&gt;
        &lt;level leveltype="1"&gt;
            ...
            &lt;level leveltype="1"&gt;
                ...
                &lt;level leveltype="3"&gt;
                    &lt;heading align="left"&gt;
                        &lt;title searchtype="DOC-HEADING"&gt;
                            &lt;emph typestyle="bf"&gt;
                               &lt;emph typestyle="bf"&gt;
                                   &lt;ci:cite type="cite4thisdoc"&gt;
                                     &lt;ci:case&gt;
                                     &lt;ci:caseref 
                                       ID="cref00001731"
                                       spanref="cspan00001731"&gt;
                                         &lt;ci:reporter value="XYZ"/&gt;
                                         &lt;ci:refnum num="99"/&gt;
                                     &lt;/ci:caseref&gt;
                                     &lt;/ci:case&gt;
                                   &lt;ci:content&gt;
                                     &lt;ci:span spanid="cspan00001731"&gt;99 XYZ&lt;/ci:span&gt;
                                   &lt;/ci:content&gt;
                                   &lt;/ci:cite&gt; as revised.
                               &lt;/emph&gt;
                            &lt;/emph&gt;
                        &lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;bodytext searchtype="COMMENTARY"&gt;
                    ...

	</codeblock>
        </example>
        <example>
            <title>Target XML 1.</title>
            <codeblock>

...
&lt;seclaw:head&gt;
      &lt;ref:citations&gt;
          &lt;ref:cite4thisresource citetype="reporter"&gt;
              &lt;lnci:cite&gt;
                  &lt;lnci:case&gt;
                      &lt;lnci:caseref ID="cref00001731"&gt;
                          &lt;lnci:reporter value="XYZ"/&gt;
                          &lt;lnci:refnum num="99"/&gt;
                      &lt;/lnci:caseref&gt;
                  &lt;/lnci:case&gt;
                  &lt;lnci:content&gt;99 XYZ as revised.&lt;/lnci:content&gt;
              &lt;/lnci:cite&gt;
          &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;
  &lt;/seclaw:head&gt;
 &lt;seclaw:body&gt;
        &lt;seclaw:level leveltype="unclassified"&gt;
            ...
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:level leveltype="unclassified"&gt;
                   ...
                    &lt;seclaw:bodytext&gt;
                        &lt;!-- level[@leveltype="3"] in source --&gt;
                        &lt;seclaw:level leveltype="unclassified"&gt;
                            &lt;!-- 
                              heading/title/emph would go here 
                              if no ci:cite[@type="cite4thisdoc"] 
                            --&gt;
                            &lt;seclaw:bodytext&gt;
                            ...

	</codeblock>
        </example>
        <example>
            <title>Source XML 2. emph not present</title>
            <codeblock>

...
&lt;comm:body&gt;
        &lt;level leveltype="1"&gt;
            ...
            &lt;level leveltype="1"&gt;
                ...
                &lt;level leveltype="3"&gt;
                    &lt;heading align="left"&gt;
                        &lt;title searchtype="DOC-HEADING"&gt;
                            &lt;ci:cite type="cite4thisdoc"&gt;
                              &lt;ci:case&gt;
                              &lt;ci:caseref 
                                ID="cref00001851"
                                spanref="cspan00001851"&gt;
                                  &lt;ci:reporter value="XYZ"/&gt;
                                  &lt;ci:refnum num="99"/&gt;
                              &lt;/ci:caseref&gt;
                              &lt;/ci:case&gt;
                            &lt;ci:content&gt;
                              &lt;ci:span spanid="cspan00001851"&gt;99 XYZ&lt;/ci:span&gt;
                            &lt;/ci:content&gt;
                            &lt;/ci:cite&gt; as revised.&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;bodytext searchtype="COMMENTARY"&gt;
                    ...

	</codeblock>
        </example>
        <example>
            <title>Target XML 2.</title>
            <codeblock>

...
&lt;seclaw:head&gt;
      &lt;ref:citations&gt;
          &lt;ref:cite4thisresource citetype="reporter"&gt;
              &lt;lnci:cite&gt;
                  &lt;lnci:case&gt;
                      &lt;lnci:caseref ID="cref00001851"&gt;
                          &lt;lnci:reporter value="XYZ"/&gt;
                          &lt;lnci:refnum num="99"/&gt;
                      &lt;/lnci:caseref&gt;
                  &lt;/lnci:case&gt;
                  &lt;lnci:content&gt;99 XYZ as revised.&lt;/lnci:content&gt;
              &lt;/lnci:cite&gt;
          &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;
  &lt;/seclaw:head&gt;
 &lt;seclaw:body&gt;
        &lt;seclaw:level leveltype="unclassified"&gt;
            ...
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:level leveltype="unclassified"&gt;
                   ...
                    &lt;seclaw:bodytext&gt;
                        &lt;!-- level[@leveltype="3"] in source --&gt;
                        &lt;seclaw:level leveltype="unclassified"&gt;
                            &lt;!-- 
                              heading/title would go here 
                              if no ci:cite[@type="cite4thisdoc"] 
                            --&gt;
                            &lt;seclaw:bodytext&gt;
                            ...

	</codeblock>
        </example>
        <example>
            <title>Source XML 3. Halsbury's</title>
            <codeblock>

&lt;!-- Use Case: source contains &lt;publication&gt; beginning with phrase "Halsbury's Laws of Canada" --&gt;
...
&lt;comm:info&gt;
  ...
  &lt;publication&gt;Halsbury's Laws of Canada - Pensions&lt;/publication&gt;
&lt;/comm:info&gt;
&lt;comm:body&gt;
  &lt;level leveltype="1"&gt;
    ...
    &lt;level leveltype="1"&gt;
      ...
      &lt;level leveltype="3"&gt;
        &lt;heading align="left"&gt;
          &lt;title searchtype="DOC-HEADING"&gt;
            &lt;emph typestyle="bf"&gt;
             &lt;emph typestyle="bf"&gt;
               &lt;ci:cite type="cite4thisdoc"&gt;
                &lt;ci:case&gt;
                &lt;ci:caseref 
                  ID="cref00001731"
                  spanref="cspan00001731"&gt;
                    &lt;ci:reporter value="HBE"/&gt;
                    &lt;ci:refnum num="22"/&gt;
                &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
               &lt;ci:content&gt;
                &lt;ci:span spanid="cspan00001731"&gt;HBE-22&lt;/ci:span&gt;
               &lt;/ci:content&gt;
               &lt;/ci:cite&gt; Capacity of parties.  &lt;!-- not appended to lnci:content --&gt;
             &lt;/emph&gt;
            &lt;/emph&gt;
          &lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext searchtype="COMMENTARY"&gt;
        ...

	</codeblock>
        </example>
        <example>
            <title>Target XML 3. Halsbury's</title>
            <codeblock>

...
&lt;seclaw:head&gt;
      &lt;ref:citations&gt;
          &lt;ref:cite4thisresource citetype="reporter"&gt;
              &lt;lnci:cite&gt;
                  &lt;lnci:case&gt;
                      &lt;lnci:caseref ID="cref00001731"&gt;
                          &lt;lnci:reporter value="HBE"/&gt;
                          &lt;lnci:refnum num="22"/&gt;
                      &lt;/lnci:caseref&gt;
                  &lt;/lnci:case&gt;
                  &lt;lnci:content&gt;HBE-22&lt;/lnci:content&gt;
              &lt;/lnci:cite&gt;
          &lt;/ref:cite4thisresource&gt;
      &lt;/ref:citations&gt;
  &lt;/seclaw:head&gt;
 &lt;seclaw:body&gt;
        &lt;seclaw:level leveltype="unclassified"&gt;
            ...
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:level leveltype="unclassified"&gt;
                   ...
                    &lt;seclaw:bodytext&gt;
                        &lt;!-- level[@leveltype="3"] in source --&gt;
                        &lt;seclaw:level leveltype="unclassified"&gt;
                            &lt;!-- 
                              heading/title/emph would go here 
                              if no ci:cite[@type="cite4thisdoc"] 
                            --&gt;
                            &lt;seclaw:bodytext&gt;
                            ...

	</codeblock>
        </example>
        <example>
            <title>Source XML 4.</title>
            <codeblock>
<![CDATA[
...
    <comm:body>
        <level leveltype="1">
            ..
                <bodytext searchtype="COMMENTARY">
                    <p>
                        <text>
                            <ci:cite type="cite4thisdoc">
                                <ci:case>
                                    <ci:caseref>
                                        <ci:reporter value="JFIR"/>
                                        <ci:refnum num="4.2"/>
                                    </ci:caseref>
                                </ci:case>
                                <ci:content>JFIR-4.2</ci:content>
                            </ci:cite>
                        </text>
                    </p>
                    ...
]]>
	</codeblock>
        </example>
        <example>
            <title>Target XML 4.</title>
            <codeblock>
<![CDATA[
...
<seclaw:head>
  <ref:citations>
	  <ref:cite4thisresource citetype="reporter">
		  <lnci:cite>
			  <lnci:case>
				  <lnci:caseref>
					  <lnci:reporter value="JFIR"/>
					  <lnci:refnum num="4.2"/>
				  </lnci:caseref>
			  </lnci:case>
			  <lnci:content>JFIR-4.2</lnci:content>
		  </lnci:cite>
		  ...
]]>
	</codeblock>
        </example>
        <section>
            <title>Changes</title>
			<p>2017-03-10: <ph id="change_20170310_SEP">Simplify the instruction to look for <sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml>
					and create <targetxml>seclaw:head/ref:citations/ref:cite4thisresource[@citetype="reporter"]/lnci:cite</targetxml>.  Add Example 4.</ph></p>
            <p>2014-10-09: <ph id="change_20141009_PS">Updated target example 2 and 3, add
                        <targetxml>citetype="reporter"</targetxml> value in
                        <targetxml>ref:cite4thisresource</targetxml>.</ph></p>
            <p>2014-10-07: <ph id="change_20141007_PS">Added <targetxml>@citetype="reporter"</targetxml> attribute in <targetxml>ref:cite4thisresource</targetxml>. Applicable to CA10.</ph></p>
            <p>2014-06-06: <ph id="change_20140606_jm">Added exceptional rule when source is
                    "Halsbury's Laws of Canada". Do not append text to target
                        <targetxml>lnci:content</targetxml>. R4.5 Content Issue 1617.</ph></p>
            <p>2014-05-29: <ph id="change_20140529_jm">Expanded rule to include conversion of
                        <sourcexml>ci:cite[@type="cite4thisdoc"]</sourcexml> and trailing text when
                        <sourcexml>emph</sourcexml> wrapper not present. No change for target xpath.
                    Phase-6 Board #116.</ph></p>
            <p>2013-12-30: <ph id="change_20131230_jm">Minor, not a rule change. Fixed target
                    sample. Mistakenly showed <sourcexml>@type="cite4thisdoc"</sourcexml> retained.
                    Now removed from target as per usual rules; and clarified in narrative.
                    Conversion already correctly suppresses, no coding change required. Discussion
                    Board Item 74.</ph></p>
            <p>2013-10-24: <ph id="change_20131024_jm">Minor change. Clarified that rule to suppress
                        <sourcexml>emph</sourcexml> also applies to nested
                        <sourcexml>emph</sourcexml>. Discussion Board Item 71.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_ci.cite_cite4thisdoc.dita  -->

    <xsl:template match="ci:cite[@type='cite4thisdoc']">
                <ref:citations>
                    <ref:cite4thisresource citetype='reporter'>
                        <lnci:cite>
                            <xsl:apply-templates select="@*|node()"/>
                        </lnci:cite>
                    </ref:cite4thisresource>
                </ref:citations>
    </xsl:template>
    
    <!--<xsl:template match="emph[child::ci:cite[@type='cite4thisdoc']]/@typestyle"/>-->
    
    <xsl:template match="emph[child::ci:cite[@type='cite4thisdoc']]" priority="25"/>
        
        <xsl:template match="emph/nl"/>


</xsl:stylesheet>
