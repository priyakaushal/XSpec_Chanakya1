<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita">

<!-- This code is found in Rosetta_blockquote-LxAdv-blockquote -->
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p-blockquote-legfragment-l-LxAdv-primlaw.excerpt-primlaw.bodytext-list">
  <title><sourcexml>p/blockquote/legfragment/l</sourcexml> to
      <targetxml>primlaw:excerpt/primlaw:bodytext/list</targetxml> <lnpid>id-CCCC-10417</lnpid></title>
  <body>
    <section>
      <p>
        <b>p/blockquote/legfragment/l</b> If
          <sourcexml>legfragment</sourcexml> is the child of <sourcexml>blockquote,</sourcexml> drop
        the blockquote and convert the <b>legfragment </b>to <b>primlaw:excerpt</b>. If the Xpath is
          <b>p/blockquote/legfragment/l</b>, then drop the blockquote and convert to
          '<b>primlaw:excerpt/primlaw:bodytext/list</b>". <note>The above rule
          will be applicable only when the input documents has <b>blockquote</b> within "<b>p</b>"
          and <b>legfragment </b>is the child element of the <b>blockquote</b> and
            <sourcexml>legfragment</sourcexml> is containing <sourcexml>l, deflist</sourcexml> and
            <sourcexml>p</sourcexml>.</note>
        <codeblock>            
        <b>Handling of "p/blockquote/legfragment/l":</b>

&lt;bodytext&gt;
  &lt;p&gt;&lt;text&gt;The ILO Code of practice contains specific provisions for workplace monitoring and surveillance. Clause 6.14 of the Code provides as follows:&lt;/text&gt; 
    &lt;blockquote&gt;
      &lt;legfragment&gt;
          &lt;l&gt;
              &lt;li&gt;
                &lt;lilabel&gt;"(1)&lt;/lilabel&gt; 
                  &lt;p&gt;
                    &lt;text&gt;If workers are monitored they should be informed in advance of the reasons for monitoring, the time schedule, the methods and techniques used and the data to be collected, and the employer must minimise the intrusion to the privacy of workers.&lt;/text&gt; 
                  &lt;/p&gt;
              &lt;/li&gt;
                ...
          &lt;/l&gt;
      &lt;/legfragment&gt;
    &lt;/blockquote&gt;
  &lt;/p&gt;
&lt;/bodytext&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

&lt;bodytext&gt;
    &lt;p&gt;&lt;text&gt;The ILO Code of practice contains specific provisions for workplace monitoring and surveillance. Clause 6.14 of the Code provides as follows:&lt;/text&gt;&lt;/p&gt;
    &lt;primlaw:excerpt&gt;
      &lt;primlaw:bodytext&gt;
        &lt;list&gt;
          &lt;listitem&gt;&lt;label&gt;"(1)&lt;/label&gt;
            &lt;bodytext&gt;
              &lt;p&gt;&lt;text&gt;If workers are monitored they should be informed in advance of the reasons for monitoring, the time schedule, the methods and techniques used and the data to be collected, and the employer must minimise the intrusion to the privacy of workers.&lt;/text&gt;&lt;/p&gt;
                ...
            &lt;/bodytext&gt;
          &lt;/listitem&gt;
        &lt;/list&gt;
      &lt;/primlaw:bodytext&gt;
   &lt;/primlaw:excerpt&gt;
&lt;/bodytext&gt;
 
</codeblock>
      </p>
    </section>
   <!-- <xsltinclusion>
     
      <xsl:stylesheet version="2.0">
        <!-\- BRT: this topic uses the same templates as already included in 
          Rosetta_p-blockquote-legfragment-LxAdv-primlaw.excerpt-primlaw.bodytext.dita. 
          Should consider incorporating this as a subtopic in the pther topic-\->
           </xsl:stylesheet>
    </xsltinclusion>-->
  </body>
	</dita:topic>

	

        <!-- BRT: this topic uses the same templates as already included in 
          Rosetta_p-blockquote-legfragment-LxAdv-primlaw.excerpt-primlaw.bodytext.dita. 
          Should consider incorporating this as a subtopic in the pther topic-->
           
</xsl:stylesheet>