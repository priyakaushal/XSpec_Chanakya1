<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="refnum">
  <title>Rosetta docinfo:normcite to classify:classification <lnpid>id-UK07-28231</lnpid></title>
  <body>
    <section>
   <p>In order to determine if a doc is an <b>enactment</b> or a <b>provision</b>, look at the
     <sourcexml>docinfo:normcite</sourcexml> element. If <sourcexml>docinfo:normcite</sourcexml>
    ends with <b>"Title"</b> (the word Title), then it is considered an <b>enactment</b>. If it does
    NOT contain this ending, then it is considered a <b>provision</b>. Target will be
     <targetxml>regulation:head/primlawinfo:primlawinfo/classify:classification/@classscheme="EnactmentOrProvision"/classify:classitem/classify:classitem-identifier/classify:classname/@normval="provision"
     or "enactment"</targetxml>, more clarification see below examples.</p>
   <codeblock>

&lt;classify:classification classscheme="enactmentOrProvision"&gt;
 &lt;classify:classitem&gt;
  &lt;classify:classitem-identifier&gt;
   &lt;classify:classname&gt;enactment/provision&lt;/classify:classname&gt;
  &lt;/classify:classitem-identifier&gt;
 &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;

          </codeblock>
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

&lt;regulation:regulation&gt;
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
&lt;/regulation:regulation&gt;

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

&lt;regulation:regulation&gt;
 &lt;!-- ETC. --&gt;
 &lt;regulation:head&gt;
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
 &lt;/regulation:head&gt;
 &lt;!-- ETC. --&gt;
 &lt;classify:classification classscheme="selector"&gt;
  &lt;classify:classitem&gt;
   &lt;classify:classitem-identifier&gt;
    &lt;classify:classname&gt;Act&lt;/classify:classname&gt;
   &lt;/classify:classitem-identifier&gt;
  &lt;/classify:classitem&gt;
 &lt;/classify:classification&gt;
 &lt;!-- ETC. --&gt;
&lt;/regulation:regulation&gt;

          </pre>
   
  </section>
    <section>
      <title>Changes</title>
     <p>2016-08-03: <ph id="change_20160803_SS">Removed instruction to identify the <sourcexml>Repealed</sourcexml> source documents.</ph></p>
     <p>2016-05-06: <ph id="change_20160506_AS">Added attribute value <targetxml>@normval="provision" or "enactment".</targetxml> </ph></p>
        <p>2016-04-06: <ph id="change_20160406_AS">Instruction update to identify <b>enactment</b> and <b>provision</b> source document. (RFA #2639).</ph></p>
        <p>2016-01-06: <ph id="change_20160106_AS">instructions to add Repealed status indicator [R] in dc:title. RFA # 2641</ph></p>
      <p>2015-11-03: <ph id="change_20151103_PS">Created. Applicable on UK07. RFA # 2469.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\Rosetta_normcite_LexAdv_classify-classification.dita  -->
	<xsl:message>Rosetta_normcite_LexAdv_classify-classification.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:normcite">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/classify:classification/@classscheme="EnactmentOrProvision"/classify:classitem/classify:classitem-identifier/classify:classname/@normval="provision"or"enactment"   -->
		<regulation:head>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
					<!--  Could not determine target element or attribute name:  <@classscheme="EnactmentOrProvision"/classify:classitem/classify:classitem-identifier/classify:classname/@normval="provision"or"enactment">  -->
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classname>
									<xsl:attribute name="normval">
										<xsl:text>provisionorenactment</xsl:text>
									</xsl:attribute>
								</classify:classname>
							</classify:classitem-identifier>
						</classify:classitem>
					<!--  Could not determine target element or attribute name:  </@classscheme="EnactmentOrProvision"/classify:classitem/classify:classitem-identifier/classify:classname/@normval="provision"or"enactment">  -->
				</classify:classification>
			</primlawinfo:primlawinfo>
		</regulation:head>

	</xsl:template>

	<xsl:template match="Repealed">

		<!--  Original Target XPath:  @normval="provision"or"enactment".   -->
		<xsl:attribute name="normval">
			<xsl:text>provisionorenactment.</xsl:text>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>