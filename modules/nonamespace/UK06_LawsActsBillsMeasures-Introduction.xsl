<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
 xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
 xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

 <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-Introduction">
  <title>Introduction <lnpid>id-UK06-28012</lnpid></title>
  <shortdesc>This Conversion Instruction describes the conversion of legis 11.1_PROD schema in the document.</shortdesc>
  <prolog>
   <metadata>
    <prodinfo>
     <prodname>
      <keyword>Legislation</keyword>
     </prodname>
     <vrmlist>
      <vrm version="11.1 PROD "/>
     </vrmlist>
    </prodinfo>
   </metadata>
  </prolog>
  <body>
   <section><title>Root Element</title>
    <p><sourcexml>LEGDOC</sourcexml> becomes <targetxml>legis:legis</targetxml> and is the root element for legislation. And attribute is populated as follow: <ul>
      <li>Create an attribute <targetxml>@legistype</targetxml> in <targetxml>legis:legis</targetxml> root element. And <targetxml>legis:legis/@legistype</targetxml> will have the value of <sourcexml>docinfo:selector</sourcexml>. Below listed
        <targetxml>legis:legis/@legistype</targetxml> possible values: <ul>
        <li>If <sourcexml>docinfo:selector</sourcexml> value is <b>Act</b> then <targetxml>legis:legis[@legistype="act"]</targetxml></li>
        <li>If <sourcexml>docinfo:selector</sourcexml> value is <b>Bill</b> then <targetxml>legis:legis[@legistype="bill"]</targetxml></li>
        <li>If <sourcexml>docinfo:selector</sourcexml> value is <b>Measure</b> then <targetxml>legis:legis[@legistype="measure"]</targetxml></li>
       </ul>
      </li>
     </ul>
     <note>If <sourcexml>docinfo:selector</sourcexml> value of <b>StatutoryInstrument</b> in the source document should be used to map to the <b>UK07 Regulation CI</b>.</note>
     <pre>
              <b>Source XML 1</b>

&lt;LEGDOC ...&gt;
 &lt;!-- ETC. --&gt;
  &lt;docinfo:selector&gt;Act&lt;/docinfo:selector&gt;
 &lt;!-- ETC. --&gt;
&lt;/LEGDOC&gt;
             </pre>
     <b>Becomes</b>
     <pre>
              <b>Target XML 1</b>

&lt;legis:legis legistype="act"&gt;
 &lt;!-- ETC. --&gt;
 &lt;classify:classification classscheme="selector"&gt;
  &lt;classify:classitem&gt;
   &lt;classify:classitem-identifier&gt;
    &lt;classify:classname&gt;Act&lt;/classify:classname&gt;
   &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
 &lt;/classify:classification&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:legis&gt;
             </pre>
    </p>
    <p><targetxml>legis:head</targetxml>, <targetxml>legis:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>legis:legis</targetxml></p>
    <p>To identify whether input source document is <b>enactment</b> or <b>provision</b>
     <ul>
      <li>If <sourcexml>docinfo:normcite</sourcexml> ends with text <b>"Title"</b> is an <b>enactment</b> source document.</li>
      <li>If source document has <sourcexml>docinfo:normcite</sourcexml> that does not have <b>"Title"</b> is anything else, that would be provisions.</li>
     </ul> As listed above rules to identify <b>enactment</b> or <b>provision</b> source document conversion need to add markup such as below within <targetxml>legis:head/primlawinfo:primlawinfo</targetxml>: <codeblock> &lt;classify:classification
      classscheme="enactmentOrProvision"&gt; &lt;classify:classitem&gt; &lt;classify:classitem-identifier&gt; &lt;classify:classname&gt;enactment/provision&lt;/classify:classname&gt; &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
      &lt;/classify:classification&gt; </codeblock>
     <pre>
           <b>Source XML 1 : Identify enactment source document</b>

&lt;LEGDOC ...&gt;
 &lt;!-- ETC. --&gt;
 &lt;docinfo:selector&gt;Act&lt;/docinfo:selector&gt;
 &lt;!-- ETC. --&gt;
 &lt;docinfo:normcite&gt;
  &lt;ci:cite type="cite4thisdoc"&gt;
   &lt;ci:content&gt;1972_68a_Title&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
 &lt;/docinfo:normcite&gt;
 &lt;!-- ETC. --&gt;
&lt;/LEGDOC&gt;
          </pre>
     <b>Becomes</b>
     <pre>
           <b>Target XML 1 : Identify enactment source document</b>

