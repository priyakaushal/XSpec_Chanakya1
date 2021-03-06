<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_note-Chof-toc.entry">
    <title>note as child of toc-entry <lnpid>id-UK12-29830</lnpid></title>
    <body>
        <section><p><sourcexml>toc-entry</sourcexml> may contain child siblings
                    <sourcexml>heading</sourcexml> and <sourcexml>note</sourcexml>. The individual
                elements are mapped as described elesewhere in these Conversion Instructions.</p>
            <p><i><b>In Addition:</b></i></p>
            <p>For target, move <targetxml>note</targetxml> to become last child of
                    <targetxml>heading</targetxml>. That is: in source,
                    <sourcexml>heading</sourcexml> and <sourcexml>note</sourcexml> are siblings; in
                target, <targetxml>heading</targetxml> contains
            <targetxml>note</targetxml>.</p></section>


        <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;toc-entry&gt;
   &lt;heading&gt;
      &lt;desig value="H2"&gt;
         &lt;designum&gt;H2:&lt;/designum&gt;
      &lt;/desig&gt;
      &lt;title&gt;Pension Scheme Mergers and De-mergers&lt;/title&gt;
   &lt;/heading&gt;
   &lt;note notetype="commentary"&gt;
      &lt;p&gt;
         &lt;text&gt;This chapter has been removed. The information is now contained in Chapter H3.&lt;/text&gt;
      &lt;/p&gt;
   &lt;/note&gt;
&lt;/toc-entry&gt;
 
<b><i>Target XML</i></b>

&lt;toc-entry&gt;
  &lt;heading&gt;
    &lt;desig value="H2"&gt;H2:&lt;/desig&gt;
    &lt;title&gt;Pension Scheme Mergers and De-mergers&lt;/title&gt;
    &lt;note notetype="commentary"&gt;
      &lt;bodytext&gt;
         &lt;p&gt;
           &lt;text&gt;This chapter has been removed. The information is now contained in Chapter H3.&lt;/text&gt;
         &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/note&gt;
  &lt;/heading&gt;
&lt;/toc-entry&gt;

                </pre>
        <section>
            <title>Changes</title>
            <p>2016-12-06: <ph id="change_20161206_jm">New section. Handles note within toc-entry.
                    New Xpath.</ph>.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_note-Chof-toc.entry.dita  -->
<!--	<xsl:message>UK12_Treatise_note-Chof-toc.entry.xsl requires manual development!</xsl:message> -->

	

	
</xsl:stylesheet>