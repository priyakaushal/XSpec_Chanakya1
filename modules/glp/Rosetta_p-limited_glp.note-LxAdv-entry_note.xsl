<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_entry_p-limited_glp.note-to-LexisAdvance_entry_note">
 <title><sourcexml>entry/p-limited/glp:note</sourcexml> to <targetxml>entry/note</targetxml> <lnpid>id-CCCC-10422</lnpid></title>
 <body>
 <section>
    <p>When <sourcexml>glp:note</sourcexml> occurs as a direct child of <sourcexml>entry/p-limited</sourcexml> then <sourcexml>entry/p-limited/glp:note</sourcexml> becomes <targetxml>entry/note</targetxml>. The <targetxml>entry/note</targetxml> will occur as a sibling to any <targetxml>p</targetxml> elements within the <targetxml>entry</targetxml>. If there is any text (PC-DATA) that is part of the <sourcexml>entry</sourcexml> but occurs immediately before the <sourcexml>p-limited</sourcexml>, an empty <targetxml>p</targetxml> element should be created immediately before the <targetxml>note</targetxml> as a sibling to the <targetxml>note</targetxml>.
    </p>
    </section>

    <example>
        <title>Source XML</title>
        <codeblock>

&lt;entry colname="c2" colsep="0" rowsep="0"&gt;deal... 
    &lt;p-limited&gt;
        &lt;glp:note&gt;
            &lt;blockquote&gt;
                &lt;p indent="none"&gt;
                    &lt;text&gt;In relation to the...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/blockquote&gt;
        &lt;/glp:note&gt;
    &lt;/p-limited&gt;
&lt;/entry&gt;

	</codeblock>
    </example>
    
    <example>
        <title>Target XML</title>
        <codeblock>

&lt;entry colname="c2" colsep="0" rowsep="0"&gt;deal... 
    &lt;p/&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;blockquote&gt;
                &lt;p indent="none"&gt;
                    &lt;text&gt;In relation to the...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/blockquote&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/entry&gt;

	</codeblock>
    </example>
  <section>
   <title>Changes</title>
  </section>
 </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-limited_glp.note-LxAdv-entry_note.dita  -->
	 

             <!-- BRT: Added this template as a condition to match="p-limited" in base.xsl.
             -->
             <xsl:template match="entry/p-limited[child::glp:note]">
                 <xsl:element name="p" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"/>
                         <xsl:apply-templates/>    
             </xsl:template>
         
</xsl:stylesheet>