&lt;legis:legis legistype="act"&gt;
 &lt;!-- ETC. --&gt;
 &lt;legis:head&gt;
  &lt;ref:citations&gt;
   &lt;ref:cite4thisresource citetype="normcite"&gt;
    &lt;ref:nonciteidentifier normprotocol="unspecified"&gt;1972_68a_Title&lt;/ref:nonciteidentifier&gt;
   &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
  &lt;primlawinfo:primlawinfo&gt;
   &lt;classify:classification classscheme="enactmentOrProvision"&gt;
    &lt;classify:classitem&gt;
     &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;enactment&lt;/classify:classname&gt;
     &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
   &lt;/classify:classification&gt;
  &lt;/primlawinfo:primlawinfo&gt;
 &lt;/legis:head&gt;
 &lt;!-- ETC. --&gt;
 &lt;classify:classification classscheme="selector"&gt;
  &lt;classify:classitem&gt;
   &lt;classify:classitem-identifier&gt;
    &lt;classify:classname&gt;Act&lt;/classify:classname&gt;
   &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
 &lt;/classify:classification&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:legis&gt;

          </pre>
     <pre>
           <b>Source XML 2 : Identify provision source document</b>

&lt;LEGDOC ...&gt;
 &lt;!-- ETC. --&gt;
 &lt;docinfo:selector&gt;Act&lt;/docinfo:selector&gt;
 &lt;docinfo:normcite&gt;
  &lt;ci:cite type="cite4thisdoc"&gt;
   &lt;ci:content&gt;1972_68a&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
 &lt;/docinfo:normcite&gt;
 &lt;!-- ETC. --&gt;
&lt;/LEGDOC&gt;
           
          </pre>
     <b>Becomes</b>
     <pre>
           <b>Target XML 2 : Identify provision source document</b>

