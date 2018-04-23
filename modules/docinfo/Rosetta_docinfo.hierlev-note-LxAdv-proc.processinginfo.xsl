<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.hierlev-note-LxAdv-proc.processinginfo.dita">
    <title><sourcexml>docinfo:hierlev-note</sourcexml> to <targetxml>proc:processinginfo</targetxml> <lnpid>id-CCCC-10534</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p>If <sourcexml>docinfo:hierlev-note</sourcexml> contains PCDATA
                    '<b>includeinteaser</b>' then target mapping becomes
                    <targetxml>proc:processinginfo/proc:param</targetxml> with attributes
                    <targetxml>@name</targetxml> and <targetxml>@value='true'</targetxml>. The
                content of <sourcexml>docinfo:hierlev-note</sourcexml> will become the value for
                    <targetxml>proc:processinginfo/proc:param/@name</targetxml>
                <note>If source having <sourcexml>docinfo:hierlev[@display-name='act']</sourcexml>
                    then Conversion needs to retain existing attribute
                        <sourcexml>docinfo:hierlev[@display-name='act']</sourcexml> with markup in
                    target NL conversion <targetxml>doc:hierlev[@leveltype='act']</targetxml> to
                    define which entry is the act level.</note><note>If source having
                        <sourcexml>docinfo:hierlev[@display-name='SI']</sourcexml> then Conversion
                    needs to retain existing attribute
                        <sourcexml>docinfo:hierlev[@display-name='SI']</sourcexml> with markup in
                    target NL conversion <targetxml>doc:hierlev[@leveltype='instrument']</targetxml>
                    to define which entry is the act level.</note><note>If source having
                        <sourcexml>docinfo:hierlev[@display-name='measure']</sourcexml> then
                    Conversion needs to retain existing attribute
                        <sourcexml>docinfo:hierlev[@display-name='measure']</sourcexml> with markup
                    in target NL conversion <targetxml>doc:hierlev[@leveltype='measure']</targetxml>
                    to define which entry is the act level.</note>
            </p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:hier&gt;
  &lt;docinfo:hierlev role="ancestor"&gt;
   &lt;heading&gt;&lt;title&gt;C&lt;/title&gt;&lt;/heading&gt;
   &lt;docinfo:hierlev role="ancestor"&gt;
    &lt;heading&gt;&lt;title&gt;CH-CN&lt;/title&gt;&lt;/heading&gt;
    &lt;docinfo:hierlev role="ancestor" display-name="act"&gt;
     &lt;heading&gt;&lt;title&gt;Child Support, Pensions and Social Security Act 2000&lt;/title&gt;&lt;/heading&gt;
     &lt;docinfo:hierlev-note&gt;includeinteaser&lt;/docinfo:hierlev-note&gt;
     &lt;docinfo:hierlev role="ancestor"&gt;
      &lt;heading&gt;&lt;title&gt;SCHEDULE 9 Repeals and Revocations&lt;/title&gt;&lt;/heading&gt;
      &lt;docinfo:hierlev-note&gt;includeinteaser&lt;/docinfo:hierlev-note&gt;
      &lt;docinfo:hierlev role="me" &gt;
       &lt;heading&gt;&lt;title&gt;Part II State Pensions&lt;/title&gt;&lt;/heading&gt;
      &lt;/docinfo:hierlev&gt;
     &lt;/docinfo:hierlev&gt;
    &lt;/docinfo:hierlev&gt;
   &lt;/docinfo:hierlev&gt;
  &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;


	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:hier&gt;
  &lt;doc:hierlev&gt;
   &lt;heading&gt;&lt;title&gt;C&lt;/title&gt;&lt;/heading&gt;
   &lt;doc:hierlev&gt;
    &lt;heading&gt;&lt;title&gt;CH-CN&lt;/title&gt;&lt;/heading&gt;
    &lt;doc:hierlev leveltype="act"&gt;
     &lt;heading&gt;&lt;title&gt;Child Support, Pensions and Social Security Act 2000&lt;/title&gt;&lt;/heading&gt;
     &lt;proc:processinginfo&gt;
       &lt;proc:param name="includeinteaser" value="true"&gt;&lt;/proc:param&gt;
      &lt;/proc:processinginfo&gt;
     &lt;doc:hierlev&gt;
      &lt;heading&gt;&lt;title&gt;SCHEDULE 9 Repeals and Revocations&lt;/title&gt;&lt;/heading&gt;
      &lt;proc:processinginfo&gt;
       &lt;proc:param name="includeinteaser" value="true"&gt;&lt;/proc:param&gt;
      &lt;/proc:processinginfo&gt;
     &lt;doc:hierlev&gt;
       &lt;heading&gt;&lt;title&gt;Part II State Pensions&lt;/title&gt;&lt;/heading&gt;
      &lt;/doc:hierlev&gt;
    &lt;/doc:hierlev&gt;
   &lt;/doc:hierlev&gt;
  &lt;/doc:hierlev&gt;
 &lt;/doc:hierlev&gt;
&lt;/doc:hier&gt;
	</codeblock>
        </example>

              <section>
            <title>Changes</title>
                  <p>2016-12-09: <ph id="change_20161209_AS">Updated the Instruction (note) to
                      handle more input scenario
                      <sourcexml>docinfo:hierlev[@display-name='SI']</sourcexml> and schema updated for 
                      <sourcexml>docinfo:hierlev[@display-name='measure']</sourcexml>.
                      VSTS Issue #188265</ph></p>
                  <p>2016-11-16: <ph id="change_20161116_AS">Updated the Instruction (note) to
                    handle more input scenario
                        <sourcexml>docinfo:hierlev[@display-name='SI']</sourcexml> and
                        <sourcexml>docinfo:hierlev[@display-name='measure']</sourcexml>.
                    VSTS Issue #188265</ph></p>
            <p>2016-10-10: <ph id="change_20161010_SS">Updated the Instruction (note) for handling
                    input scenario
                <sourcexml>docinfo:hierlev[@display-name='act']</sourcexml>.</ph></p>
            <p>2016-01-08: <ph id="change_20160108_AB">Created. RFA #2688.</ph></p>
              </section>
    </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.hierlev-note-LxAdv-proc.processinginfo.dita  -->
	<!-- Sudhanshu Srivastava 
	     Edited :- 19 June 2017.
	     Comments :- This is Common module for UK 06 . Initially drafted on 19 June 2017.
	-->

	<xsl:template match="docinfo:hierlev-note">
		<!--  Original Target XPath:  proc:processinginfo   -->
		<proc:processinginfo>
		    <xsl:choose>
		        <xsl:when test="not(*) and text()[.='includeinteaser']">
		            <proc:param name="{.}" value="true"/>
		        </xsl:when>
		        <xsl:otherwise>
		            <xsl:apply-templates select="@* | node()"/>        
		        </xsl:otherwise>
		    </xsl:choose>
		</proc:processinginfo>
	</xsl:template>
</xsl:stylesheet>