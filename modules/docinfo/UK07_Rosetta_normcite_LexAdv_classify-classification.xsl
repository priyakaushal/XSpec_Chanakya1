<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
xmlns:ci="http://www.lexis-nexis.com/ci"  
xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita docinfo ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_Rosetta_normcite_LexAdv_classify-classification">
    <title>Rosetta docinfo:normcite to classify:classification <lnpid>id-UK06-28041</lnpid></title>
  <body>
    <section>
      <p>In order to determine if a doc is an <b>enactment</b> or a <b>provision</b>, look at the
          <sourcexml>docinfo:normcite</sourcexml> element. If
          <sourcexml>docinfo:normcite</sourcexml> ends with <b>"Title"</b> (the word Title), then it
        is considered an <b>enactment</b>. If it does NOT contain this ending, then it is considered
        a <b>provision</b>. Target will be
          <targetxml>legis:head/primlawinfo:primlawinfo/classify:classification/@classscheme="EnactmentOrProvision"/classify:classitem/classify:classitem-identifier/classify:classname/@normval="provision"</targetxml>,
        more clarification see below examples.</p>
      
      <pre>
&lt;docinfo:normcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:content&gt;1980 1091s Title&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/docinfo:normcite&gt;

<b>Becomes</b>
        

&lt;legis:head&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;classify:classification classscheme="EnactmentOrProvision"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname normval="enactment"&gt;enactment&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
      </pre>
      
      <pre>
&lt;docinfo:normcite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:content&gt;1925_1093s&lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/docinfo:normcite&gt;

<b>Becomes</b>
        

&lt;legis:head&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;classify:classification classscheme="EnactmentOrProvision"&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname normval="provision"&gt;provision&lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
      </pre>
    </section>
    <section>
      <title>Changes</title>
      <p>2015-11-05: <ph id="change_20151105_AB">Created. Applicable on UK06. RFA # 2469.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_Rosetta_normcite_LexAdv_classify-classification.dita  -->
	
	<!--Sudhanshu Srivastava :-
	    Edited : 16 June 2017.
	    Comments
	-->
  <xsl:template match="docinfo:normcite" mode="enactorprov">
		<!--  Original Target XPath:  legis:head/primlawinfo:primlawinfo/classify:classification/@classscheme="EnactmentOrProvision"/classify:classitem/classify:classitem-identifier/classify:classname/@normval="provision"   -->
    <primlawinfo:primlawinfo>
    <classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" classscheme="EnactmentOrProvision">
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classname>
								  <xsl:attribute name="normval" select="if(ends-with(ci:cite[1]/ci:content,'Title') or ends-with(ci:cite[2]/ci:content,'Title')) then 'enactment' else 'provision'"/>
								  <xsl:value-of select="if(ends-with(ci:cite[1]/ci:content,'Title') or ends-with(ci:cite[2]/ci:content,'Title')) then 'enactment' else 'provision'"/>
								</classify:classname>
							</classify:classitem-identifier>
						</classify:classitem>
				</classify:classification>
    </primlawinfo:primlawinfo>
	</xsl:template>
</xsl:stylesheet>