&lt;legis:legis legistype="act"&gt;
 &lt;!-- ETC. --&gt;
 &lt;legis:head&gt;
  &lt;ref:citations&gt;
   &lt;ref:cite4thisresource citetype="normcite"&gt;
    &lt;ref:nonciteidentifier normprotocol="unspecified"&gt;1972_68a&lt;/ref:nonciteidentifier&gt;
   &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
  &lt;primlawinfo:primlawinfo&gt;
   &lt;classify:classification classscheme="enactmentOrProvision"&gt;
    &lt;classify:classitem&gt;
     &lt;classify:classitem-identifier&gt;
      &lt;classify:classname&gt;provision&lt;/classify:classname&gt;
     &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
   &lt;/classify:classification&gt;
  &lt;/primlawinfo:primlawinfo&gt;
 &lt;/legis:head&gt;
 &lt;!-- ETC. --&gt;
 &lt;classify:classification classscheme="selector"&gt;
  &lt;classify:classitem&gt;
   &lt;classify:classitem-identifier&gt;
    &lt;classify:classname&gt;Act&lt;/classify:classname&gt;
   &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
 &lt;/classify:classification&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:legis&gt;

          </pre>
    </p> The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element. <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the
     attribute's value <sourcexml>epmh/@typestyle="it"</sourcexml> or <sourcexml>epmh/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
   </section>
   <section>
    <title>Notes</title>
    <p>The following information is meant to help the user understand the conventions used in this document.</p>
    <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
    <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
    <p>Verify content of following target attributes: <ul>
      <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
      <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>
      <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
     </ul>
    </p>
   </section>
   <section>
    <title>Changes</title>
    <p>2017-05-03: <ph id="change_20170503_RS">Update Legislation Schema version 11.0_PROD to 11.1_PROD.</ph></p>
    <p>2016-08-03: <ph id="change_20160803_SS">Remove the instruction to identify <b>Repealed</b> source document.</ph></p>
    <p>2016-04-19: <ph id="change_20160419_AS">Instruction update to identify <b>enactment</b> and <b>provision</b> source document. (RFA #2418).</ph></p>
    <p>2016-03-29: <ph id="change_20160329_AB">Instruction update to identify <b>enactment</b> and <b>provision</b> source document. (RFA #2639).</ph></p>
    <p>2013-11-08: <ph id="change_20131108_AB">Instruction and example added to identify <b>enactment</b> and <b>provision</b> source document. (WebTeam #241395).</ph></p>
    <p>2013-11-08: <ph id="change_20131108-AB">Instruction and example added to identify <b>Repealed</b> source document. (WebTeam #242233).</ph></p>
    <p>2013-10-30: <ph id="change_20131030_AB">Instruction and example added to identify <b>enactment</b> and <b>provision</b> source document. (WebTeam #241395).</ph></p>
    <p>2013-10-30: <ph id="change_20131030-AB">Remove third rule and example to identify <b>Repealed</b> document. (WebTeam #242233).</ph></p>
    <p>2013-10-21: <ph id="change_20131021_AB">Instruction and example added to identify <b>Repealed</b> source document and add a note regarding merging adjacent <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>.(WebTeam
     #242233).</ph></p>
    <p>2013-10-21: <ph id="change_20131021-AB">Instruction and example added when <sourcexml>docinfo:normcite</sourcexml> ends with text <b>"_Title"</b> in source document then conversion needs to add <targetxml>@status= "enacted"</targetxml> within
      target root element <targetxml>legis:legis</targetxml>.(WebTeam #241395).</ph></p>
   </section>
  </body>
 </dita:topic>
 <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-Introduction.dita  -->
 <!-- Sudhanshu Srivastava:
	 Edited on 14 June 2017.
	 Comments : This is content specific module. This modules having conversion of source LEGDOC to legis:legis target element.
	-->
 <xsl:template match="LEGDOC">

  <legis:legis>
   <!-- create namespaces -->
   <xsl:call-template name="generateNSGlobalBindings"/>
   <xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang, '-', docinfo/docinfo:doc-country/@iso-cc)"/>
   <xsl:if test="docinfo/docinfo:selector[. = ('Act', 'Bill', 'Measure')]">
    <xsl:attribute name="legistype" select="lower-case(docinfo/docinfo:selector)"/>
   </xsl:if>

   <legis:head>
    <xsl:apply-templates select="docinfo/docinfo:normcite, leg:body/leg:info/leg:juris, leg:body/leg:info"/>
    <xsl:if test="not(leg:body/leg:info)">
     <xsl:apply-templates select="docinfo/docinfo:normcite" mode="enactorprov"/>
    </xsl:if>
   </legis:head>

   <legis:body>
    <!-- CSN - 2017/10/25 - Webstar 7025487/Webstar 7071606 - add proc.nocontent when there is not content in the document -->
    <xsl:choose>
     <!-- all these constructs produce output.  If one does not occur, then output proc:nocontent -->
     <xsl:when test="leg:body/leg:info/leg:longtitle | leg:body/leg:info/leg:dates/preceding-sibling::leg:longtitle | leg:body/leg:info/leg:status | leg:body/leg:info/leg:sectionlist | leg:body/leg:endmatter | leg:body/leg:level | leg:body/leg:preamble">
      <!-- handle these elements so skip if they do not occur -->
      <xsl:if test="leg:body/leg:info/leg:longtitle | leg:body/leg:info/leg:dates/preceding-sibling::leg:longtitle | leg:body/leg:info/leg:status">
       <primlaw:prelim xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
        <xsl:apply-templates select="leg:body/leg:info/leg:longtitle"/>
        <!-- handle these elements so skip if they do not occur -->
        <xsl:if test="leg:body/leg:info/leg:dates | leg:body/leg:info/leg:status">
         <xsl:choose>
          <xsl:when test="leg:body/leg:info/leg:dates/preceding-sibling::leg:longtitle">
           <primlawinfo:primlawinfo>
            <xsl:apply-templates select="leg:body/leg:info/leg:dates | leg:body/leg:info/leg:status"/>
           </primlawinfo:primlawinfo>
          </xsl:when>
          <xsl:when test="leg:body/leg:info/leg:status">
           <primlawinfo:primlawinfo>
            <xsl:apply-templates select="leg:body/leg:info/leg:status"/>
           </primlawinfo:primlawinfo>
          </xsl:when>
          <xsl:otherwise/>
         </xsl:choose>
        </xsl:if>
        <xsl:apply-templates select="leg:body/leg:info/note"/>
       </primlaw:prelim>
      </xsl:if>
      <xsl:apply-templates select="leg:body/leg:info/leg:sectionlist"/>
      <xsl:apply-templates select="leg:body/leg:endmatter | leg:body/leg:level | leg:body/leg:preamble"/>
     </xsl:when>
     <xsl:otherwise>
      <proc:nocontent/>
     </xsl:otherwise>
    </xsl:choose>
   </legis:body>

   <doc:metadata>
    <xsl:apply-templates select="descendant::copyright | descendant::publication"/>
    <xsl:apply-templates select="docinfo except docinfo:normcite"/>
   </doc:metadata>
  </legis:legis>
 </xsl:template>
</xsl:stylesheet>
