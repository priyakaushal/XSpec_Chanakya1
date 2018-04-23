<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_jrnl.journalcite">
  <title>jrnl:journalcite <lnpid>id-UK11DA-29425</lnpid></title>
  <body>
    <section><p><b>NOTICE:</b> The element content and attribute value convert to separate targets.</p></section>
    <section>
      <p>The content:</p>
      <p><sourcexml>jrnl:journalcite</sourcexml> becomes
          <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:issue</targetxml>.</p>
    </section>
    <section>
      <p>The attribute:</p>
      <p>The <sourcexml>@display-name</sourcexml> value is two words, "Journal Citation" or "Newspaper Citation". Convert the 1st word, suppress the word Citation.</p>
      <p><sourcexml>jrnl:journalcite[@display-name]</sourcexml> becomes
          <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/classify:classification[@classscheme="pubtype"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
        The <targetxml>@classscheme</targetxml> value is hardcoded. The 1st word of <sourcexml>@display-name</sourcexml> becomes pcdata for <targetxml>classify:classname</targetxml></p>
    </section>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;jrnl:articleinfo&gt;
      &lt;jrnl:journalcite display-name="Newspaper Citation"&gt;JCL 76 (382)&lt;/jrnl:journalcite&gt;
    &lt;/jrnl:articleinfo&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;    
       &lt;classify:classification classscheme="pubtype"&gt;
         &lt;classify:classitem&gt;
           &lt;classify:classitem-identifier&gt;
             &lt;classify:classname&gt;Newspaper&lt;/classify:classname&gt;
           &lt;/classify:classitem-identifier&gt;
         &lt;/classify:classitem&gt;
       &lt;/classify:classification&gt;
       &lt;pubinfo:issue&gt;JCL 76 (382)&lt;/pubinfo:issue&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

    </pre>
    <pre>
              <b><i>Example: Source XML 2</i></b>
                  

&lt;dig:body&gt;
   &lt;dig:info&gt;
      &lt;jrnl:articleinfo&gt;
         &lt;jrnl:journalcite display-name="Journal Citation"&gt;
            &lt;ci:cite&gt;
               &lt;ci:lawrev&gt;
                  &lt;ci:lawrevref&gt;
                     &lt;ci:lawrevlocator&gt;
                        &lt;ci:publicationname normpubcode="NLJ"/&gt;
                        &lt;ci:issue num="155"/&gt;
                        &lt;ci:page num="1804"/&gt;
                     &lt;/ci:lawrevlocator&gt;
                  &lt;/ci:lawrevref&gt;
               &lt;/ci:lawrev&gt;
               &lt;ci:content&gt;155 NLJ 1804&lt;/ci:content&gt;
            &lt;/ci:cite&gt;.&lt;/jrnl:journalcite&gt;
      &lt;/jrnl:articleinfo&gt;
   &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
    </pre>
    <pre>
                    
              <b><i>Example: Target XML 2</i></b>

&lt;abstract:body&gt;
    &lt;abstract:target&gt;
        &lt;pubinfo:pubinfo&gt;
            &lt;classify:classification classscheme="pubtype"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;Journal&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
            &lt;pubinfo:issue&gt;&lt;lnci:cite&gt;
                &lt;lnci:lawrev&gt;
                    &lt;lnci:lawrevref&gt;
                        &lt;lnci:lawrevlocator&gt;
                            &lt;lnci:publicationname normpubcode="NLJ"/&gt;
                            &lt;lnci:issue num="155"/&gt;
                            &lt;lnci:page num="1804"/&gt;
                        &lt;/lnci:lawrevlocator&gt;
                    &lt;/lnci:lawrevref&gt;
                &lt;/lnci:lawrev&gt;
                &lt;lnci:content&gt;155 NLJ 1804&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;.&lt;/pubinfo:issue&gt;
        &lt;/pubinfo:pubinfo&gt;
    &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

    </pre>
    <section>
      <title>Changes</title>
      <p>2014-10-14: <ph id="change_20141014_jhm">New rule. Added mapping for <sourcexml>@display-name</sourcexml> which is new in Oct 2014
        redelivery. The value is an enhancement for stored data. Does not affect presentation.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_jrnl.journalcite.dita  -->
	 
	 
    <xsl:template match="jrnl:journalcite">
        <classify:classification>
            <xsl:attribute name="classscheme" select="'sourcetype'"/>
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classname>
                        <xsl:value-of select="substring-before(@display-name,' ')"/>
                    </classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
        <pubinfo:issue>
            <xsl:apply-templates select="@* | node()"/>
        </pubinfo:issue>
    </xsl:template>

    <xsl:template match="jrnl:journalcite/@display-name"/>



</xsl:stylesheet>